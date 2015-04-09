
<!---
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
-->
# Hadoop  4.1.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [OOZIE-2063](https://issues.apache.org/jira/browse/OOZIE-2063) | *Blocker* | **Cron syntax creates duplicate actions**

If you use cron syntax, you'll get duplicate actions (i.e. actions with the same nominal time) at every throttle interval.  For example, if throttle=12 (the default), you'll have a duplicate action every 12 actions.  

Here's my coordinator:
{code:xml}
<coordinator-app name="cron-coord" frequency="*/5 * * * *" start="${start}" end="${end}" timezone="UTC"
                 xmlns="uri:oozie:coordinator:0.2">
  <controls>
    <throttle>3</throttle>
  </controls>
        <action>
        <workflow>
            <app-path>${workflowAppUri}</app-path>
            <configuration>
                <property>
                    <name>jobTracker</name>
                    <value>${jobTracker}</value>
                </property>
                <property>
                    <name>nameNode</name>
                    <value>${nameNode}</value>
                </property>
                <property>
                    <name>queueName</name>
                    <value>${queueName}</value>
                </property>
            </configuration>
        </workflow>
    </action>
</coordinator-app>
{code}
It runs every 5 min on the hour.  I also ran a similar coordinator, but with the frequency set to {{coord:minutes(5)}}.  I set the throttle to 3 so it would be easier to see the problem.

Here are the two screenshots (make sure to either open them directly or widen the page to see the nominal time column):
!cron.jpg!

!min.jpg!

As you can see in the cron screenshot, every 3 actions there's a duplicate action.  And the next materialization time is the same as the latest materialized action, so it's going to do it again when it materializes more actions.  On the minute screenshot, it's behaving correctly.  You'll also see that the next materialized action is now 15 minutes ahead of the cron version!

This has two major problems:
- You have duplicate actions
- The coordinator slowly gets further and further behind where it should be


---

* [OOZIE-2054](https://issues.apache.org/jira/browse/OOZIE-2054) | *Major* | **SharelibService hits NullPointerException when server starts**

This is because SharelibService is initialized before ActionCheckService initialized, and SharelibService call ActionCheckService's method.  need to change order in oozie-default.xml,   this was recently changed by OOZIE-1932


---

* [OOZIE-2047](https://issues.apache.org/jira/browse/OOZIE-2047) | *Major* | **Oozie does not support Hive tables that use datatypes introduced since Hive 0.8**

Oozie uses HCatalog APIs in org.apache.hcatalog packages.  Those APIs were present until Hive 0.13 but were frozen in their support of the Hive features to what existed in Hive 0.7  Using these APIs precludes users from using Oozie hcatalog dependencies on tables that use the new APIs.

The fix is to simply change the package used to the new org.apache.hive.hcatalog packag.  .

Note that these APIs are not available in HCatalog 0.5 or 0.6.  So we have to drop support for those HCatalog versions once we start using this package


---

* [OOZIE-2034](https://issues.apache.org/jira/browse/OOZIE-2034) | *Blocker* | **Disable SSLv3 (POODLEbleed vulnerability)**

We should disable SSLv3 to protect against the POODLEbleed vulnerability.
See [CVE-2014-3566|http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2014-3566]

We have {{sslProtocol="TLS"}} set to only allow TLS in ssl-server.xml, but when I checked, I could still connect with SSLv3.  From what I can tell, there's some ambiguity in the tomcat configs between {{sslProtocol}}, {{sslProtocols}}, and {{sslEnabledProtocols}} so we probably have the wrong thing here.


---

* [OOZIE-2033](https://issues.apache.org/jira/browse/OOZIE-2033) | *Major* | **HA and misc improvements to SSL docs**

We were recently looking into using Oozie HA with Kerberos with SSL (I know, that's crazy) and ran into some trickiness.  We've figured it out, but there's some information that would be good to know when using HA with SSL.  I've also got some other misc improvements for the SSL docs.


---

* [OOZIE-2032](https://issues.apache.org/jira/browse/OOZIE-2032) | *Major* | **If using SSL, the port reported by Oozie is incorrect for HA tasks**

{{ConfigUtils.getOozieURL(boolean secure)}} returns the Oozie URL and is used by a number of things, mostly for HA (e.g. printing out the list of servers/urls, log streaming, etc).  If using SSL with HA, it uses the http port instead of the https port but with the https prefix, which is invalid.

{noformat}
$ oozie admin -servers
rkanter-has-2.ent.cloudera.com : https://rkanter-has-2.ent.cloudera.com:11000/oozie
rkanter-has-1.ent.cloudera.com : https://rkanter-has-1.ent.cloudera.com:11000/oozie
rkanter-has-3.ent.cloudera.com : https://rkanter-has-3.ent.cloudera.com:11000/oozie
{noformat}


---

* [OOZIE-2026](https://issues.apache.org/jira/browse/OOZIE-2026) | *Major* | **fix synchronization in SLACalculatorMemory.addJobStatus to avoid duplicated SLA message**

there is case where job generates start event by SLACalculatorMemory.addJobStatus, but before eventProcessed flag updated on DB side, SLA worker thread picks the action (SLACalculatorMemory.updateJobSla), end up sending duplicated messages. this patch is to fix synchronized block in addJobStatus to prevent this.


---

* [OOZIE-2023](https://issues.apache.org/jira/browse/OOZIE-2023) | *Major* | **Job rerun can stuck in prep**

Job rerun is divided into two commands.
1. ReRunXCommand, which delete action and set job status to prep.
2. StartXCommand, which start WF.

If ReRunXCommand fails to acquire job lock, it's requeued and oozie will start StartXCommand command. ReRunXCommand will run again ( after/parallel to StartXCommand) when it can acquire lock.


{code}
    public void reRun(String jobId, Configuration conf) throws DagEngineException {
        try {
            WorkflowJobBean wfBean = WorkflowJobQueryExecutor.getInstance().get(WorkflowJobQuery.GET\_WORKFLOW, jobId);
            Configuration wfConf = new XConfiguration(new StringReader(wfBean.getConf()));
            XConfiguration.copy(conf, wfConf);
            validateReRunConfiguration(wfConf);
            new ReRunXCommand(jobId, wfConf).call();
            start(jobId);
        }
        catch (CommandException ex) {
            throw new DagEngineException(ex);
        }
        catch (JPAExecutorException ex) {
            throw new DagEngineException(ex);
        }
        catch (IOException ex) {
            throw new DagEngineException(ErrorCode.E0803, ex.getMessage());
        }
    }
{code}


---

* [OOZIE-2019](https://issues.apache.org/jira/browse/OOZIE-2019) | *Major* | **SLA miss processed on server2 not send email**

It's because of below function. When we try to load config string from DB and recreate event action map, it doesn't create event map properly.
 "StringTokenizer(slaConfig, "},");" has issue. It tries to tokenized on ","  and "},".


a.slaConfig="{alert\_contact=hadoopqa@oozie.com},{alert\_events=START\_MET,DURATION\_MISS,END\_MET},";
Will become
alert\_events=START\_MET
alert\_contact=hadoopqa@oozie.com.

Fix is used to use String.split().

{code}
    private void slaConfigStringToMap() {
        if (slaConfig != null) {
            StringTokenizer st = new StringTokenizer(slaConfig, "},");
            while (st.hasMoreTokens()) {
                String token = st.nextToken();
                String[] pair = token.split("=");
                if (pair.length == 2) {
                    slaConfigMap.put(pair[0].substring(1), pair[1]);
                }
            }
        }
    }
{code}


---

* [OOZIE-2017](https://issues.apache.org/jira/browse/OOZIE-2017) | *Critical* | **On startup, StatusTransitService can transition Coordinators that were in PREPSUSPENDED to RUNNING**

You can reproduce this issue easily:
# Submit a coordinator job that starts in the future
#- It enters PREP state
# Suspend the coordinator job
#- It enters PREPSUSPENDED state
# Restart Oozie and wait about a minute or so
#- The job transitions back to RUNNING state by itself

This is the wrong behavior for two reasons:
# PREPSUSPENDED --> RUNNING is not a valid transition (it has to go to PREP first)
# It shouldn't resume by itself

The log shows that the StatusTransitService is doing it.


---

* [OOZIE-2005](https://issues.apache.org/jira/browse/OOZIE-2005) | *Major* | **Coordinator rerun fails to initialize error code and message.**

Error code and message of previous run remain on UI even when rerun succeeds


---

* [OOZIE-1997](https://issues.apache.org/jira/browse/OOZIE-1997) | *Blocker* | **Oozie cannot materialize coordinator job with sqlserver in windows**

The error of " An aggregate may not appear in the WHERE clause unless it is in a subquery contained in a HAVING clause or a select list, and the column being aggregated is an outer reference" is specific to sqlserver since it's stricter on subquery syntax. This is introduced by https://issues.apache.org/jira/browse/OOZIE-1527. As a result of this change, coordinator job will not work in windows environment.
{code}
2014-09-06 00:06:06,144 ERROR CoordMaterializeTriggerService$CoordMaterializeTriggerRunnable:540 - SERVER[ONPREM-HCAT1] USER[-] GROUP[-] TOKEN[-] APP[-] JOB[-] ACTION[-] Exception while attempting to materialize coordinator jobs, An aggregate may not appear in the WHERE clause unless it is in a subquery contained in a HAVING clause or a select list, and the column being aggregated is an outer reference. {prepstmnt 486918974 SELECT TOP 50 t0.id, t0.last\_modified\_time FROM COORD\_JOBS t0 WHERE (t0.start\_time <= ? AND (t0.status = ? OR t0.status = ? OR t0.status = ?) AND (t0.next\_matd\_time < ? OR t0.next\_matd\_time IS NULL) AND (t0.next\_matd\_time IS NULL OR t0.end\_time > t0.next\_matd\_time AND (t0.pause\_time IS NULL OR t0.pause\_time > t0.next\_matd\_time)) AND t0.mat\_throttling > (SELECT COUNT(t0.id) FROM COORD\_ACTIONS t1 WHERE (t1.job\_id = t0.id AND t1.status = ?))) ORDER BY t0.last\_modified\_time ASC} [code=147, state=S0001]
<openjpa-2.2.2-r422266:1468616 fatal general error> org.apache.openjpa.persistence.PersistenceException: An aggregate may not appear in the WHERE clause unless it is in a subquery contained in a HAVING clause or a select list, and the column being aggregated is an outer reference. {prepstmnt 486918974 SELECT TOP 50 t0.id, t0.last\_modified\_time FROM COORD\_JOBS t0 WHERE (t0.start\_time <= ? AND (t0.status = ? OR t0.status = ? OR t0.status = ?) AND (t0.next\_matd\_time < ? OR t0.next\_matd\_time IS NULL) AND (t0.next\_matd\_time IS NULL OR t0.end\_time > t0.next\_matd\_time AND (t0.pause\_time IS NULL OR t0.pause\_time > t0.next\_matd\_time)) AND t0.mat\_throttling > (SELECT COUNT(t0.id) FROM COORD\_ACTIONS t1 WHERE (t1.job\_id = t0.id AND t1.status = ?))) ORDER BY t0.last\_modified\_time ASC} [code=147, state=S0001]
FailedObject: select w.id from CoordinatorJobBean w where w.startTimestamp <= :matTime AND (w.statusStr = 'PREP' OR w.statusStr = 'RUNNING' or w.statusStr = 'RUNNINGWITHERROR') AND (w.nextMaterializedTimestamp < :matTime OR w.nextMaterializedTimestamp IS NULL) AND (w.nextMaterializedTimestamp IS NULL OR (w.endTimestamp > w.nextMaterializedTimestamp AND (w.pauseTimestamp IS NULL OR w.pauseTimestamp > w.nextMaterializedTimestamp))) and w.matThrottling > ( select count(w.id) from CoordinatorActionBean a where a.jobId = w.id and a.statusStr = 'WAITING') order by w.lastModifiedTimestamp [java.lang.String]
	at org.apache.openjpa.jdbc.sql.DBDictionary.narrow(DBDictionary.java:4962)
	at org.apache.openjpa.jdbc.sql.DBDictionary.newStoreException(DBDictionary.java:4922)
	at org.apache.openjpa.jdbc.sql.SQLExceptions.getStore(SQLExceptions.java:136)
	at org.apache.openjpa.jdbc.sql.SQLExceptions.getStore(SQLExceptions.java:118)
	at org.apache.openjpa.jdbc.sql.SQLExceptions.getStore(SQLExceptions.java:70)
	at org.apache.openjpa.jdbc.kernel.SelectResultObjectProvider.handleCheckedException(SelectResultObjectProvider.java:155)
	at org.apache.openjpa.kernel.QueryImpl$PackingResultObjectProvider.handleCheckedException(QueryImpl.java:2111)
	at org.apache.openjpa.lib.rop.EagerResultList.<init>(EagerResultList.java:40)
	at org.apache.openjpa.kernel.QueryImpl.toResult(QueryImpl.java:1251)
	at org.apache.openjpa.kernel.QueryImpl.execute(QueryImpl.java:1007)
	at org.apache.openjpa.kernel.QueryImpl.execute(QueryImpl.java:863)
	at org.apache.openjpa.kernel.QueryImpl.execute(QueryImpl.java:794)
	at org.apache.openjpa.kernel.DelegatingQuery.execute(DelegatingQuery.java:542)
	at org.apache.openjpa.persistence.QueryImpl.execute(QueryImpl.java:286)
	at org.apache.openjpa.persistence.QueryImpl.getResultList(QueryImpl.java:302)
	at org.apache.oozie.service.JPAService.executeGetList(JPAService.java:481)
	at org.apache.oozie.executor.jpa.CoordJobQueryExecutor.getList(CoordJobQueryExecutor.java:348)
	at org.apache.oozie.service.CoordMaterializeTriggerService$CoordMaterializeTriggerRunnable.materializeCoordJobs(CoordMaterializeTriggerService.java:158)
	at org.apache.oozie.service.CoordMaterializeTriggerService$CoordMaterializeTriggerRunnable.runCoordJobMatLookup(CoordMaterializeTriggerService.java:148)
	at org.apache.oozie.service.CoordMaterializeTriggerService$CoordMaterializeTriggerRunnable.run(CoordMaterializeTriggerService.java:94)
	at org.apache.oozie.service.SchedulerService$2.run(SchedulerService.java:174)
	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:471)
	at java.util.concurrent.FutureTask$Sync.innerRunAndReset(FutureTask.java:351)
	at java.util.concurrent.FutureTask.runAndReset(FutureTask.java:178)
	at java.util.concurrent.ScheduledThreadPoolExecutor$ScheduledFutureTask.access$301(ScheduledThreadPoolExecutor.java:178)
	at java.util.concurrent.ScheduledThreadPoolExecutor$ScheduledFutureTask.run(ScheduledThreadPoolExecutor.java:293)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:722)
Caused by: org.apache.openjpa.lib.jdbc.ReportingSQLException: An aggregate may not appear in the WHERE clause unless it is in a subquery contained in a HAVING clause or a select list, and the column being aggregated is an outer reference. {prepstmnt 486918974 SELECT TOP 50 t0.id, t0.last\_modified\_time FROM COORD\_JOBS t0 WHERE (t0.start\_time <= ? AND (t0.status = ? OR t0.status = ? OR t0.status = ?) AND (t0.next\_matd\_time < ? OR t0.next\_matd\_time IS NULL) AND (t0.next\_matd\_time IS NULL OR t0.end\_time > t0.next\_matd\_time AND (t0.pause\_time IS NULL OR t0.pause\_time > t0.next\_matd\_time)) AND t0.mat\_throttling > (SELECT COUNT(t0.id) FROM COORD\_ACTIONS t1 WHERE (t1.job\_id = t0.id AND t1.status = ?))) ORDER BY t0.last\_modified\_time ASC} [code=147, state=S0001]
	at org.apache.openjpa.lib.jdbc.LoggingConnectionDecorator.wrap(LoggingConnectionDecorator.java:219)
	at org.apache.openjpa.lib.jdbc.LoggingConnectionDecorator.wrap(LoggingConnectionDecorator.java:203)
	at org.apache.openjpa.lib.jdbc.LoggingConnectionDecorator.access$700(LoggingConnectionDecorator.java:59)
	at org.apache.openjpa.lib.jdbc.LoggingConnectionDecorator$LoggingConnection$LoggingPreparedStatement.executeQuery(LoggingConnectionDecorator.java:1118)
	at org.apache.openjpa.lib.jdbc.DelegatingPreparedStatement.executeQuery(DelegatingPreparedStatement.java:268)
	at org.apache.openjpa.jdbc.kernel.JDBCStoreManager$CancelPreparedStatement.executeQuery(JDBCStoreManager.java:1801)
	at org.apache.openjpa.lib.jdbc.DelegatingPreparedStatement.executeQuery(DelegatingPreparedStatement.java:258)
	at org.apache.openjpa.jdbc.sql.SelectImpl.executeQuery(SelectImpl.java:499)
	at org.apache.openjpa.jdbc.sql.SelectImpl.execute(SelectImpl.java:424)
	at org.apache.openjpa.jdbc.sql.SelectImpl.execute(SelectImpl.java:382)
	at org.apache.openjpa.jdbc.kernel.SelectResultObjectProvider.open(SelectResultObjectProvider.java:94)
	at org.apache.openjpa.kernel.QueryImpl$PackingResultObjectProvider.open(QueryImpl.java:2070)
	at org.apache.openjpa.lib.rop.EagerResultList.<init>(EagerResultList.java:34)
	... 21 more
NestedThrowables:
com.microsoft.sqlserver.jdbc.SQLServerException: An aggregate may not appear in the WHERE clause unless it is in a subquery contained in a HAVING clause or a select list, and the column being aggregated is an outer reference.
	at com.microsoft.sqlserver.jdbc.SQLServerException.makeFromDatabaseError(SQLServerException.java:197)
	at com.microsoft.sqlserver.jdbc.SQLServerStatement.getNextResult(SQLServerStatement.java:1493)
	at com.microsoft.sqlserver.jdbc.SQLServerPreparedStatement.doExecutePreparedStatement(SQLServerPreparedStatement.java:390)
	at com.microsoft.sqlserver.jdbc.SQLServerPreparedStatement$PrepStmtExecCmd.doExecute(SQLServerPreparedStatement.java:340)
	at com.microsoft.sqlserver.jdbc.TDSCommand.execute(IOBuffer.java:4615)
	at com.microsoft.sqlserver.jdbc.SQLServerConnection.executeCommand(SQLServerConnection.java:1400)
	at com.microsoft.sqlserver.jdbc.SQLServerStatement.executeCommand(SQLServerStatement.java:179)
	at com.microsoft.sqlserver.jdbc.SQLServerStatement.executeStatement(SQLServerStatement.java:154)
	at com.microsoft.sqlserver.jdbc.SQLServerPreparedStatement.executeQuery(SQLServerPreparedStatement.java:283)
	at org.apache.commons.dbcp.DelegatingPreparedStatement.executeQuery(DelegatingPreparedStatement.java:96)
	at org.apache.commons.dbcp.DelegatingPreparedStatement.executeQuery(DelegatingPreparedStatement.java:96)
	at org.apache.openjpa.lib.jdbc.DelegatingPreparedStatement.executeQuery(DelegatingPreparedStatement.java:270)
	at org.apache.openjpa.lib.jdbc.LoggingConnectionDecorator$LoggingConnection$LoggingPreparedStatement.executeQuery(LoggingConnectionDecorator.java:1116)
	at org.apache.openjpa.lib.jdbc.DelegatingPreparedStatement.executeQuery(DelegatingPreparedStatement.java:268)
	at org.apache.openjpa.jdbc.kernel.JDBCStoreManager$CancelPreparedStatement.executeQuery(JDBCStoreManager.java:1801)
	at org.apache.openjpa.lib.jdbc.DelegatingPreparedStatement.executeQuery(DelegatingPreparedStatement.java:258)
	at org.apache.openjpa.jdbc.sql.SelectImpl.executeQuery(SelectImpl.java:499)
	at org.apache.openjpa.jdbc.sql.SelectImpl.execute(SelectImpl.java:424)
	at org.apache.openjpa.jdbc.sql.SelectImpl.execute(SelectImpl.java:382)
	at org.apache.openjpa.jdbc.kernel.SelectResultObjectProvider.open(SelectResultObjectProvider.java:94)
	at org.apache.openjpa.kernel.QueryImpl$PackingResultObjectProvider.open(QueryImpl.java:2070)
	at org.apache.openjpa.lib.rop.EagerResultList.<init>(EagerResultList.java:34)
	at org.apache.openjpa.kernel.QueryImpl.toResult(QueryImpl.java:1251)
	at org.apache.openjpa.kernel.QueryImpl.execute(QueryImpl.java:1007)
	at org.apache.openjpa.kernel.QueryImpl.execute(QueryImpl.java:863)
	at org.apache.openjpa.kernel.QueryImpl.execute(QueryImpl.java:794)
	at org.apache.openjpa.kernel.DelegatingQuery.execute(DelegatingQuery.java:542)
	at org.apache.openjpa.persistence.QueryImpl.execute(QueryImpl.java:286)
	at org.apache.openjpa.persistence.QueryImpl.getResultList(QueryImpl.java:302)
	at org.apache.oozie.service.JPAService.executeGetList(JPAService.java:481)
	at org.apache.oozie.executor.jpa.CoordJobQueryExecutor.getList(CoordJobQueryExecutor.java:348)
	at org.apache.oozie.service.CoordMaterializeTriggerService$CoordMaterializeTriggerRunnable.materializeCoordJobs(CoordMaterializeTriggerService.java:158)
	at org.apache.oozie.service.CoordMaterializeTriggerService$CoordMaterializeTriggerRunnable.runCoordJobMatLookup(CoordMaterializeTriggerService.java:148)
	at org.apache.oozie.service.CoordMaterializeTriggerService$CoordMaterializeTriggerRunnable.run(CoordMaterializeTriggerService.java:94)
	at org.apache.oozie.service.SchedulerService$2.run(SchedulerService.java:174)
	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:471)
	at java.util.concurrent.FutureTask$Sync.innerRunAndReset(FutureTask.java:351)
	at java.util.concurrent.FutureTask.runAndReset(FutureTask.java:178)
	at java.util.concurrent.ScheduledThreadPoolExecutor$ScheduledFutureTask.access$301(ScheduledThreadPoolExecutor.java:178)
	at java.util.concurrent.ScheduledThreadPoolExecutor$ScheduledFutureTask.run(ScheduledThreadPoolExecutor.java:293)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:722)
{code}


---

* [OOZIE-1989](https://issues.apache.org/jira/browse/OOZIE-1989) | *Blocker* | **NPE during a rerun with forks**

OOZIE-1879 fixes a problem where the order of actions that the actions in a fork ended can be different than when they are executed during a rerun, resulting in an error.  It does this by using a comparator to sort them into the proper order in LiteWorkflowInstance.  However, the code assumes that all actions in the executionPath have an end time, which is not always true.  If that happens, you get an NPE like this:
{noformat}
java.lang.NullPointerException
        at org.apache.oozie.workflow.lite.LiteWorkflowInstance$ActionEndTimesComparator.compare(LiteWorkflowInstance.java:739)
        at org.apache.oozie.workflow.lite.LiteWorkflowInstance$ActionEndTimesComparator.compare(LiteWorkflowInstance.java:719)
        at java.util.TimSort.countRunAndMakeAscending(TimSort.java:324)
        at java.util.TimSort.sort(TimSort.java:189)
        at java.util.TimSort.sort(TimSort.java:173)
        at java.util.Arrays.sort(Arrays.java:659)
        at java.util.Collections.sort(Collections.java:217)
        at org.apache.oozie.workflow.lite.LiteWorkflowInstance.signal(LiteWorkflowInstance.java:316)
        at org.apache.oozie.command.wf.SignalXCommand.execute(SignalXCommand.java:190)
        at org.apache.oozie.command.wf.SignalXCommand.execute(SignalXCommand.java:73)
        at org.apache.oozie.command.XCommand.call(XCommand.java:283)
        at org.apache.oozie.service.CallableQueueService$CompositeCallable.call(CallableQueueService.java:323)
        at org.apache.oozie.service.CallableQueueService$CompositeCallable.call(CallableQueueService.java:252)
        at org.apache.oozie.service.CallableQueueService$CallableWrapper.run(CallableQueueService.java:174)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        at java.lang.Thread.run(Thread.java:745)
{noformat}


---

* [OOZIE-1984](https://issues.apache.org/jira/browse/OOZIE-1984) | *Major* | **SLACalculator in HA mode performs duplicate operations on records with completed jobs**

Scenario:

SLA periodic run has already processed start,duration and end for a job's sla entry. But job notification for that job came after this, and triggers the sla listener.

Buggy part:
{code}
SLACalculatorMemory.java

else if (Services.get().get(JobsConcurrencyService.class).isHighlyAvailableMode()) {
                // jobid might not exist in slaMap in HA Setting
                SLARegistrationBean slaRegBean = SLARegistrationQueryExecutor.getInstance().get(
                        SLARegQuery.GET\_SLA\_REG\_ALL, jobId);
                if (slaRegBean != null) { // filter out jobs picked by SLA job event listener
                                          // but not actually configured for SLA
                    SLASummaryBean slaSummaryBean = SLASummaryQueryExecutor.getInstance().get(
                            SLASummaryQuery.GET\_SLA\_SUMMARY, jobId);
                    slaCalc = new SLACalcStatus(slaSummaryBean, slaRegBean);
                    if (slaCalc.getEventProcessed() < 7) {
                        slaMap.put(jobId, slaCalc);
                    }
                }
            }
        }
        if (slaCalc != null) {
..
Object eventProcObj = ((SLASummaryQueryExecutor) SLASummaryQueryExecutor.getInstance())
                                .getSingleValue(SLASummaryQuery.GET\_SLA\_SUMMARY\_EVENTPROCESSED, jobId);
                        byte eventProc = ((Byte) eventProcObj).byteValue();
..
processJobEndSuccessSLA(slaCalc, startTime, endTime);
{code}

method processJobEndSuccesSLA goes ahead and checks second LSB bit of eventProc and sends duration event \_again\_. So the bug here is two-fold:
 * if all events are already processed, still invokes this function
 * event processed is 8 (1000), so second LSB bit is unset and hence duration processed.

Fix - not invoke function when eventProc = 1000


---

* [OOZIE-1961](https://issues.apache.org/jira/browse/OOZIE-1961) | *Minor* | **Remove requireJavaVersion from enforcer rules**

Currently the Oozie build fails with Java 1.7 due to this enforcer rule in {{pom.xml}}:

{code:xml}
<requireJavaVersion>
  <version>[${javaVersion}.0,${javaVersion}.1000}]</version>
</requireJavaVersion>
{code}

And {{javaVersion}} is set to {{1.6}}.

Maybe I'm missing something but I don't see why Oozie wouldn't compile/work with 1.7 or 1.8. This patch just removes this enforcer rule.


---

* [OOZIE-1959](https://issues.apache.org/jira/browse/OOZIE-1959) | *Critical* | **TestZKUtilsWithSecurity fails**

TestZKUtilsWithSecurity fails:
{noformat}
-------------------------------------------------------
 T E S T S
-------------------------------------------------------
Picked up \_JAVA\_OPTIONS: -Djava.awt.headless=true
Concurrency config is parallel='classes', perCoreThreadCount=false, threadCount=1, useUnlimitedThreads=false
2014-07-31 16:44:33.786 java[38553:da03] Unable to load realm info from SCDynamicStore
Running org.apache.oozie.util.TestZKUtilsWithSecurity
Tests run: 2, Failures: 0, Errors: 2, Skipped: 0, Time elapsed: 71.418 sec <<< FAILURE!

Results :

Tests in error: 
  testCheckAndSetACLs(org.apache.oozie.util.TestZKUtilsWithSecurity): E1700: Issue communicating with ZooKeeper: KeeperErrorCode = AuthFailed for /services
  testNewUsingACLs(org.apache.oozie.util.TestZKUtilsWithSecurity): KeeperErrorCode = AuthFailed for /oozie

Tests run: 2, Failures: 0, Errors: 2, Skipped: 0
{noformat}

It would also be good to get test-patch to run this (it currently does not because it needs to be run in a separate JVM as it changes JVM security settings that can't be unchanged); I think we can actually just create a new module for ZK Security tests (and move this test there) because each module uses a new JVM.


---

* [OOZIE-1958](https://issues.apache.org/jira/browse/OOZIE-1958) | *Major* | **address duplication of env variables in oozie.launcher.yarn.app.mapreduce.am.env when running with uber mode**

Hadoop 2.X has the weird behavior to translate yarn.app.mapreduce.am.env,
JAVA\_HOME=/home/gs/java/jdk64/current,JAVA\_HOME=/home/gs/java/jdk64/current 
to
JAVA\_HOME=/home/gs/java/jdk64/current:JAVA\_HOME=/home/gs/java/jdk64/current

due to this, some of env variables are not taken in effect properly.

this problem happens when running launcher with uber mode in Hadoop 2.X, 
since oozie copies mapreduce.map.env to yarn.app.mapreduce.am.env, like following case
  
{code}
<property>
      <name>oozie.launcher.mapreduce.map.env</name>
      <value>JAVA\_HOME=/home/gs/java/jdk64/current</value>
</property>
<property>
      <name>oozie.launcher.yarn.app.mapreduce.am.env</name>
      <value>JAVA\_HOME=/home/gs/java/jdk64/current</value>
</property>
{code}

this patch is to do 
   1) Deduplication before appending map.env to am.env
   2) If there is a conflict, turn of uber mode AM.


---

* [OOZIE-1957](https://issues.apache.org/jira/browse/OOZIE-1957) | *Major* | **Coord update command override group when oozie.service.AuthorizationService.default.group.as.acl is set and group/acl is not configured in job property**

When oozie.service.AuthorizationService.default.group.as.acl is set, and group/acl is not configured in job property. Default group is used.
Update overrides the default group.


---

* [OOZIE-1950](https://issues.apache.org/jira/browse/OOZIE-1950) | *Major* | **Coordinator job info should support timestamp (nominal time)**

It will be useful for user to list all actions (with length and offset) after/before nominal time.


---

* [OOZIE-1945](https://issues.apache.org/jira/browse/OOZIE-1945) | *Trivial* | **NPE in JaveActionExecutor#check()**

in method check()
{code}
 String errorCode = props.getProperty("error.code");
                            if (errorCode.equals("0")) {
                                errorCode = "JA018";
                            }
                            if (errorCode.equals("-1")) {
                                errorCode = "JA019";
                            }
                            errorReason = props.getProperty("error.reason");
{code}
if error.code is null, these leads to NPEs
easy fix
{code}
if ("0".equals(errorCode))
...
{code}


---

* [OOZIE-1944](https://issues.apache.org/jira/browse/OOZIE-1944) | *Major* | **Recursive variable resolution broken when same parameter name in config-default and action conf**

Hitting error
{code}
can not create DagEngine for submitting jobs
org.apache.oozie.DagEngineException: E0803: IO error, Variable
substitution depth too large: 20 ${param}/000
{code}

when config-default.xml has
{{param=default}}
and action conf has
{code}
<action name="my-wf-action">
...
<configuration>
<property>
    <name>param</name>
    <value>${param}/000</value>
</property>
</configuration>
{code}


---

* [OOZIE-1935](https://issues.apache.org/jira/browse/OOZIE-1935) | *Trivial* | **Log level (ActionStartXCommand) and Doc fix (CoordinatorFunctionalSpec)**

Demoting log level in ActionStartXCommand for non-WARN type messages.
And,
Doc clarification fix in CoordinatorFunctionalSpec - HCatalog EL functions section for coord:databaseIn, coord:databaseOut, coord:tableIn and coord:tableOut


---

* [OOZIE-1934](https://issues.apache.org/jira/browse/OOZIE-1934) | *Major* | **coordinator action repeatedly picked up by cachePurgeWorker of PartitionDependencyManagerService**

cachePurgeWorker trying to remove the same coordinator action repeatedly. also log message need to be addd for better debugging


---

* [OOZIE-1933](https://issues.apache.org/jira/browse/OOZIE-1933) | *Major* | **SLACalculatorMemory HA changes assume SLARegistrationBean exists for all jobs**

SLACalculatorMemory.addJobStatus()
{code}
else {
                // jobid might not exist in slaMap in HA Setting
                SLARegistrationBean slaRegBean = SLARegistrationQueryExecutor.getInstance().get(
                        SLARegQuery.GET\_SLA\_REG\_ALL, jobId);
                SLASummaryBean slaSummaryBean = SLASummaryQueryExecutor.getInstance().get(SLASummaryQuery.GET\_SLA\_SUMMARY,
                        jobId);
                slaCalc = new SLACalcStatus(slaSummaryBean, slaRegBean);
{code}

Because of SLA Listener, job notification event triggers this even for jobs with no SLA configured - leading to NPE in the SLACalcStatus constructor and annoying exception stacktraces in logs

Patch to also include log prefix addition to some SLACalculator log line


---

* [OOZIE-1932](https://issues.apache.org/jira/browse/OOZIE-1932) | *Major* | **Services should load CallableQueueService after MemoryLocksService**

This is not a problem during startup but is during shutdown, as services are destroyed in reverse order of initialization. Hence, when MemoryLocksService destroy sets it to null, and commands are still executing due to CallableQueueService still active, they all encounter NPEs during locking. This is a simple fix in oozie-default.xml to set MemoryLocksService before in the order of services loading.


---

* [OOZIE-1930](https://issues.apache.org/jira/browse/OOZIE-1930) | *Major* | **oozie coordinator "-info desc" returns earliest instead of latest actions when specifying "len" after oozie-1532**

  This one definitely needs to be part of 4.1


---

* [OOZIE-1926](https://issues.apache.org/jira/browse/OOZIE-1926) | *Major* | **make gz blob compression as default**

this helps reduce DB size.


---

* [OOZIE-1925](https://issues.apache.org/jira/browse/OOZIE-1925) | *Major* | **upgrade tomcat to 6.0.41**

We should upgrade tomcat to 6.0.41, which includes bug and security fixes.


---

* [OOZIE-1923](https://issues.apache.org/jira/browse/OOZIE-1923) | *Major* | **ZKLocksService locks are not re-entrant like MemoryLocks**

This is because we are creating InterProcessReadWriteLock instance for every path. 
We should store InterProcessReadWriteLock and reuse for same path like MemoryLocksService.

We should also add tests for both ZKLocksService and MemoryLocksService to verify.


---

* [OOZIE-1920](https://issues.apache.org/jira/browse/OOZIE-1920) | *Blocker* | **Capture Output for SSH Action doesn't work**

Running a simple workflow that have a shell action with capture-output enabled, the SShActionExecutor look at the wrong stdout file. This is the the command that I found in the log:

    ssh -o PasswordAuthentication=no -o KbdInteractiveDevices=no -o StrictHostKeyChecking=no -o ConnectTimeout=20 workflow@redhat5 cat oozie-oozi/0000008-140708170302737-oozie-oozi-W/fileProcessing--ssh/22350.0000008-140708170302737-oozie-oozi-W@fileProcessing@1.stdout


But the generated stdout file is `/home/instadoc/oozie-oozi/0000008-140708170302737-oozie-oozi-W/fileProcessing--ssh/22350.0000008-140708170302737-oozie-oozi-W@fileProcessing@0.stdout`

If you relaunch the action the ID that prepend the .stdout extension could vary (ie: @9.stdout, @4.stdout) but the SShActionExecutor looks always at @0.stdout.


---

* [OOZIE-1916](https://issues.apache.org/jira/browse/OOZIE-1916) | *Minor* | **Use Curator leader latch instead of checking the order of Oozie servers**

We currently have a few tasks (e.g. Purging old jobs) that we only want to do in one Oozie server.  We currently simply check which Oozie server is first in ZooKeeper's list of servers (i.e. the order they connected).  We haven't seen any problems with this, but it might be a good idea to replace this with Curator's leader-latch, which sounds more robust.  

The leader path should probably be something like "/services/leader".

Make sure errors and edge cases are handled properly, including what happens when the leader dies without unregistering, etc.

http://curator.apache.org/curator-recipes/leader-latch.html


---

* [OOZIE-1915](https://issues.apache.org/jira/browse/OOZIE-1915) | *Major* | **Move system properties to conf properties**

There are few properties like {{oozie.instance.id}}, {{oozie.http.hostname}}, {{oozie.http.port}} which need to be configured as system property (-D).
This are mostly used for HA.

Let's have only one way of configuration, through oozie-default/oozie-site.
It will avoid confusion and ease deployment.


---

* [OOZIE-1914](https://issues.apache.org/jira/browse/OOZIE-1914) | *Major* | **CLI should retry on timeout**

In HA VIP/load balancer might take some time to realized that system is down.
In case of timeout CLI should retry ( after some delay), so that VIP can redirect it to other server.


---

* [OOZIE-1911](https://issues.apache.org/jira/browse/OOZIE-1911) | *Major* | **SLA calculation in HA mode does wrong bit comparison for 'start' and 'duration'**

In chronological order:

Server 1:
Job's SLA eventProcessed set to 0101 => Start and End sla processed.

Server 2:
Receives above job's status event, processes remaining 'duration' sla. eventProcessed now = 0111, but incremented to 1000 due to
{code}
SLACalculatorMemory.addJobStatus() : 762
if (slaCalc.getEventProcessed() == 7) {
      slaInfo.setEventProcessed(8);
     slaMap.remove(jobId);
}
{code}

Back to Server 1: (doing periodic SLA checks)
{code}
SLACalculatorMemory.updateJobSla() : 483
if ((eventProc & 1) == 0) { // first bit (start-processed) unset
   if (reg.getExpectedStart() != null) {
         if (reg.getExpectedStart().getTime() + jobEventLatency < System.currentTimeMillis()) {
               // goes ahead and enqueues another START\_MISS event and DURATION\_MET event
{code}

Conclusion, need to fix that check for least significant bit (and next to it) for 'start' and 'duration' to avoid duplicate events


---

* [OOZIE-1909](https://issues.apache.org/jira/browse/OOZIE-1909) | *Major* | **log prefix information missing in JavaActionExecutor.check**

log prefix information (e.g. USER,GROUP, TOKEN, APP, JOB) are missing, as shown in the example.   due to this issue,  this log message does not show up at CLI command ($ oozie job -log 0003855-140611203720-oozie-oozi-W )

{noformat}
2014-06-12 05:00:45,270  WARN PigActionExecutor:542 [pool-2-thread-214] -
USER[-] GROUP[-] TOKEN[-] APP[-] JOB[-]
ACTION[0003855-140611203720-oozie-oozi-W@pig1] Launcher exception: Creation of
partition is not supported for
hcat://xxxx.yahoo.com:9999/outdatabase1402549124488/outtable1402549124488/datestamp=201302152320;region=usa
{noformat}


---

* [OOZIE-1907](https://issues.apache.org/jira/browse/OOZIE-1907) | *Blocker* | **DB upgrade from 3.3.0 to trunk fails on derby**

In OOZIE-1674, we saw that there were a few problems upgrading the database from DB version 1 (Oozie 3) to DB version 3 (trunk) with Postgres.  It looks like a problem similar to [the second problem described in this comment on OOZIE-1674|https://issues.apache.org/jira/browse/OOZIE-1674?focusedCommentId=13878240&page=com.atlassian.jira.plugin.system.issuetabpanels:comment-tabpanel#comment-13878240] also applies to Derby when the database has content in it.  I must have previously tested this with an empty database, because that doesn't run into the problem.  

Here's the error you get:
{noformat}
...
Update db.version in OOZIE\_SYS table to 3
DONE
Converting clob columns to blob for all tables

Error: An attempt was made to get a data value of type 'java.sql.Clob' from a data value of type 'BLOB'.

Stack trace for the error was (for debug purposes):
--------------------------------------
java.sql.SQLDataException: An attempt was made to get a data value of type 'java.sql.Clob' from a data value of type 'BLOB'.
	at org.apache.derby.impl.jdbc.SQLExceptionFactory40.getSQLException(Unknown Source)
	at org.apache.derby.impl.jdbc.Util.newEmbedSQLException(Unknown Source)
	at org.apache.derby.impl.jdbc.Util.newEmbedSQLException(Unknown Source)
	at org.apache.derby.impl.jdbc.Util.generateCsSQLException(Unknown Source)
	at org.apache.derby.impl.jdbc.EmbedConnection.newSQLException(Unknown Source)
	at org.apache.derby.impl.jdbc.ConnectionChild.newSQLException(Unknown Source)
	at org.apache.derby.impl.jdbc.EmbedResultSet.dataTypeConversion(Unknown Source)
	at org.apache.derby.impl.jdbc.EmbedResultSet.getClob(Unknown Source)
	at org.apache.derby.impl.jdbc.EmbedResultSet.getClob(Unknown Source)
	at org.apache.oozie.tools.OozieDBCLI.convertClobToBlobinDerby(OozieDBCLI.java:616)
	at org.apache.oozie.tools.OozieDBCLI.ddlTweaksFor50(OozieDBCLI.java:679)
	at org.apache.oozie.tools.OozieDBCLI.upgradeDBto50(OozieDBCLI.java:239)
	at org.apache.oozie.tools.OozieDBCLI.upgradeDB(OozieDBCLI.java:219)
	at org.apache.oozie.tools.OozieDBCLI.run(OozieDBCLI.java:128)
	at org.apache.oozie.tools.OozieDBCLI.main(OozieDBCLI.java:76)
Caused by: java.sql.SQLException: An attempt was made to get a data value of type 'java.sql.Clob' from a data value of type 'BLOB'.
	at org.apache.derby.impl.jdbc.SQLExceptionFactory.getSQLException(Unknown Source)
	at org.apache.derby.impl.jdbc.SQLExceptionFactory40.wrapArgsForTransportAcrossDRDA(Unknown Source)
	... 15 more
--------------------------------------
{noformat}

This happens due to the {{push\_missing\_dependencies}} column already being a BLOB when the update tool is expecting it to be a CLOB.  When you upgrade from Oozie 3 (DB version 1) to Oozie 4 (DB version 2), the Oozie 4 db tool creates the column as a CLOB; then when you upgrade to trunk (DB version 3), the trunk db tool converts it to a BLOB.  However, when you upgrade directly from Oozie 3 (DB version 1) to trunk (DB version 3), the trunk db tool runs through both upgrade procedures but during the "Oozie 4 (DB version 2)" upgrade, the column is created as a BLOB already.

We can fix this in the same way we fixed in it OOZIE-1674.


---

* [OOZIE-1906](https://issues.apache.org/jira/browse/OOZIE-1906) | *Major* | **Service to periodically remove ZK lock**

We might have a case where lock are held-up and it never released bcz of exception. Service should remove those locks.


---

* [OOZIE-1896](https://issues.apache.org/jira/browse/OOZIE-1896) | *Major* | **ZKUUIDService - Too many job submission fails**

DistributedAtomicLong.prevalue and postValue  =0 and succeeded = false.

ZK error.
Thu Jun 12 22:22:00 2014: 2014-06-12 22:22:00,981 - INFO  [ProcessThread(sid:0 cport:-1)::PrepRequestProcessor@627] - Got user-level KeeperException when processing sessionid:0x145bf4221730116 type:setData cxid:0x2f992 zxid:0x30b14d txntype:-1 reqpath:n/a Error Path:/oozie\_test1/job\_id\_sequence Error:KeeperErrorCode = BadVersion for /oozie\_test1/job\_id\_sequence


---

* [OOZIE-1893](https://issues.apache.org/jira/browse/OOZIE-1893) | *Major* | **Recovery service will never recover bundle action if CoordSubmitXCommand command is lost**

If bundle action is in prep and coord submit command is lost, bundle action will never recover bcz of below condition.

baction.getCoordId() is null in that case and isJobIdForThisServer(baction.getCoordId()) will throw NPE.

{code}
RecoveryService.runBundleRecovery()

if (baction.getCoordId() == null && baction.getStatus() != Job.Status.PREP) {
	log.error("CoordId is null for Bundle action " + baction.getBundleActionId());
	continue;
}
if (Services.get().get(JobsConcurrencyService.class).isJobIdForThisServer(baction.getCoordId())) {
}
{code}


---

* [OOZIE-1886](https://issues.apache.org/jira/browse/OOZIE-1886) | *Major* | **Queue operation taking longer time**

Purshotam Shah added a comment - 24/May/14 00:36
We noticed that this fix is causing congestion. Queue operation were talking longer time than expected.
There are two lock being used for queuing commands, which is causing delay.
First, all queue command function of CallableQueueService is synchronized.

Second, add function of PriorityDelayQueue need to acquire ReentrantLock
lock, which was added as part of this patch.

Acquiring two lock for queueing a single command was slowing down the system.
Server was taking more than 4 sec, just to queue a command.
After we rollback this patch and server was back to normal.


---

* [OOZIE-1883](https://issues.apache.org/jira/browse/OOZIE-1883) | *Major* | **hostnameFilter has invalid url-pattern**

The hostnameFilter in web-common.xml is currently:
{code:xml}
<filter-mapping>
    <filter-name>hostnameFilter</filter-name>
    <url-pattern>*</url-pattern>
</filter-mapping>
{code}
However, '*' is not a valid url-pattern. From the servlet 2.5 spec:
{quote}
In the Web application deployment descriptor, the following syntax is used to define mappings:
* A string beginning with a ‘/’ character and ending with a ‘/*’ suffix is used
for path mapping.
* A string beginning with a ‘*.’ prefix is used as an extension mapping.
* A string containing only the ’/’ character indicates the "default" servlet of
the application. In this case the servlet path is the request URI minus the context path and the path info is null.
* All other strings are used for exact matches only.
{quote}

This causes the filter to not be applied correctly in some application servers such as WASLP


---

* [OOZIE-1882](https://issues.apache.org/jira/browse/OOZIE-1882) | *Minor* | **Bulk API with bundle Id should relax regex check for Id**

Some HA changes related to job-id have changed the traditional id structure
{{"\\d{7}-\\d{15}-oozie-[a-z]{4}-"}}. Need to revert that back to keep it backward compatible.


---

* [OOZIE-1879](https://issues.apache.org/jira/browse/OOZIE-1879) | *Blocker* | **Workflow Rerun causes error depending on the order of forked nodes**

Suppose you have a workflow like this:
{noformat}
start --> fork
fork --> shell1, shell2
shell1 --> join
shell2 --> join
join --> shell3
shell3 --> end
{noformat}
And all but shell3 are successful.  
Assuming you fix the problem with shell3, if you do a rerun, the following two outcomes can happen:
# If shell1 finished before shell2, then the rerun succeeds
# If shell2 finished before shell1, then the rerun fails

The error in the second outcome is simply this log message:
{noformat}
2014-05-29 17:17:03,735 ERROR org.apache.oozie.workflow.lite.LiteWorkflowInstance: SERVER[cdh5-1.cloudera.local] USER[pdvorak] GROUP[-] TOKEN[] APP[test-rerun-wf] JOB[0000004-140521220856264-oozie-oozi-W] ACTION[0000004-140521220856264-oozie-oozi-W@join] invalid execution path [/shell1/]
{noformat}

After a bunch of digging, I discovered that during a rerun with the above workflow or similar workflows, LiteWorkflowInstance#signal gets called for each action in the fork node in the order that they are listed in the fork node's XML; however, during the original run, LiteWorkflowInstance#signal gets called for each action in the order that they complete (i.e. endTime).  When these don't match, you get the above error.  The general fix for this is therefore to ensure that during a rerun, LiteWorkflowInstance#signal gets called for each action in the fork node in the order that they originally ran in.  And if you think about it, that is more correct than the current behavior anyway.


---

* [OOZIE-1878](https://issues.apache.org/jira/browse/OOZIE-1878) | *Major* | **Can't execute dryrun on the CLI**

Following command does not work.

{noformat}
$ oozie job -oozie http://localhost:11000/oozie -dryrun -config job.properties

Invalid sub-command: Missing required option: [-suspend suspend a job, -update Update coord definition and properties, -rerun rerun a job  (coordinator requires -action or -date, bundle requires -coordinator or -date), -configcontent job configuration, -submit submit a job, -definition job definition, -change change a coordinator job, -kill kill a job (coordinator can mention -action or -date), -run run a job, -log job log, -info info of a job, -resume resume a job, -start start a job, -dryrun Dryrun a workflow (since 3.3.2) or coordinator (since 2.0) job without actually executing it, -ignore change status of a coordinator job or action to IGNORED (-action required to ignore coord actions)]

use 'help [sub-command]' for help details
{noformat}


---

* [OOZIE-1877](https://issues.apache.org/jira/browse/OOZIE-1877) | *Major* | **Setting to fail oozie server startup in case of sharelib misconfiguration**

"OOZIE-1584 Setup sharelib using script and pickup latest(honor ship.launcher) and remove DFS dependency at startup" has removed sharelib dependency at startup.

If DFS is down or sharelib is misconfigured. Server will start without loading sharelib, admin can issue sharelibupdate command to load sharelib.
This is good, may not be acceptable in production. If sharelib is misconfigured then oozie server will come up without loading sharelib and all submitted hadoop job will fail.

Better to have a property to shutdown oozie server, if sharelib initialization fails.


---

* [OOZIE-1872](https://issues.apache.org/jira/browse/OOZIE-1872) | *Major* | **TestCoordActionInputCheckXCommand.testActionInputCheckLatestActionCreationTime is failing for past couple of builds**

https://builds.apache.org/job/oozie-trunk-precommit-build/1291/testReport/junit/org.apache.oozie.command.coord/TestCoordActionInputCheckXCommand/testActionInputCheckLatestActionCreationTime/


---

* [OOZIE-1865](https://issues.apache.org/jira/browse/OOZIE-1865) | *Major* | **Oozie servers can't talk to each other with Oozie HA and Kerberos**

When you use Oozie HA with Kerberos, you have to set {{oozie.authentication.kerberos.principal}} to {{HTTP/<load-balancer-host>}} instead of {{HTTP/<oozie-server-host>}}.  This allows clients to connect to any of the Oozie servers through the load balancer.  However, it also blocks clients from directly talking to any of the Oozie servers.  In and of itself, that's okay, but it turns out that in most cases, it also blocks the Oozie servers from talking to each other, namely for log streaming, the sharelibupdate command, and collating instrumentation/metrics (OOZIE-1676).  

Ultimately, what we need to do is allow Oozie to use both {{HTTP/<load-balancer-host>}} instead of {{HTTP/<oozie-server-host>}} at the same time so that clients (including Oozie servers, users, Web UI, etc) can talk to Oozie both through the load balancer and directly.  If my understanding of HADOOP-10158 is correct, HADOOP-10158 adds this ability.  For this JIRA, we should update Oozie to take advantage of HADOOP-10158.


---

* [OOZIE-1862](https://issues.apache.org/jira/browse/OOZIE-1862) | *Major* | **Add hadoop token file location for Hive/Tez jobs**

We need to set the configuration parameter tez.credentials.path to the same hadoop token file location as we set for mapreduce.job.credentials.binary

This is needed to run Hive/Tez jobs


---

* [OOZIE-1861](https://issues.apache.org/jira/browse/OOZIE-1861) | *Major* | **Pig action should work with tez mode**

  This should be allowed. Pig now has option to specify tez as execution mode.


---

* [OOZIE-1849](https://issues.apache.org/jira/browse/OOZIE-1849) | *Major* | **If the underlying job finishes while a Workflow is suspended, Oozie can take a while to realize it**

Suppose you have a Workflow and you suspend it while one of the actions is still RUNNING.  The underlying MR/Pig/etc job will continue running (as expected, because we can't pause those).  However, if that job finishes while the workflow is SUSPENDED, the CallbackServlet will receive the callback, but the ActionCheckXCommand won't update the action:
{noformat}
2014-05-16 17:40:57,959  INFO CallbackServlet:541 - SERVER[rkanter-mbp.local] USER[-] GROUP[-] TOKEN[-] APP[-] JOB[0000002-140516173529928-oozie-rkan-W] ACTION[0000002-140516173529928-oozie-rkan-W@mr-node] callback for action [0000002-140516173529928-oozie-rkan-W@mr-node]
2014-05-16 17:40:57,985  WARN ActionCheckXCommand:544 - SERVER[rkanter-mbp.local] USER[rkanter] GROUP[-] TOKEN[] APP[map-reduce-wf] JOB[0000002-140516173529928-oozie-rkan-W] ACTION[0000002-140516173529928-oozie-rkan-W@mr-node] E0818: Action [0000002-140516173529928-oozie-rkan-W@mr-node] status is running but WF Job [0000002-140516173529928-oozie-rkan-W] status is [SUSPENDED]. Expected status is RUNNING., Error Code: E0818
{noformat}
If you then resume the workflow, the action will stay RUNNING for up to 10 minutes (the default fallback polling interval), at which point the ActionCheckerService will run an ActionCheckXCommand that will pass, check the job, and finally mark the action as SUCCESSFUL.

We should fix this by one of the following:
# ResumeXCommand should also queue a ActionCheckXCommand (if the workflow was SUSPENDED) so we don't have to wait for the ActionCheckerService
# ActionCheckXCommand's precondition check should allow SUSPENDED workflows


---

* [OOZIE-1848](https://issues.apache.org/jira/browse/OOZIE-1848) | *Blocker* | **Pig actions fail due to missing joda-time jar from pig sharelib**

When I try to run the pig example, I get this Exception in the launcher log:
{noformat}
java.lang.NoClassDefFoundError: org/joda/time/ReadableInstant
	at org.apache.pig.newplan.logical.relational.LogicalSchema$LogicalFieldSchema.merge(LogicalSchema.java:404)
	at org.apache.pig.newplan.logical.relational.LogicalSchema.merge(LogicalSchema.java:768)
	at org.apache.pig.newplan.logical.relational.LOGenerate.getSchema(LOGenerate.java:158)
	at org.apache.pig.newplan.logical.optimizer.SchemaResetter.visit(SchemaResetter.java:123)
	at org.apache.pig.newplan.logical.relational.LOGenerate.accept(LOGenerate.java:245)
	at org.apache.pig.newplan.DependencyOrderWalker.walk(DependencyOrderWalker.java:75)
	at org.apache.pig.newplan.logical.optimizer.SchemaResetter.visit(SchemaResetter.java:114)
	at org.apache.pig.parser.LogicalPlanBuilder.buildForeachOp(LogicalPlanBuilder.java:1015)
	at org.apache.pig.parser.LogicalPlanGenerator.foreach\_clause(LogicalPlanGenerator.java:15870)
	at org.apache.pig.parser.LogicalPlanGenerator.op\_clause(LogicalPlanGenerator.java:1933)
	at org.apache.pig.parser.LogicalPlanGenerator.general\_statement(LogicalPlanGenerator.java:1102)
	at org.apache.pig.parser.LogicalPlanGenerator.statement(LogicalPlanGenerator.java:560)
	at org.apache.pig.parser.LogicalPlanGenerator.query(LogicalPlanGenerator.java:421)
	at org.apache.pig.parser.QueryParserDriver.parse(QueryParserDriver.java:188)
	at org.apache.pig.PigServer$Graph.parseQuery(PigServer.java:1678)
	at org.apache.pig.PigServer$Graph.access$000(PigServer.java:1411)
	at org.apache.pig.PigServer.parseAndBuild(PigServer.java:344)
	at org.apache.pig.PigServer.executeBatch(PigServer.java:369)
	at org.apache.pig.PigServer.executeBatch(PigServer.java:355)
	at org.apache.pig.tools.grunt.GruntParser.executeBatch(GruntParser.java:140)
	at org.apache.pig.tools.grunt.GruntParser.parseStopOnError(GruntParser.java:202)
	at org.apache.pig.tools.grunt.GruntParser.parseStopOnError(GruntParser.java:173)
	at org.apache.pig.tools.grunt.Grunt.exec(Grunt.java:84)
	at org.apache.pig.Main.run(Main.java:478)
	at org.apache.pig.PigRunner.run(PigRunner.java:49)
	at org.apache.oozie.action.hadoop.PigMain.runPigJob(PigMain.java:288)
	at org.apache.oozie.action.hadoop.PigMain.run(PigMain.java:228)
	at org.apache.oozie.action.hadoop.LauncherMain.run(LauncherMain.java:39)
	at org.apache.oozie.action.hadoop.PigMain.main(PigMain.java:77)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.oozie.action.hadoop.LauncherMapper.map(LauncherMapper.java:226)
	at org.apache.hadoop.mapred.MapRunner.run(MapRunner.java:50)
	at org.apache.hadoop.mapred.MapTask.runOldMapper(MapTask.java:430)
	at org.apache.hadoop.mapred.MapTask.run(MapTask.java:366)
	at org.apache.hadoop.mapred.Child$4.run(Child.java:255)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:415)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1190)
	at org.apache.hadoop.mapred.Child.main(Child.java:249)
Caused by: java.lang.ClassNotFoundException: org.joda.time.ReadableInstant
	at java.net.URLClassLoader$1.run(URLClassLoader.java:366)
	at java.net.URLClassLoader$1.run(URLClassLoader.java:355)
	at java.security.AccessController.doPrivileged(Native Method)
	at java.net.URLClassLoader.findClass(URLClassLoader.java:354)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:425)
	at sun.misc.Launcher$AppClassLoader.loadClass(Launcher.java:308)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:358)
	... 42 more
{noformat}

It looks like we need to add the {{joda-time}} jar to the Pig sharelib


---

* [OOZIE-1844](https://issues.apache.org/jira/browse/OOZIE-1844) | *Major* | **HA -  Lock mechanism for CoordMaterializeTriggerService**

Currently we check if job id belong to this server by using modulus operation.

This may not be optimum way to do.
1. We are not processing MATERIALIZATION\_SYSTEM\_LIMIT, each server is only doing half (in case of two servers) processing. We can always double the limit. But as we add  new system, we need to restart whole cluster to increase the limit.

2. The job sequence id is shared among wf,coord,bundle. So, we could have a case where coord with odd/even id is more. In that case we are not distribute load. One server will always do more processing.

3. We also have different frequency for different coord jobs. Job with 1 min or 5 min frequency will put more load on system. In this approach one particular job will always run in one system and eventually putting more load on one server. 

May be simple way to optimize is to have a lock mechanism, each CoordMaterializeTriggerService will obtain a lock and materialize coord. If lock is held by other system, then it will wait for other system to release lock. In this way coord jobs will get distributed among servers.


---

* [OOZIE-1838](https://issues.apache.org/jira/browse/OOZIE-1838) | *Major* | **jdbc.connections.active sampler does not show up**

I'm not sure how long this has been missing, but I don't ever remember seeing a "jdbc.connections.active" sampler in the instrumentation.  However, I did stumble upon it in the code.  It's supposed to sample the number of active JDBC connections.


---

* [OOZIE-1835](https://issues.apache.org/jira/browse/OOZIE-1835) | *Major* | **NullPointerException from SLAEmailEventListener**

Both the documentation and specification say that the "alert-contact" SLA field is optional, at least when you don't want to send email notifications.  However, if you don't include it, you get a NullPointerException (though it doesn't seem to cause any problems):
{noformat}
2014-04-17 22:02:16,664 ERROR org.apache.oozie.sla.listener.SLAEmailEventListener: SERVER[rkanter-5.ent.cloudera.com] USER[-] GROUP[-] TOKEN[-] APP[-] JOB[-] ACTION[-] Failed to send EndMiss alert email
java.lang.NullPointerException
        at org.apache.oozie.sla.listener.SLAEmailEventListener.parseAddress(SLAEmailEventListener.java:231)
        at org.apache.oozie.sla.listener.SLAEmailEventListener.setMessageHeader(SLAEmailEventListener.java:262)
        at org.apache.oozie.sla.listener.SLAEmailEventListener.sendSLAEmail(SLAEmailEventListener.java:163)
        at org.apache.oozie.sla.listener.SLAEmailEventListener.onEndMiss(SLAEmailEventListener.java:200)
        at org.apache.oozie.service.EventHandlerService$EventWorker.invokeSLAEventListener(EventHandlerService.java:297)
        at org.apache.oozie.service.EventHandlerService$EventWorker.run(EventHandlerService.java:241)
        at org.apache.oozie.service.SchedulerService$2.run(SchedulerService.java:174)
        at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:471)
        at java.util.concurrent.FutureTask.runAndReset(FutureTask.java:304)
        at java.util.concurrent.ScheduledThreadPoolExecutor$ScheduledFutureTask.access$301(ScheduledThreadPoolExecutor.java:178)
        at java.util.concurrent.ScheduledThreadPoolExecutor$ScheduledFutureTask.run(ScheduledThreadPoolExecutor.java:293)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        at java.lang.Thread.run(Thread.java:744)
{noformat}

We should give a friendlier WARN message instead.


---

* [OOZIE-1834](https://issues.apache.org/jira/browse/OOZIE-1834) | *Major* | **sla should-start is supposed to be optional but it is not**

Both the documentation and specification say that the "should-start" SLA field is optional, however, if you don't include it, you get an Exception and the job/action fails.  

On a workflow, it fails at submission time with this Exception in the log:
{noformat}
2014-05-12 16:00:22,804 ERROR org.apache.oozie.command.wf.SubmitXCommand: SERVER[rkanter-5.ent.cloudera.com] USER[admin] GROUP[-] TOKEN[] APP[MapReduce-SLA] JOB[0000001-140505141334644-oozie-oozi-W] ACTION[-]
 XException, 
org.apache.oozie.command.CommandException: E0803: IO error, E1007: Unable to add record for SLA. [workflow 0000001-140505141334644-oozie-oozi-W], should-start can't be empty
        at org.apache.oozie.command.wf.SubmitXCommand.execute(SubmitXCommand.java:279)
        at org.apache.oozie.command.wf.SubmitXCommand.execute(SubmitXCommand.java:76)
        at org.apache.oozie.command.XCommand.call(XCommand.java:280)
        at org.apache.oozie.DagEngine.submitJob(DagEngine.java:109)
        at org.apache.oozie.servlet.V1JobsServlet.submitWorkflowJob(V1JobsServlet.java:188)
        at org.apache.oozie.servlet.V1JobsServlet.submitJob(V1JobsServlet.java:88)
        at org.apache.oozie.servlet.BaseJobsServlet.doPost(BaseJobsServlet.java:99)
        at javax.servlet.http.HttpServlet.service(HttpServlet.java:727)
        at org.apache.oozie.servlet.JsonRestServlet.service(JsonRestServlet.java:287)
        at javax.servlet.http.HttpServlet.service(HttpServlet.java:820)
        at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:290)
        at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:206)
        at org.apache.oozie.servlet.AuthFilter$2.doFilter(AuthFilter.java:126)
        at org.apache.hadoop.security.authentication.server.AuthenticationFilter.doFilter(AuthenticationFilter.java:384)
        at org.apache.oozie.servlet.AuthFilter.doFilter(AuthFilter.java:131)
        at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:235)
        at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:206)
        at org.apache.oozie.servlet.HostnameFilter.doFilter(HostnameFilter.java:84)
        at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:235)
        at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:206)
        at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:233)
        at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:191)
        at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:127)
        at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:103)
        at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:109)
        at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:293)
        at org.apache.coyote.http11.Http11Processor.process(Http11Processor.java:861)
        at org.apache.coyote.http11.Http11Protocol$Http11ConnectionHandler.process(Http11Protocol.java:606)
        at org.apache.tomcat.util.net.JIoEndpoint$Worker.run(JIoEndpoint.java:489)
        at java.lang.Thread.run(Thread.java:744)
Caused by: org.apache.oozie.command.CommandException: E1007: Unable to add record for SLA. [workflow 0000001-140505141334644-oozie-oozi-W], should-start can't be empty
        at org.apache.oozie.command.wf.SubmitXCommand.writeSLARegistration(SubmitXCommand.java:343)
        at org.apache.oozie.command.wf.SubmitXCommand.execute(SubmitXCommand.java:222)
        ... 29 more
Caused by: java.lang.RuntimeException: should-start can't be empty
        at org.apache.oozie.util.db.SLADbOperations.createSlaRegistrationEvent(SLADbOperations.java:124)
        at org.apache.oozie.command.wf.SubmitXCommand.writeSLARegistration(SubmitXCommand.java:319)
        ... 30 more
{noformat}

For a coordinator, you get a similar Exception when trying to materialize the action:
{noformat}
2014-05-12 13:24:50,603 ERROR CoordMaterializeTransitionXCommand:536 - SERVER[p0106.mtv.cloudera.com] USER[wypoon] GROUP[-] TOKEN[] APP[aggregator-coord] JOB[0000032-140511190910971-oozie-oozi-C] ACTION[-] Exception occurred:should-start can't be empty Making the job failed 
java.lang.RuntimeException: should-start can't be empty
	at org.apache.oozie.util.db.SLADbOperations.createSlaRegistrationEvent(SLADbOperations.java:124)
	at org.apache.oozie.command.coord.CoordMaterializeTransitionXCommand.writeActionSlaRegistration(CoordMaterializeTransitionXCommand.java:435)
	at org.apache.oozie.command.coord.CoordMaterializeTransitionXCommand.storeToDB(CoordMaterializeTransitionXCommand.java:425)
	at org.apache.oozie.command.coord.CoordMaterializeTransitionXCommand.materializeActions(CoordMaterializeTransitionXCommand.java:391)
	at org.apache.oozie.command.coord.CoordMaterializeTransitionXCommand.materialize(CoordMaterializeTransitionXCommand.java:267)
	at org.apache.oozie.command.MaterializeTransitionXCommand.execute(MaterializeTransitionXCommand.java:72)
	at org.apache.oozie.command.MaterializeTransitionXCommand.execute(MaterializeTransitionXCommand.java:28)
	at org.apache.oozie.command.XCommand.call(XCommand.java:280)
	at org.apache.oozie.service.CallableQueueService$CallableWrapper.run(CallableQueueService.java:174)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:744)
2014-05-12 13:24:50,621 ERROR CoordMaterializeTransitionXCommand:536 - SERVER[p0106.mtv.cloudera.com] USER[wypoon] GROUP[-] TOKEN[] APP[aggregator-coord] JOB[0000032-140511190910971-oozie-oozi-C] ACTION[-] XException, 
org.apache.oozie.command.CommandException: E1012: Coord Job Materialization Error: should-start can't be empty
	at org.apache.oozie.command.coord.CoordMaterializeTransitionXCommand.materialize(CoordMaterializeTransitionXCommand.java:286)
	at org.apache.oozie.command.MaterializeTransitionXCommand.execute(MaterializeTransitionXCommand.java:72)
	at org.apache.oozie.command.MaterializeTransitionXCommand.execute(MaterializeTransitionXCommand.java:28)
	at org.apache.oozie.command.XCommand.call(XCommand.java:280)
	at org.apache.oozie.service.CallableQueueService$CallableWrapper.run(CallableQueueService.java:174)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:744)
Caused by: java.lang.RuntimeException: should-start can't be empty
	at org.apache.oozie.util.db.SLADbOperations.createSlaRegistrationEvent(SLADbOperations.java:124)
	at org.apache.oozie.command.coord.CoordMaterializeTransitionXCommand.writeActionSlaRegistration(CoordMaterializeTransitionXCommand.java:435)
	at org.apache.oozie.command.coord.CoordMaterializeTransitionXCommand.storeToDB(CoordMaterializeTransitionXCommand.java:425)
	at org.apache.oozie.command.coord.CoordMaterializeTransitionXCommand.materializeActions(CoordMaterializeTransitionXCommand.java:391)
	at org.apache.oozie.command.coord.CoordMaterializeTransitionXCommand.materialize(CoordMaterializeTransitionXCommand.java:267)
	... 7 more
{noformat}


---

* [OOZIE-1831](https://issues.apache.org/jira/browse/OOZIE-1831) | *Major* | **Oozie upgrade fails if workflow jobs are in running or suspended state**

While upgrading oozie from 3.x to trunk, oozie upgrade fails if there any workflow jobs found in running or suspended state:

{noformat}
Error: There are [26] workflows in RUNNING/SUSPENDED state, they must complete or be killed

Stack trace for the error was (for debug purposes):
--------------------------------------
java.lang.Exception: There are [26] workflows in RUNNING/SUSPENDED state, they must complete or be killed
	at org.apache.oozie.tools.OozieDBCLI.verifyDBState(OozieDBCLI.java:992)
	at org.apache.oozie.tools.OozieDBCLI.upgradeDB(OozieDBCLI.java:197)
	at org.apache.oozie.tools.OozieDBCLI.run(OozieDBCLI.java:128)
	at org.apache.oozie.tools.OozieDBCLI.main(OozieDBCLI.java:76)
{noformat}

This check seems unnecessary. It may not be possible to ensure in production that no workflows are in running/suspended state before upgrade.

Also current upgrade code updates the status of coord jobs/coord actions in DB. This may not be required now.


---

* [OOZIE-1828](https://issues.apache.org/jira/browse/OOZIE-1828) | *Major* | **Introduce counters JobStatus terminal states metrics**

Currently the Oozie server exposes job status metrics from the 'variables' group. These include metrics for jobs in terminal states: 'SUCCEEDED', 'FAILED', 'KILLED'. The way Oozie compute the metrics is by querying the database for all jobs in each and every state. This means that when a purge happens these "apparent" counters' values are going to change (if anything was purged). This renders these counters as not very useful.

It would be better if real counters for jobs in terminal states can be exposed from the oozie server. One way to do this would be to initialize an in-memory counters and a timestamp count the jobs that finished between the timestamp and 'now' (and keep updating timestamp to avoid it falling out of the retention period). This means that each Oozie server may have its own counter but that is okay as the count itself is not very important what is important is the rate-of-change.


---

* [OOZIE-1826](https://issues.apache.org/jira/browse/OOZIE-1826) | *Major* | **Add thread which detects JVM pauses**

It would be helpful for debugging to add a thread which detects JVM pauses and logs them and indicates them in the instrumentation/metrics).  This was added to Hadoop by HADOOP-9618 (and also HBASE by HBASE-9630), so we can adapt that for Oozie.


---

* [OOZIE-1825](https://issues.apache.org/jira/browse/OOZIE-1825) | *Major* | **Optimize wf\_jobs protoconf storage**

Currently protoconf stores all Hadoop configuration properties + libpath + ...

Hadoop configuration properties are lot and take huge space, I don't think we need to store Hadoop configuration properties in protoconf.

We can load it every time wf action runs.



Some statistics on table storage.

|| Table || Size(gb)  ||
|WFJOBS\_PROTO\_ACTION\_CONF|55.54|
|WFJOBS\_WF\_INSTANCE|11.89|
|WFJOBS\_CONF|2.43|
If we can remove Hadoop configuration form proto, size will be < 1gb.


---

* [OOZIE-1823](https://issues.apache.org/jira/browse/OOZIE-1823) | *Blocker* | **OozieSharelibCLI shouldn't load ext services**

OozieSharelibCLI (invoked via running {{oozie-setup.sh sharelib}} commands) should not load the ext services (i.e. {{oozie.services.ext}}).  This is unnecessary and can even lead to problems.  For example, if you enable JMS/SLA messaging, you'll add the EventHandlerService which will get loaded when you run OozieSharelibCLI; however, this will fail because OozieSharelibCLI doesn't load the SchedulerService, which EventHandlerService tries to use and you get an NullPointerException.  This prevents anyone who is using this feature from (easily) updating their sharelib.

This isn't a problem for OozieDBCLI even though it uses Services because it doesn't actually {{init()}} them.


---

* [OOZIE-1821](https://issues.apache.org/jira/browse/OOZIE-1821) | *Minor* | **Oozie java action fails due to AlreadyBeingCreatedException**

2014-04-17 17:13:33,773  WARN ActionStartXCommand:542 - USER[<user\_id>] GROUP[-] TOKEN[] APP[<app\_name>] JOB[0078484-    140410182733292-oozie-oozi-W] ACTION[0078484-140410182733292-oozie-oozi-W@recordsize] Error starting action [recordsize]. ErrorType [TRANSIENT], ErrorCode    [JA009], Message [JA009: org.apache.hadoop.hdfs.protocol.AlreadyBeingCreatedException: failed to create file /user/<user-name>/oozie-oozi/0078484-140410182733292-oozie-oozi-W/recordsize--java/action.xml for DFSClient\_-1385059579 on client <client ip> because current leaseholder is trying to recreate file.
    at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.recoverLeaseInternal(FSNamesystem.java:1407)
    at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.startFileInternal(FSNamesystem.java:1279)
    at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.startFile(FSNamesystem.java:1221)
    at org.apache.hadoop.hdfs.server.namenode.NameNode.create(NameNode.java:703)
    at org.apache.hadoop.hdfs.server.namenode.NameNode.create(NameNode.java:682)
    at sun.reflect.GeneratedMethodAccessor27.invoke(Unknown Source)
    at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25)
    at java.lang.reflect.Method.invoke(Method.java:597)
    at org.apache.hadoop.ipc.RPC$Server.call(RPC.java:557)
    at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:1439)
    at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:1435)
    at java.security.AccessController.doPrivileged(Native Method)
    at javax.security.auth.Subject.doAs(Subject.java:396)
    at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1278)
    at org.apache.hadoop.ipc.Server$Handler.run(Server.java:1433)
]

Earlier the java action had failed due to disk quota exceeded exception which is a transient error. when oozie retried to run the action, later retrials resulted in above exception. 

In org.apache.oozie.action.hadoop,LauncherMapper, if writing action xml fails due to an error, output stream should be closed gracefully. 

OutputStream os = fs.create(new Path(actionDir, ACTION\_CONF\_XML));
actionConf.writeXml(os);
os.close();


---

* [OOZIE-1819](https://issues.apache.org/jira/browse/OOZIE-1819) | *Major* | **Avoid early queueing of CoordActionInputCheckXCommand**

Currently, when coord action is materialised, CoordActionInputCheckXCommand is queued immediately. If the action is materialised long before the nominal time, this unnecessarily keeps executing CoordActionInputCheckXCommand and re-queues till nominal time. Instead,  CoordActionInputCheckXCommand can be queued with delay = (nominal time - now)


---

* [OOZIE-1817](https://issues.apache.org/jira/browse/OOZIE-1817) | *Major* | **Oozie timers are not biased**

Oozie timers are not biased, that is, the statistical metrics they expose are over the run-time of the Oozie server instead of a window of time. This makes them not very useful especially after the server has been running for a while (codehale has very efficient and easy to use biased histograms that can be used instead).


---

* [OOZIE-1812](https://issues.apache.org/jira/browse/OOZIE-1812) | *Major* | **Bundle status is always in RUNNING if one of the action status is in PREP**

Even if there are FAILED or KILLED coordinator jobs, bundle action status remains in RUNNING because the checkPrepStatus either does PREP or RUNNING and does not take terminal states into account.


---

* [OOZIE-1811](https://issues.apache.org/jira/browse/OOZIE-1811) | *Critical* | **Current test failures in trunk**

There's a bunch of test failures currently in trunk; I'm not sure what commit(s) is the cause, but I think it was somewhat recent.

e.g. https://builds.apache.org/job/oozie-trunk-precommit-build/1199/

Reproducible by running these tests, instead of having to run them all, which takes a lot longer :)
{noformat}
mvn clean test -Dtest=TestSubWorkflowActionExecutor,TestBunldeChangeXCommand,TestCoordUpdateXCommand,TestCoordJobQueryExecutor,TestStatusTransitService,TestSLAEventGeneration
{noformat}
{noformat}
Results :

Failed tests:   testCoordinatorActionCommandsSubmitAndStart(org.apache.oozie.sla.TestSLAEventGeneration): expected:<...11921-oozie-rkan-C@1[]> but was:<...11921-oozie-rkan-C@1[2]>
  testCoordStatusTransitServiceDoneWithError(org.apache.oozie.service.TestStatusTransitService): expected:<DONEWITHERROR> but was:<KILLED>
  testBundleStatusTransitRunningFromKilled(org.apache.oozie.service.TestStatusTransitService): expected:<RUNNING> but was:<KILLED>

Tests in error: 
  testGetList(org.apache.oozie.executor.jpa.TestCoordJobQueryExecutor)
  testInsert(org.apache.oozie.executor.jpa.TestCoordJobQueryExecutor)

Tests run: 62, Failures: 3, Errors: 2, Skipped: 0
{noformat}


---

* [OOZIE-1807](https://issues.apache.org/jira/browse/OOZIE-1807) | *Major* | **Make bundle change command synchronous**

It confusion for user when they issue change command and they are not sure if changes are applied to all coords jobs.


Fix is to call synchronously all coord from bundle and display error message (if any) to user.

purushah$ /Users/purushah/views/sysc\_command/oozie/distro/target/oozie-4.1.0-SNAPSHOT-distro/oozie-4.1.0-SNAPSHOT/bin/oozie job -change 0000002-140424165425407-oozie-puru-B  -value endtime=2013-01-01T00:00Z -oozie http://localhost:11000/oozie
Change command for coord job : 0000004-140424165425407-oozie-puru-C failed. Reason : Coord is in killed state
Change command for coord job : 0000003-140424165425407-oozie-puru-C failed. Reason : Coord is in killed state
purushah$


---

* [OOZIE-1806](https://issues.apache.org/jira/browse/OOZIE-1806) | *Blocker* | **Java Action type jobs are failing with hadoop-0.20.0 and earlier versions on oozie trunk**

With oozie trunk, all java action type jobs are failing with hadoop 0.20.2 and earlier versions. This is a regression since oozie 4.0. The map tasks are failing with ClassNotFoundException for OozieLauncherInputFormat.EmptySplit class.


---

* [OOZIE-1804](https://issues.apache.org/jira/browse/OOZIE-1804) | *Trivial* | **Improve documentation for Coordinator Specification**

The description of the done-flag is confusing and partially wrong.

In addition I've fixed a couple of small typos and removed extra whitespace.


---

* [OOZIE-1801](https://issues.apache.org/jira/browse/OOZIE-1801) | *Major* | **ZKLocksService instrumentation should say how many locks this server has**

The MemoryLocksService has a variable named "locks" under the "locks" group in the instrumentation that reports how many locks are currently acquired.  When using Oozie HA, we don't have this.  

We shouldn't have it report the total number of locks acquired by all Oozie servers because that would require checking ZooKeeper every time we check this.  However, reporting the number of locks acquired by \_this\_ Oozie server should be inexpensive while still being helpful and similar to the non-HA behavior.


---

* [OOZIE-1799](https://issues.apache.org/jira/browse/OOZIE-1799) | *Major* | **Document hcatalog integration steps for Oozie in a secure cluster**

examples/src/main/apps/hcatalog has a sample that demonstrates the hcatalog integration.   This is to enhance it so that it works with secure clusters correctly


---

* [OOZIE-1797](https://issues.apache.org/jira/browse/OOZIE-1797) | *Major* | **Workflow rerun command should use existing workflow properties**

Currently to rerun a WF user has to specify all existing wf property.


---

* [OOZIE-1796](https://issues.apache.org/jira/browse/OOZIE-1796) | *Major* | **Job status should not transition from KILLED**

Killed status means user has issue a kill command and it doesn't make any sense to change the status from KILLED to any other
terminal state (SUCCEEDED, DONEWITHERROR, FAILED, etc).


---

* [OOZIE-1794](https://issues.apache.org/jira/browse/OOZIE-1794) | *Major* | **java-opts and java-opt in the Java action don't always work properly in YARN**

Currently, when you set {{<java-opts>}} or {{<java-opt>}} in the Java action, it essentially appends these to {{mapred.child.java.opts}} in the launcher job.  

In YARN, this property is deprecated in favor or {{mapreduce.map.java.opts}} and {{mapreduce.reduce.java.opts}}.  And if {{mapreduce.map/reduce.java.opts}} is set, {{mapred.child.java.opts}} will be ignored.  So in a YARN cluster where mapred-site.xml has {{mapreduce.map.java.opts}} set to something, {{<java-opts>}} and {{<java-opt>}} won't work at all.  

We should have {{<java-opts>}} and {{<java-opt>}} append to both {{mapred.child.java.opts}} and {{mapreduce.map.java.opts}}.


---

* [OOZIE-1792](https://issues.apache.org/jira/browse/OOZIE-1792) | *Major* | **Ability to kill bundle stuck in RUNNING due to inconsistent pending states**

OOZIE-1687 fixed cases where the inconsistent pending states can happen. It also let kill older bundles whose state were inconsistent, but only if coord job id was not null. Need to handle the case where the bundle action did not have a coord job id.


---

* [OOZIE-1791](https://issues.apache.org/jira/browse/OOZIE-1791) | *Major* | **add IGNORED status to Coordinator Job and Action**

data pipeline customers need clean way to ignore coord job from bundle job in runtime.
currently to make a change to failed coordinator job after bundle submission, it is required to relaunch entire bundle after fixing coord xml or run another bundle with new coord. OOZIE-1769 to support changing coord properties in runtime. in many scenarios, customers want to ignore the failed coord from the bundle first, and fix the coord, put it back to the bundle, without stopping entire bundle job.

suggested approach is to add IGNORED status to Coordinator Job/Action. once CLI command (oozie job -ignore <coord\_job\_id>) to ignore coord job issued, change status of coord job to IGNORED (bundle action as well).  Ignored coordinator job doesn't impact the state of it's parent bundle job. e.g., after a coordinator job failed, then ignored (suppose other coord jobs succeeded)  the bundle becomes RUNNING, not RUNNINGWITHERROR. Ignored coordinator job is excluded from Bundle suspend/kill/rerun operation.
 
Only coord job in terminal state (KILLED or FAILED) can be changed to IGNORED.   PREP, RUNNING, WAITING, SUCCEEDED, SUSPENDED ones cannot be ignored. Also we can change ignored job back to running state by using coord change command.

The same concept can be applied to coordinator action in a coordinator job.   once coord action is ignored (oozie job -ignore <coord\_job\_id> -action <action number list>),  it doesn't impact state of its parent coordinator job, and excluded from coordinator job operation.

We'd like to have discussion on this approach before proceed. Any feedback appreciated.


---

* [OOZIE-1789](https://issues.apache.org/jira/browse/OOZIE-1789) | *Critical* | **Support backward compatibility of oozie share lib**

The current oozie trunk is not backward compatible with the way oozie share lib is configured. Till now, user would manually upload sharelib to HDFS at the system libpath, typically 
{noformat}
"/user/${user.name}/share/lib/" 
{noformat}

Whereas with latest oozie, one has to use "oozie-setup.sh sharelib create" command to first upload sharelib. 

As a result, no one can run any actions if directly upgrading from 4.0 or before to the new version. There should be a way to support the older sharelib format in addition to the new format. This is needed for smooth upgrade to latest oozie.


---

* [OOZIE-1787](https://issues.apache.org/jira/browse/OOZIE-1787) | *Major* | **parameterize interval of SLAService updating SlaStatus**

currently hard-coded to 30sec
{code}
// schedule runnable by default every 30 sec
services.get(SchedulerService.class).schedule(slaThread, 10, 30,
SchedulerService.Unit.SEC);
{code}


---

* [OOZIE-1785](https://issues.apache.org/jira/browse/OOZIE-1785) | *Trivial* | **Add oozie email action xsd to OozieCli.java**

The issue is similar to https://issues.apache.org/jira/browse/OOZIE-1659

Missing information related to new email action schema


---

* [OOZIE-1783](https://issues.apache.org/jira/browse/OOZIE-1783) | *Critical* | **Sharelib purging only occurs at Oozie startup**

The purgeLibs method only gets called on startup of the first Oozie server.  This means that if you update the sharelib without restarting Oozie, then Oozie will never clean up the old sharelibs and launcherlibs until you restart the server.  In fact, with Oozie HA, it will never clean up unless you restart all of the servers at the same time (in other words, a rolling restart or just restarting one Oozie will never cause purgeLibs to get called).  

This should be moved into a background thread (i.e. scheduled with SchedulerService) to run periodically.  Once a day is probably good enough, but we could make it configurable if needed.


---

* [OOZIE-1777](https://issues.apache.org/jira/browse/OOZIE-1777) | *Major* | **duplicated log message in Pig launcher's stdout**

pig action launcher's tasklog show duplicated log message.

{code}
2014-04-03 21:55:05,857 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.MapReduceLauncher  - 83% complete
2014-04-03 21:55:05,857 [main] INFO  org.apache.pig.backend.hadoop.executionengine.mapReduceLayer.MapReduceLauncher  - 83% complete
.....
{code}


---

* [OOZIE-1775](https://issues.apache.org/jira/browse/OOZIE-1775) | *Major* | **TestEventGeneration.testCoordinatorActionEvent is failing and CoordRerunX should generate event**

test is not flaky but consistently failing. this is due to CoordResumeXCommand not publishing job event afterwards, for the resumed coord actions.
Also fixed flaky test {{TestSLAEventGeneration#testCoordinatorActionCommandSubmitAndStart}} by limiting the materialization


---

* [OOZIE-1773](https://issues.apache.org/jira/browse/OOZIE-1773) | *Major* | **bulk API returns total = 0 when it's not**

bulk API returns total =0 when time filter (e.g., startScheduledTime, endScheduledTime, etc) is used. 
this is because time parameter is not set properly in query getting total count in BulkJPAExecutor


---

* [OOZIE-1769](https://issues.apache.org/jira/browse/OOZIE-1769) | *Major* | **An option to update coord properties/definition**

To change the coord definition user can update coord definition in hdfs and issue a update command. Existing coordinator definition will be replaced by new definition. The refreshed coordinator 
would keep the same coordinator ID, state, and coordinator actions.

User can also provide -dryrun to validate changes.
All created coord action(including in waiting) will use old configuration.
User can rerun actions with -refresh option, -refresh option will use new configuration to rerun coord action.

Ex.
1. $ oozie job -update <coordID> -config examples/apps/aggregator/job.properties
Will update coord definition and action.

2. $ oozie job -update <coordID>
Will fetch coord definition path from bundle and update coord definition


---

* [OOZIE-1768](https://issues.apache.org/jira/browse/OOZIE-1768) | *Major* | **Workflow schema 0.4.5 was removed**

OOZIE-1244 removed workflow schema 0.4.5 and replaced it with 0.5.  This is a backwards incompatible change because anyone using schema 0.4.5 who upgrades to Oozie 4.0.0 or 4.0.1 will be unable to submit those workflows without updating to schema 0.5.  

We should add 0.4.5 back and also properly document it (I don't think it was ever added to the schemas list on the Workflow docs page)


---

* [OOZIE-1765](https://issues.apache.org/jira/browse/OOZIE-1765) | *Major* | **JMS Notifications for Workflows not always on the correct topic**

If you configure your JMS topics as follows
{code:xml}
<property>
    <name>oozie.service.JMSTopicService.topic.name</name>
    <value>
       default=${username},
       WORKFLOW=flows
    </value>
  </property>
{code}
you would expect all WORKFLOW\_JOB and WORKFLOW\_ACTION messages to be on the "flow" topic and everything else on the "$\{username}" topic.  
However, that is not the case: everything ends up on the "$\{username}" topic.


---

* [OOZIE-1761](https://issues.apache.org/jira/browse/OOZIE-1761) | *Major* | **Improve sharelib purging logic**

Currently oozie server purges anything older then 7 (oozie.ShareLibService.temp.sharelib.retention.days) days, keeping 2 latest dir.

Which might be faulty.

Take an example.
Currently used sharelib is sharelib-1, which is created a month before.
If I restart Oozie server 2 times, it will create directory sharelib-2 and sharelib-3 and delete anything older than 7 days( keeping two latest).
In this case oozie server will delete sharelib-1, which is wrong and all running jobs will start failing.


Better logic is to keep all share-lib between current timestamp and  7days old  + 1 latest sharelib older than 7 days.


---

* [OOZIE-1754](https://issues.apache.org/jira/browse/OOZIE-1754) | *Major* | **add order(sort) option and exclude filter for coord job Info**

some run long-running coordinator jobs, which launch large number of coord actions. Current CLI command (oozie job -info) list coordinator actions chronological order (older first), which is not useful since users are mostly interested in the latest ones.


---

* [OOZIE-1753](https://issues.apache.org/jira/browse/OOZIE-1753) | *Major* | **Update create-release-artifact script for git**

The create-release-artifact script used for creating the release artifact needs to be updated to use git instead of svn.


---

* [OOZIE-1751](https://issues.apache.org/jira/browse/OOZIE-1751) | *Major* | **Default authentication type using env variable  for oozie CLI**

This way a user can set the default auth type and not have to pass the -auth
parameter with every command.


---

* [OOZIE-1748](https://issues.apache.org/jira/browse/OOZIE-1748) | *Major* | **When using cron-like syntax, the "Time Unit" field says "MINUTE"**

When using Cron-like syntax, the "Time Unit" field in the Web UI/CLI/etc says "MINUTE".  It would be more clear if it said something like "CRON" instead.


---

* [OOZIE-1746](https://issues.apache.org/jira/browse/OOZIE-1746) | *Major* | **New API to fetch workflows corresponding to coordinator action reruns**

The coordinator action's 'external id' only points to the latest workflow launched, in the case of rerun. We lose context of the previous workflows corresponding to this action and no easy API to retrieve them. This JIRA adds this API functionality for Web-service, web-console and CLI

Usage: 
1) With coord job ID and query params passing the action and show flag
Web Service API: http://my-oozie-url:4080/oozie/v2/job/COORD-JOB-ID?type=action&scope=<action num>&show=allruns
OR (directly with show flag)
http://my-oozie-url:4080/oozie/v2/job/COORD-ACTION-ID?show=allruns

2) CLI: $> oozie job -info COORD-ACTION-ID -allruns

3) Web-console: New tab 'Coord Action Reruns' alongside Coord Job Info, Coord Definition etc.., to input the action num in text box and press button to get list of workflows


---

* [OOZIE-1741](https://issues.apache.org/jira/browse/OOZIE-1741) | *Major* | **Add new coord EL function to get input partitions value string**

Currently oozie provides coord EL functions to get partition filter string (where key-values are separated by AND)  for various action types - java/pig/hive. However this doesn't work in other cases, e.g. hive action that performs export/import of hive partition. In that case, the partition value is expected to be in a different format: (col1="value1",col2="value2"...). We need to add a new EL function that returns partition value in the above format.


---

* [OOZIE-1737](https://issues.apache.org/jira/browse/OOZIE-1737) | *Major* | **Oozie log streaming is slow**

Most of cases, Oozie search huge set of log files and return lot of logs.
Most of our users has complained that log streaming is slow and they can't easily find relevant information.

To make log streaming fast and precise we should provide few options (which user can specify for log streaming) like
1. Start time : Start date (if number, then offset(in hour) from coord/wf/bundle start)
2. End time : End date (if number, then offset from coord/wf/bundle start)
3. Log level :
   Setting log level to ERROR, will only give erred log and exception.
   In most of cases user want to find out error message and exception.
4. Number of lines : limit number of lines of logs from start date.
5. Recent logs: In most of the case user is only interested in recent activity.
Similar to https://issues.apache.org/jira/browse/OOZIE-1716.
User should be able to specify recent logs in hours.
6. Grep for pattern.

+ in addition to this, we also need to clean up log statements( which may also include consolidating log statements).


---

* [OOZIE-1735](https://issues.apache.org/jira/browse/OOZIE-1735) | *Major* | **Support resuming of failed coordinator job and rerun of a failed coordinator action**

We should support resuming of failed coordinator job. Job are set to failed if there are runtime error( like SQL timeout).
In current scenario there is no way to recover beside running SQL.
Resuming of failed coordinator job should also set pending to 1 ,reset doneMaterialization and last modified to current time. So that materialization continues.

We should also provide an option of resuming failed action. The behavior will be same as killed option.


---

* [OOZIE-1734](https://issues.apache.org/jira/browse/OOZIE-1734) | *Major* | **Oozie returned 500 Internal Server error when user passes invalid request**

We should return 400 Bad request in this case since its a user error.
C:\ServiceCode\Main\src>curl -k -g --request PUT -d user.name=hdinsightuser -u "<username>:<password>" "<clusterUrl>/oozie/v1/job/?action=kill"
<html><head><title>Apache Tomcat/6.0.36 - Error report</title><style><!--H1
{font-family:Tahoma,Arial,sans-serif;color:white;background-color:#525D76;font-size:22px;}
H2
{font-family:Tahoma,Arial,sans -serif;color:white;background-color:#525D76;font-size:16px;}
H3
{font-family:Tahoma,Arial,sans-serif;color:white;background-color:#525D76;font-size:14px;}
BODY
{font-family:Tahoma,Arial,sans-serif;col or:black;background-color:white;}
B
{font-family:Tahoma,Arial,sans-serif;color:white;background-color:#525D76;}
P
{font-family:Tahoma,Arial,sans-serif;background:white;color:black;font-size:12px;}
A
{c olor : black;}
A.name
{color : black;}
HR
{color : #525D76;}
--></style> </head><body><h1>HTTP Status 500 - id cannot be empty</h1><HR size="1" noshade="noshade"><p><b>type</b> Exception report</p><p><b>
message</b> <u>id cannot be empty</u></p><p><b>description</b> <u>The server encountered an internal error that prevented it from fulfilling this request.</u></p><p><b>exception</b> <pre>java.lang.Ill
egalArgumentException: id cannot be empty
org.apache.oozie.util.ParamChecker.notEmpty(ParamChecker.java:87)
org.apache.oozie.util.ParamChecker.notEmpty(ParamChecker.java:71)
org.apache.oozie.command.coord.CoordKillXCommand.<init>(CoordKillXCommand.java:58)
org.apache.oozie.CoordinatorEngine.kill(CoordinatorEngine.java:174)
org.apache.oozie.servlet.V1JobServlet.killCoordinatorJob(V1JobServlet.java:482)
org.apache.oozie.servlet.V1JobServlet.killJob(V1JobServlet.java:152)
org.apache.oozie.servlet.BaseJobServlet.doPut(BaseJobServlet.java:97)
javax.servlet.http.HttpServlet.service(HttpServlet.java:640)
org.apache.oozie.servlet.JsonRestServlet.service(JsonRestServlet.java:286)
javax.servlet.http.HttpServlet.service(HttpServlet.java:717)
org.apache.oozie.servlet.AuthFilter$2.doFilter(AuthFilter.java:126)
org.apache.hadoop.security.authentication.server.AuthenticationFilter.doFilter(AuthenticationFilter.java:384)
org.apache.oozie.servlet.AuthFilter.doFilter(AuthFilter.java:131)
org.apache.oozie.servlet.HostnameFilter.doFilter(HostnameFilter.java:84)
</pre></p><p><b>note</b> <u>The full stack trace of the root cause is available in the Apache Tomcat/6.0.36 logs.</u></p><HR size="1" noshade="noshade"><h3>Apache Tomcat/6.0.36</h3></body></html>


---

* [OOZIE-1733](https://issues.apache.org/jira/browse/OOZIE-1733) | *Major* | **Fix test failures caused by OOZIE-1722**

Some of the tests are failing due to OOZIE-1722 when run against a version of Hadoop that supports tags.

Affected tests are:
- TestMapReduceMain
- TestHiveMain
- TestPigMain
- TestStreamingMain

{noformat}
java.lang.RuntimeException: Could not find Oozie job launch time
	at org.apache.oozie.action.hadoop.LauncherMainHadoopUtils.getChildYarnJobs(LauncherMainHadoopUtils.java:48)
	at org.apache.oozie.action.hadoop.LauncherMainHadoopUtils.getYarnJobForMapReduceAction(LauncherMainHadoopUtils.java:74)
	at org.apache.oozie.action.hadoop.MapReduceMain.run(MapReduceMain.java:51)
	at org.apache.oozie.action.hadoop.LauncherMain.run(LauncherMain.java:38)
	at org.apache.oozie.action.hadoop.MapReduceMain.main(MapReduceMain.java:37)
	at org.apache.oozie.action.hadoop.TestMapReduceMain.call(TestMapReduceMain.java:67)
	at org.apache.oozie.action.hadoop.TestMapReduceMain.call(TestMapReduceMain.java:30)
	at org.apache.oozie.action.hadoop.MainTestCase$1.run(MainTestCase.java:32)
	at org.apache.oozie.action.hadoop.MainTestCase$1.run(MainTestCase.java:30)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:415)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1548)
	at org.apache.oozie.action.hadoop.MainTestCase.execute(MainTestCase.java:30)
	at org.apache.oozie.action.hadoop.MainTestCase.testMain(MainTestCase.java:39)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at junit.framework.TestCase.runTest(TestCase.java:168)
	at junit.framework.TestCase.runBare(TestCase.java:134)
	at junit.framework.TestResult$1.protect(TestResult.java:110)
	at junit.framework.TestResult.runProtected(TestResult.java:128)
	at junit.framework.TestResult.run(TestResult.java:113)
	at junit.framework.TestCase.run(TestCase.java:124)
	at junit.framework.TestSuite.runTest(TestSuite.java:243)
	at junit.framework.TestSuite.run(TestSuite.java:238)
	at org.junit.internal.runners.JUnit38ClassRunner.run(JUnit38ClassRunner.java:83)
	at org.apache.maven.surefire.junitcore.ClassDemarcatingRunner.run(ClassDemarcatingRunner.java:58)
	at org.junit.runners.Suite.runChild(Suite.java:128)
	at org.junit.runners.Suite.runChild(Suite.java:24)
	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)
	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:471)
	at java.util.concurrent.FutureTask$Sync.innerRun(FutureTask.java:334)
	at java.util.concurrent.FutureTask.run(FutureTask.java:166)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:724)
Caused by: java.lang.NumberFormatException: null
	at java.lang.Long.parseLong(Long.java:404)
	at java.lang.Long.parseLong(Long.java:483)
	at org.apache.oozie.action.hadoop.LauncherMainHadoopUtils.getChildYarnJobs(LauncherMainHadoopUtils.java:46)
	... 36 more
{noformat}

The cause is fairly trivial, its because of how those tests are running the Main classes without calling the methods that set the properties added in OOZIE-1722


---

* [OOZIE-1732](https://issues.apache.org/jira/browse/OOZIE-1732) | *Major* | **Sharelib instrumentation fails if sharelib.system.libpath is not created.**

Throws NPE.
2014-03-06 09:49:25,509  WARN AuthenticationFilter:388 [http-0.0.0.0-4080-1] - Authentication exception: null
java.lang.NullPointerException
        at org.apache.oozie.service.ShareLibService$6.getValue(ShareLibService.java:602)
        at org.apache.oozie.service.ShareLibService$6.getValue(ShareLibService.java:597)
        at org.apache.oozie.servlet.BaseAdminServlet.instrElementsToJson(BaseAdminServlet.java:318)
        at org.apache.oozie.servlet.BaseAdminServlet.instrToJson(BaseAdminServlet.java:345)
        at org.apache.oozie.servlet.BaseAdminServlet.doGet(BaseAdminServlet.java:119)

One will use sharelib.mapping.file or sharelib.system.libpath.
If sharelib.mapping.file is used there won't be any sharelib.system.libpath created. 

Will fix the NPE.


---

* [OOZIE-1727](https://issues.apache.org/jira/browse/OOZIE-1727) | *Major* | **Upgrade hadoop-minikdc**

Current used version is 2.3.0.SNAPSHOT
<dependency>
                <groupId>org.apache.hadoop</groupId>
                <artifactId>hadoop-minikdc</artifactId>
                <!-- TODO: Replace version once MiniKdc is in a released version of Hadoop -->
                <version>2.3.0-SNAPSHOT</version>
</dependency>

Looks like that has been removed from http://repository.apache.org/content/groups/snapshots/org/apache/hadoop/hadoop-minikdc/, which leads to build failure.

Should upgrade it to released version(2.3.0).


---

* [OOZIE-1725](https://issues.apache.org/jira/browse/OOZIE-1725) | *Major* | **add coord EL functions to be used in SLA tag**

current SLA tag only supports limited set of coord EL functions (e.g, nominalTime), missing many other useful ones (coord:formatTime, coord:dataOut, etc), this patch to add existing coord EL functions to be used in sla tag.


---

* [OOZIE-1724](https://issues.apache.org/jira/browse/OOZIE-1724) | *Major* | **Make it easier to specify the HCat hive-site.xml for the Oozie Server**

Currently, to specify the hive-site.xml to configure Oozie to talk to the HCatalog server (see http://oozie.apache.org/docs/4.0.0/AG\_Install.html#HCatalog\_Configuration) it requires you to put the hive-site.xml in the classpath, which means you'd put it in the libext and run the oozie-setup.sh.  

It would be much easier if we added an oozie-site.xml config property to specify this file, similar to how we specify the core/mapred/yarn/etc-site files for Hadoop (see http://oozie.apache.org/docs/4.0.0/AG\_HadoopConfiguration.html).

Something like:
{code:xml}
<property>
     <name>oozie.service.HCatAccessorService.hcat.configuration</name>
     <value>path/to/hive-site.xml</value>
</property>
{code}


---

* [OOZIE-1722](https://issues.apache.org/jira/browse/OOZIE-1722) | *Major* | **When an ApplicationMaster restarts, it restarts the launcher job**

When using Yarn, there are some situations in which the ApplicationMaster can be restarted (e.g. RM failover, the AM dies and another attempt is made, etc).  

When this happens, it starts the launcher job again, which will start over.  So, if that launcher has already launched a job, we'll end up with two instances of the same job, which can be problematic.  For example, if you have a Pig action, the Pig client might run a job, but then the launcher gets restarted by an AM restart and launches that same job again.  

We don't have a way of "re-attaching" to previously launched jobs; however, with YARN-1461 and MAPREDUCE-5699, we can use yarn tags to find anything the launcher previously launched that's running and kill them.  We still have to start over, but at least we're not running two instances of a job at the same time.

Here's what we can do for each action type:
- Pig, Sqoop, Hive
-- Kill previously launched jobs and start over
- MapReduce (different because of the optimization)
-- Exit launcher if a previously launched job already exists
- Java, Shell
-- No out-of-the-box support for this
-- Like with other things, the Java action can take advantage of this like Pig, Sqoop, and Hive if the user adds some code
- DistCp
-- Not supported
- SSH, Email
-- N/A

The yarn tags won't be available until Hadoop 2.4.0, but is in the nightly (i.e. Hadoop 3.0.0-SNAPSHOT); and its obviously not in Hadoop 1.x.  To be able to use the Yarn methods and the new methods for tagging, we can add a new type of Hadooplib called "Hadoop Utils" where we can put classes that are specific to a specific version of Hadoop; the other implementations can have dummy versions.  For example, in the Hadoop-2 Hadoop Utils, we can put a method foo() that calls some yarn stuff but in the Hadoop-1 Hadoop Utils, the foo() method would either do the equivalent in MR1 or a no-op.  So for now, I put some methods in the Hadoop-3 Hadoop Utils that use the tags and the Hadoop-1, Hadoop-2, and Hadoop-23 Hadoop Utils all have dummy implementations that don't do anything (so the existing behavior is preserved).  The Hadoop Utils modules will allow us to take advantage of Hadoop 2 only features in the future, while still being able to compile against Hadoop 1; so it's not just limited to this feature.


---

* [OOZIE-1720](https://issues.apache.org/jira/browse/OOZIE-1720) | *Major* | **Oozie Hive action doesn't honour mapred.job.name.**

If mapred.job.name is set in the configuration parameters of a Hive Action, one sees that the setting doesn't stick. The Hive job runs with the default hive job-name (i.e. the query, truncated to a certain length). This behaviour prevents users from being able to choose custom job-names for Hive-jobs launched from Oozie workflows.

The Hive configuration indicates that mapred.job.name (and mapreduce.job.name) are passed into Hive as empty ("").


---

* [OOZIE-1719](https://issues.apache.org/jira/browse/OOZIE-1719) | *Major* | **v1/jobs api returns null for parentId even when it exists**

query used in WorkflowsJobGetJPAExecutor does not fetch parentId, hence returning null


---

* [OOZIE-1718](https://issues.apache.org/jira/browse/OOZIE-1718) | *Major* | **Coord Job Query UPDATE\_COORD\_JOB\_CHANGE does not update last modified time**

The update query - 'UPDATE\_COORD\_JOB\_CHANGE' in CoordJobQueryExecutor fails to update the job's last modified timestamp. Hence it gets reset to null in database. This causes errors in future materialization of the job where jobs are retrieved in order of their last modified time.

Patch also includes related fix where CoordKillXCommand will now fetch last modified time (via GET\_GET\_COORD\_JOB\_SUSPEND\_KILL) so that its update command does not overwrite last modified time to NULL.


---

* [OOZIE-1715](https://issues.apache.org/jira/browse/OOZIE-1715) | *Major* | **Distributed ID sequence for HA**

Currently each host maintains their own sequencing. In case of HA, this will not work. We need to have distributed sequence generator. All server in HA will use it to get incremental sequence.

One good option is to use ZK PERSISTENT\_SEQUENTIAL, other options is to use Database sequence generator (not sure if all DB provides).

There are few other discussed @
http://srinathsview.blogspot.com/2012/04/generating-distributed-sequence-number.html
http://stackoverflow.com/questions/2671858/distributed-sequence-number-generation/5685869

Suggestion?


---

* [OOZIE-1714](https://issues.apache.org/jira/browse/OOZIE-1714) | *Critical* | **Update Derby driver version to latest**

Upgrading from Oozie 3 (database version 1) to Oozie 5/trunk (database version 3) with a derby database can fail depending on what's in the database:
{noformat}
java.sql.SQLException: The data in this BLOB or CLOB is no longer available.  The BLOB/CLOB's transaction may be committed, its connection closed or it has been freed.
	at org.apache.derby.impl.jdbc.SQLExceptionFactory40.getSQLException(Unknown Source)
	at org.apache.derby.impl.jdbc.Util.newEmbedSQLException(Unknown Source)
	at org.apache.derby.impl.jdbc.Util.seeNextException(Unknown Source)
	at org.apache.derby.impl.jdbc.TransactionResourceImpl.wrapInSQLException(Unknown Source)
	at org.apache.derby.impl.jdbc.TransactionResourceImpl.handleException(Unknown Source)
	at org.apache.derby.impl.jdbc.EmbedConnection.handleException(Unknown Source)
	at org.apache.derby.impl.jdbc.ConnectionChild.handleException(Unknown Source)
	at org.apache.derby.impl.jdbc.EmbedResultSet.getClob(Unknown Source)
	at org.apache.derby.impl.jdbc.EmbedResultSet.getClob(Unknown Source)
	at org.apache.oozie.tools.OozieDBCLI.convertClobToBlobinDerby(OozieDBCLI.java:573)
	at org.apache.oozie.tools.OozieDBCLI.ddlTweaksFor50(OozieDBCLI.java:636)
	at org.apache.oozie.tools.OozieDBCLI.upgradeDBto50(OozieDBCLI.java:241)
	at org.apache.oozie.tools.OozieDBCLI.upgradeDB(OozieDBCLI.java:221)
	at org.apache.oozie.tools.OozieDBCLI.run(OozieDBCLI.java:129)
	at org.apache.oozie.tools.OozieDBCLI.main(OozieDBCLI.java:77)
Caused by: java.sql.SQLException: The data in this BLOB or CLOB is no longer available.  The BLOB/CLOB's transaction may be committed, its connection closed or it has been freed.
	at org.apache.derby.impl.jdbc.SQLExceptionFactory.getSQLException(Unknown Source)
	at org.apache.derby.impl.jdbc.SQLExceptionFactory40.wrapArgsForTransportAcrossDRDA(Unknown Source)
	... 15 more
Caused by: java.sql.SQLException: Java exception: 'ERROR 40XD0: Container has been closed.: java.io.IOException'.
	at org.apache.derby.impl.jdbc.SQLExceptionFactory.getSQLException(Unknown Source)
	at org.apache.derby.impl.jdbc.SQLExceptionFactory40.wrapArgsForTransportAcrossDRDA(Unknown Source)
	at org.apache.derby.impl.jdbc.SQLExceptionFactory40.getSQLException(Unknown Source)
	at org.apache.derby.impl.jdbc.Util.newEmbedSQLException(Unknown Source)
	at org.apache.derby.impl.jdbc.Util.javaException(Unknown Source)
	at org.apache.derby.impl.jdbc.TransactionResourceImpl.wrapInSQLException(Unknown Source)
	... 12 more
Caused by: java.io.IOException: ERROR 40XD0: Container has been closed.
	at org.apache.derby.impl.store.raw.data.OverflowInputStream.fillByteHolder(Unknown Source)
	at org.apache.derby.impl.store.raw.data.BufferedByteHolderInputStream.read(Unknown Source)
	at java.io.DataInputStream.read(DataInputStream.java:100)
	at org.apache.derby.iapi.types.SQLClob.getStreamWithDescriptor(Unknown Source)
	at org.apache.derby.impl.jdbc.EmbedClob.<init>(Unknown Source)
	... 8 more
Caused by: ERROR 40XD0: Container has been closed.
	at org.apache.derby.iapi.error.StandardException.newException(Unknown Source)
	at org.apache.derby.impl.store.raw.data.BaseContainerHandle.checkOpen(Unknown Source)
	at org.apache.derby.impl.store.raw.data.BaseContainerHandle.getPage(Unknown Source)
	... 13 more
{noformat}

I couldn't find too much on the internet about this, but from what I could gather it's a bug with how Derby handles CLOBs and connections or something; though I couldn't find a specific Derby JIRA.  In any case, I tried using the latest Derby driver (10.10.1.1) instead of the one we're currently using (10.6.1.0) and the upgrade succeeds.


---

* [OOZIE-1713](https://issues.apache.org/jira/browse/OOZIE-1713) | *Major* | **Avoid creating dummy input file for each launcher job**

In current approach we create a dummy input file for each  launcher jobs, which puts extra load on NN.

Cleaner approach is to define a Oozie launcher input format which can works without input file.


---

* [OOZIE-1712](https://issues.apache.org/jira/browse/OOZIE-1712) | *Major* | **Oozie page does not render in Internet Explorer 9 on Windows**

PROBLEM: Oozie page does not render in Internet Explorer 9 on Windows
BUSINESS IMPACT: Customers cant see Oozie page in IE
STEPS TO REPRODUCE: Open Oozie UI in IE
EXPECTED BEHAVIOR: Oozie page should display properly in IE9


---

* [OOZIE-1711](https://issues.apache.org/jira/browse/OOZIE-1711) | *Major* | **TestLiteWorkflowAppParser fails against Hadoop 2**

After OOZIE-1644, TestLiteWorkflowAppParser fails against Hadoop 2:
{noformat}
-------------------------------------------------------------------------------
Test set: org.apache.oozie.workflow.lite.TestLiteWorkflowAppParser
-------------------------------------------------------------------------------
Tests run: 30, Failures: 5, Errors: 0, Skipped: 0, Time elapsed: 39.802 sec <<< FAILURE!
testParserGlobal(org.apache.oozie.workflow.lite.TestLiteWorkflowAppParser)  Time elapsed: 0.036 sec  <<< FAILURE!
junit.framework.ComparisonFailure: expected:<...
<value>B</value>
<[/property>
<property>
<name>a</name>
<value>A</valu]e>
</property>
</c...> but was:<...
<value>B</value>
<[source>programatically</source>
</property>
<property>
<name>a</name>
<value>A</value>
<source>programatically</sourc]e>
</property>
</c...>
	at junit.framework.Assert.assertEquals(Assert.java:85)
	at junit.framework.Assert.assertEquals(Assert.java:91)
	at org.apache.oozie.workflow.lite.TestLiteWorkflowAppParser.testParserGlobal(TestLiteWorkflowAppParser.java:96)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:39)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25)
	at java.lang.reflect.Method.invoke(Method.java:597)
	at junit.framework.TestCase.runTest(TestCase.java:168)
	at junit.framework.TestCase.runBare(TestCase.java:134)
	at junit.framework.TestResult$1.protect(TestResult.java:110)
	at junit.framework.TestResult.runProtected(TestResult.java:128)
	at junit.framework.TestResult.run(TestResult.java:113)
	at junit.framework.TestCase.run(TestCase.java:124)
	at junit.framework.TestSuite.runTest(TestSuite.java:243)
	at junit.framework.TestSuite.run(TestSuite.java:238)
	at org.junit.internal.runners.JUnit38ClassRunner.run(JUnit38ClassRunner.java:83)
	at org.apache.maven.surefire.junitcore.ClassDemarcatingRunner.run(ClassDemarcatingRunner.java:58)
	at org.junit.runners.Suite.runChild(Suite.java:128)
	at org.junit.runners.Suite.runChild(Suite.java:24)
	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)
	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:439)
	at java.util.concurrent.FutureTask$Sync.innerRun(FutureTask.java:303)
	at java.util.concurrent.FutureTask.run(FutureTask.java:138)
	at java.util.concurrent.ThreadPoolExecutor$Worker.runTask(ThreadPoolExecutor.java:895)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:918)
	at java.lang.Thread.run(Thread.java:695)
testParserGlobalJobXML(org.apache.oozie.workflow.lite.TestLiteWorkflowAppParser)  Time elapsed: 0.002 sec  <<< FAILURE!
junit.framework.ComparisonFailure: expected:<...
<value>B</value>
<[/property>
<property>
<name>a</name>
<value>A</valu]e>
</property>
</c...> but was:<...
<value>B</value>
<[source>programatically</source>
</property>
<property>
<name>a</name>
<value>A</value>
<source>programatically</sourc]e>
</property>
</c...>
	at junit.framework.Assert.assertEquals(Assert.java:85)
	at junit.framework.Assert.assertEquals(Assert.java:91)
	at org.apache.oozie.workflow.lite.TestLiteWorkflowAppParser.testParserGlobalJobXML(TestLiteWorkflowAppParser.java:139)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:39)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25)
	at java.lang.reflect.Method.invoke(Method.java:597)
	at junit.framework.TestCase.runTest(TestCase.java:168)
	at junit.framework.TestCase.runBare(TestCase.java:134)
	at junit.framework.TestResult$1.protect(TestResult.java:110)
	at junit.framework.TestResult.runProtected(TestResult.java:128)
	at junit.framework.TestResult.run(TestResult.java:113)
	at junit.framework.TestCase.run(TestCase.java:124)
	at junit.framework.TestSuite.runTest(TestSuite.java:243)
	at junit.framework.TestSuite.run(TestSuite.java:238)
	at org.junit.internal.runners.JUnit38ClassRunner.run(JUnit38ClassRunner.java:83)
	at org.apache.maven.surefire.junitcore.ClassDemarcatingRunner.run(ClassDemarcatingRunner.java:58)
	at org.junit.runners.Suite.runChild(Suite.java:128)
	at org.junit.runners.Suite.runChild(Suite.java:24)
	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)
	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:439)
	at java.util.concurrent.FutureTask$Sync.innerRun(FutureTask.java:303)
	at java.util.concurrent.FutureTask.run(FutureTask.java:138)
	at java.util.concurrent.ThreadPoolExecutor$Worker.runTask(ThreadPoolExecutor.java:895)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:918)
	at java.lang.Thread.run(Thread.java:695)
testParserGlobalLocalAlreadyExists(org.apache.oozie.workflow.lite.TestLiteWorkflowAppParser)  Time elapsed: 0.002 sec  <<< FAILURE!
junit.framework.ComparisonFailure: expected:<...
<value>B</value>
<[/property>
<property>
<name>a</name>
<value>A2</valu]e>
</property>
</c...> but was:<...
<value>B</value>
<[source>programatically</source>
</property>
<property>
<name>a</name>
<value>A2</value>
<source>programatically</sourc]e>
</property>
</c...>
	at junit.framework.Assert.assertEquals(Assert.java:85)
	at junit.framework.Assert.assertEquals(Assert.java:91)
	at org.apache.oozie.workflow.lite.TestLiteWorkflowAppParser.testParserGlobalLocalAlreadyExists(TestLiteWorkflowAppParser.java:177)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:39)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25)
	at java.lang.reflect.Method.invoke(Method.java:597)
	at junit.framework.TestCase.runTest(TestCase.java:168)
	at junit.framework.TestCase.runBare(TestCase.java:134)
	at junit.framework.TestResult$1.protect(TestResult.java:110)
	at junit.framework.TestResult.runProtected(TestResult.java:128)
	at junit.framework.TestResult.run(TestResult.java:113)
	at junit.framework.TestCase.run(TestCase.java:124)
	at junit.framework.TestSuite.runTest(TestSuite.java:243)
	at junit.framework.TestSuite.run(TestSuite.java:238)
	at org.junit.internal.runners.JUnit38ClassRunner.run(JUnit38ClassRunner.java:83)
	at org.apache.maven.surefire.junitcore.ClassDemarcatingRunner.run(ClassDemarcatingRunner.java:58)
	at org.junit.runners.Suite.runChild(Suite.java:128)
	at org.junit.runners.Suite.runChild(Suite.java:24)
	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)
	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:439)
	at java.util.concurrent.FutureTask$Sync.innerRun(FutureTask.java:303)
	at java.util.concurrent.FutureTask.run(FutureTask.java:138)
	at java.util.concurrent.ThreadPoolExecutor$Worker.runTask(ThreadPoolExecutor.java:895)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:918)
	at java.lang.Thread.run(Thread.java:695)
testParserGlobalExtensionActions(org.apache.oozie.workflow.lite.TestLiteWorkflowAppParser)  Time elapsed: 0.002 sec  <<< FAILURE!
junit.framework.ComparisonFailure: expected:<...
<value>B</value>
<[/property>
<property>
<name>a</name>
<value>A</value>
</property>
<property>
<name>c</name>
<value>C</valu]e>
</property>
</c...> but was:<...
<value>B</value>
<[source>programatically</source>
</property>
<property>
<name>a</name>
<value>A</value>
<source>programatically</source>
</property>
<property>
<name>c</name>
<value>C</value>
<source>programatically</sourc]e>
</property>
</c...>
	at junit.framework.Assert.assertEquals(Assert.java:85)
	at junit.framework.Assert.assertEquals(Assert.java:91)
	at org.apache.oozie.workflow.lite.TestLiteWorkflowAppParser.testParserGlobalExtensionActions(TestLiteWorkflowAppParser.java:218)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:39)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25)
	at java.lang.reflect.Method.invoke(Method.java:597)
	at junit.framework.TestCase.runTest(TestCase.java:168)
	at junit.framework.TestCase.runBare(TestCase.java:134)
	at junit.framework.TestResult$1.protect(TestResult.java:110)
	at junit.framework.TestResult.runProtected(TestResult.java:128)
	at junit.framework.TestResult.run(TestResult.java:113)
	at junit.framework.TestCase.run(TestCase.java:124)
	at junit.framework.TestSuite.runTest(TestSuite.java:243)
	at junit.framework.TestSuite.run(TestSuite.java:238)
	at org.junit.internal.runners.JUnit38ClassRunner.run(JUnit38ClassRunner.java:83)
	at org.apache.maven.surefire.junitcore.ClassDemarcatingRunner.run(ClassDemarcatingRunner.java:58)
	at org.junit.runners.Suite.runChild(Suite.java:128)
	at org.junit.runners.Suite.runChild(Suite.java:24)
	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)
	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:439)
	at java.util.concurrent.FutureTask$Sync.innerRun(FutureTask.java:303)
	at java.util.concurrent.FutureTask.run(FutureTask.java:138)
	at java.util.concurrent.ThreadPoolExecutor$Worker.runTask(ThreadPoolExecutor.java:895)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:918)
	at java.lang.Thread.run(Thread.java:695)
testParserGlobalExtensionActionsLocalAlreadyExists(org.apache.oozie.workflow.lite.TestLiteWorkflowAppParser)  Time elapsed: 0.001 sec  <<< FAILURE!
junit.framework.ComparisonFailure: expected:<...
<value>B</value>
<[/property>
<property>
<name>a</name>
<value>A2</valu]e>
</property>
</c...> but was:<...
<value>B</value>
<[source>programatically</source>
</property>
<property>
<name>a</name>
<value>A2</value>
<source>programatically</sourc]e>
</property>
</c...>
	at junit.framework.Assert.assertEquals(Assert.java:85)
	at junit.framework.Assert.assertEquals(Assert.java:91)
	at org.apache.oozie.workflow.lite.TestLiteWorkflowAppParser.testParserGlobalExtensionActionsLocalAlreadyExists(TestLiteWorkflowAppParser.java:253)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:39)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25)
	at java.lang.reflect.Method.invoke(Method.java:597)
	at junit.framework.TestCase.runTest(TestCase.java:168)
	at junit.framework.TestCase.runBare(TestCase.java:134)
	at junit.framework.TestResult$1.protect(TestResult.java:110)
	at junit.framework.TestResult.runProtected(TestResult.java:128)
	at junit.framework.TestResult.run(TestResult.java:113)
	at junit.framework.TestCase.run(TestCase.java:124)
	at junit.framework.TestSuite.runTest(TestSuite.java:243)
	at junit.framework.TestSuite.run(TestSuite.java:238)
	at org.junit.internal.runners.JUnit38ClassRunner.run(JUnit38ClassRunner.java:83)
	at org.apache.maven.surefire.junitcore.ClassDemarcatingRunner.run(ClassDemarcatingRunner.java:58)
	at org.junit.runners.Suite.runChild(Suite.java:128)
	at org.junit.runners.Suite.runChild(Suite.java:24)
	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)
	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:439)
	at java.util.concurrent.FutureTask$Sync.innerRun(FutureTask.java:303)
	at java.util.concurrent.FutureTask.run(FutureTask.java:138)
	at java.util.concurrent.ThreadPoolExecutor$Worker.runTask(ThreadPoolExecutor.java:895)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:918)
	at java.lang.Thread.run(Thread.java:695)
{noformat}

Looks like the problem is that Hadoop's Configuration is printing out the {{<source>}} tags


---

* [OOZIE-1709](https://issues.apache.org/jira/browse/OOZIE-1709) | *Major* | **CoordELFunctions.getCurrentInstance() is expensive**

{noformat}
      while (current.compareTo(calEffectiveTime) <= 0) {
            current = (Calendar) origCurrent.clone();
            instanceCount[0]++;
            current.add(dsTimeUnit.getCalendarUnit(), instanceCount[0] * dsFreq);
        }
{noformat}
This computes current instance wrt coord start and this while loop is expensive for small frequency coords with start time in very past


---

* [OOZIE-1704](https://issues.apache.org/jira/browse/OOZIE-1704) | *Major* | **Add ability to use Bulk API with bundle ID**

Usage of this bulk API currently is
oozie bulk -bundle="abc" [-filters...]

And it has a fail-fast strategy if more than one bundle ID correspond to same bundle name. However, in testing, this is a very common scenario and so we should extend API to accept bundle ID too

At the same time, added the ability to mention coordinator IDs in addition to only appNames.

therefore the API will now accept either job-id or appname:
e.g.
bundle=0000-1234-B;coordinators=my-coord-name1,my-coord-name2
OR
bundle=my-bundle-name1,my-bundle-name2;coordinators=0000-23434-C
OR both appnames or both ids


---

* [OOZIE-1703](https://issues.apache.org/jira/browse/OOZIE-1703) | *Major* | **User should be able to set coord end-time before start time**

This is one of the important use-case in case of versioning.

User can set end date of old coord before start date( if coord is supposed to run in future), so that it doesn't run and user can safely upload new version.


We should also lookahead at created actions that become invalid because of the new end time.
These actions should be deleted from DB.

We  should also update the status of bundle. If it's in PREP and new end-date is before kick off time, then job status will be set to SUCCEEDED. User can again change the end date to future date, the status will be changed to RUNNING.


---

* [OOZIE-1701](https://issues.apache.org/jira/browse/OOZIE-1701) | *Major* | **TestXTestCase#testWaitFor and TestXTestCase#testBaseDir have the errors**

TestXTestCase have the methods testBaseDir and testWaitFor.
TestXTestCase has the inner class MyXTestCase as well that have the same methods with the same name.
The problem is that Junit runs tests and creates the directory for inner class before the time when the actual tests would be running.
As a result we have the following errors:" testWaitFor(org.apache.oozie.test.TestXTestCase): could not delete path [oozie-monarch\core\target\test-data\oozietests\org.apache.oozie.test.TestXTestCase$MyXTestCase\testWaitFor\conf\oozie-site.xml] testBaseDir(org.apache.oozie.test.TestXTestCase): could not delete path [oozie-monarch\core\target\test-data\oozietests\org.apache.oozie.test.TestXTestCase$MyXTestCase\testBaseDir\conf\oozie-site.xml]"
That is why we need to add the check for setUp and tearDown methods as for the other

This errors  appear in Windows


---

* [OOZIE-1699](https://issues.apache.org/jira/browse/OOZIE-1699) | *Critical* | **Some of the commands submitted to Oozie internal queue are never executed**

At scale, we are seeing issues with some command submitted to the command queue in CallableQueueService aren't getting executed at all.


---

* [OOZIE-1698](https://issues.apache.org/jira/browse/OOZIE-1698) | *Major* | **Action sharelib configuration document lacks the "oozie." prefix**

In the {{docs/src/site/twiki/WorkflowFunctionalSpec.twiki}}, the section 17.1 section that talks about configuring sharelibs for an action, mentions incorrect properties {{action.sharelib.for.\*}}, as they should instead be {{oozie.action.sharelib.for.\*}}.


---

* [OOZIE-1693](https://issues.apache.org/jira/browse/OOZIE-1693) | *Major* | **UI timeout while loading job table**

{code:java}
var jobs\_store = new Ext.data.JsonStore({
    baseParams: {
        filter: "status=RUNNING",
        timezone: getTimeZone()
    },
    idProperty: 'id',
    totalProperty: 'total',
    autoLoad: true,
    root: 'workflows',
    fields: ['appPath', 'appName', 'id', 'conf', 'status', {name: 'createdTime', sortType: Ext.data.SortTypes.asDate}, {name: 'startTime', sortType: Ext.data.SortTypes.asDate}, {name: 'lastModTime', sortType: Ext.data.SortTypes.asDate}, {name: 'endTime', sortType: Ext.data.SortTypes.asDate}, 'user', 'group', 'run', 'actions'],
    proxy: new Ext.data.HttpProxy({
        url: getOozieBase() + 'jobs'
    })
});
jobs\_store.proxy.conn.method = "GET";

{code}

Default time out for proxy component is 30000(30 sec).


UI job table load fails if Oozie server or DB have high load and request takes more than 30sec.


---

* [OOZIE-1692](https://issues.apache.org/jira/browse/OOZIE-1692) | *Minor* | **modify log message when checking completion of child job in Map-Reduce action**

even after child job is launched and checking completion of the child job,   log message still shows launcher job's status like 
{code}
"checking action, external ID [{0}] status [{1}]"
{code}
this is misleading.


---

* [OOZIE-1691](https://issues.apache.org/jira/browse/OOZIE-1691) | *Major* | **StackOverflowError in TimestampedMessageParser.parseNextLine()**

Below function will throws StackOverflowError if no matching line is found for a few consecutive lines.

This will be a common scenario in HA where bundle/coord/WF got executed in other host. For log aggregation we have to search logs in all host and may lead to StackOverflowError.

{code:java}
protected String parseNextLine() throws IOException {
        String line = reader.readLine();
        if (line != null) {
            ArrayList<String> logParts = filter.splitLogMessage(line);
            if (logParts != null) {
                patternMatched = filter.matches(logParts);
            }
            if (!patternMatched) {
                line = parseNextLine();
            }
        }
        return line;
    }
{code}


Exception
	Caused by: java.lang.StackOverflowError
	        at java.util.regex.Pattern$GroupTail.match(Pattern.java:4615)
	        at java.util.regex.Pattern$Curly.match0(Pattern.java:4170)
	        ...........................................
	        at java.util.regex.Pattern$BmpCharProperty.match(Pattern.java:3715)
	        at java.util.regex.Pattern$BmpCharProperty.match(Pattern.java:3715)
	        at java.util.regex.Pattern$GroupHead.match(Pattern.java:4556)
	        at java.util.regex.Matcher.match(Matcher.java:1221)
	        at java.util.regex.Matcher.matches(Matcher.java:559)
	        at org.apache.oozie.util.XLogStreamer$Filter.splitLogMessage(XLogStreamer.java:138)
	        at org.apache.oozie.util.TimestampedMessageParser.parseNextLine(TimestampedMessageParser.java:138)
	        at org.apache.oozie.util.TimestampedMessageParser.parseNextLine(TimestampedMessageParser.java:143)
	        at org.apache.oozie.util.TimestampedMessageParser.parseNextLine(TimestampedMessageParser.java:143)
	        at org.apache.oozie.util.TimestampedMessageParser.parseNextLine(TimestampedMessageParser.java:143)


---

* [OOZIE-1690](https://issues.apache.org/jira/browse/OOZIE-1690) | *Major* | **TestShellActionExecutor#testEnvVar failed for Windows**

There are two errors here:

1. The output size of shell job for windows
is more that default value.
{quote}
org.apache.oozie.action.hadoop.LauncherException: Output data size [3,946] exceeds maximum [2,048]
{quote}
2. Oozie reads output from job in Properties file. But when that output contains \u, Properties#load method throws " Malformed \uxxxx encoding".
because it tries to read unicode combination.
{quote}
C:\Users\jenkins\AppData\Local\Temp\2\1391088998824\MiniMRCluster\_1473835877-localDir-nm-0\_1\usercache\test\appcache\application\_1391088999117\_0001\container\_1391088999117\_0001\_01\_000002>dir /s /b 
C:\Users\jenkins\AppData\Local\Temp\2\1391088998824\MiniMRCluster\_1473835877-localDir-nm-0\_1\usercache\test\appcache\application\_1391088999117\_0001\container\_1391088999117\_0001\_01\_000002\.action.xml.crc

...
C:\Users\jenkins\AppData\Local\Temp\2\1391088998824\MiniMRCluster\_1473835877-localDir-nm-0\_1\usercache\test\appcache\application\_1391088999117\_0001\container\_1391088999117\_0001\_01\_000002\tmp
C:\Users\jenkins\AppData\Local\Temp\2\1391088998824\MiniMRCluster\_1473835877-localDir-nm-0\_1\usercache\test\appcache\application\_1391088999117\_0001\container\_1391088999117\_0001\_01\_000002>echo var1=val1 
var1=val1
C:\Users\jenkins\AppData\Local\Temp\2\1391088998824\MiniMRCluster\_1473835877-localDir-nm-0\_1\usercache\test\appcache\application\_1391088999117\_0001\container\_1391088999117\_0001\_01\_000002>echo var2=a=b;c=d 
var2=a=b;c=d

{quote}


---

* [OOZIE-1689](https://issues.apache.org/jira/browse/OOZIE-1689) | *Major* | **HA support for OOZIE-7(Ability to view the log information corresponding to particular coordinator action)**

Currently action list is not passed to other url. If coord is executed in other server all coord logs are displayed.


---

* [OOZIE-1687](https://issues.apache.org/jira/browse/OOZIE-1687) | *Major* | **Bundle can still be in RUNNINGWITHERROR status after bundle kill**

Race condition between StatusTransitService (does not acquire lock) and BundleKillCommand can leave a bundle action with pending=1 and terminal status.


---

* [OOZIE-1686](https://issues.apache.org/jira/browse/OOZIE-1686) | *Trivial* | **Typo in DG\_CommandLineTool**

From DG\_CommandLineTool.twiki
------
Checking the Status of multiple Workflow Jobs

Example:

$ oozie jobs -oozie http://localhost:11000/oozie -localtime -len 2 *-fliter* status=RUNNING

-------------
-fliter should be filter.


---

* [OOZIE-1685](https://issues.apache.org/jira/browse/OOZIE-1685) | *Major* | **Oozie doesn’t process correctly workflows with a non-default name node**

When <name-node> element in Oozie workflow specifies a name node different from the default one (specified in core-site.xml), the following functionality doesn’t work properly:
- Location of libraries specified via oozie.service.WorkflowAppService.system.libpath. Oozie first (during launcher configuration) tries to locate them using name node specified by the <name-node> element, but later during job submission it expects this path to be under the default Oozie name node 
- Processing of the job-xml element if job xml is specified via absolute path. Oozie tries locate it under the default Oozie name node instead of the name-node specified in action.

Specifying non-default name node makes a lot of sense in Azure environment, because it allows to submit the same job to different Hadoop clusters.

I will submit a fix for CR soon. Please refer attached short document for more information.


---

* [OOZIE-1684](https://issues.apache.org/jira/browse/OOZIE-1684) | *Critical* | **DB upgrade from 3.3.0 to trunk fails on Oracle**

Similar issue to OOZIE-1674, but for Oracle instead of Postgres.  Upgrading from a database created by Oozie 3.3.0 (DB version 1) to the current trunk (DB version 3) fails with this error:
{noformat}
java.sql.SQLSyntaxErrorException: ORA-00904: "PUSH\_MISSING\_DEPENDENCIES": invalid identifier

	at oracle.jdbc.driver.T4CTTIoer.processError(T4CTTIoer.java:445)
	at oracle.jdbc.driver.T4CTTIoer.processError(T4CTTIoer.java:396)
	at oracle.jdbc.driver.T4C8Oall.processError(T4C8Oall.java:879)
	at oracle.jdbc.driver.T4CTTIfun.receive(T4CTTIfun.java:450)
	at oracle.jdbc.driver.T4CTTIfun.doRPC(T4CTTIfun.java:192)
	at oracle.jdbc.driver.T4C8Oall.doOALL(T4C8Oall.java:531)
	at oracle.jdbc.driver.T4CStatement.doOall8(T4CStatement.java:193)
	at oracle.jdbc.driver.T4CStatement.executeForDescribe(T4CStatement.java:873)
	at oracle.jdbc.driver.OracleStatement.executeMaybeDescribe(OracleStatement.java:1167)
	at oracle.jdbc.driver.OracleStatement.doExecuteWithTimeout(OracleStatement.java:1289)
	at oracle.jdbc.driver.OracleStatement.executeQuery(OracleStatement.java:1491)
	at oracle.jdbc.driver.OracleStatementWrapper.executeQuery(OracleStatementWrapper.java:406)
	at org.apache.oozie.tools.OozieDBCLI.convertClobToBlobInOracle(OozieDBCLI.java:458)
	at org.apache.oozie.tools.OozieDBCLI.ddlTweaksFor50(OozieDBCLI.java:626)
	at org.apache.oozie.tools.OozieDBCLI.upgradeDBto50(OozieDBCLI.java:240)
	at org.apache.oozie.tools.OozieDBCLI.upgradeDB(OozieDBCLI.java:220)
	at org.apache.oozie.tools.OozieDBCLI.run(OozieDBCLI.java:128)
	at org.apache.oozie.tools.OozieDBCLI.main(OozieDBCLI.java:76)
{noformat}

After more investigation, it turns out that if you do the 3.3.0 (version 1) to trunk (version 3) upgrade, any columns or tables added in 4.0.0 (version 2) are not actually added to the database (though they do get printed into the sql file).  
More specifically:
- {{COORD\_ACTIONS.PUSH\_MISSING\_DEPENDENCIES}} column
- {{WF\_ACTIONS.CREATED\_TIME}} column
- {{SLA\_REGISTRATION}} table
- {{SLA\_SUMMARY}} table
- Possibly other changes?


---

* [OOZIE-1683](https://issues.apache.org/jira/browse/OOZIE-1683) | *Major* | **UserGroupInformationService should close any filesystems opened by it**

When you create a FileSystem object in HDFS, it caches it.  However, when using a UGI to get the FileSystem, it caches it to that object, not its “value”.  In other words, if you create two UGIs for foo to impersonate bar, then they will each create an entry in the cache.  In Oozie, we created a UserGroupInformationService class that basically sits on top of the HDFS cache and caches the UGI objects for impersonating a user so we can reuse the same FileSystem object each time.  However, when running unit tests, we typically destroy and recreate the services for each test (sometimes even more) so Oozie’s cache was being lost and we were effectively creating a new FileSystem object all the time without closing it. 

Looking at a heap dump after running many of the tests, we saw that there were 800+ FileSystem objects open for the same FileSystem.


---

* [OOZIE-1681](https://issues.apache.org/jira/browse/OOZIE-1681) | *Major* | **Sqoop sharelib has no hsqldb jar version**

In OOZIE-1343 hsqldb dependency was added to sqoop sharelib, but without version.
 Because of this maven will include hsqldb-1.8.0.7 which is used by oozie. This is wrong because sqoop itself uses hsqldb-1.8.0.10.

So we have to define version for hsqldb as 1.8.0.10.


---

* [OOZIE-1680](https://issues.apache.org/jira/browse/OOZIE-1680) | *Minor* | **Add a check for a maximum frequency of 5 min on Coord jobs**

When submitting a Coordinator job, Oozie should check that the frequency is at least 5 minutes; faster frequencies can cause issues and hasn't been thoroughly tested.


---

* [OOZIE-1678](https://issues.apache.org/jira/browse/OOZIE-1678) | *Major* | **HA support for SLA**

SLA Service needs to be changed to perform SLA calculation on multiple oozie servers in HA setting.


---

* [OOZIE-1675](https://issues.apache.org/jira/browse/OOZIE-1675) | *Major* | **Adding absolute URI of local cluster to dist cache not working with hadoop version 0.20.2 and before**

On hadoop-1, when oozie adds a file path which is an absoute URI on local cluster (i.e. of form hdfs://NN1-host:port/file-path) to distributed cache, it is not working.

The issue is that tasks spawned by oozie jobs are not getting these paths added to their classpath and hence failing. In hadoop-1, DistributedCache.addFileToClasspath() appends paths in classpath with path.separator (which is ':' on linux). That won't work if ':' character is present in the path itself, which is true in case of an absolute URI. Till oozie 3.3, absolute paths on local cluster were working because of earlier logic.


---

* [OOZIE-1674](https://issues.apache.org/jira/browse/OOZIE-1674) | *Critical* | **DB upgrade from 3.3.0 to trunk fails on postgres**

Using a Postgres database created by Oozie 3.3.0 (DB version 1) and upgrading it to the current trunk (DB version 3) fails, even with no jobs in it.

Creating the 3.3.0 database:
{noformat}
[oozie@localhost ~]$ oozie-3.3.0/bin/ooziedb.sh create -run

Validate DB Connection
DONE
Check DB schema does not exist
DONE
Check OOZIE\_SYS table does not exist
DONE
Create SQL schema
DONE
Create OOZIE\_SYS table
DONE

Oozie DB has been created for Oozie version '3.3.0'


The SQL commands have been written to: /tmp/ooziedb-4337942956770953237.sql
{noformat}

Upgrading to current trunk:
{noformat}
[oozie@localhost ~]$ oozie-4.1.0-SNAPSHOT/bin/ooziedb.sh upgrade -run
  setting CATALINA\_OPTS="$CATALINA\_OPTS -Xmx1024m"

Validate DB Connection
DONE
Check DB schema exists
DONE
Verify there are not active Workflow Jobs
DONE
Check OOZIE\_SYS table does not exist
DONE
Get Oozie DB version
DONE
Upgrade SQL schema
DONE
Upgrading to db schema for Oozie 4.0
Update db.version in OOZIE\_SYS table to 2
DONE
Post-upgrade COORD\_JOBS new columns default values
DONE
Post-upgrade COORD\_JOBS & COORD\_ACTIONS status values
DONE
Post-upgrade MISSING\_DEPENDENCIES column
DONE
Table 'WF\_ACTIONS' column 'execution\_path', length changed to 1024
Table 'WF\_ACTIONS, column 'error\_message', changed to varchar/varchar2
Table 'COORD\_JOB' column 'frequency' changed to varchar/varchar2
DONE
Post-upgrade BUNDLE\_JOBS, COORD\_JOBS, WF\_JOBS to drop AUTH\_TOKEN column
DONE
Get Oozie DB version
DONE
Upgrading to db schema for Oozie 4.1.0-SNAPSHOT
Update db.version in OOZIE\_SYS table to 3
DONE
Converting text columns to bytea for all tables

Error: ERROR: syntax error at or near "\"
  Position: 61

Stack trace for the error was (for debug purposes):
--------------------------------------
org.postgresql.util.PSQLException: ERROR: syntax error at or near "\"
  Position: 61
	at org.postgresql.core.v3.QueryExecutorImpl.receiveErrorResponse(QueryExecutorImpl.java:2102)
	at org.postgresql.core.v3.QueryExecutorImpl.processResults(QueryExecutorImpl.java:1835)
	at org.postgresql.core.v3.QueryExecutorImpl.execute(QueryExecutorImpl.java:257)
	at org.postgresql.jdbc2.AbstractJdbc2Statement.execute(AbstractJdbc2Statement.java:500)
	at org.postgresql.jdbc2.AbstractJdbc2Statement.executeWithFlags(AbstractJdbc2Statement.java:374)
	at org.postgresql.jdbc2.AbstractJdbc2Statement.executeUpdate(AbstractJdbc2Statement.java:302)
	at org.apache.oozie.tools.OozieDBCLI.convertClobToBlobInPostgres(OozieDBCLI.java:533)
	at org.apache.oozie.tools.OozieDBCLI.ddlTweaksFor50(OozieDBCLI.java:621)
	at org.apache.oozie.tools.OozieDBCLI.upgradeDBto50(OozieDBCLI.java:239)
	at org.apache.oozie.tools.OozieDBCLI.upgradeDB(OozieDBCLI.java:219)
	at org.apache.oozie.tools.OozieDBCLI.run(OozieDBCLI.java:128)
	at org.apache.oozie.tools.OozieDBCLI.main(OozieDBCLI.java:76)
--------------------------------------

{noformat}


---

* [OOZIE-1671](https://issues.apache.org/jira/browse/OOZIE-1671) | *Major* | **add an option to limit # of coordinator actions for log retrieval**

Oozie server hit OOM when long list of coordinator actions(>200) specified in 'oozie job -log -action <list>'.   there should be an option to add upper limit to prevent Oozie server.


---

* [OOZIE-1664](https://issues.apache.org/jira/browse/OOZIE-1664) | *Major* | **PollablePriorityDelayQueue.poll() returns elements with +ve delay**

In CallableQueueService:
{noformat}
            queue = new PollablePriorityDelayQueue<CallableWrapper>(3, 1000 * 30, TimeUnit.MILLISECONDS, queueSize) {

                @Override
                protected boolean eligibleToPoll(QueueElement<?> element) {
                    if (element != null) {
                        CallableWrapper wrapper = (CallableWrapper) element;
                        if (element.getElement() != null) {
                            return callableReachMaxConcurrency(wrapper.getElement());
                        }
                    }
                    return false;
                }

            };
{noformat}

elegibleToPoll() doesn't check if delay is -ve and in PollablePriorityQueue.poll() iterates over all elements and return any element whose concurrency is not maxed. The element returned can be an element with +ve delay which implies the element is still not up for execution(delay is not elapsed yet), but is picked up for execution
{noformat}
                    Iterator<QueueElement<E>> iter = queues[i - 1].iterator();
                    while(e == null && iter.hasNext()) {
                        e = iter.next();
                        if (eligibleToPoll(e)) {
                            queues[i - 1].remove(e);
                        }
                        else {
                            debug("poll(): the iterator element [{0}], from P[{1}] is not eligible to poll", e.getElement().toString(), i);
                            e = null;
                        }
                    }
{noformat}


---

* [OOZIE-1663](https://issues.apache.org/jira/browse/OOZIE-1663) | *Minor* | **Queuedump to display command type**

As of now, oozie admin -queuedump prints:
{noformat}
[Server Queue Dump]:
delay=-5225, elements=org.apache.oozie.command.coord.CoordActionInputCheckXCommand@4e89ae64
delay=-5130, elements=org.apache.oozie.command.coord.CoordActionInputCheckXCommand@195b5075
delay=-5185, elements=org.apache.oozie.command.coord.CoordActionInputCheckXCommand@862ece9
******************************************
[Server Uniqueness Map Dump]:
coord\_action\_input\_0017409-131225224404110-oozie-oozi-C@1190=Wed Jan 08 08:10:23 UTC 2014
coord\_action\_input\_0054052-130917095935238-oozie-oozi-C@5530=Wed Jan 08 08:10:15 UTC 2014
coord\_action\_input\_0088919-131109200338010-oozie-oozi-C@1194=Wed Jan 08 08:10:07 UTC 2014
coord\_action\_input\_0301417-131109200338010-oozie-oozi-C@815=Wed Jan 08 08:10:29 UTC 2014
{noformat}

Server queuedump prints Object.toString()(with class and hashcode) which is not useful. Instead, it should print the command type


---

* [OOZIE-1662](https://issues.apache.org/jira/browse/OOZIE-1662) | *Major* | **Correct some used and unused Workflow Action SELECT queries**

While committing OOZIE-1559, a few changes were left out - e.g. in WorkflowActionQueryExecutor, removing query GET\_ACTION\_START and bringing back GET\_ACTION\_END. These changes have already been tested


---

* [OOZIE-1661](https://issues.apache.org/jira/browse/OOZIE-1661) | *Major* | **Stream logs in oozie UI**

UI improvement - log streaming.

1. Support partial streaming of logs. 
UI doesn't support partial displaying of logs, logs are displayed only when request completes.

2.Current ajax call timeout is 30 sec(except coord logs with action list).
If log fetch request takes more than 30 sec, connection is terminated by UI and logs are never displayed.

Changing it to no timeout. Timeout should be handled by Server.

3.Code reuse : Coord,bundle and WF have their own logic to fetch and display logs.
Adding a function to retrieve and display logs, will be used by all component.

4.For coord job logs, "action list" and "fetch logs" components are on bottom of page, hard to see for user.
Move it to top. Removed refresh button. Logs will be retrieved by "Get logs" button.


---

* [OOZIE-1660](https://issues.apache.org/jira/browse/OOZIE-1660) | *Blocker* | **DB connection misconfig causes all or most unit tests to fail**

OOZIE-1655 changed oozie-default’s {{oozie.service.JPAService.create.db.schema}} to match oozie-site by setting it to {{false}}.  This caused all or most unit tests to either fail with errors containing "{{Cannot create PoolableConnectionFactory}}" or to get stuck.  For the unit tests, we need to set the property to true so that it will create the database schema because we don't create it manually like during a regular deployment.  This was only working before because oozie-default and oozie-site were not in-sync.

I'm not sure why test-patch in OOZIE-1655 didn't catch this or why I had to clone into a new folder to reproduce this locally either.  Perhaps we're not deleting the database when doing a {{mvn clean}}?


---

* [OOZIE-1659](https://issues.apache.org/jira/browse/OOZIE-1659) | *Trivial* | **oozie-site is missing email-action-0.2 schema**

OOZIE-1598 added a new schema for the email action (email-action-0.2.xsd) but it was never added to the {{oozie.service.SchemaService.wf.ext.schemas}} property in oozie-site.xml


---

* [OOZIE-1658](https://issues.apache.org/jira/browse/OOZIE-1658) | *Major* | **Add bundle, coord, wf and action related information to launched M/R jobs.**

We should add workflow related information to launched job. This information can be used for analytics like how many oozie jobs are submitted for a particular period, what is the total number of failed pig jobs.. etc from mapreduce jobhistory logs and configuration.

JobInfo will contain information of bundle, coordinator, workflow and actions. If enabled, Hadoop job will have
property(oozie.job.info) which value is multiple key/value pair separated by ";". 

User can also add custom workflow property to jobinfo by adding property which prefix with "oozie.job.info."

Eg.
oozie.job.info="bundle.id=;bundle.name=;coord.name=;coord.nominal.time=;coord.name=;wf.id=;
wf.name=;action.name=;action.type=;launcher=true"
 

Jobinfo can enabled/disabled using "oozie.action.jobinfo.enable"


---

* [OOZIE-1655](https://issues.apache.org/jira/browse/OOZIE-1655) | *Major* | **Change oozie.service.JPAService.validate.db.connection to true**

We've seen many database-related issues solved by simply setting {{oozie.service.JPAService.validate.db.connection}} to {{true}} (default is {{false}}).  My understanding of this property is that it makes sure that the database is properly connected, which is helpful when the connection isn't so good; and it only adds a minor overhead.  

It would be useful to change the default for this property to be {{true}}

While we're at it, we should change {{oozie.service.JPAService.create.db.schema}} in oozie-default to {{false}} because its {{false}} in oozie-site and its a little confusing that they're not the same.


---

* [OOZIE-1651](https://issues.apache.org/jira/browse/OOZIE-1651) | *Critical* | **Oozie should mask the signature secret in the configuration output**

The value of {{oozie.authentication.signature.secret}} is the secret that's used to sign the cookies/tokens crated by Oozie for authentication after Kerberos.  If a malicious user were to find out this secret, they could forge counterfeit cookies/tokens as any user with any expiration date.  

Oozie exposed the configuration properties via its REST API.  It currently only masks any properties that end with ".password" (i.e. {{oozie.service.JPAService.jdbc.password}}).  We should expand this to also mask the signature secret.  

In fact, it would be useful to generalize this ability to add a property that masks something the user can configure.


---

* [OOZIE-1650](https://issues.apache.org/jira/browse/OOZIE-1650) | *Minor* | **Whitelisting docs are incorrect**

The "Hadoop Services Whitelisting" section at http://oozie.apache.org/docs/4.0.0/AG\_HadoopConfiguration.html says:
{noformat}
The value must follow the pattern [,]*=. Where = is the HOST:PORT of the Hadoop service (JobTracker, HDFS).
{noformat}

There are two problems here:
# The twiki formatting is causing things to get lost; in the twiki file, it says:
{noformat}The value must follow the pattern =[<AUTHORITY>,]*=. Where =<AUTHORITY>= is the =HOST:PORT= of
the Hadoop service (JobTracker, HDFS).{noformat} which causes the "AUTHORITY" to disappear and makes this hard to read in the rendered version
# The sentence itself is incorrect: {{*}} has no special meaning.  It should either be a comma-separated list of {{HOST:PORT}} or a space/empty.


---

* [OOZIE-1647](https://issues.apache.org/jira/browse/OOZIE-1647) | *Major* | **oozie-setup.sh doesn't check exit code of java executions**

Step to reproduce:
1. Stop all datanodes
2. run "oozie-setup.sh sharelib create"

Expected behavior:
oozie-setup.sh returned error code other than 0
Observed behavior:
oozie-setup.sh returned exit code 0


---

* [OOZIE-1646](https://issues.apache.org/jira/browse/OOZIE-1646) | *Major* | **HBase Table Copy between two HBase servers doesn't work with Kerberos**

If you try to use the Java action to do an HBase copy between two HBase servers with Kerberos, it will fail.  We need to update the {{HbaseCredentials}} to support acquiring *two* HBase delegation tokens.  

We should also update the documentation to mention that multiple credentials can be used by the same action (e.g. {{cred="foo,bar"}}).


---

* [OOZIE-1645](https://issues.apache.org/jira/browse/OOZIE-1645) | *Major* | **Oozie upgrade DB command fails due to missing dependencies for mssql**

upgrade DB command fails with following stacktrace
D:\hdp\oozie-4.0.0.2.0.6.0-1432\oozie-win-distro\bin>ooziedb.cmd upgrade -run

{quote}
Validate DB Connection
DONE
Check DB schema exists
DONE
Verify there are not active Workflow Jobs
DONE
Check OOZIE\_SYS table does not exist
DONE
Upgrade SQL schema
DONE
Create OOZIE\_SYS table
DONE
Post-upgrade COORD\_JOBS new columns default values
DONE
Post-upgrade COORD\_JOBS & COORD\_ACTIONS status values
DONE
Post-upgrade MISSING\_DEPENDENCIES column

Error: Argument data type text is invalid for argument 1 of replace function.

Stack trace for the error was (for debug purposes):
--------------------------------------
com.microsoft.sqlserver.jdbc.SQLServerException: Argument data type text is inva
lid for argument 1 of replace function.
        at com.microsoft.sqlserver.jdbc.SQLServerException.makeFromDatabaseError
(SQLServerException.java:197)
        at com.microsoft.sqlserver.jdbc.SQLServerStatement.getNextResult(SQLServ
erStatement.java:1493)
        at com.microsoft.sqlserver.jdbc.SQLServerStatement.doExecuteStatement(SQ
LServerStatement.java:775)
        at com.microsoft.sqlserver.jdbc.SQLServerStatement$StmtExecCmd.doExecute
(SQLServerStatement.java:676)
        at com.microsoft.sqlserver.jdbc.TDSCommand.execute(IOBuffer.java:4615)
        at com.microsoft.sqlserver.jdbc.SQLServerConnection.executeCommand(SQLSe
rverConnection.java:1400)
        at com.microsoft.sqlserver.jdbc.SQLServerStatement.executeCommand(SQLSer
verStatement.java:179)
        at com.microsoft.sqlserver.jdbc.SQLServerStatement.executeStatement(SQLS
erverStatement.java:154)
        at com.microsoft.sqlserver.jdbc.SQLServerStatement.executeUpdate(SQLServ
erStatement.java:633)
        at org.apache.oozie.tools.OozieDBCLI.postUpgradeTasks(OozieDBCLI.java:36
1)
        at org.apache.oozie.tools.OozieDBCLI.upgradeDBTo40(OozieDBCLI.java:220)
        at org.apache.oozie.tools.OozieDBCLI.upgradeDB(OozieDBCLI.java:192)
        at org.apache.oozie.tools.OozieDBCLI.run(OozieDBCLI.java:119)
        at org.apache.oozie.tools.OozieDBCLI.main(OozieDBCLI.java:67)
{quote}


---

* [OOZIE-1644](https://issues.apache.org/jira/browse/OOZIE-1644) | *Major* | **Default config from config-default.xml is not propagated to actions**

Though OOZIE-1600 avoids getting one type of exception while running a workflow having action with no <configuration> tag, the problem is that the default config from config-default.xml is not propagated to actions. Action-conf is currently only getting read from action.xml.

Following error was seen with launcher job
{code}
Failing Oozie Launcher, Main class [org.apache.oozie.action.hadoop.MapReduceMain], main() threw exception, Output directory not set in JobConf.
org.apache.hadoop.mapred.InvalidJobConfException: Output directory not set in JobConf.
	at org.apache.hadoop.mapred.FileOutputFormat.checkOutputSpecs(FileOutputFormat.java:118)
	at org.apache.hadoop.mapreduce.JobSubmitter.checkSpecs(JobSubmitter.java:458)
	at org.apache.hadoop.mapreduce.JobSubmitter.submitJobInternal(JobSubmitter.java:342)
	at org.apache.hadoop.mapreduce.Job$10.run(Job.java:1268)
	at org.apache.hadoop.mapreduce.Job$10.run(Job.java:1265)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:394)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1491)
	at org.apache.hadoop.mapreduce.Job.submit(Job.java:1265)
	at org.apache.hadoop.mapred.JobClient$1.run(JobClient.java:562)
	at org.apache.hadoop.mapred.JobClient$1.run(JobClient.java:557)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:394)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1491)
	at org.apache.hadoop.mapred.JobClient.submitJobInternal(JobClient.java:557)
	at org.apache.hadoop.mapred.JobClient.submitJob(JobClient.java:548)
	at org.apache.oozie.action.hadoop.MapReduceMain.submitJob(MapReduceMain.java:92)
{code}

The actionConf needs to be copied over with WF Job default configs.


---

* [OOZIE-1643](https://issues.apache.org/jira/browse/OOZIE-1643) | *Major* | **Oozie doesn't parse Hadoop Job Id from the Hive action**

I'm not sure how long this has been going on (possibly for quite a while), but the Hive action isn't able to parse the Hadoop Job Ids launched by Hive.  

The way its supposed to work is that the {{HiveMain}} creates a {{hive-log4j.properties}} file which redirects the output from {{HiveCLI}} to the console (for easy viewing in the launcher, and creates a {{hive-exec-log4j.properties}} to redirect the output from one of the {{hive-exec}} classes to a log file; Oozie would then parse that log file for the Hadoop Job Ids.  

What's instead happening is that the {{HiveCLI}} is picking up a {{hive-log4j.properties}} file from {{hive-common.jar}} instead.  This is making it log everything to {{stderr}}.  Oozie then can't parse the Hadoop Job Id.

{noformat:title=stdout}
...
<<< Invocation of Hive command completed <<<

 Hadoop Job IDs executed by Hive: 


<<< Invocation of Main class completed <<<


Oozie Launcher, capturing output data:
=======================
#
#Mon Dec 16 16:01:34 PST 2013
hadoopJobs=


=======================
{noformat}

{noformat:title=stderr}
Picked up \_JAVA\_OPTIONS: -Djava.awt.headless=true
2013-12-16 16:01:20.884 java[59363:1703] Unable to load realm info from SCDynamicStore
WARNING: org.apache.hadoop.metrics.jvm.EventCounter is deprecated. Please use org.apache.hadoop.log.metrics.EventCounter in all the log4j.properties files.
Logging initialized using configuration in jar:file:/Users/rkanter/dev/hadoop-1.2.0/dirs/mapred/taskTracker/distcache/-4202506229388278450\_-1489127056\_2111515407/localhost/user/rkanter/share/lib/lib\_20131216160106/hive/hive-common-0.10.0.jar!/hive-log4j.properties
Hive history file=/tmp/rkanter/hive\_job\_log\_rkanter\_201312161601\_851054619.txt
OK
Time taken: 5.444 seconds
Total MapReduce jobs = 3
Launching Job 1 out of 3
Number of reduce tasks is set to 0 since there's no reduce operator
Starting Job = job\_201312161418\_0008, Tracking URL = http://localhost:50030/jobdetails.jsp?jobid=job\_201312161418\_0008
Kill Command = /Users/rkanter/dev/hadoop-1.2.0/libexec/../bin/hadoop job  -kill job\_201312161418\_0008
Hadoop job information for Stage-1: number of mappers: 0; number of reducers: 0
2013-12-16 16:01:33,409 Stage-1 map = 0%,  reduce = 0%
2013-12-16 16:01:34,415 Stage-1 map = 100%,  reduce = 100%
Ended Job = job\_201312161418\_0008
Ended Job = 1084818925, job is filtered out (removed at runtime).
Ended Job = -956386500, job is filtered out (removed at runtime).
Moving data to: hdfs://localhost:8020/tmp/hive-rkanter/hive\_2013-12-16\_16-01-28\_168\_4802779111653057155/-ext-10000
Moving data to: /user/rkanter/examples/output-data/hive
MapReduce Jobs Launched: 
Job 0:  HDFS Read: 0 HDFS Write: 0 SUCCESS
Total MapReduce CPU Time Spent: 0 msec
OK
Time taken: 6.284 seconds
Log file: /Users/rkanter/dev/hadoop-1.2.0/dirs/mapred/taskTracker/rkanter/jobcache/job\_201312161418\_0007/attempt\_201312161418\_0007\_m\_000000\_0/work/hive-oozie-job\_201312161418\_0007.log  not present. Therefore no Hadoop jobids found
{noformat}


---

* [OOZIE-1642](https://issues.apache.org/jira/browse/OOZIE-1642) | *Major* | **writeUTF 64k limit for counters.**

java.io.DataOutputStream.writeUTF has a limit of 64k, if counter size > 64k it throws 

java.lang.RuntimeException: java.io.UTFDataFormatException: encoded string too
long: 70771 bytes


---

* [OOZIE-1634](https://issues.apache.org/jira/browse/OOZIE-1634) | *Minor* | **TestJavaActionExecutor#testUpdateConfForUberMode fails against Hadoop 2**

{{TestJavaActionExecutor#testUpdateConfForUberMode}} fails against Hadoop 2.  

It looks like the problem is that {{yarn.app.mapreduce.am.command-opts}} has a default value of {{-Xmx1024m}} in Hadoop 2 but (obviously) not in Hadoop 1.  So, when the test is verifying the value of {{yarn.app.mapreduce.am.command-opts}} after some code appends values to it, it now includes {{-Xmx1024m}} when run against Hadoop 2 but not when run against Hadoop 1; and so the test fails.


---

* [OOZIE-1633](https://issues.apache.org/jira/browse/OOZIE-1633) | *Major* | **Test failures related to sharelib when running against Hadoop 2**

When run against Hadoop 2, {{TestJavaActionExecutor}} has this test failure:
{noformat}
testAddShareLibSchemeAndAuthority(org.apache.oozie.action.hadoop.TestJavaActionExecutor)  Time elapsed: 0.002 sec  <<< ERROR!
org.apache.oozie.action.ActionExecutorException: File /user/rkanter/share does not exist.
	at org.apache.oozie.action.hadoop.JavaActionExecutor.addShareLib(JavaActionExecutor.java:521)
	at org.apache.oozie.action.hadoop.TestJavaActionExecutor.testAddShareLibSchemeAndAuthority(TestJavaActionExecutor.java:1257)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:39)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25)
	at java.lang.reflect.Method.invoke(Method.java:597)
	at junit.framework.TestCase.runTest(TestCase.java:168)
	at junit.framework.TestCase.runBare(TestCase.java:134)
	at junit.framework.TestResult$1.protect(TestResult.java:110)
	at junit.framework.TestResult.runProtected(TestResult.java:128)
	at junit.framework.TestResult.run(TestResult.java:113)
	at junit.framework.TestCase.run(TestCase.java:124)
	at junit.framework.TestSuite.runTest(TestSuite.java:243)
	at junit.framework.TestSuite.run(TestSuite.java:238)
	at org.junit.internal.runners.JUnit38ClassRunner.run(JUnit38ClassRunner.java:83)
	at org.apache.maven.surefire.junitcore.ClassDemarcatingRunner.run(ClassDemarcatingRunner.java:58)
	at org.junit.runners.Suite.runChild(Suite.java:128)
	at org.junit.runners.Suite.runChild(Suite.java:24)
	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)
	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:439)
	at java.util.concurrent.FutureTask$Sync.innerRun(FutureTask.java:303)
	at java.util.concurrent.FutureTask.run(FutureTask.java:138)
	at java.util.concurrent.ThreadPoolExecutor$Worker.runTask(ThreadPoolExecutor.java:895)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:918)
	at java.lang.Thread.run(Thread.java:695)
{noformat}
And {{TestShareLibService}} has these three failures:
{noformat}
testAddShareLib\_pig(org.apache.oozie.service.TestShareLibService)  Time elapsed: 0.004 sec  <<< FAILURE!
junit.framework.AssertionFailedError: expected:<2> but was:<4>
	at junit.framework.Assert.fail(Assert.java:50)
	at junit.framework.Assert.failNotEquals(Assert.java:287)
	at junit.framework.Assert.assertEquals(Assert.java:67)
	at junit.framework.Assert.assertEquals(Assert.java:199)
	at junit.framework.Assert.assertEquals(Assert.java:205)
	at org.apache.oozie.service.TestShareLibService.testAddShareLib\_pig(TestShareLibService.java:176)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:39)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25)
	at java.lang.reflect.Method.invoke(Method.java:597)
	at junit.framework.TestCase.runTest(TestCase.java:168)
	at junit.framework.TestCase.runBare(TestCase.java:134)
	at junit.framework.TestResult$1.protect(TestResult.java:110)
	at junit.framework.TestResult.runProtected(TestResult.java:128)
	at junit.framework.TestResult.run(TestResult.java:113)
	at junit.framework.TestCase.run(TestCase.java:124)
	at junit.framework.TestSuite.runTest(TestSuite.java:243)
	at junit.framework.TestSuite.run(TestSuite.java:238)
	at org.junit.internal.runners.JUnit38ClassRunner.run(JUnit38ClassRunner.java:83)
	at org.apache.maven.surefire.junitcore.ClassDemarcatingRunner.run(ClassDemarcatingRunner.java:58)
	at org.junit.runners.Suite.runChild(Suite.java:128)
	at org.junit.runners.Suite.runChild(Suite.java:24)
	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)
	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:439)
	at java.util.concurrent.FutureTask$Sync.innerRun(FutureTask.java:303)
	at java.util.concurrent.FutureTask.run(FutureTask.java:138)
	at java.util.concurrent.ThreadPoolExecutor$Worker.runTask(ThreadPoolExecutor.java:895)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:918)
	at java.lang.Thread.run(Thread.java:695)
{noformat}
{noformat}
testAddShareLib\_pig\_withVersion(org.apache.oozie.service.TestShareLibService)  Time elapsed: 0.001 sec  <<< FAILURE!
junit.framework.AssertionFailedError: expected:<3> but was:<5>
	at junit.framework.Assert.fail(Assert.java:50)
	at junit.framework.Assert.failNotEquals(Assert.java:287)
	at junit.framework.Assert.assertEquals(Assert.java:67)
	at junit.framework.Assert.assertEquals(Assert.java:199)
	at junit.framework.Assert.assertEquals(Assert.java:205)
	at org.apache.oozie.service.TestShareLibService.testAddShareLib\_pig\_withVersion(TestShareLibService.java:224)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:39)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25)
	at java.lang.reflect.Method.invoke(Method.java:597)
	at junit.framework.TestCase.runTest(TestCase.java:168)
	at junit.framework.TestCase.runBare(TestCase.java:134)
	at junit.framework.TestResult$1.protect(TestResult.java:110)
	at junit.framework.TestResult.runProtected(TestResult.java:128)
	at junit.framework.TestResult.run(TestResult.java:113)
	at junit.framework.TestCase.run(TestCase.java:124)
	at junit.framework.TestSuite.runTest(TestSuite.java:243)
	at junit.framework.TestSuite.run(TestSuite.java:238)
	at org.junit.internal.runners.JUnit38ClassRunner.run(JUnit38ClassRunner.java:83)
	at org.apache.maven.surefire.junitcore.ClassDemarcatingRunner.run(ClassDemarcatingRunner.java:58)
	at org.junit.runners.Suite.runChild(Suite.java:128)
	at org.junit.runners.Suite.runChild(Suite.java:24)
	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)
	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:439)
	at java.util.concurrent.FutureTask$Sync.innerRun(FutureTask.java:303)
	at java.util.concurrent.FutureTask.run(FutureTask.java:138)
	at java.util.concurrent.ThreadPoolExecutor$Worker.runTask(ThreadPoolExecutor.java:895)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:918)
	at java.lang.Thread.run(Thread.java:695)
{noformat}
{noformat}
testLoadfromDFS(org.apache.oozie.service.TestShareLibService)  Time elapsed: 0.002 sec  <<< FAILURE!
junit.framework.AssertionFailedError: expected:<2> but was:<4>
	at junit.framework.Assert.fail(Assert.java:50)
	at junit.framework.Assert.failNotEquals(Assert.java:287)
	at junit.framework.Assert.assertEquals(Assert.java:67)
	at junit.framework.Assert.assertEquals(Assert.java:199)
	at junit.framework.Assert.assertEquals(Assert.java:205)
	at org.apache.oozie.service.TestShareLibService.testLoadfromDFS(TestShareLibService.java:421)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:39)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25)
	at java.lang.reflect.Method.invoke(Method.java:597)
	at junit.framework.TestCase.runTest(TestCase.java:168)
	at junit.framework.TestCase.runBare(TestCase.java:134)
	at junit.framework.TestResult$1.protect(TestResult.java:110)
	at junit.framework.TestResult.runProtected(TestResult.java:128)
	at junit.framework.TestResult.run(TestResult.java:113)
	at junit.framework.TestCase.run(TestCase.java:124)
	at junit.framework.TestSuite.runTest(TestSuite.java:243)
	at junit.framework.TestSuite.run(TestSuite.java:238)
	at org.junit.internal.runners.JUnit38ClassRunner.run(JUnit38ClassRunner.java:83)
	at org.apache.maven.surefire.junitcore.ClassDemarcatingRunner.run(ClassDemarcatingRunner.java:58)
	at org.junit.runners.Suite.runChild(Suite.java:128)
	at org.junit.runners.Suite.runChild(Suite.java:24)
	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)
	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:439)
	at java.util.concurrent.FutureTask$Sync.innerRun(FutureTask.java:303)
	at java.util.concurrent.FutureTask.run(FutureTask.java:138)
	at java.util.concurrent.ThreadPoolExecutor$Worker.runTask(ThreadPoolExecutor.java:895)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:918)
	at java.lang.Thread.run(Thread.java:695)
{noformat}


---

* [OOZIE-1632](https://issues.apache.org/jira/browse/OOZIE-1632) | *Major* | **Coordinators that undergo change endtime but are doneMaterialization, not getting picked for StatusTransit**

The coordinator 'change' utility to say, change endtime of a coordinator, makes
a terminal job Running again, but if all actions are materialized, sets
doneMaterialization to true, and keeps pending to true. So far so good.

However, the expectation is StatusTransitService will pick this job and make
its state terminal, if actions are in terminal states. But if the actions have
terminated before this service's lastCheckTime, such jobs are not picked up.
This leaves the coordinator(and its parent bundle action) forever running.

Note that coordinator actions are properly terminated. Its only the coord job
that stays in limbo.


---

* [OOZIE-1631](https://issues.apache.org/jira/browse/OOZIE-1631) | *Minor* | **Tools module should have a direct dependency on mockito**

Mockito is used by some of the tests in the tools module; however, it is only included because its a test dependency of hive-serde, which is included with the hcatalog libs.  We should make it a direct dependency in case hcat removes mockito because Oozie won't compile anymore.

dependency tree for reference:
{noformat}
[INFO] org.apache.oozie:oozie-tools:jar:4.1.0-SNAPSHOT
[INFO] +- org.apache.derby:derby:jar:10.6.1.0:compile
[INFO] +- org.apache.oozie:oozie-hcatalog:jar:0.5.0.oozie-4.1.0-SNAPSHOT:test (scope not updated to compile)
...
[INFO] |  +- org.apache.hive:hive-serde:jar:0.10.0:test
[INFO] |  |  +- org.mockito:mockito-all:jar:1.8.5:test (version managed from 1.8.2)
...
{noformat}


---

* [OOZIE-1629](https://issues.apache.org/jira/browse/OOZIE-1629) | *Major* | **EL function in \<timeout\> is not evaluated properly**

<timeout>${coord:days(3)}<timeout> translates to 3 min.


---

* [OOZIE-1623](https://issues.apache.org/jira/browse/OOZIE-1623) | *Major* | **JPAService doesn't need to do reads in a transaction**

{{JPAService#executeGet}} and {{JPAService#executeGetList}} are both doing {{SELECT}} queries (so only reading), which means that they shouldn't need to be in a transaction.


---

* [OOZIE-1622](https://issues.apache.org/jira/browse/OOZIE-1622) | *Critical* | **Multiple CoordSubmit for same bundle**

We saw a weird instance where multiple coords were created for same bundle id when the bundle was supposed to have just 1 coordinator. Here are the oozie logs:
{noformat}
2013-11-19 09:09:46,473  INFO BundleStartXCommand:539 - USER[fetl] GROUP[-] TOKEN[] APP[<app name>] JOB[0484436-131016085136608-oozie-oozi-B] ACTION[-] Bundle 0484436-131016085136608-oozie-oozi-B is not in PREP status. It is in : RUNNING
2013-11-19 09:09:46,473  WARN BundleStartXCommand:542 - USER[fetl] GROUP[-] TOKEN[] APP[<app name>] JOB[0484436-131016085136608-oozie-oozi-B] ACTION[-] E1100: Command precondition does not hold before execution, [Bundle 0484436-131016085136608-oozie-oozi-B is not in PREP status. It is in : RUNNING], Error Code: E1100
2013-11-19 09:09:46,473  INFO CoordSubmitXCommand:539 - USER[-] GROUP[-] TOKEN[-] APP[-] JOB[0484436-131016085136608-oozie-oozi-B] ACTION[-] STARTED Coordinator Submit
2013-11-19 09:09:46,483  INFO CoordSubmitXCommand:539 - USER[-] GROUP[-] TOKEN[-] APP[-] JOB[0484436-131016085136608-oozie-oozi-B] ACTION[-] configDefault Doesn't exist 
2013-11-19 09:09:46,515  INFO CoordSubmitXCommand:539 - USER[fetl] GROUP[-] TOKEN[] APP[<app name>] JOB[0484437-131016085136608-oozie-oozi-C] ACTION[-] ENDED Coordinator Submit jobId=0484437-131016085136608-oozie-oozi-C
2013-11-19 09:09:46,529  INFO BundleStatusUpdateXCommand:539 - USER[fetl] GROUP[-] TOKEN[] APP[<app name>] JOB[0484437-131016085136608-oozie-oozi-C] ACTION[-] Updated bundle action [0484436-131016085136608-oozie-oozi-B\_<app name>] from prev status [PREP] to current coord status [PREP], and new bundle action pending [0]
2013-11-19 09:09:46,535  INFO CoordMaterializeTransitionXCommand:539 - USER[fetl] GROUP[-] TOKEN[] APP[<app name>] JOB[0484437-131016085136608-oozie-oozi-C] ACTION[-] materialize actions for tz=Coordinated Universal Time,
2013-11-19 09:09:54,590  INFO StatusTransitService$StatusTransitRunnable:539 - USER[-] GROUP[-] Set bundle job [0484436-131016085136608-oozie-oozi-B] status to 'RUNNING' from 'RUNNING'
2013-11-19 09:09:54,590  INFO StatusTransitService$StatusTransitRunnable:539 - USER[-] GROUP[-] Bundle job [0484436-131016085136608-oozie-oozi-B] Pending set to FALSE
2013-11-19 09:10:16,326  INFO CoordMaterializeTriggerService$CoordMaterializeTriggerRunnable:539 - USER[-] GROUP[-] TOKEN[-] APP[-] JOB[-] ACTION[-] Job :0484437-131016085136608-oozie-oozi-C  numWaitingActions : 0 MatThrottle : 60
2013-11-19 09:12:57,246  INFO StatusTransitService$StatusTransitRunnable:539 - USER[-] GROUP[-] Set bundle job [0484436-131016085136608-oozie-oozi-B] status to 'SUSPENDED' from 'SUSPENDED'
2013-11-19 09:12:57,246  INFO StatusTransitService$StatusTransitRunnable:539 - USER[-] GROUP[-] Bundle job [0484436-131016085136608-oozie-oozi-B] Pending set to TRUE
2013-11-19 09:13:16,410  INFO CoordMaterializeTriggerService$CoordMaterializeTriggerRunnable:539 - USER[-] GROUP[-] TOKEN[-] APP[-] JOB[-] ACTION[-] Job :0484437-131016085136608-oozie-oozi-C  numWaitingActions : 0 MatThrottle : 60
2013-11-19 09:16:16,446  INFO CoordMaterializeTriggerService$CoordMaterializeTriggerRunnable:539 - USER[-] GROUP[-] TOKEN[-] APP[-] JOB[-] ACTION[-] Job :0484437-131016085136608-oozie-oozi-C  numWaitingActions : 0 MatThrottle : 60
2013-11-19 09:17:00,913  INFO StatusTransitService$StatusTransitRunnable:539 - USER[-] GROUP[-] Set bundle job [0484436-131016085136608-oozie-oozi-B] status to 'RUNNING' from 'RUNNING'
2013-11-19 09:17:00,914  INFO StatusTransitService$StatusTransitRunnable:539 - USER[-] GROUP[-] Bundle job [0484436-131016085136608-oozie-oozi-B] Pending set to TRUE
2013-11-19 09:19:16,490  INFO CoordMaterializeTriggerService$CoordMaterializeTriggerRunnable:539 - USER[-] GROUP[-] TOKEN[-] APP[-] JOB[-] ACTION[-] Job :0484437-131016085136608-oozie-oozi-C  numWaitingActions : 0 MatThrottle : 60
2013-11-19 09:22:16,907  INFO CoordMaterializeTriggerService$CoordMaterializeTriggerRunnable:539 - USER[-] GROUP[-] TOKEN[-] APP[-] JOB[-] ACTION[-] Job :0484437-131016085136608-oozie-oozi-C  numWaitingActions : 0 MatThrottle : 60
2013-11-19 09:25:17,086  INFO CoordMaterializeTriggerService$CoordMaterializeTriggerRunnable:539 - USER[-] GROUP[-] TOKEN[-] APP[-] JOB[-] ACTION[-] Job :0484437-131016085136608-oozie-oozi-C  numWaitingActions : 0 MatThrottle : 60
2013-11-19 09:26:49,373  INFO CoordSubmitXCommand:539 - USER[-] GROUP[-] TOKEN[-] APP[-] JOB[0484436-131016085136608-oozie-oozi-B] ACTION[-] STARTED Coordinator Submit
2013-11-19 09:26:49,383  INFO CoordSubmitXCommand:539 - USER[-] GROUP[-] TOKEN[-] APP[-] JOB[0484436-131016085136608-oozie-oozi-B] ACTION[-] configDefault Doesn't exist
2013-11-19 09:26:49,438  INFO CoordSubmitXCommand:539 - USER[fetl] GROUP[-] TOKEN[] APP[<app name>] JOB[0484598-131016085136608-oozie-oozi-C] ACTION[-] ENDED Coordinator Submit jobId=0484598-131016085136608-oozie-oozi-C
2013-11-19 09:26:49,445  INFO BundleStatusUpdateXCommand:539 - USER[fetl] GROUP[-] TOKEN[] APP[<app name>] JOB[0484598-131016085136608-oozie-oozi-C] ACTION[-] Updated bundle action [0484436-131016085136608-oozie-oozi-B\_<app name>] from prev status [PREP] to current coord status [PREP], and new bundle action pending [1]
{noformat}


---

* [OOZIE-1618](https://issues.apache.org/jira/browse/OOZIE-1618) | *Major* | **dryrun should check variable substitution in workflow.xml**

Currently, dryrun doesn't check variable substitution in workflow.xml, like in the configuration section.


---

* [OOZIE-1616](https://issues.apache.org/jira/browse/OOZIE-1616) | *Major* | **Add sharelib and launcherlib locations to the instrumentation info**

It would be convenient to add the sharelib and launcher lib locations to the instrumentation info reported by Oozie.  This way, users can easily see which sharelib they are currently using.


---

* [OOZIE-1615](https://issues.apache.org/jira/browse/OOZIE-1615) | *Major* | **shell action cannot find script file and fails in uber mode**

even when symlink to script file exists on current working directory,  shell action fails due to following error.
{noformat}
Cannot run program "script.sh" (in directory
"/grid/0/tmp/yarn-local/usercache/hadoopqa/appcache/application\_1383065695012\_12853/container\_1383065695012\_12853\_01\_000001"):
error=2, No such file or directory
{noformat}


---

* [OOZIE-1612](https://issues.apache.org/jira/browse/OOZIE-1612) | *Minor* | **When printing Dates to log messages, we should make sure they are in oozie.processing.timezone**

We were recently looking into an issue and noticed that the same log message had printed different date objects with different timezones, which makes it hard to compare the two.  Which leads to the bigger picture, which is that we should be printing any Date objects in log messages with the {{oozie.processing.timezone}} timezone (there's a method for that in {{DateUtils}}).


---

* [OOZIE-1610](https://issues.apache.org/jira/browse/OOZIE-1610) | *Major* | **UnitTests fail on Windows because of wrong paths**

{quote}
java.net.URISyntaxException: Illegal character in authority at index 7: file://D:\w\oozie\core\target\test-data\oozietests\org.apache.oozie.TestCoordinatorEngineStreamLog\testStreamLog2\coordinator.xml
at java.net.URI$Parser.fail(URI.java:2810)
at java.net.URI$Parser.parseAuthority(URI.java:3148)
at java.net.URI$Parser.parseHierarchical(URI.java:3059)
at java.net.URI$Parser.parse(URI.java:3015)
at java.net.URI.<init>(URI.java:577)
at org.apache.oozie.TestCoordinatorEngineStreamLog.writeToFile(TestCoordinatorEngineStreamLog.java:64)
at org.apache.oozie.TestCoordinatorEngineStreamLog.runJobsImpl(TestCoordinatorEngineStreamLog.java:197)
at org.apache.oozie.TestCoordinatorEngineStreamLog.testStreamLog2(TestCoordinatorEngineStreamLog.java:102)
at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:39)
at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25)
at java.lang.reflect.Method.invoke(Method.java:597)
at junit.framework.TestCase.runTest(TestCase.java:168)
at junit.framework.TestCase.runBare(TestCase.java:134)
at junit.framework.TestResult$1.protect(TestResult.java:110)
at junit.framework.TestResult.runProtected(TestResult.java:128)
at junit.framework.TestResult.run(TestResult.java:113)
at junit.framework.TestCase.run(TestCase.java:124)
at junit.framework.TestSuite.runTest(TestSuite.java:243)
at junit.framework.TestSuite.run(TestSuite.java:238)
at org.junit.internal.runners.JUnit38ClassRunner.run(JUnit38ClassRunner.java:83)
at org.apache.maven.surefire.junitcore.ClassDemarcatingRunner.run(ClassDemarcatingRunner.java:58)
at org.junit.runners.Suite.runChild(Suite.java:128)
at org.junit.runners.Suite.runChild(Suite.java:24)
at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)
at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:441)
at java.util.concurrent.FutureTask$Sync.innerRun(FutureTask.java:303)
at java.util.concurrent.FutureTask.run(FutureTask.java:138)
at java.util.concurrent.ThreadPoolExecutor$Worker.runTask(ThreadPoolExecutor.java:886)
at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:908)
at java.lang.Thread.run(Thread.java:662)
{quote}


---

* [OOZIE-1608](https://issues.apache.org/jira/browse/OOZIE-1608) | *Blocker* | **Update Curator to 2.4.0 when its available to fix security hole**

As I discovered when working on OOZIE-1491, there is a Curator bug (CURATOR-58) without which the ZooKeeper locks will always have world ACLs even with Kerberos enabled.  This could allow a malicious user to acquire one of the locks and never release it, thus preventing Oozie from continuing to process the job associated with that lock.  

I've verified that CURATOR-58 fixes the problem, and the locks have the correct "sasl" ACLs, but it won't be available until Curator 2.4.0 is released.  We should make sure to update to Curator 2.4.0 as soon as possible to fix this security hole.


---

* [OOZIE-1606](https://issues.apache.org/jira/browse/OOZIE-1606) | *Major* | **Update Curator to 2.3.0 and fix some misc minor ZK related things**

Curator 2.3.0 has recently been released and while I don't think there's anything specific in there that affects us, we may as well upgrade it.

There's also some misc minor ZK related things that I've noticed while working on other JIRAs that I want to fix that don't really deserve their own JIRA so this seems like a good opportunity.


---

* [OOZIE-1605](https://issues.apache.org/jira/browse/OOZIE-1605) | *Major* | **Add common custom filter applied to Wf/Coord/Bundle jobs on oozie UI**

1. add common custom filter which applied to all types of jobs (wf/coord/bundle), especially user name, since customer only want to see his/her jobs but not others.  store it into cookie not to lose it after browser refresh.  

2. make current custom filter to be stored in cookie, as well.

3. make status filter (e.g., status=SUCCEEDED) case-insensitive,  (previously upper-case was enforced, hence usability degraded)


---

* [OOZIE-1604](https://issues.apache.org/jira/browse/OOZIE-1604) | *Major* | ** \<java-opts\> and \<java-opt\> not added to Application Master property in uber mode**

<java-opts>, <java-opt> in java action is not added to yarn.app.mapreduce.am.command-opts properly in uber mode.


---

* [OOZIE-1603](https://issues.apache.org/jira/browse/OOZIE-1603) | *Blocker* | **cannot submit job to oozie on mysql**

job submission throws the following exception:
org.apache.oozie.command.CommandException: E0803: IO error, E0603: SQL error in operation, <openjpa-2.2.2-r422266:1468616 fatal store error> org.apache.openjpa.persistence.RollbackException: The transaction has been rolled back.  See the nested exceptions for details on the errors that occurred.
        at org.apache.oozie.command.wf.SubmitXCommand.execute(SubmitXCommand.java:252)
        at org.apache.oozie.command.wf.SubmitXCommand.execute(SubmitXCommand.java:72)
        at org.apache.oozie.command.XCommand.call(XCommand.java:280)
        at org.apache.oozie.DagEngine.submitJob(DagEngine.java:109)
        at org.apache.oozie.servlet.V1JobsServlet.submitWorkflowJob(V1JobsServlet.java:188)
        at org.apache.oozie.servlet.V1JobsServlet.submitJob(V1JobsServlet.java:88)
        at org.apache.oozie.servlet.BaseJobsServlet.doPost(BaseJobsServlet.java:99)
        at javax.servlet.http.HttpServlet.service(HttpServlet.java:643)
        at org.apache.oozie.servlet.JsonRestServlet.service(JsonRestServlet.java:286)
        at javax.servlet.http.HttpServlet.service(HttpServlet.java:723)
        at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:290)
        at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:206)
        at org.apache.oozie.servlet.AuthFilter$2.doFilter(AuthFilter.java:126)
        at org.apache.hadoop.security.authentication.server.AuthenticationFilter.doFilter(AuthenticationFilter.java:372)
        at org.apache.oozie.servlet.AuthFilter.doFilter(AuthFilter.java:131)
        at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:235)
        at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:206)
        at org.apache.oozie.servlet.HostnameFilter.doFilter(HostnameFilter.java:84)
        at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:235)
        at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:206)
        at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:233)
        at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:191)
        at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:127)
        at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:103)
        at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:109)
        at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:293)
        at org.apache.coyote.http11.Http11Processor.process(Http11Processor.java:861)
        at org.apache.coyote.http11.Http11Protocol$Http11ConnectionHandler.process(Http11Protocol.java:606)
        at org.apache.tomcat.util.net.JIoEndpoint$Worker.run(JIoEndpoint.java:489)
        at java.lang.Thread.run(Thread.java:680)
Caused by: org.apache.oozie.command.CommandException: E0603: SQL error in operation, <openjpa-2.2.2-r422266:1468616 fatal store error> org.apache.openjpa.persistence.RollbackException: The transaction has been rolled back.  See the nested exceptions for details on the errors that occurred.
        at org.apache.oozie.command.wf.SubmitXCommand.execute(SubmitXCommand.java:231)
        ... 29 more
Caused by: org.apache.oozie.executor.jpa.JPAExecutorException: E0603: SQL error in operation, <openjpa-2.2.2-r422266:1468616 fatal store error> org.apache.openjpa.persistence.RollbackException: The transaction has been rolled back.  See the nested exceptions for details on the errors that occurred.
        at org.apache.oozie.service.JPAService.executeBatchInsertUpdateDelete(JPAService.java:392)
        at org.apache.oozie.executor.jpa.BatchQueryExecutor.executeBatchInsertUpdateDelete(BatchQueryExecutor.java:140)
        at org.apache.oozie.command.wf.SubmitXCommand.execute(SubmitXCommand.java:228)
        ... 29 more
Caused by: <openjpa-2.2.2-r422266:1468616 fatal store error> org.apache.openjpa.persistence.RollbackException: The transaction has been rolled back.  See the nested exceptions for details on the errors that occurred.
        at org.apache.openjpa.persistence.EntityManagerImpl.commit(EntityManagerImpl.java:594)
        at org.apache.oozie.service.JPAService.executeBatchInsertUpdateDelete(JPAService.java:388)
        ... 31 more
Caused by: <openjpa-2.2.2-r422266:1468616 fatal general error> org.apache.openjpa.persistence.PersistenceException: The transaction has been rolled back.  See the nested exceptions for details on the errors that occurred.
        at org.apache.openjpa.kernel.BrokerImpl.newFlushException(BrokerImpl.java:2347)
        at org.apache.openjpa.kernel.BrokerImpl.flush(BrokerImpl.java:2184)
        at org.apache.openjpa.kernel.BrokerImpl.flushSafe(BrokerImpl.java:2082)
        at org.apache.openjpa.kernel.BrokerImpl.beforeCompletion(BrokerImpl.java:2000)
        at org.apache.openjpa.kernel.LocalManagedRuntime.commit(LocalManagedRuntime.java:81)
        at org.apache.openjpa.kernel.BrokerImpl.commit(BrokerImpl.java:1524)
        at org.apache.openjpa.kernel.DelegatingBroker.commit(DelegatingBroker.java:933)
        at org.apache.openjpa.persistence.EntityManagerImpl.commit(EntityManagerImpl.java:570)
        ... 32 more
Caused by: <openjpa-2.2.2-r422266:1468616 nonfatal general error> org.apache.openjpa.persistence.PersistenceException: org.apache.oozie.BinaryBlob
        at org.apache.openjpa.util.Serialization.serialize(Serialization.java:67)
        at org.apache.openjpa.jdbc.sql.DBDictionary.serialize(DBDictionary.java:1510)
        at org.apache.openjpa.jdbc.sql.DBDictionary.setBlobObject(DBDictionary.java:1010)
        at org.apache.openjpa.jdbc.sql.DBDictionary.setTyped(DBDictionary.java:1337)
        at org.apache.openjpa.jdbc.sql.RowImpl.flush(RowImpl.java:896)
        at org.apache.openjpa.jdbc.sql.RowImpl.flush(RowImpl.java:856)
        at org.apache.openjpa.jdbc.kernel.PreparedStatementManagerImpl.flushAndUpdate(PreparedStatementManagerImpl.java:117)
        at org.apache.openjpa.jdbc.kernel.BatchingPreparedStatementManagerImpl.flushAndUpdate(BatchingPreparedStatementManagerImpl.java:79)
        at org.apache.openjpa.jdbc.kernel.PreparedStatementManagerImpl.flushInternal(PreparedStatementManagerImpl.java:100)
        at org.apache.openjpa.jdbc.kernel.PreparedStatementManagerImpl.flush(PreparedStatementManagerImpl.java:88)
        at org.apache.openjpa.jdbc.kernel.ConstraintUpdateManager.flush(ConstraintUpdateManager.java:550)
        at org.apache.openjpa.jdbc.kernel.ConstraintUpdateManager.flush(ConstraintUpdateManager.java:106)
        at org.apache.openjpa.jdbc.kernel.BatchingConstraintUpdateManager.flush(BatchingConstraintUpdateManager.java:59)
        at org.apache.openjpa.jdbc.kernel.AbstractUpdateManager.flush(AbstractUpdateManager.java:105)
        at org.apache.openjpa.jdbc.kernel.AbstractUpdateManager.flush(AbstractUpdateManager.java:78)
        at org.apache.openjpa.jdbc.kernel.JDBCStoreManager.flush(JDBCStoreManager.java:732)
        at org.apache.openjpa.kernel.DelegatingStoreManager.flush(DelegatingStoreManager.java:131)
        ... 39 more
Caused by: <openjpa-2.2.2-r422266:1468616 nonfatal general error> org.apache.openjpa.persistence.PersistenceException: org.apache.oozie.BinaryBlob
        at org.apache.openjpa.util.Serialization.serialize(Serialization.java:67)
        at org.apache.openjpa.jdbc.sql.DBDictionary.serialize(DBDictionary.java:1510)
        at org.apache.openjpa.jdbc.sql.DBDictionary.setBlobObject(DBDictionary.java:1010)
        at org.apache.openjpa.jdbc.sql.DBDictionary.setTyped(DBDictionary.java:1337)
        at org.apache.openjpa.jdbc.sql.RowImpl.flush(RowImpl.java:896)
        at org.apache.openjpa.jdbc.sql.RowImpl.flush(RowImpl.java:856)
        at org.apache.openjpa.jdbc.kernel.PreparedStatementManagerImpl.flushAndUpdate(PreparedStatementManagerImpl.java:117)
        at org.apache.openjpa.jdbc.kernel.BatchingPreparedStatementManagerImpl.flushAndUpdate(BatchingPreparedStatementManagerImpl.java:79)
        at org.apache.openjpa.jdbc.kernel.PreparedStatementManagerImpl.flushInternal(PreparedStatementManagerImpl.java:100)
        at org.apache.openjpa.jdbc.kernel.PreparedStatementManagerImpl.flush(PreparedStatementManagerImpl.java:88)
        at org.apache.openjpa.jdbc.kernel.ConstraintUpdateManager.flush(ConstraintUpdateManager.java:550)
        at org.apache.openjpa.jdbc.kernel.ConstraintUpdateManager.flush(ConstraintUpdateManager.java:106)
        at org.apache.openjpa.jdbc.kernel.BatchingConstraintUpdateManager.flush(BatchingConstraintUpdateManager.java:59)
        at org.apache.openjpa.jdbc.kernel.AbstractUpdateManager.flush(AbstractUpdateManager.java:105)
        at org.apache.openjpa.jdbc.kernel.AbstractUpdateManager.flush(AbstractUpdateManager.java:78)
        at org.apache.openjpa.jdbc.kernel.JDBCStoreManager.flush(JDBCStoreManager.java:732)
        at org.apache.openjpa.kernel.DelegatingStoreManager.flush(DelegatingStoreManager.java:131)
        ... 39 more
Caused by: java.io.NotSerializableException: org.apache.oozie.BinaryBlob
        at java.io.ObjectOutputStream.writeObject0(ObjectOutputStream.java:1164)
        at java.io.ObjectOutputStream.writeObject(ObjectOutputStream.java:330)
        at org.apache.openjpa.util.Serialization.serialize(Serialization.java:63)
        ... 55 more
2013-11-04 17:12:12,943  WARN V1JobsServlet:542 - SERVER[BZhangs-MacBook-Pro.local] USER[bzhang] GROUP[-] TOKEN[] APP[map-reduce-wf] JOB[0000000-131104170850462-oozie-bzha-W] ACTION[-] URL[POST http://localhost:11000/oozie/v2/jobs?action=start] error[E0803], E0803: IO error, E0603: SQL error in operation, <openjpa-2.2.2-r422266:1468616 fatal store error> org.apa
che.openjpa.persistence.RollbackException: The transaction has been rolled back.  See the nested exceptions for details on the errors that occurred.
org.apache.oozie.servlet.XServletException: E0803: IO error, E0603: SQL error in operation, <openjpa-2.2.2-r422266:1468616 fatal store error> org.apache.openjpa.persistence.RollbackException: The transaction has been rolled back.  See the nested exceptions for details on the errors that occurred.
        at org.apache.oozie.servlet.V1JobsServlet.submitWorkflowJob(V1JobsServlet.java:193)
        at org.apache.oozie.servlet.V1JobsServlet.submitJob(V1JobsServlet.java:88)
        at org.apache.oozie.servlet.BaseJobsServlet.doPost(BaseJobsServlet.java:99)
        at javax.servlet.http.HttpServlet.service(HttpServlet.java:643)
        at org.apache.oozie.servlet.JsonRestServlet.service(JsonRestServlet.java:286)
        at javax.servlet.http.HttpServlet.service(HttpServlet.java:723)
        at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:290)
        at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:206)
        at org.apache.oozie.servlet.AuthFilter$2.doFilter(AuthFilter.java:126)
        at org.apache.hadoop.security.authentication.server.AuthenticationFilter.doFilter(AuthenticationFilter.java:372)
        at org.apache.oozie.servlet.AuthFilter.doFilter(AuthFilter.java:131)
        at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:235)
        at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:206)
        at org.apache.oozie.servlet.HostnameFilter.doFilter(HostnameFilter.java:84)
        at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:235)
        at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:206)
        at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:233)
        at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:191)
        at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:127)
        at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:103)
        at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:109)
        at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:293)
        at org.apache.coyote.http11.Http11Processor.process(Http11Processor.java:861)
        at org.apache.coyote.http11.Http11Protocol$Http11ConnectionHandler.process(Http11Protocol.java:606)
        at org.apache.tomcat.util.net.JIoEndpoint$Worker.run(JIoEndpoint.java:489)
        at java.lang.Thread.run(Thread.java:680)
Caused by: org.apache.oozie.DagEngineException: E0803: IO error, E0603: SQL error in operation, <openjpa-2.2.2-r422266:1468616 fatal store error> org.apache.openjpa.persistence.RollbackException: The transaction has been rolled back.  See the nested exceptions for details on the errors that occurred.
        at org.apache.oozie.DagEngine.submitJob(DagEngine.java:116)
        at org.apache.oozie.servlet.V1JobsServlet.submitWorkflowJob(V1JobsServlet.java:188)
        ... 25 more
Caused by: org.apache.oozie.command.CommandException: E0803: IO error, E0603: SQL error in operation, <openjpa-2.2.2-r422266:1468616 fatal store error> org.apache.openjpa.persistence.RollbackException: The transaction has been rolled back.  See the nested exceptions for details on the errors that occurred.
        at org.apache.oozie.command.wf.SubmitXCommand.execute(SubmitXCommand.java:252)
        at org.apache.oozie.command.wf.SubmitXCommand.execute(SubmitXCommand.java:72)
        at org.apache.oozie.command.XCommand.call(XCommand.java:280)
        at org.apache.oozie.DagEngine.submitJob(DagEngine.java:109)
        ... 26 more
Caused by: org.apache.oozie.command.CommandException: E0603: SQL error in operation, <openjpa-2.2.2-r422266:1468616 fatal store error> org.apache.openjpa.persistence.RollbackException: The transaction has been rolled back.  See the nested exceptions for details on the errors that occurred.
        at org.apache.oozie.command.wf.SubmitXCommand.execute(SubmitXCommand.java:231)
        ... 29 more
Caused by: org.apache.oozie.executor.jpa.JPAExecutorException: E0603: SQL error in operation, <openjpa-2.2.2-r422266:1468616 fatal store error> org.apache.openjpa.persistence.RollbackException: The transaction has been rolled back.  See the nested exceptions for details on the errors that occurred.
        at org.apache.oozie.service.JPAService.executeBatchInsertUpdateDelete(JPAService.java:392)
        at org.apache.oozie.executor.jpa.BatchQueryExecutor.executeBatchInsertUpdateDelete(BatchQueryExecutor.java:140)
        at org.apache.oozie.command.wf.SubmitXCommand.execute(SubmitXCommand.java:228)
        ... 29 more
Caused by: <openjpa-2.2.2-r422266:1468616 fatal store error> org.apache.openjpa.persistence.RollbackException: The transaction has been rolled back.  See the nested exceptions for details on the errors that occurred.
        at org.apache.openjpa.persistence.EntityManagerImpl.commit(EntityManagerImpl.java:594)
        at org.apache.oozie.service.JPAService.executeBatchInsertUpdateDelete(JPAService.java:388)
        ... 31 more
Caused by: <openjpa-2.2.2-r422266:1468616 fatal general error> org.apache.openjpa.persistence.PersistenceException: The transaction has been rolled back.  See the nested exceptions for details on the errors that occurred.
        at org.apache.openjpa.kernel.BrokerImpl.newFlushException(BrokerImpl.java:2347)
        at org.apache.openjpa.kernel.BrokerImpl.flush(BrokerImpl.java:2184)
        at org.apache.openjpa.kernel.BrokerImpl.flushSafe(BrokerImpl.java:2082)
        at org.apache.openjpa.kernel.BrokerImpl.beforeCompletion(BrokerImpl.java:2000)
        at org.apache.openjpa.kernel.LocalManagedRuntime.commit(LocalManagedRuntime.java:81)
        at org.apache.openjpa.kernel.BrokerImpl.commit(BrokerImpl.java:1524)
        at org.apache.openjpa.kernel.DelegatingBroker.commit(DelegatingBroker.java:933)
        at org.apache.openjpa.persistence.EntityManagerImpl.commit(EntityManagerImpl.java:570)
        ... 32 more
Caused by: <openjpa-2.2.2-r422266:1468616 nonfatal general error> org.apache.openjpa.persistence.PersistenceException: org.apache.oozie.BinaryBlob
        at org.apache.openjpa.util.Serialization.serialize(Serialization.java:67)
        at org.apache.openjpa.jdbc.sql.DBDictionary.serialize(DBDictionary.java:1510)
        at org.apache.openjpa.jdbc.sql.DBDictionary.setBlobObject(DBDictionary.java:1010)
        at org.apache.openjpa.jdbc.sql.DBDictionary.setTyped(DBDictionary.java:1337)
        at org.apache.openjpa.jdbc.sql.RowImpl.flush(RowImpl.java:896)
        at org.apache.openjpa.jdbc.sql.RowImpl.flush(RowImpl.java:856)
        at org.apache.openjpa.jdbc.kernel.PreparedStatementManagerImpl.flushAndUpdate(PreparedStatementManagerImpl.java:117)
        at org.apache.openjpa.jdbc.kernel.BatchingPreparedStatementManagerImpl.flushAndUpdate(BatchingPreparedStatementManagerImpl.java:79)
        at org.apache.openjpa.jdbc.kernel.PreparedStatementManagerImpl.flushInternal(PreparedStatementManagerImpl.java:100)
        at org.apache.openjpa.jdbc.kernel.PreparedStatementManagerImpl.flush(PreparedStatementManagerImpl.java:88)
        at org.apache.openjpa.jdbc.kernel.ConstraintUpdateManager.flush(ConstraintUpdateManager.java:550)
        at org.apache.openjpa.jdbc.kernel.ConstraintUpdateManager.flush(ConstraintUpdateManager.java:106)
        at org.apache.openjpa.jdbc.kernel.BatchingConstraintUpdateManager.flush(BatchingConstraintUpdateManager.java:59)
        at org.apache.openjpa.jdbc.kernel.AbstractUpdateManager.flush(AbstractUpdateManager.java:105)
        at org.apache.openjpa.jdbc.kernel.AbstractUpdateManager.flush(AbstractUpdateManager.java:78)
        at org.apache.openjpa.jdbc.kernel.JDBCStoreManager.flush(JDBCStoreManager.java:732)
        at org.apache.openjpa.kernel.DelegatingStoreManager.flush(DelegatingStoreManager.java:131)
        ... 39 more
Caused by: java.io.NotSerializableException: org.apache.oozie.BinaryBlob
        at java.io.ObjectOutputStream.writeObject0(ObjectOutputStream.java:1164)
        at java.io.ObjectOutputStream.writeObject(ObjectOutputStream.java:330)
        at org.apache.openjpa.util.Serialization.serialize(Serialization.java:63)
        ... 55 more


---

* [OOZIE-1600](https://issues.apache.org/jira/browse/OOZIE-1600) | *Major* | **map-reduce actions without configuration section in workflow.xml throws "IllegalArgumentException: element cannot be null"**

In evaluateConfigurationProperty() method of MapReduceActionExecutor.java, we cannot assume "configuration" is always there. If the element is null, we need to return defaultValue.


---

* [OOZIE-1598](https://issues.apache.org/jira/browse/OOZIE-1598) | *Major* | **enable html email in email action**

it is hardcoded to use "text/plain" in EmailActionExecutor.  this jira to make it configurable, and allow customers to send html email.


---

* [OOZIE-1597](https://issues.apache.org/jira/browse/OOZIE-1597) | *Major* | **Cleanup database before every test**

While investigating a flakey test ({{org.apache.oozie.sla.TestSLAJobEventListener.testOnJobEvent}}) I realized that some of the flakey SLA tests that I've seen lately are the same issue: The database has some leftover stuff from a previous test that its not expecting.  

Normally this is easy to fix because we can simply call {{cleanUpDBTables()}}.  However, {{cleanUpDBTables}} requires some of the {{Services}} to be running, so you have to call it after starting {{Services}}; but, some of the failures were occurring during Services initialization (specifically when {{SLAService}} initializes the {{SLACalculatorMemory}}, which tries to load some data from the database, which may be incomplete (e.g. SLA registration for a job that doesn't exist)).  So, in this case, we can't call {{cleanUpDBTables()}} before or after starting {{Services}}.

This brings the larger issue that we should be cleaning up the database before every test anyway to make sure that the tests are truly independent and to prevent harmful leaking (just like we did a while back with the {{Services}}).  I think we should have {{XTestCase.setup()}} call {{cleanUpDBTables()}} so that every test automatically it (and handle the {{Services}} dependency appropriately).


---

* [OOZIE-1596](https://issues.apache.org/jira/browse/OOZIE-1596) | *Minor* | **TestOozieMySqlDBCLI.testCreateMysql fails when tests are executed in a different order**

{{TestOozieMySqlDBCLI.testCreateMysql}} will fail if the tests are executed in a different order.

TestOozieMySqlDBCLI.testCreateMysql relies on the default setting of {{FakeConnection.CREATE}} (which is {{true}}), but if {{TestOozieMySqlDBCLI.testUpgradeMysql}} is executed first, it will change {{FakeConnection.CREATE}} to {{false}}, and {{TestOozieMySqlDBCLI.testCreateMysql}} will fail.


---

* [OOZIE-1593](https://issues.apache.org/jira/browse/OOZIE-1593) | *Major* | **Oozie HCatCredential provider needs to include hadoop rpc protection to work with encrypted secure clusters**

We need to add hadoop.rpc.protection to the list of configuration parameters needed and set it based on the hadoop cluster configuration so that metastore can be accessed in an encrypted secure cluster


---

* [OOZIE-1592](https://issues.apache.org/jira/browse/OOZIE-1592) | *Minor* | **El Expression Reference should point to the exact chapter in java 6**

Some users are complaining on the oozie doc page, EL Expression Reference points to generic tutorial in java 4 and they need to search and find chapter 12 for Expression Language guide. Since we are using java 6 these days, we should make the link point to the exact chapter in java 6.


---

* [OOZIE-1589](https://issues.apache.org/jira/browse/OOZIE-1589) | *Major* | **TestZKLocksService is flakey**

TestZKLocksService is highly dependent on the order of things happening because its testing locks.  I've seen tests in this class fail a number of times with messages like this:
{noformat}
expected:<a:[1-L a:2-L a:1-U] a:2-U> but was:<a:[2-L a:1-L] a:2-U>
{noformat}
which is because things happened in a slightly different order than it was expecting (though everything is happening correctly)

When I created these tests, I just took the TestLockService and made it use ZKLocks instead of MemoryLocks.  The ZKLocks take longer to lock than the MemoryLocks, so the timings are sometimes too fast.  I think we just need to increase the sleep calls, and use the {{sleep()}} method instead of {{Thread.sleep()}} so it will scale with the "waitfor ratio" on slower machines.


---

* [OOZIE-1585](https://issues.apache.org/jira/browse/OOZIE-1585) | *Major* | **Upgrade oozie to pig 0.12.1**

Need to add automaton and joda-time dependency for pig 12. Automaton is for optimization of java regular expression and Joda-time is for new "datetime" data type in pig.


---

* [OOZIE-1584](https://issues.apache.org/jira/browse/OOZIE-1584) | *Major* | **Setup sharelib using script and pickup latest(honor ship.launcher) and remove DFS dependency at startup.**

Supported features.

1. If Oozie.action.ship.launcher.jar = true then, Oozie auto-deploy jar at server starts.

2. Admin copies sharelib to new timestamp directory(using sharelibCLI) and issues invalidate command(using oozieCLI) to Oozie server. Oozie picks latest shared lib.

3.Oozie server doesn't auto deploy sharelib at startup. It picks the latest sharelib jar pushed by admin(based on timestamp).


DFS after generating launcher jar by ooozie server  and sharelib by cli
-------------------
makebag-lm:example purushah$ /var/hadoop-1.2.1/bin/hadoop fs -ls
/user/purushah/share/lib/
/user/purushah/share/lib/launcher\_20131017092254
/user/purushah/share/lib/launcher\_20131017093814
/user/purushah/share/lib/launcher\_20131017094652
/user/purushah/share/lib/launcher\_20131017094836
/user/purushah/share/lib/launcher\_20131017095549
/user/purushah/share/lib/lib\_20131017092806
makebag-lm:example purushah$



Purging.
-------------
There are two set( launcher\_ for launcher jars and Lib\_ for shared lib) of
directory and purging happens for both at startup.
Anything older than ( defined in property)  is purged.
We always keep 2 set of directory, purging happens if number of  sharelib
directory  > 2.



Multiple version.
-------------------
To support multiple version, sharelib will be in below format.

Sharelib will cache all versions and return list of dfs files for a particular
version.

makebag-lm:example purushah$ /var/hadoop-1.2.1/bin/hadoop fs -ls
/user/purushah/share/lib/
Found 15 items
/user/purushah/share/lib/launcher\_20131017092254
/user/purushah/share/lib/launcher\_20131017093814
/user/purushah/share/lib/launcher\_20131017094652
/user/purushah/share/lib/launcher\_20131017094836
/user/purushah/share/lib/launcher\_20131017095549
/user/purushah/share/lib/lib\_20131017092806/pig/...
/user/purushah/share/lib/lib\_20131017092806/pig\_9/...
/user/purushah/share/lib/lib\_20131017092806/pig\_10/...
makebag-lm:example purushah$


---

* [OOZIE-1581](https://issues.apache.org/jira/browse/OOZIE-1581) | *Major* | **Workflow performance optimizations**

Creating a combo JIRA for small performance optimizations.
1. changing from asynchronous action start to a synchronous one, to overcome the undue delay in transitioning from ::start:: control node to the actual first node, owing to a loaded queue. This delay has been observed to be close to 30 min at times in stress conditions.


---

* [OOZIE-1580](https://issues.apache.org/jira/browse/OOZIE-1580) | *Major* | **EL variables don't get resolved in configurations imported from a \<job-xml\>**

If you use <job-xml> to include a file that includes an EL variable, it doesn't get resolved.

For example:
{code:xml|title=foo.xml|borderStyle=solid}
<configuration>
   <property>
      <name>some.property</name>
      <value>${someVariable}</value>
   </property>
</configuration>
{code}
{code:title=job.propertiesl|borderStyle=solid}
...
someVariable=bar
{code}

Then in the submitted job, {{some.property}} will be equal to "{{$\{someVariable}}}" when we would like it to be "{{bar}}".


---

* [OOZIE-1578](https://issues.apache.org/jira/browse/OOZIE-1578) | *Major* | **Coordinator jobs with cron frequency should be invalidated upon submission if nothing would be materialized during run time**

If a user specifies a cron frequency that materializes nothing between start and end time, the coordinator job will remain "RUNNING" forever. This is due to the way we update coord jobs in StatusTransitService when we select coordinator jobs to be updated by last modified time of coordinator actions in function coordTransit(). A coordinator job with no materialized actions will never be selected to update the terminal status. This is not an issue before cron frequency is introduced since every coordinator job is guaranteed to have materialized actions.


---

* [OOZIE-1577](https://issues.apache.org/jira/browse/OOZIE-1577) | *Major* | **Oozie coordinator job with identical start and end time remains "RUNNING" forever**

The job will stuck in "RUNNING" stage forever given the way we write coordinator job materialization mechanism.  We should invalidate jobs like these the same way we invalidate jobs with end time earlier than start time.


---

* [OOZIE-1570](https://issues.apache.org/jira/browse/OOZIE-1570) | *Major* | **Make openjpa connection properties configurable**

  Make openjpa/dbcp connection properties configurable  so that custom tuning can be done.

  In our case, we have to append "connectionProperties=oracle.jdbc.ReadTimeout=300000" to the connection properties to avoid threads making call to Oracle database sometime hanging forever due to network or tcp errors.

http://docs.oracle.com/cd/E17904\_01/web.1111/e13737/generic\_oracle\_rac.htm#BHCFCEAC


---

* [OOZIE-1569](https://issues.apache.org/jira/browse/OOZIE-1569) | *Major* | **Maintain backward incompatibility for running jobs before upgrade**

OOZIE-1486 consolidated each action's working files (externalChildIds.properties, output.properties, stats.properties etc) from 4 to 1 (action-data.seq). However, we need to maintain backward compatibility and read from these individual files too for long running jobs, if action-data.seq is not found them.


---

* [OOZIE-1568](https://issues.apache.org/jira/browse/OOZIE-1568) | *Major* | **TestWorkflowClient.testSla is flakey**

TestWorkflowClient.testSla seems to be flakey.  It frequently fails on the test-patch build because of an NPE:
{noformat}
23:07:58,636 ERROR SLAServlet:536 - USER[-] GROUP[-] TOKEN[-] APP[-] JOB[-] ACTION[-] Runtime error 
java.lang.NullPointerException: Name is null
	at java.lang.Enum.valueOf(Enum.java:195)
	at org.apache.oozie.client.SLAEvent$Status.valueOf(SLAEvent.java:33)
	at org.apache.oozie.SLAEventBean.getJobStatus(SLAEventBean.java:84)
	at org.apache.oozie.SLAEventBean.toXml(SLAEventBean.java:184)
	at org.apache.oozie.servlet.SLAServlet.doGet(SLAServlet.java:104)
	at javax.servlet.http.HttpServlet.service(HttpServlet.java:707)
	at org.apache.oozie.servlet.JsonRestServlet.service(JsonRestServlet.java:286)
	at javax.servlet.http.HttpServlet.service(HttpServlet.java:820)
	at org.mortbay.jetty.servlet.ServletHolder.handle(ServletHolder.java:502)
	at org.mortbay.jetty.servlet.ServletHandler$CachedChain.doFilter(ServletHandler.java:1124)
	at org.apache.oozie.servlet.AuthFilter$2.doFilter(AuthFilter.java:126)
	at org.apache.hadoop.security.authentication.server.AuthenticationFilter.doFilter(AuthenticationFilter.java:372)
	at org.apache.oozie.servlet.AuthFilter.doFilter(AuthFilter.java:131)
	at org.mortbay.jetty.servlet.ServletHandler$CachedChain.doFilter(ServletHandler.java:1115)
	at org.apache.oozie.servlet.HostnameFilter.doFilter(HostnameFilter.java:84)
	at org.mortbay.jetty.servlet.ServletHandler$CachedChain.doFilter(ServletHandler.java:1115)
	at org.mortbay.jetty.servlet.ServletHandler.handle(ServletHandler.java:361)
	at org.mortbay.jetty.handler.ContextHandler.handle(ContextHandler.java:766)
	at org.mortbay.jetty.handler.HandlerWrapper.handle(HandlerWrapper.java:152)
	at org.mortbay.jetty.Server.handle(Server.java:324)
	at org.mortbay.jetty.HttpConnection.handleRequest(HttpConnection.java:534)
	at org.mortbay.jetty.HttpConnection$RequestHandler.headerComplete(HttpConnection.java:864)
	at org.mortbay.jetty.HttpParser.parseNext(HttpParser.java:533)
	at org.mortbay.jetty.HttpParser.parseAvailable(HttpParser.java:207)
	at org.mortbay.jetty.HttpConnection.handle(HttpConnection.java:403)
	at org.mortbay.jetty.bio.SocketConnector$Connection.run(SocketConnector.java:228)
	at org.mortbay.thread.QueuedThreadPool$PoolThread.run(QueuedThreadPool.java:522)
23:07:58,637  WARN SLAServlet:542 - USER[-] GROUP[-] TOKEN[-] APP[-] JOB[-] ACTION[-] URL[GET http://asf004.sp2.ygridcore.net:44460/oozie/v1/sla?gt-sequence-id=0&max-events=10] error[E0307], E0307: Runtime error [Name is null]
org.apache.oozie.servlet.XServletException: E0307: Runtime error [Name is null]
	at org.apache.oozie.servlet.SLAServlet.doGet(SLAServlet.java:130)
	at javax.servlet.http.HttpServlet.service(HttpServlet.java:707)
	at org.apache.oozie.servlet.JsonRestServlet.service(JsonRestServlet.java:286)
	at javax.servlet.http.HttpServlet.service(HttpServlet.java:820)
	at org.mortbay.jetty.servlet.ServletHolder.handle(ServletHolder.java:502)
	at org.mortbay.jetty.servlet.ServletHandler$CachedChain.doFilter(ServletHandler.java:1124)
	at org.apache.oozie.servlet.AuthFilter$2.doFilter(AuthFilter.java:126)
	at org.apache.hadoop.security.authentication.server.AuthenticationFilter.doFilter(AuthenticationFilter.java:372)
	at org.apache.oozie.servlet.AuthFilter.doFilter(AuthFilter.java:131)
	at org.mortbay.jetty.servlet.ServletHandler$CachedChain.doFilter(ServletHandler.java:1115)
	at org.apache.oozie.servlet.HostnameFilter.doFilter(HostnameFilter.java:84)
	at org.mortbay.jetty.servlet.ServletHandler$CachedChain.doFilter(ServletHandler.java:1115)
	at org.mortbay.jetty.servlet.ServletHandler.handle(ServletHandler.java:361)
	at org.mortbay.jetty.handler.ContextHandler.handle(ContextHandler.java:766)
	at org.mortbay.jetty.handler.HandlerWrapper.handle(HandlerWrapper.java:152)
	at org.mortbay.jetty.Server.handle(Server.java:324)
	at org.mortbay.jetty.HttpConnection.handleRequest(HttpConnection.java:534)
	at org.mortbay.jetty.HttpConnection$RequestHandler.headerComplete(HttpConnection.java:864)
	at org.mortbay.jetty.HttpParser.parseNext(HttpParser.java:533)
	at org.mortbay.jetty.HttpParser.parseAvailable(HttpParser.java:207)
	at org.mortbay.jetty.HttpConnection.handle(HttpConnection.java:403)
	at org.mortbay.jetty.bio.SocketConnector$Connection.run(SocketConnector.java:228)
	at org.mortbay.thread.QueuedThreadPool$PoolThread.run(QueuedThreadPool.java:522)
23:07:58,739  INFO Services:539 - Shutdown
{noformat}

https://builds.apache.org/job/oozie-trunk-precommit-build/827/testReport/org.apache.oozie.client/TestWorkflowClient/testSla/


---

* [OOZIE-1562](https://issues.apache.org/jira/browse/OOZIE-1562) | *Major* | **Allow re-run of actions of killed coordinator**

Coordinator is killed because all its actions are killed. Re-run of coord actions should be allowed in this case


---

* [OOZIE-1560](https://issues.apache.org/jira/browse/OOZIE-1560) | *Major* | **Log messages should have a way of identifying which server they came from when using HA**

When using HA, the only way to know which server is processing a specific job is to go into each server's log file and look for log messages about that job; when looking at the logs from the API, there is no way to know.  

This information can be useful, so it would be good to add the server name as part of the log message.  This can either be done for logs permanently or can be done when a server is aggregating/collating logs from the other servers.  The former is probably more efficient than the latter.  If we go with the former, I'd say that we should always do it, regardless of HA so the log formatting is consistent and in case that server is added to an HA group later.

For example, instead of this:
{noformat}
2013-09-29 16:46:20,182 WARN org.apache.oozie.command.wf.ActionStartXCommand: USER[root] GROUP[-] TOKEN[] APP[demo-wf] JOB[0000000-130925230553293-oozie-oozi-W] ACTION[0000000-130925230553293-oozie-oozi-W@streaming-node] [***0000000-130925230553293-oozie-oozi-W@streaming-node***]Action status=RUNNING
{noformat}
we can have this:
{noformat}
2013-09-29 16:46:20,182 WARN org.apache.oozie.command.wf.ActionStartXCommand: USER[root] GROUP[-] SERVER[oozieA] TOKEN[] APP[demo-wf] JOB[0000000-130925230553293-oozie-oozi-W] ACTION[0000000-130925230553293-oozie-oozi-W@streaming-node] [***0000000-130925230553293-oozie-oozi-W@streaming-node***]Action status=RUNNING
{noformat}


---

* [OOZIE-1559](https://issues.apache.org/jira/browse/OOZIE-1559) | *Major* | **Fix missing fields from new SELECT queries and Recovery Service picking up killed control nodes**

this jira to fix few issues with new SELECT queries. 
one issue - workflow actions get stuck because recovery service does not pick up the pending actions. reason is that pendingAge in WF\_ACTIONS table not updated property

the other issue - Recovery service does not pick up pending actions, and keeps picking up killed control nodes
when workflow is killed (KillXCommand) while control nodes(start/decision..etc) are being executed, KillXCommand set pending flag of the control node true, but subsequent ActionKillXCommand failed due to unsupported operation, fails to reset pending, so pending flag left to true. Thus, recovery service keep picking this up and start SignalXCommand, but it doesn't go through verifyPreCondition since workflow job status killed. the
same thing is repeated forever


---

* [OOZIE-1558](https://issues.apache.org/jira/browse/OOZIE-1558) | *Blocker* | **RAT Warning from BundleActionsGetJPAExecutor.java**

OOZIE-1503 only deleted the contents of core/src/main/java/org/apache/oozie/executor/jpa/BundleActionsGetJPAExecutor.java leaving an empty file, which doesn't pass the RAT check.  We should delete this file.


---

* [OOZIE-1557](https://issues.apache.org/jira/browse/OOZIE-1557) | *Major* | **TestFsActionExecutor.testChmodWithGlob fails against Hadoop 2.1.x-beta**

When running against Hadoop 2.1.x-beta, {{TestFsActionExecutor.testChmodWithGlob}} fails because of an incompatible change introduced by HDFS-4659 with how file permissions are set.
{noformat}

-------------------------------------------------------------------------------
Test set: org.apache.oozie.action.hadoop.TestFsActionExecutor
-------------------------------------------------------------------------------
Tests run: 24, Failures: 1, Errors: 0, Skipped: 0, Time elapsed: 35.813 sec <<< FAILURE!
testChmodWithGlob(org.apache.oozie.action.hadoop.TestFsActionExecutor)  Time elapsed: 0.002 sec  <<< FAILURE!
junit.framework.ComparisonFailure: expected:<rw[-]------> but was:<rw[x]------>
	at junit.framework.Assert.assertEquals(Assert.java:85)
	at junit.framework.Assert.assertEquals(Assert.java:91)
	at org.apache.oozie.action.hadoop.TestFsActionExecutor.testChmodWithGlob(TestFsActionExecutor.java:468)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:39)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25)
	at java.lang.reflect.Method.invoke(Method.java:597)
	at junit.framework.TestCase.runTest(TestCase.java:168)
	at junit.framework.TestCase.runBare(TestCase.java:134)
	at junit.framework.TestResult$1.protect(TestResult.java:110)
	at junit.framework.TestResult.runProtected(TestResult.java:128)
	at junit.framework.TestResult.run(TestResult.java:113)
	at junit.framework.TestCase.run(TestCase.java:124)
	at junit.framework.TestSuite.runTest(TestSuite.java:243)
	at junit.framework.TestSuite.run(TestSuite.java:238)
	at org.junit.internal.runners.JUnit38ClassRunner.run(JUnit38ClassRunner.java:83)
	at org.apache.maven.surefire.junitcore.ClassDemarcatingRunner.run(ClassDemarcatingRunner.java:58)
	at org.junit.runners.Suite.runChild(Suite.java:128)
	at org.junit.runners.Suite.runChild(Suite.java:24)
	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)
	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:439)
	at java.util.concurrent.FutureTask$Sync.innerRun(FutureTask.java:303)
	at java.util.concurrent.FutureTask.run(FutureTask.java:138)
	at java.util.concurrent.ThreadPoolExecutor$Worker.runTask(ThreadPoolExecutor.java:895)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:918)
	at java.lang.Thread.run(Thread.java:680)
{noformat}

As this behavior is different between Hadoop 1 and 2, I think we should simply have the test not check for this case.


---

* [OOZIE-1556](https://issues.apache.org/jira/browse/OOZIE-1556) | *Major* | **Change Bundle SELECT query to fetch only necessary columns and consolidate JPA Executors**

as continuation of OOZIE-1499, OOZIE-1524, OOZIE-1547, OOZIE-1503,  this patch to change bundle select query, specifically in StatusTransitService/RecoveryService.


---

* [OOZIE-1554](https://issues.apache.org/jira/browse/OOZIE-1554) | *Major* | **Support variables for coord data-in/data-out dataset**

One would like to have a centralized list of datasets,
and use the <include> tag to make them available to every coordinator.  One 
would like to re-use our coordinator code, as most of his processing follows
the same steps, but with differing input and output feeds.  

He need to be able to set the data-in and data-out dataset
values to variables; 


My bundle coordinator entry looks like this:
   <coordinator name="data1-2">
        <app-path>/user/harveyc/oozie\_test/src/test\_coordA.xml</app-path>
        <configuration>
            <property><name>wf\_name</name><value>1-2</value></property>
            <property><name>dataset\_A</name><value>dataA</value></property>
            <property><name>dataset\_B</name><value>dataB</value></property>
        </configuration>
    </coordinator>


Coord looks 
<coordinator-app name="COORD\_A\_TEST" frequency="${coord:minutes(1)}"
start="${startTime}" end="${endTime}" timezone="${timezoneCode}" 
xmlns:sla="uri:oozie:sla:0.1" xmlns="uri:oozie:coordinator:0.2">
  <datasets>
   
<include>${nameNode}/user/harveyc/oozie\_test/datasets/test\_datasets.xml</include>
  </datasets>
  <input-events>
      <data-in name="inputDataA" dataset="${dataset\_A}">
        <instance>${coord:current(0)}</instance>
      </data-in>
  </input-events>
  <output-events>
      <data-out name="outputDataB" dataset="${dataset\_B}">
        <instance>${coord:current(0)}</instance>
      </data-out>
  </output-events>
  <action>
   <workflow>
      <app-path>/user/harveyc/oozie\_test/src/wf\_touchz.xml</app-path>
       <configuration>
         <property><name>name</name><value>${wf\_name}</value></property>
        
<property><name>touchzpathb</name><value>${coord:dataOut('outputDataB')}</value></property>
       </configuration>
    </workflow>
  </action>     
</coordinator-app>

Test\_datasets.xml looks like this:
  <datasets>
      <dataset name="dataA" frequency="${coord:minutes(1)}"
initial-instance="${ds\_startTime}" timezone="${timezoneCode}">
       
<uri-template>${nameNode}/user/harveyc/oozie\_test/data1/${YEAR}${MONTH}${DAY}${HOUR}${MINUTE}</uri-template>
      </dataset>
      <dataset name="dataB" frequency="${coord:minutes(1)}"
initial-instance="${ds\_startTime}" timezone="${timezoneCode}">
       
<uri-template>${nameNode}/user/harveyc/oozie\_test/data2/${YEAR}${MONTH}${DAY}${HOUR}${MINUTE}</uri-template>
      </dataset>
  </datasets>

The error is:
Error: Invalid workflow-app, org.xml.sax.SAXParseException; lineNumber: 8;
columnNumber: 57; cvc-pattern-valid: Value '${dataset\_A}' is not facet-valid
with respect to pattern '([a-zA-Z]([\-\_a-zA-Z0-9])*){1,39}' for type
'IDENTIFIER'.


---

* [OOZIE-1552](https://issues.apache.org/jira/browse/OOZIE-1552) | *Major* | **Bring Windows shell script functionality and structure in line with trunk**

OOZIE-1523 implemented the shell scripts for windows at roughly a 3.2.0 version level. There are some additional options and restructuring that need to be implemented to bring the shell scripts in line with trunk.


---

* [OOZIE-1550](https://issues.apache.org/jira/browse/OOZIE-1550) | *Major* | **Create a safeguard to kill errant recursive workflows before they bring down oozie**

If a user creates an errant workflow with a sub-workflow that calls the workflow again, without a proper decision node to exit the workflow, it will continue to create numerous jobs until the oozie server is saturated.  A user recently had 400,000 running jobs and oozie was non-responsive.  I would suggest we have some method of preventing a user from taking out oozie, such as a max running jobs 
parameter.


---

* [OOZIE-1548](https://issues.apache.org/jira/browse/OOZIE-1548) | *Major* | **OozieDBCLI changes to convert clob to blob and remove the discriminator column**

For oracle and derby, convert from clob to blob
For postgres, convert from text to bytea
For mysql, convert from text/mediumtext to mediumblob


---

* [OOZIE-1547](https://issues.apache.org/jira/browse/OOZIE-1547) | *Major* | ** Change Coordinator SELECT query to fetch only necessary columns and consolidate JPA Executors**

as continuation of OOZIE-1499, OOZIE-1524 review Coordinator SELECT query, and change them to fetch only necessary columns and consolidate JPA Executors.


---

* [OOZIE-1546](https://issues.apache.org/jira/browse/OOZIE-1546) | *Major* | **TestMapReduceActionExecutorUberJar.testMapReduceWithUberJarEnabled fails**

org.apache.oozie.action.hadoop.TestMapReduceActionExecutorUberJar.testMapReduceWithUberJarEnabled fails because OOZIE-1501 added a check that the Hadoop counter "MAP\_OUTPUT\_RECORDS" is 2. In the non-UberJar version of the test, this is 2 because the map outputs the 2 dummy inputs. In the UberJar version, we check what's in the classpath by outputting it from the map task as separate records; this means that the "MAP\_OUTPUT\_RECORDS" can vary depending on what's in the classpath.

This wasn't caught by Jenkins because this test is normally skipped because the Uber Jar feature doesn't work with the current versions of Hadoop that we're using.


---

* [OOZIE-1545](https://issues.apache.org/jira/browse/OOZIE-1545) | *Major* | **RecoveryService keeps repeatedly queueing SuspendXCommand**

 After a Suspend is issued and successfully executed, the coord action pending is set to 1 (not 0). Recovery service queues suspend again every minute if pending is 1. So if the job is not resumed for sometime then lot of SuspendXCommand is queued again and again.


---

* [OOZIE-1543](https://issues.apache.org/jira/browse/OOZIE-1543) | *Trivial* | **Minor typo in Hive Action documentation**

There's a minor small typo in the Hive Action documentation: in one of the examples it says
{code:xml}
<job-traker>foo:8021</job-tracker>
{code}
instead of
{code:xml}
<job-tracker>foo:8021</job-tracker>
{code}

http://oozie.apache.org/docs/4.0.0/DG\_HiveActionExtension.html


---

* [OOZIE-1541](https://issues.apache.org/jira/browse/OOZIE-1541) | *Trivial* | **Typo in Oozie HA admin -servers command in documentation**

The CLI {{admin -servers}} command gives an example in the documentation:
{noformat}
$ oozie admin http://localhost:11000/oozie -servers
OozieA : http://localhost:11000/oozie
OozieB : http://localhost:12000/oozie
OozieC : http://localhost:13000/oozie
{noformat}

The command is missing the {{-oozie}} before the address.  

It would also probably be more clear if they were different hosts instead of the same host with different ports (same with the REST docs).


---

* [OOZIE-1540](https://issues.apache.org/jira/browse/OOZIE-1540) | *Critical* | **When oozie.zookeeper.oozie.id is not specified, its using a space instead of the hostname**

If you don't specify {{oozie.zookeeper.oozie.id}} it supposed to default to the hostname.  oozie-default.xml has this set to " " (space), which I misremembered how Configuration handled this, so currently, if you do this, all Oozie servers in the HA namespace will have the same id (i.e. " ") and will overwrite each other's entry in the service discovery in ZK, leaving only one.  This makes certain HA functionalities not work, including anything that relies on the service discovery such as log streaming.


---

* [OOZIE-1539](https://issues.apache.org/jira/browse/OOZIE-1539) | *Major* | **Load more coordinator jobs eligible to be materialized in MaterializeTriggerService**

Part 1 of umbrella JIRA OOZIE-1527.


---

* [OOZIE-1532](https://issues.apache.org/jira/browse/OOZIE-1532) | *Major* | **Purging should remove completed children job for long running coordinator jobs**

Specifically, this is for long running coordinator jobs with high frequency. all child workflows are never purged as the coord job is still running.

Oozie server configuration that indicates how many coordinator actions frequency ticks to keep. By doing this it would be possible to purge running coord jobs. By default this would not be enabled and the current logic would remain.


---

* [OOZIE-1530](https://issues.apache.org/jira/browse/OOZIE-1530) | *Major* | **Fork-join mismatch makes workflow Failed but some actions stay Running**

OOZIE-1513 made the workflow change state to FAILED (same as its Workflow Instance state) if there is an exception thrown from the fork-join structure. However, the subsequent actions stayed in Running and occupied ActionCheckX cycles. This patch fixes that problem.

Tested with e-2-e test


---

* [OOZIE-1529](https://issues.apache.org/jira/browse/OOZIE-1529) | *Major* | **Disable job DAG display for workflow having huge actions.**

1.We should to disable job DAG display for workflow having huge action, probably more than 25.

Job DAQ rendering happens at server side. It's a heavy operation and server goes OOM while generating DAG for workflow having huge actions.

2. There are other UI issue with DAG display.
  a.)Client calls to generates DAG two times, 1> while initializing panel. 2> When user clicks Job DAG tab.
     We should disable  DAG generation while initializing panel. It should be called only when user clicks Job DAG panel.


---

* [OOZIE-1528](https://issues.apache.org/jira/browse/OOZIE-1528) | *Major* | **CoordRerunX and ActionEndX not updating some of the modified beans.**


CoordRerun almost resets the bean, so need to include quite a few columns for update.
ActionEndX sets the stats, so need to update the bean with it
This JIRA also aims to fix a bug in Sharelib service where permission are not recursively set.


---

* [OOZIE-1527](https://issues.apache.org/jira/browse/OOZIE-1527) | *Major* | **Fix scalability issues with coordinator materialization**

In certain situations when there is a large number of coordinators in the system, they have been observed to create huge backlog in materialization, and progressing very slow compared to expected. This patch can be looked upon as both a bug-fix or an enhancement addressing following points:

1. 'materialization.system.limit' leads to bringing Coord jobs in LRU fashion, but some of them may already be maxing out at actions to materialize (= throttle), and < limit jobs may actually undergo materialization. This patch does a second iteration of loading jobs to get materialized to reduce backlog

2. 'materialization.window' being 1 hour may work in most cases, but hourly jobs are seen to face significant slowdown at times, by lot of other minute jobs getting materialized. Therefore, window can be doubled (i.e. 2 hours) when job is hourly/daily.

3. For hourly coordinators, it is consistently seen that materialization occurs only near the end of the hour. e.g. for action whose nominal time is 2:00, action creation time is 1:59, if nominal time - 3:00, creation time is 2:58 and so on. If window is an hour in the future, doesn't explain why materialization won't occur anytime in the middle of the preceding hour.


---

* [OOZIE-1526](https://issues.apache.org/jira/browse/OOZIE-1526) | *Major* | **Oozie does not work with a secure HA JobTracker or ResourceManager**

HadoopAccessorService#getMRTokenRenewerInternal handles getting the delegation token for the JT/RM.  OOZIE-1159 modified this slightly and it now tries to parse the JT/RM address to get the hostname.  However, if you try to use JT HA (which isn't in vanilla Hadoop), it uses a logical name (e.g. "ha-jt-uri") just like we do with HDFS HA.  As such, when HadoopAccessorService tries to do
{code:java}
String addr = NetUtils.createSocketAddr(target).getHostName();
{code}
it will get an exception:
{noformat}
Caused by: java.lang.IllegalArgumentException: Does not contain a valid host:port authority: ha-jt-uri
	at org.apache.hadoop.net.NetUtils.createSocketAddr(NetUtils.java:211)
	at org.apache.hadoop.net.NetUtils.createSocketAddr(NetUtils.java:163)
	at org.apache.hadoop.net.NetUtils.createSocketAddr(NetUtils.java:152)
	at org.apache.oozie.service.HadoopAccessorService.getMRTokenRenewerInternal(HadoopAccessorService.java:484)
	at org.apache.oozie.service.HadoopAccessorService.getMRDelegationTokenRenewer(HadoopAccessorService.java:463)
	at org.apache.oozie.service.HadoopAccessorService.createJobClient(HadoopAccessorService.java:374)
	at org.apache.oozie.action.hadoop.JavaActionExecutor.createJobClient(JavaActionExecutor.java:991)
	at org.apache.oozie.action.hadoop.JavaActionExecutor.submitLauncher(JavaActionExecutor.java:743)
	... 10 more
{noformat}
because there isn't a host or port in the logical name.  

Once RM HA is done (which will be in vanilla Hadoop), it will use a logical name just like JT HA, and will run into the same problem.  I think we can fix this by having it fall back to the old behavior when it gets the IllegalArgumentException.


---

* [OOZIE-1524](https://issues.apache.org/jira/browse/OOZIE-1524) | *Major* | **Change Workflow SELECT query to fetch only necessary columns and consolidate JPA Executors**

as continuation of OOZIE-1499,  review Workflow SELECT query, and change them to fetch only necessary columns and consolidate JPA Executors.


---

* [OOZIE-1523](https://issues.apache.org/jira/browse/OOZIE-1523) | *Major* | **Create Windows versions of the shell scripts**

In order to use Oozie on windows, it is necessary to create Windows versions of the following scripts:
* tools/src/main/bin/ooziedb.sh
* distro/src/main/bin/oozied.sh
* distro/src/main/bin/oozie-setup.sh
* distro/src/main/bin/oozie-start.sh
* distro/src/main/bin/oozie-stop.sh
* distro/src/main/bin/oozie-sys.sh
* core/src/main/conf/oozie-env.sh

I'm going to submit Windows versions of those scripts at roughly a 3.2.0 version level. So there will be some missing functionality relative to later versions on linux. But the scripts are sufficient to setup and start/stop Oozie, and use the oozie CLI, as tested on 3.2.0, 3.3.2, and trunk. If requested, I can create a separate Jira to bring them up to parity with trunk.


---

* [OOZIE-1522](https://issues.apache.org/jira/browse/OOZIE-1522) | *Major* | **SignalX may try to insert transition for a forked node twice**

This JIRA also fixes another small bug where a job in USER\_RETRY is not killed.


---

* [OOZIE-1520](https://issues.apache.org/jira/browse/OOZIE-1520) | *Major* | **Sequencefile Reader fails to use doas for reading action data file**

Actions producing output data, is stored as a sequence file. Oozie server while attempting to read this file, which is under user's home dir, faces permission denied. The SequenceFile.Reader constructor is not able to propagate proxyuser capability.


---

* [OOZIE-1519](https://issues.apache.org/jira/browse/OOZIE-1519) | *Major* | **Admin command to update the sharelib**

OOZIE-1518 aims to copy all the sharelibs from an hdfs staging dir. This JIRA will add a new admin command which will allow the admins to notify the oozie server when sharelib package is upgraded. In case of HA, one oozie server will notify other servers to update their own sharelibs. Also if the notification is lost or some server is down, that server will update its sharelib path during startup as it will check for any new sharelibs in the staging dir.


---

* [OOZIE-1517](https://issues.apache.org/jira/browse/OOZIE-1517) | *Major* | **Support using MS SQL Server as a metastore**

A few things need to be changed/added to enable Oozie to use SQL Server as a metastore:
# Add oozie-sqlserver-orm.xml
# Add a section in persistence.xml for SQL Server
# OozieDBCLI.java: Add a section to the DDL queries for upgrading a database
# OozieDBCLI.java: Create a clustered index on OOZIE\_SYS


---

* [OOZIE-1515](https://issues.apache.org/jira/browse/OOZIE-1515) | *Major* | **Passing superset of action id range should be allowed**

{code}
oozie job -kill 0001-12345-C -action 1-10
{code}

will fail if all coord actions 1 through 10 don't exist. It is more probable that user will give an arbitrary range which is a superset of actions actually existing, and kill command should work.


---

* [OOZIE-1513](https://issues.apache.org/jira/browse/OOZIE-1513) | *Major* | **Workflow stays in running if Fork/join validation or loop detection fails**

If some jobs have configured their workflow definition wrongly with improper use of fork-join combination, in some occurrences the jobs did not go to FAILED. Recovery service keeps picking up and running them again and again, so log is full of errors.

{code}
2012-10-03 19:40:54,035 ERROR SignalXCommand:536 - USER[joe] GROUP[users] TOKEN[-] APP[my-oozie-app] JOB[0001800-120927185459177-oozie-wrkf-W] ACTION[0001800-120927185459177-oozie-wrkf-W@streaming-job] XException, 
org.apache.oozie.command.CommandException: E0720: Fork/join mismatch, node [join]
	at org.apache.oozie.command.wf.SignalXCommand.execute(SignalXCommand.java:165)
	at org.apache.oozie.command.wf.SignalXCommand.execute(SignalXCommand.java:63)
	at org.apache.oozie.command.XCommand.call(XCommand.java:277)
	at org.apache.oozie.service.CallableQueueService$CallableWrapper.run(CallableQueueService.java:175)
	at java.util.concurrent.ThreadPoolExecutor$Worker.runTask(ThreadPoolExecutor.java:886)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:908)
	at java.lang.Thread.run(Thread.java:662)
Caused by: org.apache.oozie.workflow.WorkflowException: E0720: Fork/join mismatch, node [join]
	at org.apache.oozie.workflow.lite.JoinNodeDef$JoinNodeHandler.loopDetection(JoinNodeDef.java:47)
	at org.apache.oozie.workflow.lite.LiteWorkflowInstance.signal(LiteWorkflowInstance.java:206)
	at org.apache.oozie.workflow.lite.LiteWorkflowInstance.signal(LiteWorkflowInstance.java:287)
	at org.apache.oozie.command.wf.SignalXCommand.execute(SignalXCommand.java:162)
	... 6 more
{code}


---

* [OOZIE-1509](https://issues.apache.org/jira/browse/OOZIE-1509) | *Major* | **Do not preload all tabs in Oozie UI and make Active Jobs default**

Oozie UI loading is very slow and puts lot of load on server and database.

  1) Load only tabs that user is viewing.
  2) Make Active Jobs the default instead of showing all jobs. Users are more interested in that. Active jobs should also show RUNNINGWITHERROR jobs.


---

* [OOZIE-1504](https://issues.apache.org/jira/browse/OOZIE-1504) | *Major* | **Allow specifying a fixed instance as the start instance of a data-in**

Usage-case...

One wants it to start on the same specific date so that each day, it processes one more data set than the last day (the datasets are daily). Something like the following
 
<input-events>
<data-in name="event\_input\_path\_format1" dataset="EVENT\_INPUT\_FORMAT1">
<start-instance>${coord:absolute(2013-03-15T00:00Z)}</start-instance>
<end-instance>$
{coord:current(-1)}
</end-instance>
</data-in>
<data-in name="event\_input\_path\_format2" dataset="EVENT\_INPUT\_FORMAT2">
<start-instance>${coord:absolute(2013-03-15T00:00Z)}</start-instance>
<end-instance>$
{coord:current(-1)}
</end-instance>
</data-in>
</input-events>
---------------------------------

Specifying a fixed date as the start instance is useful if processing needs to process all dataset instances from a specific instance to the current instance.


---

* [OOZIE-1500](https://issues.apache.org/jira/browse/OOZIE-1500) | *Major* | **Fix many OS-specific issues on Windows**

This is a large patch, please let me know if I should split it up and/or use the code reviewer tool. I tested it on linux and verified that it did not cause any unit test regressions.

This patch fixes many unix-specific assumptions in code and tests:
# Using "/" as a path separator. On windows, the right separator is "\". Fix: create a new Path object with the directory and subdirectory names, which handles using the right separator.
# Determining whether a path is absolute by testing if it begins with "/". Fix: Create a new File object and use isAbsolute().
# Generating a pathname by concatenating "file://", getTestCaseDir(), File.separator, and the file name. This is wrong because this is a URI, and File.separator is "/" on unix but "\" on windows. Fix: New helper method getTestCaseFileUri solves this.
# Create directories by using "mkdir" shell command with hard-coded file separators. Fix: Create a new File object and use mkdirs().
# Scripts that use unix-only commands (ls, echo, etc.). Fix: Implement windows-specific commands and use Shell.WINDOWS to pick the right one at runtime.
# Assume that perl exists in TestShellActionExecutor.testPerlScript. It doesn't on Windows. Fix: skip the test on Windows.
# Use the test case name as part of the temp directory name in order to ensure directories are unique. This can cause issues on Windows. Fix: Use a random UUID instead.
# As a result of using getTestCaseUri, some test case verification that uses string equality fails. (TestLiteWorkflowAppService) Fix: use URI equivalence instead of string equality.
# AdminServlet tests verify that system variables are working by checking for a USER variable. This is called USERNAME in windows. Fix: On Windows, check for USERNAME instead.
# TestHostnameFilter checks that "localhost" is in the filter. On Windows, this is "127.0.0.1". Fix: On Windows, check for 127.0.0.1 instead.

On windows there are still several tests failing. I hope to spend some time fixing these later:
{noformat}
Failed tests:
testActionCheck(org.apache.oozie.command.wf.TestActionCheckXCommand)
testActionCheckTransientDuringLauncher(org.apache.oozie.command.wf.TestActionCheckXCommand)
testActionCheckTransientDuringMRAction(org.apache.oozie.command.wf.TestActionCheckXCommand)
testCoordinatorActionCommands(org.apache.oozie.sla.TestSLAEventGeneration): expected:<NOT\_STARTED> but was:<IN\_PROCESS>
testChmodWithGlob(org.apache.oozie.action.hadoop.TestFsActionExecutor): expected:<rw[-]------> but was:<rw[x]------>
Tests in error:
testWaitFor(org.apache.oozie.test.TestXTestCase): could not delete path [D:\apache\oozie\core\target\test-data\oozietests\org.apache.oozie.test.TestXTestCase$MyXTestCase\testWaitFor\conf\oozie-site.xml]
testBaseDir(org.apache.oozie.test.TestXTestCase): could not delete path [D:\apache\oozie\core\target\test-data\oozietests\org.apache.oozie.test.TestXTestCase$MyXTestCase\testBaseDir\conf\oozie-site.xml]
{noformat}

How to run unit tests in windows:
# You will need to build hadoop-core from branch-1-win and install it into your local maven cache. 
# In the root pom.xml, replace the dummy value in HADOOP\_HOME with the path to the hadoop directory. The minicluster tests require bin\winutils.exe to be in this directory.
# In the root pom.xml (and hadooplibs version 1 pom.xmls, if OOZIE-1490 is not committed yet) change the hadoop version to the version built from branch-1-win.
# May also need to use Hive 0.11 with the windows fixes.


---

* [OOZIE-1499](https://issues.apache.org/jira/browse/OOZIE-1499) | *Major* | **Update only necessary columns and consolidate JPA Executors**

In some commands, unchanged/unnecessary columns are updated using em.merge. only necessary ones should be updated.
also there are many JPA Executors (one for each query) now, and these can be consolidated.


---

* [OOZIE-1496](https://issues.apache.org/jira/browse/OOZIE-1496) | *Major* | **Oozie demo and streaming examples fails to run on Windows**

The mapreduce jobs which are run by streaming and demo oozie examples fails with following error:
	Caused by: java.io.IOException: Cannot run program "/bin/cat": CreateProcess error=2, The system cannot find the file specified
	Both have <streaming><mapper>/bin/cat</mapper><reducer>/usr/bin/wc</reducer></streaming> parameters in their workflow.xml. To fix this issue it's needed to have another mapper and reducer programms for Windows. As appropriate analogs on Windows can be "powershell -command "$input | Write-Host"" for mapper and "powershell -command "$input | Measure-Object -Word -Line -Character"" so it's not needed to rewrite any supporting Java code for this examples.
	That's why separated job.properties for Windows and Linux versions were created. Both contains additional parameters "streamingMapper" and "streamingReducer" whose values are commands for OS-specific mapper and reducer.


---

* [OOZIE-1495](https://issues.apache.org/jira/browse/OOZIE-1495) | *Major* | **inconsistent behavior of chmod/chgrp when path doesn't exist after glob support**

when the path doesn't exist, chmod/chgrp in FS action previously throw FS009, but now exit silently.


---

* [OOZIE-1492](https://issues.apache.org/jira/browse/OOZIE-1492) | *Major* | **Make sure HA works with HCat and SLA notifications**

We need to make sure HA works with HCat integration and SLA notifications. Both have in-memory datastructures and HA will impact them.


---

* [OOZIE-1491](https://issues.apache.org/jira/browse/OOZIE-1491) | *Major* | **Make sure HA works with a secure ZooKeeper**

We need to make sure that HA works with a secure ZooKeeper.  This includes the SASL ACL setting that will prevent someone else from deleting the oozie znodes.


---

* [OOZIE-1490](https://issues.apache.org/jira/browse/OOZIE-1490) | *Major* | **Remove unix OS enforcement from build**

Windows builds do not run because there is a requireOS restriction for unix.

Also, building and running unit tests on windows requires that a specific hadoop version is used. Right now this requires editing multiple pom.xml files because the version is hard-coded. After discussion, we will continue to require this rather than refactor the hadoop versions, because doing so will break maven publishing.


---

* [OOZIE-1486](https://issues.apache.org/jira/browse/OOZIE-1486) | *Major* | **Cut down on number of small files created to track a running action**

Oozie creates multiple files while running a action. This has been observed to be an overkill and can be consolidated (as applicable) into a lesser files. Advantages involve not only staying within user storage quotas but also reducing Namenode pressure in a large production environment.

static final String ACTION\_CONF\_XML = "action.xml";
    public static final String ACTION\_PREPARE\_XML = "oozie.action.prepare.xml";
    private static final String ACTION\_OUTPUT\_PROPS = "output.properties";
    private static final String ACTION\_STATS\_PROPS = "stats.properties";
    private static final String ACTION\_EXTERNAL\_CHILD\_IDS\_PROPS =
"externalChildIds.properties";
    private static final String ACTION\_NEW\_ID\_PROPS = "newId.properties";
    private static final String ACTION\_ERROR\_PROPS = "error.properties";

Consolidate and reduce the number of files required.


---

* [OOZIE-1476](https://issues.apache.org/jira/browse/OOZIE-1476) | *Minor* | **Add ability to issue kill on Coordinator Action directly with id and nominal daterange**

If we want to kill a coordinator action in particular, there is no way to do this currently. Kill has to be issued on the Coordinator Job level and percolates through to all its actions. This JIRA is enhancing the kill command for coord action specifically.


---

* [OOZIE-1474](https://issues.apache.org/jira/browse/OOZIE-1474) | *Major* | **Fix logging issues - latency, accurate job ids, coord Job UI to show job logs**

For example,

WARN CallableQueueService:542 - USER[-] GROUP[-] queue if full, ignoring queuing for [(org.apache.oozie.command.wf.SignalXCommand@5c819194),(org.apache.oozie.command.wf.ActionEndXCommand@3e7cbafe),(org.apache.oozie.command.wf.SignalXCommand@6ed899be),(org.apache.oozie.command.wf.ActionEndXCommand@4e55c1cc),(org.apache.oozie.command.wf.ActionStartXCommand@60266041),(org.apache.oozie.command.wf.ActionStartXCommand@77797cb7),(org.apache.oozie.command.wf.ActionStartXCommand@48eb0fa8),(org.apache.oozie.command.wf.ActionStartXCommand@405103fe),(org.apache.oozie.command.wf.ActionStartXCommand@6dd39af),(org.apache.oozie.command.wf.ActionStartXCommand@25f613ae)]

is an illustration of log messages being unclear. This one prints out the reference address information for the command instead of any meaningful info such as job-id, and user whom this command pertains to.

The log messages around callable commands can be fixed in a few other places too.


---

* [OOZIE-1468](https://issues.apache.org/jira/browse/OOZIE-1468) | *Major* | **Add created time column in WF\_ACTIONS and SLA tables**

Its useful to have a created\_time column in WF\_ACTIONS table that is set at insert time and not updated later. This can be used to know time of insert and its required for table partitioning(for db purging).

Any thoughts?


---

* [OOZIE-1463](https://issues.apache.org/jira/browse/OOZIE-1463) | *Major* | **Remove discriminator column**


All workflow, coord and bundle tables have a discriminator column.
{code}
@DiscriminatorColumn(name = "bean\_type", discriminatorType = DiscriminatorType.STRING)
{code}
It is an extra column of no value. 
Also, there is inheritance hierarchy where **ActionBean inherits JSON**Action.
The JSON**Action also doesn't seem to add any value. We can have all the columns of table, the corresponding setters and getters in one class.


---

* [OOZIE-1462](https://issues.apache.org/jira/browse/OOZIE-1462) | *Major* | **Compress lob columns before storing in database**

Storing huge data in lobs is very inefficient. Making Oozie compress the data before storing will reduce size of data to be stored in lobs and help in reducing the time for queries. Also most databases like oracle, mysql support storing lob data in tablerow (inline) if the data is of smaller size. Inline storage has much better performance compared to outline storage (storage outside of tablerow)


---

* [OOZIE-1461](https://issues.apache.org/jira/browse/OOZIE-1461) | *Major* | **provide an option to auto-deploy launcher jar onto HDFS system libpath**

after OOZIE-1311, 1315, when oozie.action.ship.launcher.jar is false, launcher jar is shipped from sharelib, but it requires manual process for admin people to upload jar files onto the sharelib at server-start time, before actually starting running workflow actions. This JIRA to provide an option to remove the manual process, and make oozie server (ActionService) to automatically create and upload launcher jar files onto HDFS (tmp directory under oozie.service.WorkflowAppService.system.libpath), and allow workflow actions to consume from there. every time oozie server starts, it automatically creates a new directory to upload launcher jars to, and also purges stale directories previously created (older than 7 days, configurable). 
if false (which is current default). the behavior is the same with previous, launcher jars provided from sharelib (when oozie.action.ship.launcher.jar=false) or each workflow action creates and ships launcher jar (when oozie.action.ship.launcher.jar=true)


---

* [OOZIE-1460](https://issues.apache.org/jira/browse/OOZIE-1460) | *Major* | **Implement and Document security for HA**

Implement and document anything that needs to be done to add support for security (i.e. kerberos) for High Availability.


---

* [OOZIE-1458](https://issues.apache.org/jira/browse/OOZIE-1458) | *Major* | **If a Credentials type is not defined, Oozie should say something**

If you use the Credentials Module and define a {{<credentials>}} section like this:
{code:xml}
<credentials>
     <credential name='woot' type='hcat'>
          <property>
               ...
          </property>
     </credential>
</credentials>
{code}

but you didn't add a credentials type for {{hcat}} in oozie-site.xml; that is, you *did not* add this:
{code:xml}
<property>
     <name>oozie.credentials.credentialclasses</name>
     <value>hcat=org.apache.oozie.action.hadoop.HCatCredentials</value>
</property>
{code}

then Oozie will silently not use the credentials class (because it doesn't know about it) so the action trying to use it will fail.  It's pretty easy to forget to add the property to oozie-site.xml, so it would be nice if instead of silently ignoring needing to acquire a credential for an action, the workflow should fail either on that action when it tries to use the credential and can't find it, or (probably better) when submitting the workflow as part of the initial checking (e.g. after we do the forkjoin checking or something).


---

* [OOZIE-1449](https://issues.apache.org/jira/browse/OOZIE-1449) | *Critical* | **Coordinator Workflow parent relationship is broken for purge service**

OOZIE-1118 improved the logic of the purge service to take into account the parent-child relationships of bundle, coordinator, workflow, and subworkflow jobs.  However, in queries (and test code) dealing with the coordinator parent of a workflow, it is incorrectly using the coordinator job id instead of the coordinator action id.  

This means that the purging logic won't properly associate workflows with their parent coordinators; all jobs should eventually be purged, so its not completely broken, but it is currently possible for child workflows to be purged before their coordinator parents (the correct behavior is for no child or parent to be purged until the parent and all children are ready).  

This doesn't affect the coordinator-bundle or subworkflow-workflow relationships because they use their parent is the job id not the action id; only the workflow-coordinator relationship uses the coordinator action id as the parent id for the workflow job.


---

* [OOZIE-1448](https://issues.apache.org/jira/browse/OOZIE-1448) | *Major* | **A CoordActionUpdateXCommand gets queued for all workflows even if they were not launched by a coordinator**

Once a workflow (that wasn't started by a coordinator) ends, there's almost always a warning/error logged that looks like this:
{noformat}
2013-07-09 16:16:54,711  WARN CoordActionUpdateXCommand:542 - USER[rkanter] GROUP[-] TOKEN[] APP[pig-wf] JOB[0000000-130709161625948-oozie-rkan-W] ACTION[-] E1100: Command precondition does not hold before execution, [, coord action is null], Error Code: E1100
{noformat}
The error is harmless, but it tends to confuse users who think that something went wrong.  It also means that we have an extra unnecessary command in the queue for every workflow that wasn't started by a coordinator.

In SignalXCommand, there is a line like this:
{code:java}
new CoordActionUpdateXCommand(wfJob).call();    //Note: Called even if wf is not necessarily instantiated by coordinator
{code}
The comment is part of the original code, and makes me think that this was done on purpose or perhaps when there wasn't a good way to check if a workflow was started by a coordinator?

I think we can fix this by simply checking if the parent of {{wfJob}} is a coordinator.


---

* [OOZIE-1447](https://issues.apache.org/jira/browse/OOZIE-1447) | *Major* | **Sqoop actions that don't launch a map reduce job fail with an IllegalArgumentException**

The Sqoop action currently assumes that it will always launch an MR job, so if it doesn't (which happens when {{eval}} is used), then even if the actual action succeeds, Oozie will run into an {{IllegalArgumentException}} trying to parse an empty string as a Hadoop job id.  The error is mentioned in the Oozie log, but there is no stack trace.  

You get this confusing output when querying for the action:
{noformat}

oozie job -info 0000002-130710121740870-oozie-oozi-W@eval
ID : 0000002-130710121740870-oozie-oozi-W@eval
------------------------------------------------------------------------------------------------------------------------------------
Console URL       : http://localhost:50030/jobdetails.jsp?jobid=job\_201306132134\_0027
Error Code        : IllegalArgumentException
Error Message     : IllegalArgumentException: JobId string :  is not properly formed
External ID       : job\_201306132134\_0027
External Status   : SUCCEEDED
Name              : eval
Retries           : 0
Tracker URI       : localhost:8021
Type              : sqoop
Started           : 2013-07-10 19:29 GMT
Status            : ERROR
Ended             : -
------------------------------------------------------------------------------------------------------------------------------------
{noformat}


---

* [OOZIE-1443](https://issues.apache.org/jira/browse/OOZIE-1443) | *Minor* | **forkjoin validation should not allow a fork to go to the same node multiple times**

The forkjoin validation code should not allow a fork to go to the same node multiple times.  For example, this should not be allowed:

Start -> ForkNode
ForkNode -> (MR-1, MR-2, MR-2)
MR-1 -> JoinNode
MR-2 -> JoinNode
JoinNode -> End

We don't normally allow the same node to be executed multiple times because it will have one entry in the DB and the state will get overwritten and cause problems.  In this case, the workflow gets stuck RUNNING.  

This should be a fairly trivial update to the forkjoin validation code.


---

* [OOZIE-1440](https://issues.apache.org/jira/browse/OOZIE-1440) | *Major* | **Build fails in certain environments due to xerces OpenJPA issue**

We've been seeing some build failures on some machines due to an issue with OpenJPA (specifically, the changes made in OOZIE-1377).  

We see these two cryptic errors in the output from the build:
{{[INFO] --- openjpa-maven-plugin:2.2.2:enhance (enhancer) @ oozie-core ---}}
{{An error occurred while attempting to determine the version of "file:/var/lib/jenkins/workspace/build/oozie/4.1.0-SNAPSHOT/source/core/target/classes/META-INF/persistence.xml".}}

{{[ERROR] Failed to execute goal org.apache.openjpa:openjpa-maven-plugin:2.2.2:enhance (enhancer) on project oozie-core: Execution enhancer of goal org.apache.openjpa:openjpa-maven-plugin:2.2.2:enhance failed: org.apache.openjpa.persistence.PersistenceProductDerivation:java.lang.ClassCastException: org.apache.xerces.parsers.XIncludeAwareParserConfiguration cannot be cast to org.apache.xerces.xni.parser.XMLParserConfiguration -> [Help 1]}}

I saw that RAVE-245 had a similar error and their solution was to add Xerces as a dependency on the OpenJPA plugin.  This prevents a classpath env issue from sometimes choosing the built-in buggy version of Xerces that Java is using by default (see OOZIE-1017), and instead to use the better version that we've been using elsewhere.


---

* [OOZIE-1403](https://issues.apache.org/jira/browse/OOZIE-1403) | *Major* | **forkjoin validation blocks some valid cases involving decision nodes**

As described [here|https://issues.apache.org/jira/browse/OOZIE-1035?focusedCommentId=13676534&page=com.atlassian.jira.plugin.system.issuetabpanels:comment-tabpanel#comment-13676534] in OOZIE-1035, the new forkjoin checker code is blocking some valid cases involving decision nodes where the decision nodes are inside the forkjoin; when they are outside, its not a problem.

1) This uses a decision node to "insert" an action based on {{foo}}:
{noformat}
<fork>
   <goto decision>
   <goto join>
</fork>
<decision>
   <if foo, goto A>
   <else, goto B>
</decision>
<action A>
   <ok to="B">
</action A>
<action B>
   <ok to="join">
</action B>
<join>
{noformat}

2) This uses a decision node to "replace" an action based on {{foo}}:
{noformat}
<fork>
   <goto decision>
   <goto join>
</fork>
<decision>
   <if foo, goto A>
   <else, goto B>
</decision>
<action A>
   <ok to="join">
</action A>
<action B>
   <ok to="join">
</action B>
<join>
{noformat}


---

* [OOZIE-1388](https://issues.apache.org/jira/browse/OOZIE-1388) | *Major* | **Add a admin servlet to show thread stack trace and CPU usage per thread**

ThreadMXBean can be used to display the stack trace and also CPU usage per thread. The servlet will be very useful for debugging.


---

* [OOZIE-1372](https://issues.apache.org/jira/browse/OOZIE-1372) | *Major* | **When using uber mode, Oozie should also make the AM container size larger**

OOZIE-1335 made Oozie use uber mode for the launcher job by default.  We should also increase the AM container size in case the launcher job needs more memory (e.g. a Pig job).  

from [~rohini]
{quote}
yarn.app.mapreduce.am.resource.mb and yarn.app.mapreduce.am.command-opts. yarn.app.mapreduce.am.resource.mb is easy and you can just set and overwrite. You will have to do some string manipulation with yarn.app.mapreduce.am.command-opts or append hoping the last values will take effect. Not sure if there are jvm's (IBM or openjdk) which will take the first value.
{quote}


---

* [OOZIE-1319](https://issues.apache.org/jira/browse/OOZIE-1319) | *Major* | **"LAST\_ONLY" in execution control for coordinator job still runs all the actions**

In execute() of CoordJobGetReadyActionsJPAExecutor.java, once we retrieve the top item from a "LIFO" query result, we do not discard or delete the remaining items from the result list. As a result, the next time execute() is invoked, we will be retrieving the next item in line. Consequently, LAST\_ONLY strategy will also execute all ready actions for a given coordinator job, making it no different than LIFO.


---

* [OOZIE-1314](https://issues.apache.org/jira/browse/OOZIE-1314) | *Major* | **IllegalArgumentException: wfId cannot be empty**

Caused by: java.lang.IllegalArgumentException: wfId cannot be empty
        at org.apache.oozie.util.ParamChecker.notEmpty(ParamChecker.java:71)
        at org.apache.oozie.command.wf.KillXCommand.<init>(KillXCommand.java:65)
        at org.apache.oozie.command.coord.CoordKillXCommand.killChildren(CoordKillXCommand.java:122)
        at org.apache.oozie.command.KillTransitionXCommand.execute(KillTransitionXCommand.java:52)
        at org.apache.oozie.command.KillTransitionXCommand.execute(KillTransitionXCommand.java:25)
        at org.apache.oozie.command.XCommand.call(XCommand.java:277)

external id is set to "" in CoordRerunXCommand.updateAction()


---

* [OOZIE-1306](https://issues.apache.org/jira/browse/OOZIE-1306) | *Major* | **add flexibility to oozie coordinator job scheduling**

Right now, to have a job that runs everyday from 9-5pm, we need to schedule 8 identical daily coordinator job, each of which starts at one particular hour; To have a job that runs from Monday through Friday, we need 5 identical weekly jobs with different start time. This ticket aims to solve this inconvenience.


---

* [OOZIE-1298](https://issues.apache.org/jira/browse/OOZIE-1298) | *Major* | **TestPartitionDependencyManagerEhcache.testEvictionOnTimeToIdle is flakey**

This test looks flakey; I've seen it fail on a number of test-patch builds.  

e.g.
https://builds.apache.org/job/oozie-trunk-precommit-build/410/testReport/junit/org.apache.oozie.service/TestPartitionDependencyManagerEhcache/testEvictionOnTimeToIdle/
{noformat}
junit.framework.AssertionFailedError: Expected: <null> but was: [0]
	at junit.framework.Assert.fail(Assert.java:50)
	at junit.framework.Assert.assertTrue(Assert.java:20)
	at junit.framework.Assert.assertNull(Assert.java:237)
	at junit.framework.Assert.assertNull(Assert.java:230)
	at org.apache.oozie.service.TestPartitionDependencyManagerEhcache.testEvictionOnTimeToIdle(TestPartitionDependencyManagerEhcache.java:82)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:39)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25)
	at java.lang.reflect.Method.invoke(Method.java:597)
	at junit.framework.TestCase.runTest(TestCase.java:168)
	at junit.framework.TestCase.runBare(TestCase.java:134)
	at junit.framework.TestResult$1.protect(TestResult.java:110)
	at junit.framework.TestResult.runProtected(TestResult.java:128)
	at junit.framework.TestResult.run(TestResult.java:113)
	at junit.framework.TestCase.run(TestCase.java:124)
	at junit.framework.TestSuite.runTest(TestSuite.java:243)
	at junit.framework.TestSuite.run(TestSuite.java:238)
	at org.junit.internal.runners.JUnit38ClassRunner.run(JUnit38ClassRunner.java:83)
	at org.apache.maven.surefire.junitcore.ClassDemarcatingRunner.run(ClassDemarcatingRunner.java:58)
	at org.junit.runners.Suite.runChild(Suite.java:128)
	at org.junit.runners.Suite.runChild(Suite.java:24)
	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)
	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:441)
	at java.util.concurrent.FutureTask$Sync.innerRun(FutureTask.java:303)
	at java.util.concurrent.FutureTask.run(FutureTask.java:138)
	at java.util.concurrent.ThreadPoolExecutor$Worker.runTask(ThreadPoolExecutor.java:886)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:908)
	at java.lang.Thread.run(Thread.java:662)
{noformat}


---

* [OOZIE-1243](https://issues.apache.org/jira/browse/OOZIE-1243) | *Blocker* | **libtools dir should not include hadoop JARs**

All the setup tools should consume the hadoop JARs from the libext/ directory, having them in the libtools/ dir make things fail when using different hadoop versions other than the one used to compile Oozie.


---

* [OOZIE-1228](https://issues.apache.org/jira/browse/OOZIE-1228) | *Major* | **Support for sqoop in Oozie CLI**

We should add an {{oozie sqoop}} option to the CLI like we have for pig and now hive


---

* [OOZIE-1223](https://issues.apache.org/jira/browse/OOZIE-1223) | *Major* | **too many extjs cookies can cause the web UI to stop responding**

From [this thread on the mailing list|http://mail-archives.apache.org/mod\_mbox/oozie-user/201302.mbox/%3c1360772595.5719.YahooMailNeo@web125605.mail.ne1.yahoo.com%3e], a user wrote this:
{quote}
I'm sure somebody else experience this problem as well and you may have a solution.
As you click around the Oozie Web Console to visualize coordinators, workflows, actions, etc, after a while the web console stops responding, i.e. it does not process your requests anymore.
It appears to be a glitch related to cookies. I don't know if there's any setting one could do related to that to avoid the problem.
Whenever the problem happen, if you clear cookies created by the oozie server the problem goes away.

This is annoying and I'm so tired of clearing cookies multiple times during the day as I use the web console a lot.

So, does anybody have a solution for this?
{quote}

I believe this has to do with extjs creating too many cookies:
{quote}
I've noticed that we get a bunch of cookies named "ys-ext-comp-####" where #### is some number.  I think these are storing the width, height, etc of the "windows" that the web UI uses.  I'm not sure what causes new cookies to be written, but if its saving one cookie for each window that you open and you open a lot of windows, you could easily get too many cookies for the browser/server to handle.  These cookies might also explain why sometimes when you open a window, the UI components are stretched (e.g. a text box that's normally a single line is showing up as 20 lines).  I think this page is talking about these problems with the cookies: http://www.jasonclawson.com/2008/05/20/ext-21-state-managment-issues-dont-use-it/

I don't think we really need to remember the sizes of the windows, so it would be best if we found a way to simply disable those cookies.  
{quote}

tldr; we should stop extjs from creating cookies for storing the position/state of the windows or other UI components.


---

* [OOZIE-944](https://issues.apache.org/jira/browse/OOZIE-944) | *Minor* | **Implement Workflow Generator UI Tool**

this JIRA is to implement workflow generator UI tool using GWT based on investigation in OOZIE-884


---

* [OOZIE-943](https://issues.apache.org/jira/browse/OOZIE-943) | *Minor* | **parentId is null when fetching oozie jobs information using REST API**

As reported elsewhere:
================================================================================
When using Oozie WS api listed in <http://yahoo.github.com/oozie/releases/3.1.0/WebServicesAPI.html> for fetching the jobs information, saw that even though there are some workflows launched by the coordinator instance, their parentId is listed as null. But the same if i try specifying some particular workflow id, when i get the job info, it lists the parentId correctly.
================================================================================


---

* [OOZIE-615](https://issues.apache.org/jira/browse/OOZIE-615) | *Major* | **Support high availability for the Oozie service**

As Oozie becomes a critical component in the Hadoop ecosystem users needs assured availability of the services provided by Oozie.  To support this need Oozie should include a new feature to support high availability.  This feature needs to take into consideration that Oozie provides RESTful APIs, Java APIs, and a command line API that should all be insensitive to the availability of any specific server or components.  At Yahoo! it is not required that there be session fail-over from the client.  It is acceptable for the client to reconnect if a session is lost as long as the state data managed by the Oozie service is not lost.



