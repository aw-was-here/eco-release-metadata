
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
#  4.0.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [OOZIE-1960](https://issues.apache.org/jira/browse/OOZIE-1960) | *Major* | **Cannot create a Hive table in ORC format using the Hive action of Oozie**

CREATE TABLE schema1.test (col1 BIGINT,col2 BIGINT )
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|'
STORED AS ORC;


Above query works fine when submitted through Hive command prompt.But fails with the following error when submitted through Hive action of Oozie

ARN: Error getting Hadoop Job IDs executed by Hive
  java.lang.NullPointerException
  at java.io.File.<init>(File.java:277)
  at org.apache.oozie.action.hadoop.HiveMain.writeExternalChildIDs(HiveMain.java:287)
  at org.apache.oozie.action.hadoop.HiveMain.run(HiveMain.java:265)
  at org.apache.oozie.action.hadoop.LauncherMain.run(LauncherMain.java:38)
  at org.apache.oozie.action.hadoop.HiveMain.main(HiveMain.java:64)
  at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
  at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
  at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
  at java.lang.reflect.Method.invoke(Method.java:606)
  at org.apache.oozie.action.hadoop.LauncherMapper.map(LauncherMapper.java:226)
  at org.apache.hadoop.mapred.MapRunner.run(MapRunner.java:50)
  at org.apache.hadoop.mapred.MapTask.runOldMapper(MapTask.java:417)
  at org.apache.hadoop.mapred.MapTask.run(MapTask.java:332)
  at org.apache.hadoop.mapred.Child$4.run(Child.java:268)
  at java.security.AccessController.doPrivileged(Native Method)
  at javax.security.auth.Subject.doAs(Subject.java:415)
  at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1548)
  at org.apache.hadoop.mapred.Child.main(Child.java:262)
  Intercepting System.exit(-101)
  
  <<< Invocation of Main class completed <<<
  
  Failing Oozie Launcher, Main class [org.apache.oozie.action.hadoop.HiveMain], exit code [-101]


---

* [OOZIE-1514](https://issues.apache.org/jira/browse/OOZIE-1514) | *Blocker* | **Rerunning a coordinator with no input dependencies puts actions in WAITING instead of READY and proceeding**

Following issue reported by Bowen:
 
{quote}
rerun oozie coordinator action that has no data dependency will make the action stuck in "WAITING" forever.
The issue has to do with the change introduced in coordActionInputCheckXCommand. The rerun action will fail this if statement:
if (!nonExistListStr.equals(missingDeps))
since nonExistListStr and missingDeps are both empty strings. Once it fails the if statement, isChangeDependency is still
set to false and the status change to "READY" will not be persisted since we will call CoordActionUpdateForModifiedTimeJPAExecutor instead of CoordActionUpdateForInputCheckJPAExecutor in the updateCoordAction method.
the Action is in "WAITING" stage forever.
{quote}


---

* [OOZIE-1510](https://issues.apache.org/jira/browse/OOZIE-1510) | *Blocker* | **Fix branch-4.0 compilation**

OOZIE-1507 committed to branch-4.0 is creating compile error at a couple of places.


---

* [OOZIE-1507](https://issues.apache.org/jira/browse/OOZIE-1507) | *Major* | **Command queue filling up with duplicate commands from RecoveryService**

  For some reason one of the commands does not release the lock, which we have not been able to figure out why. Duplicate commands from RecoveryService fill up the queue and bring the server down to a halt. Couple of commands have been fixed in OOZIE-1473 and OOZIE-1433. But there are more.


---

* [OOZIE-1502](https://issues.apache.org/jira/browse/OOZIE-1502) | *Major* | **Coordinator Job not going to Failed if a bad HCat-uri is specified**

Coordinator job remains in PREP and doesn't fail when an invalid HCat-uri is specified. In CoordMaterializeTransitionXCommand, exception is thrown but status not changed to failed. The other type of command - CoordActionMaterializeCommand only invoked during coordinator submission Dry-run, and exception will cause it to fail - as expected.


---

* [OOZIE-1501](https://issues.apache.org/jira/browse/OOZIE-1501) | *Major* | **Mapreduce action counters are picked up from launcher job instead of mapreduce job**

Broken with OOZIE-1231 where we moved the mapreduce job id from externalId to childjobids


---

* [OOZIE-1482](https://issues.apache.org/jira/browse/OOZIE-1482) | *Major* | **4.0 client does not work with 3.x server for coord jobs**

java.lang.ClassCastException: java.lang.Long cannot be cast to java.lang.String
	at com.sun.proxy.$Proxy0.getFrequency(Unknown Source)
	at org.apache.oozie.cli.OozieCLI.printCoordJobs(OozieCLI.java:1266)
	at org.apache.oozie.cli.OozieCLI.jobsCommand(OozieCLI.java:1220)
	at org.apache.oozie.cli.OozieCLI.processCommand(OozieCLI.java:517)

OOZIE-1408 changed type of frequency to String from int.


---

* [OOZIE-1481](https://issues.apache.org/jira/browse/OOZIE-1481) | *Major* | **Getting a coordinator job info with len=0 should return 0 actions**

If you fetch a URL such as:
{noformat}
http://localhost:11000/oozie/v1/job/0000002-130731172618471-oozie-oozi-C?len=1
{noformat}
you'll get the job info for the coordinator job, and 1 of its actions.

If you only want to get the info for the coordinator job itself and don't care about the actions, it seems logical that {{len=0}} should do this; however, it seems to be ignored and gives you all actions instead.  
{noformat}
http://localhost:11000/oozie/v1/job/0000002-130731172618471-oozie-oozi-C?len=0
{noformat}
should return 0 actions.


---

* [OOZIE-1473](https://issues.apache.org/jira/browse/OOZIE-1473) | *Major* | **getKey() not overridden in some commands causing duplicates in queue**

Override in 
	CoordActionCheckXCommand.java
	CoordActionReadyXCommand.java
	CoordActionTimeOutXCommand.java
	ActionEndXCommand.java
	SignalXCommand.java


---

* [OOZIE-1470](https://issues.apache.org/jira/browse/OOZIE-1470) | *Major* | **BundleStatusUpdateXCommand should get lock for bundle job**

BundleStatusUpdateX and BundleKill seen executing together and overwriting the status of each other causing the bundle to never get killed. BundleStatusUpdateX should get lock for bundle job instead of bundle action.


---

* [OOZIE-1469](https://issues.apache.org/jira/browse/OOZIE-1469) | *Major* | **loadState() and/or verifyPrecondition() are blank in some commands**

This may cause the job loaded in memory to have different state that than in db.


---

* [OOZIE-1467](https://issues.apache.org/jira/browse/OOZIE-1467) | *Major* | **Bundle not killed if coordinator fails due to db exception**

If coordinator submitted through bundle fails insertion in db, then bundle doesn't kill it. Also, it cannot be killed through bundle kill command.
This jira will also enhance the unit test case for OOZIE-1439.


---

* [OOZIE-1466](https://issues.apache.org/jira/browse/OOZIE-1466) | *Major* | **current EL should not check for less than or equal to zero**

  In branch-4 introduced a check for current start-instance and end-instance to be less than zero in OOZIE-1207 which is wrong. It can be greater than zero. <instance> works fine.


---

* [OOZIE-1465](https://issues.apache.org/jira/browse/OOZIE-1465) | *Major* | **Making constants in CoordELFunctions public for el extensions**

Its useful to have CoordELFunctions.DATASET and CoordELFunctions.COORD\_ACTION public so that they can be used in EL extensions


---

* [OOZIE-1444](https://issues.apache.org/jira/browse/OOZIE-1444) | *Major* | **Job DAG causes OOM. Remove refresh option**

 Job DAG tab in the UI shows the workflow in a graphical representation. The way it is implemented it constructs image objects on the server side and serves it which is a bad idea. Has to be reimplemented using client side java script. In the meanwhile, removing the refresh option should mitigate the problem as users clicking on refresh when a big DAG does not show immediately causes OOM quickly.


---

* [OOZIE-1441](https://issues.apache.org/jira/browse/OOZIE-1441) | *Major* | **Fix bugs related to coordchange and parentId in events**

CoordChangeX currently deleting the reg. bean corresponding to the coordinator job
Also two bugs related to parentId:
1) No parentId in sla event for wf job
2) No parentId when coordinator is killed in WAITING state


---

* [OOZIE-1439](https://issues.apache.org/jira/browse/OOZIE-1439) | *Major* | **Job materialization happening even after coordinator is supposed to be killed.**

In some cases where executon of StatusTransitService and CoordKill are happening at same time, it may happen that the StatusTransitService overwrites the KILLED state of job to RUNNING 
This can be fixed by setting the doneMaterialization to true in CoordKillX
and failing the materializtion if the job's doneMaterialization to true. Also, eventually the StatusTransitService will convert the status back to KILLED


---

* [OOZIE-1438](https://issues.apache.org/jira/browse/OOZIE-1438) | *Major* | **parentID is null in job event message of subworkflow action**

this fix is required for subworkflow action where currently parentID overwritten to null


---

* [OOZIE-1436](https://issues.apache.org/jira/browse/OOZIE-1436) | *Major* | **Revert SLA\_XML and few other varchar columns back to clob**

OOZIE-1398 converts few columns from clobs to varchar(4000). But there seems to be problem where (@lenght=4000) annotation is not working and trying to insert more than 1000 chars throws ORA-24816 with Oracle. Though it seems a oracle problem from the error code, it is actually not as trying to do a direct insert with more than 1000 chars in Oracle works. Also openjpa does map to varchar2(4000) when creating schema. But somehow openjpa only accepts upto 1000 chars and nothing more when trying to insert.
Have posted on openjpa user list with no reply yet. Thread at http://openjpa.208410.n2.nabble.com/ORA-24816-column-ordering-during-inserts-td7584233.html
This jira will revert sla\_xml and data varchar columns back to clob


---

* [OOZIE-1435](https://issues.apache.org/jira/browse/OOZIE-1435) | *Major* | **StatusTransitService unnecessarily updates the lastModifiedTime of jobs which causes MaterializationService to bring same jobs in memory**

CoordMaterializationTriggerService
brings 50 actions for materializing every 5 mins based on last modified
time. It updates the last modified time every time for each of this action so
new jobs can get a chance in the next interval. However, StatusTransitService
unnecessarily keeps updating the last modified time which breaks the logic of
materialization service as it may keep on bringing the same actions for
materialization every scheduled interval.


---

* [OOZIE-1433](https://issues.apache.org/jira/browse/OOZIE-1433) | *Major* | **ActionCheckX should override XCommand.getKey() to prevent duplicates**

ActionCheckX doesn't override XCommand.getKey(). Hence when ActionCheckerService runs, ActionCheckX command for the same job is seen to be duplicated in the queue.


---

* [OOZIE-1427](https://issues.apache.org/jira/browse/OOZIE-1427) | *Minor* | **Update CredentialsModule docs to mention Hive**

Update the CredentialsModule docs to make it clear that the HCatCredentails can be used with Hive Metastore as well.


---

* [OOZIE-1424](https://issues.apache.org/jira/browse/OOZIE-1424) | *Major* | **Improve SLA reliability on restart, fix bugs related to SLA and event generation**

When Oozie restarts, the status and actual times of job in Summary beans should be the same as that in the Job beans. Also, the event processing info. should be correctly reflected.

Bugs:

Start time for Coordinator action event should be wf job start time
Duration event processing is not correct when expected duration is not set or job finishes before starting
No parent id in workflow job running event when spawned through coord
Event queue pollbatch() should use List instead of Set to preserve ordering


---

* [OOZIE-1423](https://issues.apache.org/jira/browse/OOZIE-1423) | *Major* | **Coordinator job change command not removing SLA Registration bean**

Coord pause/unpause is leading to duplicate record error for SLA registration entries for the coord actions.
Also, insertion into Wf\_Action table with old schema is failing.


---

* [OOZIE-1421](https://issues.apache.org/jira/browse/OOZIE-1421) | *Major* | **UI for SLA**

A table with all the sla information, a graph showing expected and actual start and end times and a summarizing table


---

* [OOZIE-1420](https://issues.apache.org/jira/browse/OOZIE-1420) | *Critical* | **OOZIE-1365 breaks the action popup in the Web UI**

OOZIE-1365 tries to fix an issue with the action popup in the Web UI, but the condition in the if statement is wrong.  See [this comment|https://issues.apache.org/jira/browse/OOZIE-1365?focusedCommentId=13684700&page=com.atlassian.jira.plugin.system.issuetabpanels:comment-tabpanel#comment-13684700]


---

* [OOZIE-1418](https://issues.apache.org/jira/browse/OOZIE-1418) | *Major* | **Fix bugs around ActionKillX not setting end time, V2SLAServlet and exception handling for event threads**

Bug fixes for the following: 
1. When a workflow action is killed via ActionKillXCommand, the end time of the action is not set. You can see it even now for KILLED actions on the web-console. This is leading to NPE in Sla calculation
2. V2SLAServlet constructor had wrong argument - failing AuthFilter init() 
3. Handle case on Coordinator rerun, where sla job is rerun with a different conf without sla, thus having no SLA registration record to update
4. Exception handling for worker threads spawned from EventHandlerService and SLAService, to avoid thread from dying and quitting processing any events in its queue.


---

* [OOZIE-1414](https://issues.apache.org/jira/browse/OOZIE-1414) | *Blocker* | **Configuring Oozie for HTTPS still allows HTTP connections to all resources**

When you run {{oozie-setup.sh prepare-war -secure}} it is supposed to replace server.xml with ssl-server.xml (in the oozie-server/conf/ dir) and web.xml with ssl-web.xml (in the WAR file).

OOZIE-670 changed oozie-setup.sh to prepare the war file without calling addtowar.sh.  However, the code added by OOZIE-1233 and OOZIE-1268 still delegates replacing web.xml with ssl-web.xml to addtowar.sh, which oozie-setup.sh no longer calls.

Therefore, when you try to configure Oozie for HTTPS, it will use the original web.xml file; which means that {color:red}all resources are accessible from both HTTPS and *HTTP*.{color}

This isn't an issue in Oozie 3.3.2 because it didn't include OOZIE-670, so addtowar.sh was still called.


---

* [OOZIE-1412](https://issues.apache.org/jira/browse/OOZIE-1412) | *Major* | **Webapp contains all sharedlib dependencies after launcher refactor**

  With the launcher refactor, the webapp now includes sharelib as dependency. Exclusions need to be there to prevent pig, hive and sqoop jars being packaged as part of webapp


---

* [OOZIE-1410](https://issues.apache.org/jira/browse/OOZIE-1410) | *Major* | **V2 servlets are missing from ssl-web.xml**

The V2 servlets added to web.xml are missing from ssl-web.xml; which means they won't be available when https is enabled.


---

* [OOZIE-1408](https://issues.apache.org/jira/browse/OOZIE-1408) | *Critical* | **Change column type of "frequency" from int to varchar for coordinators**

To eventually add cron-like scheduling, we should change the type of the "frequency" column for coordinators from int to varchar, so that we'll be able to store the [cron expression|https://en.wikipedia.org/wiki/Cron#Format] in that column.


---

* [OOZIE-1405](https://issues.apache.org/jira/browse/OOZIE-1405) | *Major* | **Fix flakey SLA tests**

The SLA tests keep failing randomly because they rely on Thread.sleep. Would be better to execute all test case scenarios and then assert everything in order from eventQueue to avoid flakey failures.

Similar for time-sensitive TestEventGeneration tests e.g. - org.apache.oozie.event.TestEventGeneration.testCoordinatorActionEvent


---

* [OOZIE-1404](https://issues.apache.org/jira/browse/OOZIE-1404) | *Major* | **Handle reruns for SLA notifications**

Workflow rerun would need to change the registration bean to reflect the new wf configuration values. Coordinator rerun would only require bringing the event object into memory as the conf is not recreated for coord rerun.
In both cases, the summary bean actual times and sla processing information needs to be reset.


---

* [OOZIE-1400](https://issues.apache.org/jira/browse/OOZIE-1400) | *Major* | **REST API to fetch SLA**

Need a REST API to fetch SLA information for the SLA Dashboard


---

* [OOZIE-1398](https://issues.apache.org/jira/browse/OOZIE-1398) | *Major* | **[Scale] Reduce the number of CLOB columns used**

  When the number of concurrent submissions on Oozie increased to 100-200 per minute, it was not able to scale and we hit Oracle issues as there were lot of CLOB columns and DB became a bottle neck.


---

* [OOZIE-1397](https://issues.apache.org/jira/browse/OOZIE-1397) | *Major* | **failure in running test cases**

when running all test cases, it hit either "too many open files" or getting stuck, which also fail precommit build currently.


---

* [OOZIE-1395](https://issues.apache.org/jira/browse/OOZIE-1395) | *Major* | **Using Yarn's CapacityScheduler causes some tests to time out**

When using Yarn's CapacityScheduler, we've seen some tests time out (usually TestPigActionExecutor, but sometimes some other actions as well).  

The problem is that the AM doing the launcher AM is taking up enough resources that any launched job gets queued by YARN (to be run when the launcher finishes).  Because the launcher job is waiting until the launched job(s) finish, we get a deadlock and the test eventually times out.  

We can fix this by increasing {{yarn.scheduler.capacity.maximum-am-resource-percent}} from the default of 0.1 to say 0.5 to allow more resources to be used by the AMs.


---

* [OOZIE-1394](https://issues.apache.org/jira/browse/OOZIE-1394) | *Minor* | **Fix Bugs in Job and SLA Events**

This JIRA fixes following bugs related to Job and SLA Events:

(1) no parent id in WORKFLOW\_JOB STARTED event. the workflow is started by
coord action.
the message text:
{"status":"RUNNING","id":"0000134-130528180458682-oozie-oozi-W","startTime":1369860763055}

(2) no COORDINATOR\_ACTION STARTED event, after resume of suspended action.

(3) no nominal time in suspended COORDINATOR\_ACTION event.
the message text:
{"status":"SUSPENDED","id":"0000135-130528180458682-oozie-oozi-C@1","parentId":"0000135-130528180458682-oozie-oozi-C"} 

(4) There is no msg=JOB START event.
Job start time = Thu, 30 May 2013 20:19:39 GMT
$ zgrep msgType=JOB
/home/y/libexec/yjava\_tomcat/logs/qe/oozie.log-2013-05-30-20.gz  | grep 000001
This shows SUCCESS event only.

(5) submit the same job again, 0000003-130530200622405-oozie-oozi-W.
there is no event at all.
$ zgrep msgType=SLA
/home/y/libexec/yjava\_tomcat/logs/qe/oozie.log-2013-05-30-22.gz
$ zgrep msgType=JOB
/home/y/libexec/yjava\_tomcat/logs/qe/oozie.log-2013-05-30-22.gz

(6) submit another job, 0000004-130530200622405-oozie-oozi-W.
then sla/job messages of previous jobs show up:
$ zgrep msgType=SLA
/home/y/libexec/yjava\_tomcat/logs/qe/oozie.log-2013-05-30-23.gz
$ zgrep msgType=JOB
/home/y/libexec/yjava\_tomcat/logs/qe/oozie.log-2013-05-30-23.gz

(7) when actual start is very close to expected start, it might happen that job event is processed and received much later causing END\_MISS when it could be END\_MET


---

* [OOZIE-1387](https://issues.apache.org/jira/browse/OOZIE-1387) | *Major* | **Proxysubmission from the Oozie client doesn't allow the mapreduce API**

The OozieClient looks for {{mapred.mapper.class}} and {{mapred.reducer.class}} so they have to be specified. If a user wants to use a mapper/reducer that inherits from mapreduce.Mapper/Reducer (i.e. mapreduce API), Oozie will force them to use mapred.mapper/reducer.class to specify their mapper/reducer, which will make Hadoop throw an exception during the job.

We should update the checking to allow either {{mapred.mapper/reducer.class}} or {{mapreduce.mapper/reducer.class}} as long as one or the other is specified.

This isn't a problem for a regular MR action or the REST API because its purely an Oozie client check (OozieCLI#mrCommand).


---

* [OOZIE-1386](https://issues.apache.org/jira/browse/OOZIE-1386) | *Major* | **NPE in XOozieClient if fs.default.name is not defined but fs.defaultFS is**

I submit a mapreduce job using Oozie:

{noformat}
$ oozie mapreduce -config job.properties
java.lang.NullPointerException
	at org.apache.oozie.client.XOozieClient.validateHttpSubmitConf(XOozieClient.java:136)
	at org.apache.oozie.client.XOozieClient.submitMapReduce(XOozieClient.java:236)
	at org.apache.oozie.cli.OozieCLI.mrCommand(OozieCLI.java:1649)
	at org.apache.oozie.cli.OozieCLI.processCommand(OozieCLI.java:537)
	at org.apache.oozie.cli.OozieCLI.run(OozieCLI.java:483)
	at org.apache.oozie.cli.OozieCLI.main(OozieCLI.java:180)
{noformat}

In job.properties, I have fs.defaultFS defined instead of fs.default.name.


---

* [OOZIE-1384](https://issues.apache.org/jira/browse/OOZIE-1384) | *Major* | **Make Uber Mode not the default**

Uber Mode for the launcher job has some issues.  Until we sort them all out, we should disable it by default.


---

* [OOZIE-1381](https://issues.apache.org/jira/browse/OOZIE-1381) | *Major* | **Oozie does not support access to the distributed cache file under different name node**

suppose app path on name node NN1, and user wants to dist-cache file located on different name node, NN2. when user specify something like "<file>hdfs://nn2\_address:8020/target\_file</file>", it doesn't work due to 
current JavaActionExecutor.addToCache logic, which extracts file path and prepends NN1.


---

* [OOZIE-1377](https://issues.apache.org/jira/browse/OOZIE-1377) | *Major* | **OpenJPA runtime enhancement should be disabled and update OpenJPA to 2.2.2**

The persistence.xml has runtime enhancement enabled.

We are running into OOM (due to a leak in OpenJPA) under certain usage patterns.

While we are enhancing the classes at build time, the problem still persists.

After checking with the openjpa folks (http://mail-archives.apache.org/mod\_mbox/openjpa-users/201305.mbox/%3CCABH8ernmKrQMf\_2JMdOdnd6Xh7%3DDRFwSf6s4NL8tuE0ZHfZunA%40mail.gmail.com%3E) we disabled the runtime enhancement and the OOM issue went away.


---

* [OOZIE-1375](https://issues.apache.org/jira/browse/OOZIE-1375) | *Major* | **Generate Job notification events for Workflow Actions**

OOZIE-1209 introduced Events system in Oozie. Currently those job notification events are generated only for Wf Jobs and Coord Actions. This JIRA extends functionality of generating status events to Workflow Actions too.


---

* [OOZIE-1373](https://issues.apache.org/jira/browse/OOZIE-1373) | *Major* | **Oozie compilation fails with jdk7**

[ERROR] Failed to execute goal org.apache.maven.plugins:maven-compiler-plugin:2.3.2:testCompile (default-testCompile) on project oozie-tools: Compilation failure: Compilation failure:
[ERROR] /projects/apache/trunk/oozie/tools/src/test/java/org/apache/oozie/tools/FakeDriver.java:[27,7] error: FakeDriver is not abstract and does not override abstract method getParentLogger() in Driver
[ERROR] /projects/apache/trunk/oozie/tools/src/test/java/org/apache/oozie/tools/FakeConnection.java:[53,7] error: FakeConnection is not abstract and does not override abstract method getNetworkTimeout() in Connection
[ERROR] /projects/apache/trunk/oozie/tools/src/test/java/org/apache/oozie/tools/FakeConnection.java:[330,19] error: FakeResultSet is not abstract and does not override abstract method <T>getObject(String,Class<T>) in ResultSet


---

* [OOZIE-1371](https://issues.apache.org/jira/browse/OOZIE-1371) | *Major* | **oozie.coord.action.notification.url has no documentation**

We have documentation for {{oozie.wf.workflow.notification.url}} and {{oozie.wf.action.notification.url}} [here|http://oozie.apache.org/docs/3.3.2/WorkflowFunctionalSpec.html#a5\_Oozie\_Notifications] but there's no corresponding documentation for the similar {{oozie.coord.action.notification.url}} on the CoordinatorFunctionSpec page.


---

* [OOZIE-1370](https://issues.apache.org/jira/browse/OOZIE-1370) | *Blocker* | **oozie create db script throws classNotFound exception**

After "OOZIE-1329 fix coverage org.apache.oozie.tools", oozie-setup.sh db create -run or ooziedb.sh create -run throws ClassNotFound exception as follows:
java.lang.Exception: Could not connect to the database: java.lang.ClassNotFoundException: org.apache.derby.jdbc.EmbeddedDriver
	at org.apache.oozie.tools.OozieDBCLI.validateConnection(OozieDBCLI.java:548)
	at org.apache.oozie.tools.OozieDBCLI.createDB(OozieDBCLI.java:171)
	at org.apache.oozie.tools.OozieDBCLI.run(OozieDBCLI.java:115)
	at org.apache.oozie.tools.OozieDBCLI.main(OozieDBCLI.java:66)
Caused by: java.lang.ClassNotFoundException: org.apache.derby.jdbc.EmbeddedDriver
	at java.net.URLClassLoader$1.run(URLClassLoader.java:202)
	at java.security.AccessController.doPrivileged(Native Method)
	at java.net.URLClassLoader.findClass(URLClassLoader.java:190)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:306)
	at sun.misc.Launcher$AppClassLoader.loadClass(Launcher.java:301)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:247)
	at java.lang.Class.forName0(Native Method)
	at java.lang.Class.forName(Class.java:169)
	at org.apache.oozie.tools.OozieDBCLI.createConnection(OozieDBCLI.java:537)
	at org.apache.oozie.tools.OozieDBCLI.validateConnection(OozieDBCLI.java:544)
	... 3 more


---

* [OOZIE-1368](https://issues.apache.org/jira/browse/OOZIE-1368) | *Major* | **Error message when using an incorrect oozie url with kerberos is misleading**

If you specify an incorrect oozie url (e.g. its quite common for users to type http://localhost:11000 instead of http://localhost:11000/oozie) on a secure cluster (kerberos) and oozie hasn't already cached the delegation token (in ~/.oozie-auth-token), the oozie client gives a nasty NPE error:

{noformat}
$ rm ~/.oozie-auth-token
$ kinit ...
$ oozie admin -status -oozie http://localhost:11000
java.lang.NullPointerException
	at java.io.Writer.write(Writer.java:140)
	at org.apache.oozie.client.AuthOozieClient.writeAuthToken(AuthOozieClient.java:182)
	at org.apache.oozie.client.AuthOozieClient.createConnection(AuthOozieClient.java:137)
	at org.apache.oozie.client.OozieClient.validateWSVersion(OozieClient.java:243)
	at org.apache.oozie.client.OozieClient.createURL(OozieClient.java:344)
	at org.apache.oozie.client.OozieClient.access$000(OozieClient.java:76)
	at org.apache.oozie.client.OozieClient$ClientCallable.call(OozieClient.java:410)
	at org.apache.oozie.client.OozieClient.getSystemMode(OozieClient.java:1299)
	at org.apache.oozie.cli.OozieCLI.adminCommand(OozieCLI.java:1323)
	at org.apache.oozie.cli.OozieCLI.processCommand(OozieCLI.java:499)
	at org.apache.oozie.cli.OozieCLI.run(OozieCLI.java:466)
	at org.apache.oozie.cli.OozieCLI.main(OozieCLI.java:176)
null
{noformat}

Once Oozie writes the auth token (because you used the correct url), if you then give an incorrect url, it will return a more appropriate 404 error:
{noformat}
$ sudo -u oozie oozie admin -status -oozie http://localhost:11000/oozie
$ ls ~/.oozie-auth-token 
/home/rkanter/.oozie-auth-token
$ sudo -u oozie oozie admin -status -oozie http://localhost:11000
Error: HTTP error code: 404 : Not Found
{noformat}


---

* [OOZIE-1365](https://issues.apache.org/jira/browse/OOZIE-1365) | *Major* | **The hive action popup in the web UI is broken when externalChildIDs is empty string**

When you click on a hive action in the web UI, it's supposed to bring up another popup with the details about the action.  Once the action finishes, if you try to click it nothing happens; Firefox's web console says: 
{noformat}
TypeError: this.items is undefined @ http://localhost:11000/oozie/ext-2.2/ext-all.js:136
{noformat}
It seems to occur when externalChildIDs in the JSON blob is an empty string.


---

* [OOZIE-1364](https://issues.apache.org/jira/browse/OOZIE-1364) | *Major* | **Fix duplicate events generated and fields missing in events**

The Worflow Job Events generated might have a few duplicates as observed in example runs. Also some fields in the event message might turn out empty because the XCommands did not populate the bean with them. This JIRA fixes such minor bugs


---

* [OOZIE-1361](https://issues.apache.org/jira/browse/OOZIE-1361) | *Minor* | **Remove SLACalculatorBean and add columns to SummaryBean indicating events processed and sla processed**

SLA calculator objects to have an additional field for last modified time. This will help filtering objects in LRU fashion when bootstrap loads records from db into calculator memory. This also involves reconciling SLA\_Calculator table into SLA\_Summary table itself, using additional columns for last modified and boolean for end-processed or not.


---

* [OOZIE-1360](https://issues.apache.org/jira/browse/OOZIE-1360) | *Major* | **Oozie CLI shows created time of workflow as started time**

CLI command "oozie job -info <workflowID>" shows created time as started time


---

* [OOZIE-1357](https://issues.apache.org/jira/browse/OOZIE-1357) | *Major* | **Can't view more than 1000 actions of a coordinator and paging does not work**

 Currently the coordinator popup lists 1000 actions of a coordinator. We have more customers reporting this issue now with cases where they have 5 min coordinator frequency.


---

* [OOZIE-1356](https://issues.apache.org/jira/browse/OOZIE-1356) | *Major* | **Bundle job in PAUSEWITHERROR state does not goto SUSPENDEDWITHERROR state on suspending it**

This bug is the same as oozie-1351


---

* [OOZIE-1353](https://issues.apache.org/jira/browse/OOZIE-1353) | *Major* | **hive CLI fails with -X argument**

Hive CLI -X command currently results in an xml schema error which means oozie is generating schema error. 

We should update the hive action to support the <argument> element (which is what -X maps to) like the pig action already does.  

It would also be useful to add an argument (-P) to allow users to specify parameters (variables in scripts); pig inconveniently currently allows this via a file in HDFS and hive currently has no way to do this.


---

* [OOZIE-1350](https://issues.apache.org/jira/browse/OOZIE-1350) | *Major* | **Improve client debug output information**

If you {{export OOZIE\_DEBUG=1}} in your env (which I'm not sure is documented anywhere), the oozie client will print out the connection URL it uses when making any request to the oozie server.  

This would be more useful if it could also print out the request type (i.e. GET, POST, PUT) and any additional content that isn't part of the URL string (e.g. when submitting a job using POST, there's a bunch of XML that's not part of the URL string).  

(This would have been really helpful for OOZIE-1183)


---

* [OOZIE-1349](https://issues.apache.org/jira/browse/OOZIE-1349) | *Major* | **oozieCLI -Doozie.auth.token.cache doesn't work**

under main method in OozieCLI.java, instead of calling System.getProperties().contains(AuthOozieClient.USE\_AUTH\_TOKEN\_CACHE\_SYS\_PROP), we should call containsKey since we are checking if the key is set or not, not if the value is set or not.


---

* [OOZIE-1347](https://issues.apache.org/jira/browse/OOZIE-1347) | *Major* | **Additions to JMS topic API**

This JIRA will make the following changes from API in OOZIE-1235

OozieClient will have two API's

JMSConnectionInfo getJMSConnectionInfo() 
String getTopicName(jobId);

JMSConnectionInfo has the following API's


Properties getJNDIProperties()
String getTopicPrefix()
String getTopicPattern(AppType appType)

TopicPattern will the pattern configured in oozie-site.xml
E.g ${username}, ${jobId} or a fixed string like WORKFLOW

This JIRA also addresses comments by Rohini on OOZIE-1234 and OOZIE-1235
Some of them are:

Make the JMSMessagingUtils.getEventmessage() return a generic subtype
Fix some of implementation related to thread local session and connection.
Remove JMSServerInfo 
Few other issues


---

* [OOZIE-1346](https://issues.apache.org/jira/browse/OOZIE-1346) | *Minor* | **Modularize hbase credentials to separate the populating of jobconf and  obtaining token for job**

The testCredentials currently checks whether the job conf is correctly configured with the credentials. The actual obtaining of token is not tested. The test case should be modified to make this clear.


---

* [OOZIE-1344](https://issues.apache.org/jira/browse/OOZIE-1344) | *Major* | **We should use Sqoop 1.4.3 instead of 1.5.0-incubating-SNAPSHOT**

Apparently 1.5.0 was abandoned long ago and we should be using 1.4.x.  There's currently a 1.4.1-incubating in the maven repo, but its compiled against Hadoop 0.23.  We should switch to the latest Sqoop released against Hadoop 1.x (once its published in the repo): 1.4.3


---

* [OOZIE-1343](https://issues.apache.org/jira/browse/OOZIE-1343) | *Major* | **Sqoop sharelib should have hsqldb jar**

The Sqoop sharelib doesn't have the hsqldb jar in it.  If the hadoop distribution doesn't have the hsqldb jar in it, then the Sqoop action will fail with a "java.lang.RuntimeException: Could not load db driver class: org.hsqldb.jdbcDriver" exception.  

We should include it in the Sqoop sharelib in case hadoop doesn't have it.


---

* [OOZIE-1341](https://issues.apache.org/jira/browse/OOZIE-1341) | *Major* | **Have Action Main classes in Oozie webapp**

Oozie-1311 moves Main classes for core to sharelib. This JIRA aims to package those Main classes in oozie webapp so the sharelib installation is not required.


---

* [OOZIE-1339](https://issues.apache.org/jira/browse/OOZIE-1339) | *Major* | **Implement SLA Bootstrap Service and fix bugs in SLACalculator**

When oozie server starts, SLA queue in memory need to be constructed from SLA Summary DB. This jira to also aims to fix few bugs like duplicate sla events, state transition of sla status and few others.


---

* [OOZIE-1337](https://issues.apache.org/jira/browse/OOZIE-1337) | *Major* | **HadoopAccessorService has two static methods so you can't override them with another implementation**

{{getMRDelegationTokenRenewer}} and {{getMRTokenRenewerInternal}} in {{HadoopAccessorService}} are static; plus the {{JavaActionExecutor}} accesses {{getMRDelegationTokenRenewer}} directly from {{HadoopAccessorService}}.  So if you want to replace {{HadoopAccessorService}} with your own version (via "oozie.services.ext" in oozie-site), you can't re-implement those two methods.  

There's also some {{private static final String}} constants that we should make {{protected static final String}} constants.  

And also a comment in the javadoc that says "The HadoopAccess class to use can be configured in the oozie-site.xml using the oozie.service.HadoopAccessorService.accessor.class property."  This isn't true.


---

* [OOZIE-1335](https://issues.apache.org/jira/browse/OOZIE-1335) | *Major* | **The launcher job should use uber mode in Hadoop 2 by default**

In theory, running the launcher job in Hadoop 2's uber mode should make the overall action time faster because we don't need to launch as many JVMs.  

I tested this out on a few of the examples in a VM, and it seems to save about 10 - 50 seconds per action.  While my testing wasn't scientific and was only on a single VM, setting the launcher job to run in uber mode by default is such a trivial change and should at least not make it slower that I think we should do it.


---

* [OOZIE-1333](https://issues.apache.org/jira/browse/OOZIE-1333) | *Major* | **Some testcases related to EventHandlerService are failing in a transient way**

Quite a few test cases failed here 
https://builds.apache.org/job/oozie-trunk-precommit-build/449
{code}
Caused by: java.lang.NullPointerException
	at org.apache.oozie.command.coord.CoordinatorXCommand.generateEvent(CoordinatorXCommand.java:58)
	at org.apache.oozie.command.coord.CoordPushDependencyCheckXCommand.updateCoordAction(CoordPushDependencyCheckXCommand.java:259)
{code}

Seems eventsConfigured is causing this problem as it wont be garbage collected even when servies.destroy() is called as its static variable. Probably setting it to false() in destroy() will solve the problem.


---

* [OOZIE-1332](https://issues.apache.org/jira/browse/OOZIE-1332) | *Major* | **Flakey test TestActionCheckXCommand.testActionCheckTransientDuringMRAction**

We've been seeing TestActionCheckXCommand.testActionCheckTransientDuringMRAction as flakey on our CI tests.  

This incorrect sequence of events was occurring:
{noformat}
...
- ActionCheckXCommand start
  - suspend WF
- ActionCheckXCommand end
- ActionCheckXCommand start
  - JT up
  - unknown hadoop job error
    - fail WF
- ActionCheckXCommand end
- ResumeXCommand cannot start (because WF fail)
- test finish
{noformat}
when this correct sequence of events should have been occuring:
{noformat}
...
- ActionCheckXCommand start
  - suspend WF
- ActionCheckXCommand end
- JT Up
- ResumeXCommand start
- ResumeXCommand end
- ActionStartXCommand start
- ActionStartXCommadn end
- ActionCheckXCommand start
- ActionCheckXCommand end
...
- test finish
{noformat}

It turns out that the ActionCheckerService was triggering an extra ActionCheckXCommand at just the wrong moment.  We should disable the ActionCheckerService during this test to prevent this issue (When I originally wrote the test, I incorrectly thought it was needed and that it had to run more frequently to make the test faster).

As a pre-emptive measure, we should also do this for TestActionCheckXCommand.testActionCheckTransientDuringLauncher, which is very similar even though we didn't see any flakiness.


---

* [OOZIE-1331](https://issues.apache.org/jira/browse/OOZIE-1331) | *Major* | **URIHandlerService not allowing relative path for URI's**

If a relative path is given for an uri-template, URIHandlerService doesn't allow it. Oozie 3.3 used to allow this.
{code}
Caused by: org.apache.oozie.dependency.URIHandlerException: E0905: Scheme not present in uri [${YEAR}${MONTH}${DAY}${HOUR}00]
at org.apache.oozie.service.URIHandlerService.getAuthorityWithScheme(URIHandlerService.java:200)
at org.apache.oozie.command.coord.CoordCommandUtils.materializeDataEvents(CoordCommandUtils.java:569)
{code}


---

* [OOZIE-1329](https://issues.apache.org/jira/browse/OOZIE-1329) | *Major* | **fix coverage org.apache.oozie.tools**

fix coverage org.apache.oozie.tools


---

* [OOZIE-1328](https://issues.apache.org/jira/browse/OOZIE-1328) | *Minor* | **Cover package org.apache.oozie.cli  with unit tests**

Improve test coverage for package org.apache.oozie.cli


---

* [OOZIE-1327](https://issues.apache.org/jira/browse/OOZIE-1327) | *Major* | **enhance unit-test coverage of package org.apache.oozie**

The patch adds/modifies Unit tests to achieve 80% coverage of package "org.apache.oozie".


---

* [OOZIE-1326](https://issues.apache.org/jira/browse/OOZIE-1326) | *Major* | **sharelib tests failing saying error on fork after OOZIE-1311 refactor**

[ERROR] Failed to execute goal org.apache.maven.plugins:maven-surefire-plugin:2.12:test (default-test) on project oozie-sharelib-pig: Error occurred in starting fork, check output in log -> [Help 1]
[ERROR] Failed to execute goal org.apache.maven.plugins:maven-surefire-plugin:2.12:test (default-test) on project oozie-sharelib-streaming: Error occurred in starting fork, check output in log -> [Help 1]
[ERROR] Failed to execute goal org.apache.maven.plugins:maven-surefire-plugin:2.12:test (default-test) on project oozie-sharelib-hive: Error occurred in starting fork, check output in log -> [Help 1]
[ERROR] Failed to execute goal org.apache.maven.plugins:maven-surefire-plugin:2.12:test (default-test) on project oozie-sharelib-distcp: Error occurred in starting fork, check output in log -> [Help 1]

 oozie.test.default.config.file becomes sharelib/pig/src/test/resources/hsqldb-oozie-site.xml for sharelib/pig and is not available, so XTestCase does a System.exit(-1)


---

* [OOZIE-1323](https://issues.apache.org/jira/browse/OOZIE-1323) | *Major* | **HTTPS docs lists the same step twice for creating a self-signed certificate**

There's a typo in the HTTPS docs where it lists the same step twice for creating a self-signed certificate.


---

* [OOZIE-1322](https://issues.apache.org/jira/browse/OOZIE-1322) | *Minor* | **show child job URL tab selectively for pig action**

small enhancement for OOZIE-1160 (Oozie web-console to display all job URLs spawned by Pig).  currently showing child job URL tab for all actions, some of which do not have child job, this patch is to make it show only to relevant actions.


---

* [OOZIE-1320](https://issues.apache.org/jira/browse/OOZIE-1320) | *Major* | **Tests for sharelib actions fail with ClassNotFoundException against Hadoop 2**

The changes done to the sharelib actions in OOZIE-1311 have caused their tests to throw {{ClassNotFoundException}} on the Main class (e.g. {{TestSqoopActionExecutor}} throws {{ClassNotFoundException}} on {{SqoopMain}}) when run against Hadoop 2.  This issue only affects the tests, not an actual deployment.  

Before OOZIE-1311, the Main classes were in the launcher jar.  Now that they are not, in Hadoop 1, they get picked up by simply being in the classpath.  In Hadoop 2, this doesn't work because its classpath by default only contains JARs.  We need to modify the classpath to have the Main class to fix this.  

Note that even with a fix, many of the actions will still fail for other reasons because they were not compiled against Hadoop 2.  (Though it should work if you have the proper JARs).


---

* [OOZIE-1318](https://issues.apache.org/jira/browse/OOZIE-1318) | *Major* | **Action Main classes should be overridable via action configuration settings**

Now that the action Main classes are in their respective sharelibs for pig, hive, distcp, sqoop, and streaming, we should make them overridable via action configuration.


---

* [OOZIE-1317](https://issues.apache.org/jira/browse/OOZIE-1317) | *Blocker* | **TestEventGeneration.testCoordinatorActionEvent fails**

OOZIE-1209 adds some new tests including {{TestEventGeneration}}.  However, its {{testCoordinatorActionEvent}} test fails every time locally and on a recent test-patch for a different JIRA.  

{code}
-------------------------------------------------------------------------------
Test set: org.apache.oozie.event.TestEventGeneration
-------------------------------------------------------------------------------
Tests run: 4, Failures: 1, Errors: 0, Skipped: 0, Time elapsed: 19.809 sec <<< FAILURE!
testCoordinatorActionEvent(org.apache.oozie.event.TestEventGeneration)  Time elapsed: 0.001 sec  <<< FAILURE!
junit.framework.AssertionFailedError
	at junit.framework.Assert.fail(Assert.java:48)
	at junit.framework.Assert.assertTrue(Assert.java:20)
	at junit.framework.Assert.assertNotNull(Assert.java:218)
	at junit.framework.Assert.assertNotNull(Assert.java:211)
	at org.apache.oozie.event.TestEventGeneration.testCoordinatorActionEvent(TestEventGeneration.java:208)
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
{code}


---

* [OOZIE-1316](https://issues.apache.org/jira/browse/OOZIE-1316) | *Major* | **fix coverage org.apache.oozie.action.hadoop**

fix coverage org.apache.oozie.action.hadoop


---

* [OOZIE-1315](https://issues.apache.org/jira/browse/OOZIE-1315) | *Major* | **Refactor classes from launcher jar into Oozie sharelib**

We should look into refactoring the classes that get put into the launcher jar into the Oozie sharelib (i.e. share/lib/oozie), which currently only has a json jar.  Doing this would allow us to get rid of the launcher jar.


---

* [OOZIE-1313](https://issues.apache.org/jira/browse/OOZIE-1313) | *Major* | **coverage fix for org.apache.oozie.client**

coverage fix for org.apache.oozie.client


---

* [OOZIE-1311](https://issues.apache.org/jira/browse/OOZIE-1311) | *Major* | **Refactor action Main classes into sharelibs**

We should refactor {{PigMain}}, {{HiveMain}}, and {{SqoopMain}} classes into their respective sharelib so we can remove all of their dependencies from oozie-core.  This will help prevent dependency issues in the future (e.g. different versions of antlr).  These Main classes would then end up in the sharelib instead of the launcher jar.  Their tests would also have to be moved to the sharelib, but not the ActionExecutors.


---

* [OOZIE-1307](https://issues.apache.org/jira/browse/OOZIE-1307) | *Minor* | **Cover package org.apache.oozie.action.ssh with unit tests**

Improve test coverage for package org.apache.oozie.action.ssh 
Add in class TestSshActionExecutor methods testSshCheckWithInvalidXml(), testSshStartWithInvalidXml(), testJobStartAndKill()
For success run test current user should be allowed to login by ssh without password ("ssh test@localhost")


---

* [OOZIE-1303](https://issues.apache.org/jira/browse/OOZIE-1303) | *Major* | **CLI API for Bulk Monitoring**

Bulk monitoring API is to be extended for use via CLI.


---

* [OOZIE-1300](https://issues.apache.org/jira/browse/OOZIE-1300) | *Trivial* | **[Doc] Error in the the email action XML schema**

Namespace prefix of the email action in its XML schema is shown as "hive" when it should be "email".


---

* [OOZIE-1297](https://issues.apache.org/jira/browse/OOZIE-1297) | *Major* | **Add chgrp in FS action**

there is a use case to change group in FS action, need something like
<chgrp path='[PATH]' group='[GROUP]' dir-files='false'/>


---

* [OOZIE-1296](https://issues.apache.org/jira/browse/OOZIE-1296) | *Major* | **SLA JMS Event Listener for publishing notifications related to SLA information**

this jira to implement JMSSLAEventListener to send notification of SLA Events (such as Start-Miss, End-Miss, Duration-Miss)


---

* [OOZIE-1294](https://issues.apache.org/jira/browse/OOZIE-1294) | *Major* | **SLA Email Notification**

some Oozie customers want to receive email notification when SLA is missed (StartMiss/EndMiss) 
This jira is to implement EmailSLAEventListener for that.


---

* [OOZIE-1292](https://issues.apache.org/jira/browse/OOZIE-1292) | *Major* | **Add Hadoop 0.23 Poms in hadooplibs to enable a build/tests against branch 0.23**

Adding provision for hadooplibs to also have Pom files for a Hadoop 0.23.x version (latest available on maven is 0.23.6), to enable an 'mvn test -Dhadoop.version=0.23.6' build.
An initial run resulted in a few test failures - will investigate them more.


---

* [OOZIE-1291](https://issues.apache.org/jira/browse/OOZIE-1291) | *Major* | **TestHadoopAccessorService.testGetMRDelegationTokenRenewer fails against Yarn**

If you run {{TestHadoopAccessorService}} against Yarn (i.e. {{-Phadoop-3}}), you get this test failure:
{noformat}
testGetMRDelegationTokenRenewer(org.apache.oozie.service.TestHadoopAccessorService): expected:<mapred/localhost@KDC.DOMAIN.COM> but was:<mapred/172.22.3.57@KDC.DOMAIN.COM>
{noformat}


---

* [OOZIE-1288](https://issues.apache.org/jira/browse/OOZIE-1288) | *Minor* | **Improve docs around -D arguments support in the Oozie CLI's pig subcommand**

Currently the docs at http://oozie.apache.org/docs/3.3.2/DG\_CommandLineTool.html#Pig\_Operations do not publish the special -D reading we do and place under <configuration> of the generated workflow action.


---

* [OOZIE-1286](https://issues.apache.org/jira/browse/OOZIE-1286) | *Major* | **SSH Action does not properly handle arguments that have spaces**

The SSH action treats arguments that have a space as separate arguments instead of as a single argument, even if you put quotes or do similar tricks.  

e.g.
{code:xml}
<command>svn</command>
<args>commit</args>
<args>-m</args>
<args>hello world</args>
{code}
This will actually send {{svn commit -m "hello" "world"}} instead of {{svn commit -m "hello world"}}


---

* [OOZIE-1281](https://issues.apache.org/jira/browse/OOZIE-1281) | *Major* | **Hiveaction should populate externalChildIDs**

Hiveaction should populate external child ids so that it can be accessed from UI


---

* [OOZIE-1280](https://issues.apache.org/jira/browse/OOZIE-1280) | *Major* | **CoordPushDependencyCheck queued by Recovery Services doesn't remove dependencies from cache**

In cases where coord push is queued by recovery service and some of the dependencies are directly met by querying hcat, coord push doesn't remove them from the cache.


---

* [OOZIE-1277](https://issues.apache.org/jira/browse/OOZIE-1277) | *Major* | **CoordActionInputCheck requeues itself even if only push missing dependencies exist**

In a case where there are only push missing dependencies and no pull missing dependencies, CoordActionInputCheck shouldn't requeue itself. If it does, then RecoveryService wont be able to queue CoordPushCheck as CoordActionInputCheck keeps on updating the last modified time of action.


---

* [OOZIE-1274](https://issues.apache.org/jira/browse/OOZIE-1274) | *Major* | **change recovery service interval to make it consistent with oozie-default.xml**

change recovery service interval to 60s, and queueing delay of CoordPushDependencyCheckXCommand to 600s not to hit HCat as frequent


---

* [OOZIE-1272](https://issues.apache.org/jira/browse/OOZIE-1272) | *Major* | **Two workflow jobs mapped to a single coordinator action**

CoordinatorActionstart is being called multiple times for same action id for two different workflows as seen below
{code}
2013-03-18 19:39:41,815 DEBUG CoordActionStartXCommand:545 - USER[-] GROUP[-] TOKEN[-] APP[-] JOB[0000057-130318185730776-oozie-oozi-C] ACTION[0000057-130318185730776-oozie-oozi-C@1] Updating WF record for WFID :0000471-130318185730776-oozie-oozi-W with parent id: 0000057-130318185730776-oozie-oozi-C@1
2013-03-18 19:39:49,618 DEBUG CoordActionStartXCommand:545 - USER[-] GROUP[-] TOKEN[-] APP[-] JOB[0000057-130318185730776-oozie-oozi-C] ACTION[0000057-130318185730776-oozie-oozi-C@1] Updating WF record for WFID :0000473-130318185730776-oozie-oozi-W with parent id: 0000057-130318185730776-oozie-oozi-C@1
{code}

loadState() implementation is blank which makes the verifyPrecondition() check the coordinator action loaded in eagerLoadState(). So the coordinator action might be stale as it was loaded without a lock. 
LoadState() should be made to call eagerLoadState() similar to other XCommands.

Another issue is getKey() is not overridden so Multiple Coordactionstart for a given action are not removed as duplicates


---

* [OOZIE-1270](https://issues.apache.org/jira/browse/OOZIE-1270) | *Major* | **Querying job directly does not pop correct information for coordinator and bundle**

Querying directly for a job using oozie/?job=<job-id> always populates the details in workflow pop-up window even for coordinator and bundle jobs.


---

* [OOZIE-1269](https://issues.apache.org/jira/browse/OOZIE-1269) | *Major* | **Exception in push dependency check when there is also a pull dependency leaves it in waiting till timeout**

   When there is a exception in CoordPushDependencyCheck and CoordActionInputCheck continues to get queued, RecoveryService does not kick in (as the action is being updateD) and queue CoordPushDependencyCheck again. This leaves the action in WAITING state till input check queues CoordPushDependencyCheck if there is a timeout.


---

* [OOZIE-1267](https://issues.apache.org/jira/browse/OOZIE-1267) | *Major* | **Dryrun option for push missing deps**

Make the dry run option resolve push and pull 'current' missing deps first. If current is resolved, have it resolve latest/future and then resolve the coord configuration propagated to workflow.


---

* [OOZIE-1264](https://issues.apache.org/jira/browse/OOZIE-1264) | *Major* | **The "parent" property of a subworkflow should be the ID of the parent workflow**

Currently, the "parent" property of a subworkflow is empty/null.  It should be the ID of the parent workflow (just like the "parent" property of a workflow that was started by a coordinator is the ID of that coordinator).


---

* [OOZIE-1263](https://issues.apache.org/jira/browse/OOZIE-1263) | *Major* | **Fix few HCat dependency check issues**

Couple of issues where found in testing
   - If the recovery service queued CoordPushCheck and it was due for Timeout, it resolves the push dependencies but misses resolving latest nor does it queue timeout. So it stays in WAITING till RecoveryService kicks in and queues CoordActionInputCheck
   - HCatURIHandler messages do not have actionid
   - Duplicate action ids were stored in Cache when recovery service kicked with lower interval


---

* [OOZIE-1261](https://issues.apache.org/jira/browse/OOZIE-1261) | *Major* | **Registered push dependencies are not removed on Coord Kill command**

  The uri's waiting for notification from hcat are removed from cache in error cases like timeout, but not when the coord action is killed. This will cause a memory leak.


---

* [OOZIE-1255](https://issues.apache.org/jira/browse/OOZIE-1255) | *Major* | **latest/future check for hcat can cause shutdown to hang**

  For the testcase, having a coordinator with 1 min frequency and start time 1 month back, to determine latest(0) around 43K hcat calls were made (table was empty with no partitions). When trying to shutdown it took a really long time 5-10 mins. 

Rogue jobs like this can cause problems. Need to check for Thread interrupted status and break out of the loop.


---

* [OOZIE-1253](https://issues.apache.org/jira/browse/OOZIE-1253) | *Major* | **latest() gets resolved before all push dependencies are resolved**

 Latest and future are resolved in CoordActionInputCheckXCommand as they are always based on poll and not notifications. But resolving the latest/future should happen once all the push missing dependencies are resolved and not before that.


---

* [OOZIE-1251](https://issues.apache.org/jira/browse/OOZIE-1251) | *Major* | **Log messages for DependencyChecker class show wrong jobid and actionid**

  Since DependencyChecker is using a static XLog, it shows wrong jobid and actionid as the XLog prefix is not reset. 

Note:
 We should consider moving to NDC or MDC to avoid these kind of issues.


---

* [OOZIE-1250](https://issues.apache.org/jira/browse/OOZIE-1250) | *Major* | **Coord action timeout not happening when there is a exception**

  Coord action timeout not happening when there is a exception while checking for dependencies.


---

* [OOZIE-1249](https://issues.apache.org/jira/browse/OOZIE-1249) | *Minor* | **SLA Documentation**

Add new documentation to explain the new SLA monitoring feature and usage. Patch also includes part Job Notifications doc (server installation related) and changes in CoordinatorFunctionalSpec Schema Appendix part to order Schemas latest first.

In addition, the existing Oozie doc for Web Services API lacks examples for using the SLA API i.e. retrieving records from SLA tables using sequence-id, max limit and so on.


---

* [OOZIE-1247](https://issues.apache.org/jira/browse/OOZIE-1247) | *Major* | **CoordActionInputCheck shouldn't queue CoordPushInputCheck**

CoordActionInputCheck queues CoordPushInputCheck if all hdfs dependencies are met but there are push deps left. This re-queue is not required as CoordMaterialize already does that.


---

* [OOZIE-1246](https://issues.apache.org/jira/browse/OOZIE-1246) | *Major* | **appname need to be persisted on SLA event table by SLA status event**

appname persisted by SLA registration event, but not SLA status event.
thus, when applying appname filter from oozie CLI, end up missing SLA status event.


---

* [OOZIE-1245](https://issues.apache.org/jira/browse/OOZIE-1245) | *Major* | **Add ability to automatically suspend workflow at specified actions**

It could be useful to add a configuration property that lets users specify a list of action that will cause Oozie to automatically suspend the workflow upon reaching any of those actions; like breakpoints in a debugger.  To continue running the workflow, the user would simply use the {{-resume}} command.  

For example, a user could specify {{oozie.suspendpoints=mr-node,my-pig-action,my-fork}} in their job.properties file and when Oozie is about to execute any of those three actions, it would suspend the workflow.


---

* [OOZIE-1244](https://issues.apache.org/jira/browse/OOZIE-1244) | *Major* | **SLA Support in Oozie**

  Would like to have the following features in Oozie
 - JMS notifications on SLA met, SLA start miss, SLA end miss and SLA duration miss
 - Email alerting for SLA start miss, SLA end miss and SLA duration miss
 - API to query SLA met/miss information. Currently the SLA information that can be queried is only SLA registration event and job status events. One has to calculate the actual misses from those. 
 - A simple dashboard to view and query the SLA met/miss information built on the API mentioned above.


---

* [OOZIE-1239](https://issues.apache.org/jira/browse/OOZIE-1239) | *Major* | **Bump up trunk to 4.1.0-SNAPSHOT**

As 4.0 branch is created, bump the trunk to 4.1.0-SNAPSHOT


---

* [OOZIE-1238](https://issues.apache.org/jira/browse/OOZIE-1238) | *Major* | **CoordPushCheck doesn't evaluate the configuration section which is propogated to workflow**

CoordPushCheck doesn't have the same logic as CoordActionInputCheck to resolve the properties in configuration section of Coordinator.


---

* [OOZIE-1235](https://issues.apache.org/jira/browse/OOZIE-1235) | *Major* | **Client API for retrieving topic and jms connection related details**

The consumers interested in JMS notifications will require JNDI properties for connecting to the JMS broker. They will also require to know the topic on which the messages are sent.

OozieClient can provide the following API
{code}
OozieJMSConnectionInfo getJMSConnectionInfo(String jobId)
{code}

OozieJMSConnectionInfo interface has two methods

{code}
Properties getJNDIProperties();
String getTopicName();
{code}


---

* [OOZIE-1234](https://issues.apache.org/jira/browse/OOZIE-1234) | *Major* | **JMS Event Listeners for publishing notifications related to workflow and coordinator**

The event listeners will emit notifications for workflow, coordinator and SLA events. There are different ways of sending notifications like through JMS or email.
This JIRA will focus on JMS Event listeners for workflow and coordinator related events.

JMS implementation of event listener will send messages on a particular topic
In addition to the JMS payload, the notification message will have properties on which the consumers can apply selectors to filter messages at JMS server.
The JMS event message will be serialized and Oozie will also provide a helper class for consumers to deserialize these messages back to Java Objects.

Classes

EventMessage: There can be different event messages like WorkflowJobSuccessMessage, WorkflowJobFailureMessage similar to different events in OOZIE-1209

EventListener: Listener to publish event messages on msg bus. One implementation will be JMSWorkflowEventlistener for publishing workflow related event messages

MessageFactory: Factory for providing serializer, deserializer and creating Oozie event messages instances

MessageSerializer: Serialize the JMS messages. One implementation can be JSONMessageSerializer to send the messages as JSON string.

MessageDeserializer: Class to convert the serialized string back to Java Event Messages.


---

* [OOZIE-1231](https://issues.apache.org/jira/browse/OOZIE-1231) | *Major* | **Provide access to launcher job URL from web console when using Map Reduce action**

there are applications where custom inputformat used in MR action, and log message from the inputformat is written on launcher task log. for debugging purpose, users need to check the launcher task log. but currently in MR action, oozie automatically swaps external ID, and do not expose the launcher ID in web-console. (now only way is to to grep oozie.log). this jira is to show launcher job URL on web console when using Map Reduce action


---

* [OOZIE-1224](https://issues.apache.org/jira/browse/OOZIE-1224) | *Minor* | **web console user interface improvements**

Have made several small changes to oozie-console.js to improve the UI:

- remove width of main console screen so it will horizontally fill available space
- increase size of several Coord Job Info text fields to make them larger and consistent
- increase size of Job Info text fields so entire contents can be seen
- when Coord Job Info or Job Info window is resized, stretch contents to match
- capitalize field titles for "frequency" and "unit" in Coordinator Jobs grid
- lengthen width of some columns in grid displays


---

* [OOZIE-1218](https://issues.apache.org/jira/browse/OOZIE-1218) | *Major* | **Create a HCatalog Integration Guide**

  Need a twiki doc - HCatalog Integration Guide that explain systems requiremenst (ie JMS, HCAT), oozie server configurations, the URI topic/JMS mapping, oozie special configurations for it, hcat sharelib, etc.


---

* [OOZIE-1217](https://issues.apache.org/jira/browse/OOZIE-1217) | *Major* | **Address review comments in OOZIE-1210**

Address review comments in https://issues.apache.org/jira/browse/OOZIE-1200?focusedCommentId=13574146&page=com.atlassian.jira.plugin.system.issuetabpanels:comment-tabpanel#comment-13574146


---

* [OOZIE-1215](https://issues.apache.org/jira/browse/OOZIE-1215) | *Trivial* | **add note of using escape for oozie jobs filters in doc**

minor doc change.
oozie jobs -filter user=joe;status=KILLED -oozie ...  hitting exception.
need escape like, -filter user=joe\;status=KILLED, 
adding note.


---

* [OOZIE-1210](https://issues.apache.org/jira/browse/OOZIE-1210) | *Major* | **Rework uri handling for Prepare actions and jms server mapping**

This is to address review comments in OOZIE-1200.


---

* [OOZIE-1209](https://issues.apache.org/jira/browse/OOZIE-1209) | *Major* | **Event generation and handling for workflow and coordinator**

Oozie will publish notifications for the different types of jobs - workflows and coordinators, for monitoring purposes.


---

* [OOZIE-1208](https://issues.apache.org/jira/browse/OOZIE-1208) | *Major* | **Oozie web-console when displaying Coord Job Log for an action gives Format Error**

Format Error - "Action List format is wrong. Format should be similar to 1,3-4,7-40", even after typing correct action number i.e. 1,2 etc.


---

* [OOZIE-1207](https://issues.apache.org/jira/browse/OOZIE-1207) | *Major* | **Optimize current EL resolution in case of start-instance and end-instance**

<start-instance>$
{coord:current(-23)}
</start-instance>
<end-instance>$
{coord:current(0)}
</end-instance>
Assuming all 24 instances are available, Oozie makes 300(1+2+3+..24) calls instead of 24 calls. This leads to some very high CPU usage when number of current instances is high.

OOZIE-1073 fixes similar issue for latest and future


---

* [OOZIE-1205](https://issues.apache.org/jira/browse/OOZIE-1205) | *Major* | **If the JobTracker is restarted during a Fork, Oozie doesn't fail all of the currently running actions**

If you have a workflow with a fork and restart the JobTracker while its executing the paths in the fork, those two jobs will be lost (as expected).  Once the timeout occurs on the {{ActionCheckXCommand}}, it will check both actions sequentially.  While checking the first action, it sets the status to FAILED and also sets the workflow's status to FAILED.  It then moves on to the other action that was running concurrently, but it cannot pass the precondition check because the workflow was already FAILED (the check requires that the Workflow is RUNNING).  It will keep trying this every time the timeout hits (10min is default) and print a WARN message in the log.   That action will also be in RUNNING state forever even though the underlying job isn't running and the WF is FAILED.


---

* [OOZIE-1204](https://issues.apache.org/jira/browse/OOZIE-1204) | *Major* | **Illustrate correct use of parameters inside SLA tags**

Can not pass parameter for SLA e.g. through bundle to coordinator

when passed Property SLA\_OFFSET from bundle to cordinator from SLA, running
the oozie bundle doe not kicks off the coordinator. validation on bundle.xml,
coordinator.xml passed.

{code}
bundle/job.properties
..
MY\_SLA\_VALUE=10
..

 ------------------- Bundle.xml -----------------     
    <coordinator>
   ...
<property><name>SLA\_OFFSET</name><value>${MY\_SLA\_VALUE}</value></property>
       </configuration>
    </coordinator>
-------------------------- coordinator.xml --------------
 <sla:info>
      <sla:app-name>${FEED\_NAME}\_daily</sla:app-name>
      <sla:nominal-time>${coord:nominalTime()}</sla:nominal-time>
      <sla:should-start>${5 * MINUTES}</sla:should-start>
      <sla:should-end>${ ${SLA\_OFFSET} * MINUTES}</sla:should-end>
      <sla:notification-msg>Notifying User for ${coord:nominalTime()} nominal
time</sla:notification-msg>

----Log -----

 <sla:info>
      <sla:app-name>${FEED\_NAME}\_daily</sla:app-name>
      <sla:nominal-time>${coord:nominalTime()}</sla:nominal-time>
      <sla:should-start>${5 * MINUTES}</sla:should-start>
      <sla:should-end>${${SLA\_OFFSET} * MINUTES }</sla:should-end>
      <sla:notification-msg>Notifying User for ${coord:nominalTime()} nominal
time</sla:notification-msg>
    </sla:info>
  </action>
</coordinator-app>
2013-01-31 19:52:49,923  WARN CoordSubmitXCommand:542 - USER[-] GROUP[-]
TOKEN[-] APP[-] JOB[123-oozie-wrkf-B] ACTION[-] ERROR:
org.apache.oozie.command.CommandException: E1004: Expression language
evaluation error [Validation ERROR :Encountered "{", expected one of ["}", ".",
">", "gt", "<", "lt", "==", "eq", "<=", "le", ">=", "ge", "!=", "ne", "[", 
"+", "-", "*", "/", "div", "%", "mod", "and", "&&", "or", "||", ":", "(",
"?"]], javax.servlet.jsp.el.ELException: Encountered "{", expected one of ["}",
".", ">", "gt", "<", "lt", "==", "eq", "<=", "le", ">=", "ge", "!=", "n
e", "[", "+", "-", "*", "/", "div", "%", "mod", "and", "&&", "or", "||", ":",
"(", "?"]
        at
org.apache.oozie.command.coord.CoordSubmitXCommand.resolveSLA(CoordSubmitXCommand.java:690)
        at
org.apache.oozie.command.coord.CoordSubmitXCommand.resolveInitial(CoordSubmitXCommand.java:666)
        at
org.apache.oozie.command.coord.CoordSubmitXCommand.basicResolveAndIncludeDS(CoordSubmitXCommand.java:484)
        at
org.apache.oozie.command.coord.CoordSubmitXCommand.submit(CoordSubmitXCommand.java:222)
        at
org.apache.oozie.command.SubmitTransitionXCommand.execute(SubmitTransitionXCommand.java:81)
{code}

Looks like the SLA's EL Evaluator cannot evaluate the parametrized value. This needs to be fixed


---

* [OOZIE-1197](https://issues.apache.org/jira/browse/OOZIE-1197) | *Major* | **Create a hcat sharelib which can be included in pig, hive and java actions**

As part of HCatalog integration, users can use HCatLoader and HCatStorer in Pig action. To be able to run this on the compute nodes, the HCat and other required jars can be made part of a hcat sharelib which can be added to pig action. Similarly for hive and java actions.


---

* [OOZIE-1196](https://issues.apache.org/jira/browse/OOZIE-1196) | *Major* | **HCat EL functions for database and table should be modified**

In OOZIE-1123, the HCat EL Functions coord:database() and coord:table() require an argument specifying input/output type. Instead the functions themselves can be renamed to databaseIn, databaseOut and so on


---

* [OOZIE-1191](https://issues.apache.org/jira/browse/OOZIE-1191) | *Major* | **add examples of coordinator with SLA tag inserted**

need example of coordinator xml with SLA tag inserted


---

* [OOZIE-1185](https://issues.apache.org/jira/browse/OOZIE-1185) | *Major* | **Retry jms connections on failure**

  When there is a JMS connection failure, need to reconnect and reregister listening topics.


---

* [OOZIE-1183](https://issues.apache.org/jira/browse/OOZIE-1183) | *Major* | **Update WebServices API documentation**

We recently had some trouble trying to [rerun a coordinator job using the WebServices API|http://oozie.apache.org/docs/3.3.0/WebServicesAPI.html#Re-Runing\_a\_coordinator\_job].  According to the documentation, we were trying to POST a URL like this:
{noformat}PUT http://localhost:11000/oozie/v1/job/0000024-130108101138395-oozie-oozi-C?action=rerun&type=exact&end-action=1&start-action=1{noformat}
but this gave an error.  

After looking through the client and server code, I figured out that there's a huge discrepancy between it and the documentation.  The parameters its using in the PUT request for a coordinator job are:
- action=coord-rerun
- type=[date|action]
- scope=a comma-separated list of date ranges. Each date range element is specified with two dates separated by '::' (if type=date)
- scope=a comma-separated list of action ranges. The action range is specified with two action numbers separated by '-' (if type=action)
- refresh=[true|false] used to indicate if user wants to refresh an action's input and output events.
- nocleanup=[true|false] used to indicate if user wants to cleanup output events for given rerun actions

Based on that, the correct URL to PUT is:
{noformat}http://localhost:11000/oozie/v1/job/0000024-130108101138395-oozie-oozi-C?action=coord-rerun&type=action&scope=1-1&refresh=false&nocleanup=false{noformat}


We should update the documentation with the correct information above.  We should also go through the rest of the WebServices API documentation and make sure its accurate (this isn't the first time I've had to go through the code when using the WebServices API).


---

* [OOZIE-1181](https://issues.apache.org/jira/browse/OOZIE-1181) | *Major* | **Dependency cache with configurations for eviction, ttl and max elements in memory**

  SimpleHCatDependencyCache is just a in memory map implementation. Writing an alternate implemenation using ehcache which allows configurations for  eviction based on ttl or time to idle and max elements in memory.


---

* [OOZIE-1180](https://issues.apache.org/jira/browse/OOZIE-1180) | *Major* | **Separate the connection context details from JMS Accessor service**

The connection context details should be abstracted out from JMSAccessorService. So implementations can be plugged in as required.


---

* [OOZIE-1168](https://issues.apache.org/jira/browse/OOZIE-1168) | *Major* | **Reliability and retry for JMS connections**

  Need to handle connection failures and reconnect (backed off retry) to JMS when listening to notifications.


---

* [OOZIE-1167](https://issues.apache.org/jira/browse/OOZIE-1167) | *Major* | **Fix and rework PartitionDependency Management**

Currently the PDMService only works if the hcat dependency URI partitions match exactly with all the partitions in the notification. This is mostly not the case as there will be lot of sub-partitions in a table, but only the date partition will be specified for dependency check. So need to do a subset match. 
  Also need to extract out the dependency cache and make an interface, so that a cache which spills to disk can later be substituted. Spillable cache is required for scale when number of pending dependencies will be high.


---

* [OOZIE-1158](https://issues.apache.org/jira/browse/OOZIE-1158) | *Major* | **Add hcataloglib sub-module**

For building against hcatalog jars, a sub-module for hcatalog libs should be added


---

* [OOZIE-1157](https://issues.apache.org/jira/browse/OOZIE-1157) | *Major* | **EL function hcat:exists for decision making**

 Need a hcat:exists EL function similar to fs:exists to check for partition availability.


---

* [OOZIE-1156](https://issues.apache.org/jira/browse/OOZIE-1156) | *Major* | **Make all the latest/future instances as pull dependences**

This JIRA aims to fix the following

- Makes all the latest/future instances as pull dependences
- Have the Push dependency check remove the available partitions from partition map
- Have some operations as part of eagerLoad() and eagerVerifyPrecondition() instead of load() and verifyPrecondition()


---

* [OOZIE-1146](https://issues.apache.org/jira/browse/OOZIE-1146) | *Major* | **FileSystem used by prepare sections should use the configuration of the action**

We should be able to propagate configurations to prepare section (delete, mkdir) of action in workflow xmls.
Though the configuration section is available per action, it is not available in for prepare tags:

A simple use-case is to support custom filesystem by configuring the filesystem impl class in configuration, but delete prepare action is not aware of configuration set in action xml.

Ex:<action name="myfirstHadoopJob">
        <map-reduce>
            <job-tracker>foo:9001</job-tracker>
            <name-node>bar:9000</name-node>
            <prepare>
                <delete path="hdfs://foo:9000/usr/tucu/output-data"/>
            </prepare>
            <job-xml>/myfirstjob.xml</job-xml>
            <configuration>
                <property><name>fs.s4.impl</name><value>org.apache.grid.fs.s4fs.NativeS4FileSystem</value></property>
            .....

I think this can be fixed in FileSystemsActions.java


---

* [OOZIE-1145](https://issues.apache.org/jira/browse/OOZIE-1145) | *Major* | **Modify Recovery Service to handle push missing dependencies**

Recovery Service should be modified so that it can check for connection to JMS server, construct partition map and queue push dependency commands.


---

* [OOZIE-1141](https://issues.apache.org/jira/browse/OOZIE-1141) | *Major* | **Escaping Ampersand in the HCat URI to bypass XML validation**

Uncovered during end-to-end testing. In an HCat URI like this
hcat://<server>:<port>/db/table/partition1=abc&partition2=xyz, the '&' between the partition key-value pairs, fails XML validation. It needs to be escaped - but keeping in mind
1. HCat URIs are stored as missing dependencies in database. Each time they are retrieved, the logic needs to check for the escaping (very frequent and increases overhead)
2. When displaying back to the user his missing dependencies, the original unescaped URI should be shown.

Alternatives for approach:
1. Asking the user to use the encoded string "&amp;" in his URI-template is a usability-killer.
2. The other alternative is to use some other separator instead of ampersand, which does not conflict existing separators in Oozie, such as colon (:), but it is highly non-intuitive in a URI

Therefore to me, the lesser of two evils seems to do escape logic during XML validation, storing separator as something else internally for db retrievals, and again showing original '&' for display to user.

Please provide your thoughts.


---

* [OOZIE-1138](https://issues.apache.org/jira/browse/OOZIE-1138) | *Major* | ** Provide rule based mechanism to allow multiple hcatalog servers to connect to JMS server**

This JIRA does the following:

- Allows a way for multiple hcat servers to connect to JMS server through rule based mapping
- Instead of making connections to JMS server at Oozie startup, make it per need basis
- Fix few bugs in other parts of code.


---

* [OOZIE-1135](https://issues.apache.org/jira/browse/OOZIE-1135) | *Major* | **Display missing partition dependencies via job -info command on CLI**

The job -info command should also display the missing partition dependencies in addition to already existing hdfs directory-based ones.


---

* [OOZIE-1123](https://issues.apache.org/jira/browse/OOZIE-1123) | *Major* | **EL Functions for hcatalog**

  Need new EL functions for hcatalog to support getting partition filter and mix and max values for use in pig scripts.


---

* [OOZIE-1118](https://issues.apache.org/jira/browse/OOZIE-1118) | *Major* | **improve logic of purge service**

The current logic of the purge service is flat. I.e., WF purging only takes into account WF end time, it does not take into account that the WF was started by a COORD job. This means that completed WFs of a running COORD job could be purge if the COORD job runs for longer that the purge age.

One way of addressing this would be:

* WF purging only purges WF jobs started directly by a client call.
* COORD purging purges COORD jobs started directly by a client call. It also purges the WF jobs created by the COORD jobs being purged.
* BUNDLE purging purges BUNDLE jobs, and the corresponding COORD jobs and WF jobs.

This could be handled by a new property in the job beans 'job-owner'. Set to 'self' it would mean it can be purged by the same job type purger. If set to other value, then it is a higher level purger the one responsible for purging it.

This means that for a WF job started by COORD job started by a BUNDLE job, the WF job and the COORD job would have the BUNDLE job as owner, while the BUNDLE with have 'self' as owner.

This ownership propagation would also have
A caveat here would be how to handle sub-workflows. 
I guess we should check if the wf was created from  coord, and if then let the coord purge take care of that, meaning wf purge does not purge wf started by coords.

Similarly, the same should also apply for sub-WFs.


---

* [OOZIE-1109](https://issues.apache.org/jira/browse/OOZIE-1109) | *Major* | **The size of the map cache in PartitionDependencyManagerService should be configurable**

Currently, the size is set to a default value of 10,000 entries, used to instantiate the concurrent linked hash map to maintain partition information. This size should be configurable via a config property


---

* [OOZIE-1108](https://issues.apache.org/jira/browse/OOZIE-1108) | *Major* | **Fix JMS message consumer to maintain single session per topic registration**

When a coordinator spawns multiple actions, there is a different message consumer created per action, even though all actions are registering to single HCat topic. This is undesirable.

Also refactoring some messaging-oriented methods into the JMSAccessorService to be in a single location, is to be done


---

* [OOZIE-1105](https://issues.apache.org/jira/browse/OOZIE-1105) | *Major* | **Resolve issues found in integration**

This JIRa is to fix the issue found during integration.


---

* [OOZIE-1097](https://issues.apache.org/jira/browse/OOZIE-1097) | *Major* | **Revert OOZIE-1095 once dependent HCat jar mavenized**

Revert OOZIE-1095 once HCATALOG-546 is committed and the corresponding HCatalog version maven artifact is available


---

* [OOZIE-1096](https://issues.apache.org/jira/browse/OOZIE-1096) | *Trivial* | **Update wfgen README.txt to have the TLP mailing list**

At the end of the README.txt for the workflow generator, it says:
{code}

If you have any questions/issues, please send an email to:

oozie-users@incubator.apache.org

Subscribe using the link:

http://incubator.apache.org/oozie/MailingLists.html
{code}

The email address and link should be updated now that Oozie is a TLP project.


---

* [OOZIE-1095](https://issues.apache.org/jira/browse/OOZIE-1095) | *Major* | **Add HCatalog jar as resource for building**

OOZIE-1050 depends on a patched Hcatalog jar (version 0.4.1) for the notifications related classes e.g. HCatEventMessage. Therefore, this JAR is made available as a resource along with build instructions, as a temporary solution until the new HCatalog jar is available via maven repo


---

* [OOZIE-1086](https://issues.apache.org/jira/browse/OOZIE-1086) | *Major* | **Command to check the missing partitions directly against HCatalog server**

The same will be used in multiple scenarios:
1. As part of action materialization. 
2. Recovery service


---

* [OOZIE-1083](https://issues.apache.org/jira/browse/OOZIE-1083) | *Trivial* | **Help -\> About dialog box**

Help -> About shows a popup with a hardcoded version number.


---

* [OOZIE-1078](https://issues.apache.org/jira/browse/OOZIE-1078) | *Trivial* | **Help -\> Documentation and Help -\> Online Help should link to oozie.apache.org/**

Help -> Documentation and Help -> Online Help currently show an alert saying "to be implemented soon".

They should link to a workflowgenerator's maven site, which does not exist in a public place (not even jenkins' precommit job's workspace)

The ideal place is somewhere under http://oozie.apache.org/docs/ once it is generated, but it can at least link to the oozie top page.


---

* [OOZIE-1075](https://issues.apache.org/jira/browse/OOZIE-1075) | *Major* | **Create general scheme handler**

as part of integrating Oozie with HCatalog, HCatURI is implemented. it is expected that we need to support more URI schemes in future (hbase, webhcat, so on). This task is to design and implement general URI Handler.


---

* [OOZIE-1069](https://issues.apache.org/jira/browse/OOZIE-1069) | *Major* | **Update dataIn and dataOut EL functions to support partitions**

Update dataIn() and dataOut() el functions.


---

* [OOZIE-1068](https://issues.apache.org/jira/browse/OOZIE-1068) | *Major* | **Metadata Accessor service for HCatalog**

Provide Metadata accessor service and meta data client wrapper.


---

* [OOZIE-1056](https://issues.apache.org/jira/browse/OOZIE-1056) | *Major* | **Command to update push-based dependency**

Get partition information from available map and update the action table. At last remove the entry from the available map.


---

* [OOZIE-1050](https://issues.apache.org/jira/browse/OOZIE-1050) | *Major* | **Implement logic to update dependencies via push JMS message**

Implementation of the 'handler' that will read the push JMS messages received on the message bus about partition availability, and subsequently update the cache. May also trigger readiness for starting action


---

* [OOZIE-1045](https://issues.apache.org/jira/browse/OOZIE-1045) | *Major* | **Parameterize \<unresolved-instances\> tag currently hardcoded**

currently <unresolved-instances> is hardcoded. Use static variable for it.


---

* [OOZIE-1044](https://issues.apache.org/jira/browse/OOZIE-1044) | *Major* | **Parameterize \<uris\> tag currently hardcoded**

currently <uris> is hardcoded.  Use static variable for it.


---

* [OOZIE-1043](https://issues.apache.org/jira/browse/OOZIE-1043) | *Major* | **Add logic to register to Missing Dependency Structure in coord action materialization**

in materialization of coord action, following logic needs to be added
- check existence of partition against HCat
- register info of missing partition to Missing Dependency Data Structure


---

* [OOZIE-1042](https://issues.apache.org/jira/browse/OOZIE-1042) | *Major* | **Coordinator action table schema change**

Create a new column called Push\_missingDependency of type BLOB in table COORD\_ACTIONS. Needs to modify CoorinatorAction and JsonCoordinatorAction class.
There will be two columns to identify two different dependencies.
1. Missing dependencies (existing): Only those dependency that needs polling. Such as : directory based dependencies.
2. Push Missing dependencies: Dependencies that rely on the push model where some messaging system will inform when new data is available. For example, partition-based dependencies provided by hcatalog.


---

* [OOZIE-1039](https://issues.apache.org/jira/browse/OOZIE-1039) | *Major* | **Implement the Missing Dependency structure for HCat partitions**

Design and implement the main data structures for handling the missing HCat partitions. Also implement modular interfaces that various services can hook up with to interact with the dependency details


---

* [OOZIE-1037](https://issues.apache.org/jira/browse/OOZIE-1037) | *Minor* | **XTestCase.delete() can cause tests to fail if it runs into a dangling symlink**

Java 6 doesn't handle symlinks very well; as a result, if you have a dangling symlink (a symlink who's target has been deleted), Java's {{File.exists()}} method returns false on the symlink file.  So, when {{XTestCase.delete()}} is trying to delete a directory, it first has to empty the directory, but the current implementation skips any dangling symlinks because it checks {{exists()}} on each file in the directory; later it will fail when trying to delete the directory itself because its not empty.


---

* [OOZIE-1036](https://issues.apache.org/jira/browse/OOZIE-1036) | *Major* | **Utility class to parse HCat URI**

uri-template for HCat 
<uri-template> hcat://[HcatServer:Port]/db/table/?datestamp=$YEAR$MONTH$DAY$HOUR;region=us</uri-template> 

This utility class parses HCat URI, does checking,and store information(server, db, table, partitions)


---

* [OOZIE-1033](https://issues.apache.org/jira/browse/OOZIE-1033) | *Major* | **Generic utility class to register/unregister a JMS message handler**

This task includes:
1. Provide two methods to register and unregister a message ;listener with generic message handler for a specific topic.
2. Use the 'default' end point , when no endpoint is passed.
3. A new generic message handler interface that anyone can implement and pass for message handling.


---

* [OOZIE-1032](https://issues.apache.org/jira/browse/OOZIE-1032) | *Major* | **Create JMSService used for any JMS compliant product**

This task includes:
1. Create/Manage JMS connections using user configured properties
2. Create/Manage session for specific connection.


---

* [OOZIE-1008](https://issues.apache.org/jira/browse/OOZIE-1008) | *Major* | **Convert Oozie action cookbooks to cwiki pages**

The Apache Confluence Wiki is a good place to put our action cookbooks and enhance the documentation there.


---

* [OOZIE-1007](https://issues.apache.org/jira/browse/OOZIE-1007) | *Blocker* | **Add license headers to all files don't have them**

Running 'mvn apache-rat:check' reports the following offending files:

{code}Unapproved licenses:

  core/src/test/java/org/apache/oozie/command/coord/TestCoordActionNotificationXCommand.java
  core/src/test/java/org/apache/oozie/command/wf/TestNotificationXCommand.java
  core/src/test/resources/graphWF.xml
  core/src/test/resources/invalidGraphWF.xml
  workflowgenerator/pom.xml
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/OozieDiagramController.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/OozieWorkflowGenerator.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/property/action/EmailPropertyTable.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/property/action/FSPropertyTable.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/property/action/JavaPropertyTable.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/property/action/MapReducePropertyTable.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/property/action/PigPropertyTable.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/property/action/PipesPropertyTable.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/property/action/ShellPropertyTable.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/property/action/SSHPropertyTable.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/property/action/StreamingPropertyTable.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/property/action/SubWFPropertyTable.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/property/control/DecisionPropertyTable.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/property/control/EndPropertyTable.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/property/control/ForkPropertyTable.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/property/control/JoinPropertyTable.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/property/control/KillPropertyTable.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/property/control/StartPropertyTable.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/property/control/WrkflowPropertyTable.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/property/Property.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/property/PropertyTable.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/property/PropertyTableFactory.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/widget/action/EmailActionWidget.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/widget/action/FSActionWidget.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/widget/action/JavaActionWidget.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/widget/action/MapReduceActionWidget.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/widget/action/PigActionWidget.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/widget/action/PipesActionWidget.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/widget/action/ShellActionWidget.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/widget/action/SSHActionWidget.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/widget/action/StreamingActionWidget.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/widget/action/SubWFActionWidget.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/widget/control/DecisionNodeWidget.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/widget/control/EndNodeWidget.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/widget/control/ForkNodeWidget.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/widget/control/JoinNodeWidget.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/widget/control/KillNodeWidget.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/widget/control/StartNodeWidget.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/client/widget/NodeWidget.java
  workflowgenerator/src/main/java/org/apache/oozie/tools/workflowgenerator/workflowgenerator.gwt.xml
  workflowgenerator/src/main/resources/org/apache/oozie/tools/workflowgenerator/workflowgenerator.gwt.xml
  workflowgenerator/src/main/webapp/WEB-INF/web.xml
  workflowgenerator/src/main/webapp/workflowgenerator.css
  workflowgenerator/src/main/webapp/workflowgenerator.html
  workflowgenerator/workflowgeneratorTest-dev.launch
  workflowgenerator/workflowgeneratorTest-prod.launch
{code}

This must be fixed both in trunk and 3.3.0, else we cannot release.


---

* [OOZIE-976](https://issues.apache.org/jira/browse/OOZIE-976) | *Major* | **add workflowgenerator into distro tarball**

to add workflowgenerator into distro tarball, it is needed to update top-level pom.xml and distro/pom.xml


---

* [OOZIE-966](https://issues.apache.org/jira/browse/OOZIE-966) | *Major* | **Fix formatting in CLI output when GMT-#### and GMT-##:## formatted timezones are used**

If you use a timezone like GMT-#### or GMT-##:## in the oozie CLI, the output looks like this:
{code}
Job ID                                   App Name     Status    User      Group     Started                 Ended                   
------------------------------------------------------------------------------------------------------------------------------------
0000000-120823130824882-oozie-rkan-W     no-op-wf     SUCCEEDED rkanter   -         2012-08-23 13:10 GMT-07:002012-08-23 13:10 GMT-07:00
------------------------------------------------------------------------------------------------------------------------------------
{code}

The problem is that "GMT-07:00" is 9 characters while it normally only prints out a 3 or 4 character timezone (e.g. "PST").  

We should also stop hiding these from the list of available timezones.  

The Web UI doesn't have this problem because the columns are resizable.  However, we should add some "basic" GMT offsets to the time zone combo box.


---

* [OOZIE-897](https://issues.apache.org/jira/browse/OOZIE-897) | *Major* | **remove special build handling for sqoop testcase**

currently the build excludes the sqoop tests (in main POM) and has a profile (in core POM) to use a hadoop JAR from cloudera.

I've done a quick test and it seems Apache Hadoop 1.0.1 is good not for the current sqoop (we are still using a SNAPSHOT as they didn't cut a release0.

We should fully test this is the case and remove the exclusion and the profile mentioned above, thus always running the sqoop testcase.


---

* [OOZIE-894](https://issues.apache.org/jira/browse/OOZIE-894) | *Major* | **support for hive in Oozie CLI**

add support for 'oozie hive' in the CLI


---

* [OOZIE-809](https://issues.apache.org/jira/browse/OOZIE-809) | *Major* | **MySQL TEXT columns should be MEDIUMTEXT**

When working with large number of inputs and outputs, there is data truncation error in the following fields - COORD\_ACTIONS.action\_xml, COORD\_ACTIONS.missing\_dependencies, COORD\_ACTIONS.run\_conf, WF\_JOBS.conf.

In general, all TEXT fields should be changed to MEDIUMTEXT in MySQL


---

* [OOZIE-674](https://issues.apache.org/jira/browse/OOZIE-674) | *Major* | **resolveInstanceRange doesn't work for EL extensions**

I have an EL extension today(0,0) which maps to start day of nominal time. This is used to specify startInstance, endInstance and instance in dataIn and dataOut of coordinator.

In CoordCommandUtils.resolveInstanceRange(), getInstanceNumber has to return the instance number with respect to current. So, for coord-action-create-inst context, I have mapped today to current and hence getInstanceNumber returns the correct number. But later in resolveInstanceRange(), getFuncType is called with startInstance value which is today in this case and it maps to UNEXPECTED and throws up. getFuncType should be passed the evaluation of coord-action-create-inst context


---

* [OOZIE-670](https://issues.apache.org/jira/browse/OOZIE-670) | *Major* | **Merge addtowar and oozie-setup scripts into one**

Same reasoning that OOZIE-669, this would simplify usage and documentation.


---

* [OOZIE-611](https://issues.apache.org/jira/browse/OOZIE-611) | *Major* | **distcp action does not have documentation**

The discp action does not have a twiki page.


---

* [OOZIE-561](https://issues.apache.org/jira/browse/OOZIE-561) | *Major* | **Integrate Oozie with HCatalog**

With the incubation of HCatalog, we have a mechanism to abstract data and storage on HDFS. A natural progression for Oozie is to interact with HCatalog to facilitate the interplay between MapReduce, Pig and Hive. In addition, the support for notification in HCatalog will alleviate (and not eliminate) the need to poll HDFS for data sets represented as tables and partitions.



