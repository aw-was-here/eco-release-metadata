
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
#  trunk Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [OOZIE-2268](https://issues.apache.org/jira/browse/OOZIE-2268) | *Major* | **Update ActiveMQ version for security and other fixes**

We're currently using ActiveMQ 5.8.0.  We should use the latest Java 6 compatible version, 5.10.2, which includes various security and bug fixes.


---

* [OOZIE-2264](https://issues.apache.org/jira/browse/OOZIE-2264) | *Major* | **Fix coord:offset(n,"DAY") to resolve correct data set**

Time unit was hardcoded as "Minute" when materializing the instances.


---

* [OOZIE-2260](https://issues.apache.org/jira/browse/OOZIE-2260) | *Major* | **Only set "java.io.tmpdir" to "./tmp"  for the AM**

OOZIE-2209 sets java.io.tmpdir to ./tmp for AM, map and reduce for both launcher and action jobs.

MapReduceChildJVM already sets java.io.tmpdir to ./tmp
{code}
Path childTmpDir = new Path(Environment.PWD.$(),
        YarnConfiguration.DEFAULT\_CONTAINER\_TEMP\_DIR);
    vargs.add("-Djava.io.tmpdir=" + childTmpDir);
{code}

So it is only needed to be set for AM in launcher because of uber mode.


---

* [OOZIE-2236](https://issues.apache.org/jira/browse/OOZIE-2236) | *Critical* | **Need to package hive-hcatalog-server-extensions.jar in the hcatalog sharelib**

We used to package hive-hcatalog-server-extensions-<version>.jar with hcatalog sharelib which is depended on by upstream projects like Falcon.   We have to add it back as it became unavailable after the latest POM changes


---

* [OOZIE-2215](https://issues.apache.org/jira/browse/OOZIE-2215) | *Major* | **Support glob in FS EL function**

this patch is to support glob in fs\_exists EL funct similar to OOZIE-1471.  need to set upper-limit in number of files to check, not to slow down oozie server.


---

* [OOZIE-2178](https://issues.apache.org/jira/browse/OOZIE-2178) | *Major* | **fix javadoc to compile on JDK8**

creating this JIRA from discussion on OOZIE-2177 

JDK8 enforce strict HTML4 checking on javadoc.  
when compiling oozie on JDK8, hit following javadoc error
{quote}
[ERROR] /Users/egashira/Projects/git/aoozie-cms/client/src/main/java/org/apache/oozie/cli/OozieCLI.java:205: error: self-closing element not allowed
[ERROR] * <p/>
{quote}

the fix is to change self-closing element <p/>, <br/> to <p></p>, <br></br>


---

* [OOZIE-2160](https://issues.apache.org/jira/browse/OOZIE-2160) | *Major* | **Support attachment in email action**

Make email action able to attach a file on HDFS.


---

* [OOZIE-2109](https://issues.apache.org/jira/browse/OOZIE-2109) | *Major* | **Possibly incorrect job ID may be printed for map-reduce action errors**

Follow-up to OOZIE-2024, based on comment posted there:

{quote}
bq. "JA017: Could not lookup launched hadoop job ID [job\_12048563533402\_20232] which was associated with action [1129661-1909061866638236-oozie-oozi-W@java-action]. Failing this action!”

Is not that incorrect? After Id swap, jobId will be child jobId not launcher jobId.
{quote}


---

* [OOZIE-2102](https://issues.apache.org/jira/browse/OOZIE-2102) | *Blocker* | **Streaming actions are broken cause of incorrect method signature**

OOZIE-1954 changed the submitJob(Configuration) signature to submitJob(JobConf), but this change was not caught and made in the StreamingMain class cause it did not use an Override annotation.

Streaming jobs no longer succeed on trunk as a result. Pipe jobs still do as the change was made in it instead.


---

* [OOZIE-2079](https://issues.apache.org/jira/browse/OOZIE-2079) | *Major* | **Notify when a coordinator action status becomes RUNNING**

When a coordinator-action is materialized with WAITING status, Oozie calls the oozie.coord.action.notification.url as expected, but it does not when the coordinator-action status changes to RUNNING.

It appears that CoordActionStartXCommand.execute() (CoordActionStartXCommand.java) method does not invoke a CoordActionNotificationXCommand().


---

* [OOZIE-2076](https://issues.apache.org/jira/browse/OOZIE-2076) | *Major* | **Sharelib usage improvement**

1.  By default enable oozie.use.system.libpath.
If the action property oozie.action.sharelib.for.#ACTIONTYPE# is set, it can safely be assumed that the user wants to use sharelib.
Property oozie.action.sharelib.for.#ACTIONTYPE# itself indicate that user want to use sharelib.
User can still disable sharelib for WF by  setting oozie.use.system.libpath=false.

We will have  server level setting( oozie.use.system.libpath.default = false ) to support backward compatibility. 

2.
User should be able to enable/disable sharelib for action
( ex oozie.use.system.libpath = false ) at action level. 
=oozie.use.system.libpath= defined at action level overrides job setting.  


3. Remove duplicate jars.
ex. Hcat and hive have lots of duplicate jars. If user want to use both sharelib, too many duplicate jars may cause slow job submission.


---

* [OOZIE-2072](https://issues.apache.org/jira/browse/OOZIE-2072) | *Minor* | **Improve the whitelist error message by showing allowed values**

The current error is vague and causes users to google and find odd solutions such as disabling the entire whitelist (which causes other issues).

Proposing to change the error to also print whitelist set in the message returned back, so they at least realise why they are getting that.


---

* [OOZIE-2031](https://issues.apache.org/jira/browse/OOZIE-2031) | *Trivial* | **Credentials doc uses 'hive' name for HBase Credentials example**

On http://oozie.apache.org/docs/4.0.1//DG\_UnifiedCredentialsModule.html, the below is observed carrying the typo 'hive=' instead of 'hbase=':

{code}
<property>
      <name>oozie.credentials.credentialclasses</name>
      <value>
         hcat=org.apache.oozie.action.hadoop.HCatCredentials,
         hive=org.apache.oozie.action.hadoop.HbaseCredentials
      </value>
   </property>
{code}


---

* [OOZIE-2024](https://issues.apache.org/jira/browse/OOZIE-2024) | *Minor* | **Confusing message when a job can't be looked up by JavaActionExecutor**

When you have issues where JT is missing job history or JHS is lacking it, causing JavaActionExecutor to fail when its RunningJob is returned back as null, it prints a very confusing message such as below, that can read instead as "This is not the Job ID I was supposed to find" instead of what is meant to be "I could not find this Job ID on the server":

{code}
"JA017: Unknown hadoop job [job\_12048563533402\_20232] associated with action [1129661-1909061866638236-oozie-oozi-W@java-action]. Failing this action!”
{code}

What would instead be clearer is this:

{code}
"JA017: Could not lookup launched hadoop job ID [job\_12048563533402\_20232] which was associated with action [1129661-1909061866638236-oozie-oozi-W@java-action]. Failing this action!”
{code}

Patch attached, feel free to refine further during commit if the text is unsatisfactory in parts.


---

* [OOZIE-1885](https://issues.apache.org/jira/browse/OOZIE-1885) | *Major* | **Query optimization for StatusTransitService**

{code}
 private void coordTransit() throws JPAExecutorException, CommandException {
            List<CoordinatorJobBean> pendingJobCheckList = null;
            if (lastInstanceStartTime == null) {
                LOG.info("Running coordinator status service first instance");
                // this is the first instance, we need to check for all pending jobs;
                pendingJobCheckList = jpaService.execute(new CoordJobsGetPendingJPAExecutor(limit));
            }
            else {
                LOG.info("Running coordinator status service from last instance time =  "
                        + DateUtils.formatDateOozieTZ(lastInstanceStartTime));
                // this is not the first instance, we should only check jobs
                // that have actions or jobs been
                // updated >= start time of last service run;
                List<CoordinatorActionBean> actionsList = CoordActionQueryExecutor.getInstance().getList(
                        CoordActionQuery.GET\_COORD\_ACTIONS\_BY\_LAST\_MODIFIED\_TIME, lastInstanceStartTime);
                Set<String> coordIds = new HashSet<String>();
                for (CoordinatorActionBean action : actionsList) {
                    coordIds.add(action.getJobId());
                }

                pendingJobCheckList = new ArrayList<CoordinatorJobBean>();
                for (String coordId : coordIds.toArray(new String[coordIds.size()])) {
                    CoordinatorJobBean coordJob;
                    try {
                        coordJob = CoordJobQueryExecutor.getInstance().get(CoordJobQuery.GET\_COORD\_JOB, coordId);
                    }
                    catch (JPAExecutorException jpaee) {
                        if (jpaee.getErrorCode().equals(ErrorCode.E0604)) {
                            LOG.warn("Exception happened during StatusTransitRunnable; Coordinator Job doesn't exist", jpaee);
                            continue;
                        } else {
                            throw jpaee;
                        }
                    }
                    // Running coord job might have pending false
                    Job.Status coordJobStatus = coordJob.getStatus();
                    if ((coordJob.isPending() || coordJobStatus.equals(Job.Status.PAUSED)
                            || coordJobStatus.equals(Job.Status.RUNNING)
                            || coordJobStatus.equals(Job.Status.RUNNINGWITHERROR)
                            || coordJobStatus.equals(Job.Status.PAUSEDWITHERROR))
                            && !coordJobStatus.equals(Job.Status.IGNORED)) {
                        pendingJobCheckList.add(coordJob);
                    }
                }
                pendingJobCheckList.addAll(CoordJobQueryExecutor.getInstance().getList(
                        CoordJobQuery.GET\_COORD\_JOBS\_CHANGED, lastInstanceStartTime));
            }
            aggregateCoordJobsStatus(pendingJobCheckList);
        }
    }

{code}


This could be done in one sql, something like 
select w.id, w.status, w.pending from CoordinatorJobBean w where w.startTimestamp <= :matTime AND (w.statusStr = 'PREP' OR w.statusStr = 'RUNNING' or w.statusStr = 'RUNNINGWITHERROR' or w.statusStr= 'PAUSEDWITHERROR' and w.statusStr <> 'IGNORED') w.id in  ( select a.jobId from CoordinatorActionBean a where a.lastModifiedTimestamp >= :lastModifiedTime groupby a.jobId)

Same for bundleTransit().


---

* [OOZIE-1872](https://issues.apache.org/jira/browse/OOZIE-1872) | *Major* | **TestCoordActionInputCheckXCommand.testActionInputCheckLatestActionCreationTime is failing for past couple of builds**

https://builds.apache.org/job/oozie-trunk-precommit-build/1291/testReport/junit/org.apache.oozie.command.coord/TestCoordActionInputCheckXCommand/testActionInputCheckLatestActionCreationTime/


---

* [OOZIE-1845](https://issues.apache.org/jira/browse/OOZIE-1845) | *Major* | **Coord submit command doesn't honor conf "materialization\_window" while calling CoordMaterializeTransitionXCommand**

{code}
 /**
     * Queue MaterializeTransitionXCommand
     */
    protected void queueMaterializeTransitionXCommand(String jobId) {
        // submit a command to materialize jobs for the next 1 hour (3600 secs)
        // so we don't wait 10 mins for the Service to run.
        queue(new CoordMaterializeTransitionXCommand(jobId, 3600), 100);
    }
{code}


---

* [OOZIE-1836](https://issues.apache.org/jira/browse/OOZIE-1836) | *Major* | **Documenation is wrong for the timestamp() EL Function**

The documentation for the {{timestamp()}} EL Function says:
{quote}
It returns the UTC current date and time in W3C format down to the second (YYYY-MM-DDThh:mm:ss.sZ). I.e.: 1997-07-16T19:20:30.45Z
{quote}
https://oozie.apache.org/docs/4.0.1/WorkflowFunctionalSpec.html#a4.2\_Expression\_Language\_Functions

This is incorrect.  It's ISO08601 format in Oozie processing timezone down to the minute (like other Oozie time formats).  The Javadoc is even correct:
{code:java}
    /**
     * Return the current datetime in ISO8601 using Oozie processing timezone, yyyy-MM-ddTHH:mmZ. i.e.:
     * 1997-07-16T19:20Z
     *
     * @return the formatted time string.
     */
    public static String timestamp() {
        return DateUtils.formatDateOozieTZ(new Date());
    }
{code}

We should update the documentation to match the javadoc


---

* [OOZIE-1756](https://issues.apache.org/jira/browse/OOZIE-1756) | *Major* | **hadoop-auth version is wrong if profile isn't selected**

In the hadooplibs for the non-sepecified version of hadoop (e.g. if you build with no profile (i.e. Hadoop 1) and look at the hadoop-2 sharelib), it will have the wrong version of the hadoop-auth jar.


---

* [OOZIE-1743](https://issues.apache.org/jira/browse/OOZIE-1743) | *Major* | **generateDocs is failing**

[ERROR] Failed to execute goal org.apache.maven.plugins:maven-site-plugin:2.0-beta-6:site (default) on project oozie-docs: Execution default of goal org.apache.maven.plugins:maven-site-plugin:2.0-beta-6:site failed: Plugin org.apache.maven.plugins:maven-site-plugin:2.0-beta-6 or one of its dependencies could not be resolved: The following artifacts could not be resolved: org.apache.maven.doxia:doxia-module-twiki:jar:1.0-alpha-9.2y, org.apache.maven.doxia:doxia-core:jar:1.0-alpha-9.2y: Could not find artifact org.apache.maven.doxia:doxia-module-twiki:jar:1.0-alpha-9.2y in repository.cloudera.com (https://repository.cloudera.com/artifactory/ext-release-local) -> [Help 1]

If you can't reproduce, delete ~/.m2/repository/org/apache/maven/doxia/ and try.


---

* [OOZIE-1736](https://issues.apache.org/jira/browse/OOZIE-1736) | *Major* | **Switch to Hadoop 2.3.0 for the hadoop-2 profile**

We should update the "hadoop-2" profile to use Hadoop 2.3.0 instead of 2.2.0.  Y! has done some QE runs on it and I also just tried all of the unit tests.


---

* [OOZIE-1729](https://issues.apache.org/jira/browse/OOZIE-1729) | *Major* | **Add support to Hadoop-2 for AM restarts of the launcher job**

Once we update our Hadoop-2 to Hadoop 2.4.0, we can add support for AM restarts of the launcher job (OOZIE-1722) for Hadoop-2 instead of just Hadoop-3.  

This should be fairly trivial: just need to copy
{{./hadooplibs/hadoop-utils-3/src/main/java/org/apache/oozie/action/hadoop/LauncherMainHadoopUtils.java}}
in place of
{{./hadooplibs/hadoop-utils-2/src/main/java/org/apache/oozie/action/hadoop/LauncherMainHadoopUtils.java}}


---

* [OOZIE-1630](https://issues.apache.org/jira/browse/OOZIE-1630) | *Major* | **\<prepare\> operations fail when path doesn't have scheme**

hitting exception "Scheme not present in uri /user/aaaa/test\_hbase\_workflow/output" when doing something like <mkdir path ="/user/aaaa/test\_hbase\_workflow/output"/>.  it should default to hdfs when no scheme specified considering typical use case, also use default namenode if not specified.


---

* [OOZIE-1626](https://issues.apache.org/jira/browse/OOZIE-1626) | *Major* | **pig action pop-up is not working properly in UI**

pop-up doesn't show up when pig job failed and externalChildIDs is "null" (as string)


---

* [OOZIE-1582](https://issues.apache.org/jira/browse/OOZIE-1582) | *Major* | **Bump up Tomcat version to 6.0.37**

Tomcat 6.0.37 fixes two security issues (http://tomcat.apache.org/security-6.html).  We should upgrade from 6.0.36 to incorporate them.


---

* [OOZIE-1573](https://issues.apache.org/jira/browse/OOZIE-1573) | *Major* | **coord:tzOffset() gives incorrect offset for daylight saving timezones**

Case 1:

Daily job run through oozie bundle
Coordinator time Zone: UTC
Dataset timezone: America/New\_York
Start Time: 2013-10-13T00:00Z
End Time: 2013-10-14T00:00Z

Return from tzOffset() function: 4 hrs (which is correct)


Case 2:

Daily job run through oozie bundle
Coordinator time Zone: UTC
Dataset timezone: America/New\_York
Start Time: 2012-11-13T00:00Z
End Time: 2012-11-14T00:00Z

Return from tzOffset() function: 4 hrs (which is not correct as difference between GMT and America/New\_York timezone should be 5 hrs).


---

* [OOZIE-1565](https://issues.apache.org/jira/browse/OOZIE-1565) | *Major* | **OOZIE-1481 should only affect v2 of the API, not v1**

OOZIE-1481 changed the behavior of the v1 API such that when getting coord info, specifying {{len=0}} now returns 0 actions instead of all actions.  Also, on the REST call, not specifying any {{len}} parameter is interpreted by the Oozie server as {{len=0}}.  

This is a logically backwards incompatible change.  We should keep this change in the v2 API, but change the v1 API back to the original (incorrect) behavior.


---

* [OOZIE-1563](https://issues.apache.org/jira/browse/OOZIE-1563) | *Major* | **colt jar includes GPL licence**

I believe the colt jar is introduced in the SLA feature. The "Hep" class inside the jar has GPL licence which restricts the usage and distribution of oozie.


---

* [OOZIE-1551](https://issues.apache.org/jira/browse/OOZIE-1551) | *Blocker* | **Change hadoop-2 profile to use 2.2.0**

We should change the hadoop-2 profile to use 2.2.0 (GA) instead of 2.2.0-SNAPSHOT now that its been released.


---

* [OOZIE-1542](https://issues.apache.org/jira/browse/OOZIE-1542) | *Minor* | **When extjs isn't installed, the web UI is unhelpfully blank**

When extjs isn't installed, the web UI page is currently unhelpfully blank (it has the oozie logo and docs link).  In the past (when it used to be an html page instead of a jsp page) it had some text to let the user know that they have to install extjs to see the UI.  

It would be good to put back the same or similar text; otherwise, users may be confused why they can't see the UI if they forget to install extjs.


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

* [OOZIE-1299](https://issues.apache.org/jira/browse/OOZIE-1299) | *Major* | **Rerunning the main workflow to rerun sub-workflow and not create new one**

Consider the case that the oozie workflow  calls sub-workflow. If we kill the main workflow and rerun the same does not rerun the same sub-workflow,instead it creates new sub-workflow.
For example:
Workflow Id 0000004-130401101507291-oozie-oozi-W calls the sub-workflow 0000005-130401101507291-oozie-oozi-W.Sub-workflow fails (0000005-130401101507291-oozie-oozi-W i.e main workflow (0000004-130401101507291-oozie-oozi-W) also be killed).If we rerun the main workflow(0000004-130401101507291-oozie-oozi-W)again, it doesn't rerun the same sub-workflow(0000005-130401101507291-oozie-oozi-W),instead it call another sub-workflow(0000006-130401101507291-oozie-oozi-W).


---

* [OOZIE-1284](https://issues.apache.org/jira/browse/OOZIE-1284) | *Major* | **oozie.service.SchemaService.wf.ext.schemas in oozie-site is missing some newer xsd files**

In oozie-site.xml, we have the following listed under {{oozie.service.SchemaService.wf.ext.schemas}}:
{noformat}
shell-action-0.1.xsd
shell-action-0.2.xsd
email-action-0.1.xsd
hive-action-0.2.xsd
hive-action-0.3.xsd
sqoop-action-0.2.xsd
sqoop-action-0.3.xsd
ssh-action-0.1.xsd
distcp-action-0.1.xsd
{noformat}

It's missing the following xsd files:
{noformat}
distcp-action-0.2.xsd
hive-action-0.4.xsd
shell-action-0.3.xsd
sqoop-action-0.4.xsd
{noformat}

If I recall correctly, this will cause Oozie to reject workflows using those versions of those extension action schemas.


---

* [OOZIE-1236](https://issues.apache.org/jira/browse/OOZIE-1236) | *Minor* | **Documentation on capture-output element for Java action has incorrect property to get the filename**

In the documentation [here|http://oozie.apache.org/docs/3.3.1/WorkflowFunctionalSpec.html#a3.2.7\_Java\_Action], it says:

{quote}
The capture-output element can be used to propagate values back into Oozie context, which can then be accessed via EL-functions. This needs to be written out as a java properties format file. The filename is obtained via a System property specified by the constant JavaMainMapper.OOZIE\_JAVA\_MAIN\_CAPTURE\_OUTPUT\_FILE
{quote}

That property is incorrect; it should be {{oozie.action.output.properties}}, which is what the [Java action cookbook|https://cwiki.apache.org/OOZIE/java-cookbook.html] has.


---

* [OOZIE-658](https://issues.apache.org/jira/browse/OOZIE-658) | *Minor* | **Some doc improvements for HowToContribute**

HowToContribute can have a couple of things added to it:

* Base directory for SVN reviewboard for uploading patches: http://svn.apache.org/repos/asf/incubator/oozie/trunk

* Tag to search for, for easy fixes to get started into contributing: newbie

Will post a patch.


---

* [OOZIE-44](https://issues.apache.org/jira/browse/OOZIE-44) | *Trivial* | **Oozie JIRA changes that'd be favorable**

None of this is urgent to do at the moment (given all the work you're already going through -- let me know if I can help in any way too!). But am just compiling some notes here to make the Oozie jira work/act more like the other ecosystem elements:

- Enable formatting in comments. Right now tags like {code}, (-), etc. do not work. These are useful in filing reports or talking in general.
- Limit down issue types in this JIRA instance. HDFS, for example, has just Bug, Task, Improvement, New Feature, Wish types. OOZIE seems to have a load of things.

(Will add more notes as a comment as I notice them while contributing things)



