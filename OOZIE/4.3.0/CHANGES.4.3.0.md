
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
# Apache Oozie Changelog

## Release 4.3.0 - Unreleased (as of 2016-08-18)



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2400](https://issues.apache.org/jira/browse/OOZIE-2400) | Workflow xml configuration parser cannot deal with namespace prefix |  Major | core | Roman Krüger | Lars Francke |
| [OOZIE-2565](https://issues.apache.org/jira/browse/OOZIE-2565) | [Oozie web Console] Make the timezones in settings tab to be sorted by default |  Minor | site | Chandan |  |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-1299](https://issues.apache.org/jira/browse/OOZIE-1299) | Rerunning the main workflow to rerun sub-workflow and not create new one |  Major | workflow | PriyaSundararajan |  |
| [OOZIE-2159](https://issues.apache.org/jira/browse/OOZIE-2159) | 'oozie validate' command should be moved server-side |  Major | . | Robert Kanter | Azrael Seoeun |
| [OOZIE-2187](https://issues.apache.org/jira/browse/OOZIE-2187) | Add a way to specify a default JT/RM and NN |  Major | core | Robert Kanter | Robert Kanter |
| [OOZIE-2245](https://issues.apache.org/jira/browse/OOZIE-2245) | Service to periodically check database schema |  Major | core | Robert Kanter | Robert Kanter |
| [OOZIE-2251](https://issues.apache.org/jira/browse/OOZIE-2251) | Expose instrumental matrices in Realtime Graphing tool |  Major | monitoring | Jaydeep Vishwakarma | Narayan Periwal |
| [OOZIE-2411](https://issues.apache.org/jira/browse/OOZIE-2411) | Add BCC to oozie email action |  Major | action, docs, tests | Ferenc Denes | Ferenc Denes |
| [OOZIE-2185](https://issues.apache.org/jira/browse/OOZIE-2185) | Make oozie cli source conf/oozie-client-env.sh |  Minor | client | Robert Justice | Mike Grimes |
| [OOZIE-1976](https://issues.apache.org/jira/browse/OOZIE-1976) | Specifying coordinator input datasets in more logical ways |  Major | coordinator | Mona Chitnis | Purshotam Shah |
| [OOZIE-2563](https://issues.apache.org/jira/browse/OOZIE-2563) | pass spark-defaults.conf to spark action |  Minor | . | Satish Subhashrao Saley | Satish Subhashrao Saley |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-44](https://issues.apache.org/jira/browse/OOZIE-44) | Oozie JIRA changes that'd be favorable |  Trivial | . | Harsh J |  |
| [OOZIE-658](https://issues.apache.org/jira/browse/OOZIE-658) | Some doc improvements for HowToContribute |  Minor | . | Harsh J | Harsh J |
| [OOZIE-2072](https://issues.apache.org/jira/browse/OOZIE-2072) | Improve the whitelist error message by showing allowed values |  Minor | core | Harsh J | Harsh J |
| [OOZIE-2024](https://issues.apache.org/jira/browse/OOZIE-2024) | Confusing message when a job can't be looked up by JavaActionExecutor |  Minor | action | Harsh J | Harsh J |
| [OOZIE-2271](https://issues.apache.org/jira/browse/OOZIE-2271) | Upgrade Tomcat to 6.0.44 |  Major | security | Robert Kanter | Robert Kanter |
| [OOZIE-2250](https://issues.apache.org/jira/browse/OOZIE-2250) | Show log for WAITING and TIMEDOUT coord actions |  Major | . | Rohini Palaniswamy | Kailong Sheng |
| [OOZIE-2287](https://issues.apache.org/jira/browse/OOZIE-2287) | Add support for deleting hcat partitions in fs action delete |  Major | . | Kailong Sheng | Kailong Sheng |
| [OOZIE-2272](https://issues.apache.org/jira/browse/OOZIE-2272) | Use Hadoop's CredentialProvider for passwords in oozie-site |  Major | security | Robert Kanter | Robert Kanter |
| [OOZIE-2308](https://issues.apache.org/jira/browse/OOZIE-2308) | Add support for bundle:conf() function |  Major | . | Kailong Sheng | Kailong Sheng |
| [OOZIE-2309](https://issues.apache.org/jira/browse/OOZIE-2309) | Enable the coord:dateOffset() function in /coordinator-app/datasets/dataset/@initial-instance |  Major | . | Kailong Sheng | Kailong Sheng |
| [OOZIE-2332](https://issues.apache.org/jira/browse/OOZIE-2332) | Add ability to provide Hive and Hive 2 Action queries inline in workflows |  Minor | action | Prateek Rungta | Prateek Rungta |
| [OOZIE-2343](https://issues.apache.org/jira/browse/OOZIE-2343) | Shell Action should take Oozie Action config and setup HADOOP\_CONF\_DIR |  Major | action | Robert Kanter | Robert Kanter |
| [OOZIE-2277](https://issues.apache.org/jira/browse/OOZIE-2277) | Honor oozie.action.sharelib.for.spark in Spark jobs |  Minor | . | Ryan Brush | Robert Kanter |
| [OOZIE-2356](https://issues.apache.org/jira/browse/OOZIE-2356) | Add a way to enable/disable credentials in a workflow |  Major | security | Robert Kanter | Robert Kanter |
| [OOZIE-2367](https://issues.apache.org/jira/browse/OOZIE-2367) | fs delete should support skipTrash option |  Major | . | Rohini Palaniswamy | Jaydeep Vishwakarma |
| [OOZIE-2402](https://issues.apache.org/jira/browse/OOZIE-2402) | oozie-setup.sh sharelib create takes a long time on large clusters |  Major | tools | Illya Yalovyy | Illya Yalovyy |
| [OOZIE-2437](https://issues.apache.org/jira/browse/OOZIE-2437) | Exclude additional Hadoop dependencies from Spark Sharelib |  Major | . | Robert Kanter | Robert Kanter |
| [OOZIE-2481](https://issues.apache.org/jira/browse/OOZIE-2481) | Add YARN\_CONF\_DIR in the Shell action |  Minor | action | Harsh J | Harsh J |
| [OOZIE-2529](https://issues.apache.org/jira/browse/OOZIE-2529) | Support adding secret keys to Credentials of Launcher |  Minor | . | Satish Subhashrao Saley | Satish Subhashrao Saley |
| [OOZIE-2531](https://issues.apache.org/jira/browse/OOZIE-2531) | Prevent Spark trying for token which is already available |  Major | . | Satish Subhashrao Saley | Satish Subhashrao Saley |
| [OOZIE-2330](https://issues.apache.org/jira/browse/OOZIE-2330) | Spark action should take the global jobTracker and nameNode configs by default and allow file and archive elements |  Minor | action | Wei Yan | Satish Subhashrao Saley |
| [OOZIE-2551](https://issues.apache.org/jira/browse/OOZIE-2551) | Feature request: epoch timestamp generation |  Minor | core | Jacob Tolar | Jacob Tolar |
| [OOZIE-2504](https://issues.apache.org/jira/browse/OOZIE-2504) | Create a log4j.properties under HADOOP\_CONF\_DIR in Shell Action |  Minor | action | Harsh J | Harsh J |
| [OOZIE-2507](https://issues.apache.org/jira/browse/OOZIE-2507) | Expose monitoring via JMX beans in Oozie |  Minor | monitoring | Ferenc Denes | Ferenc Denes |
| [OOZIE-2520](https://issues.apache.org/jira/browse/OOZIE-2520) | SortBy filter for ordering the jobs query results |  Major | core | Abhishek Bafna | Abhishek Bafna |
| [OOZIE-2349](https://issues.apache.org/jira/browse/OOZIE-2349) | Method getCoordJobInfo(String jobId, String filter, int offset, int length, boolean desc) is not present in LocalOozieClientCoord |  Major | . | Narayan Periwal | Narayan Periwal |
| [OOZIE-2574](https://issues.apache.org/jira/browse/OOZIE-2574) | Oozie to support replication-enabled mysql urls |  Major | core | Abhishek Bafna | Abhishek Bafna |
| [OOZIE-2602](https://issues.apache.org/jira/browse/OOZIE-2602) | Upgrade oozie to pig 0.16.0 |  Major | . | Narayan Periwal | Narayan Periwal |
| [OOZIE-1402](https://issues.apache.org/jira/browse/OOZIE-1402) | Increase retry interval for non-progressing coordinator action with fix value |  Minor | core | Mona Chitnis | Satish Subhashrao Saley |
| [OOZIE-2036](https://issues.apache.org/jira/browse/OOZIE-2036) | Drop support for Java 1.6 |  Major | . | Robert Kanter | Peter Cseh |
| [OOZIE-2081](https://issues.apache.org/jira/browse/OOZIE-2081) | WorkflowJob notification to include coordinator action id |  Major | core | Venkatesan Ramachandran | Azrael Seoeun |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-1743](https://issues.apache.org/jira/browse/OOZIE-1743) | generateDocs is failing |  Major | . | Purshotam Shah |  |
| [OOZIE-1845](https://issues.apache.org/jira/browse/OOZIE-1845) | Coord submit command doesn't honor conf "materialization\_window" while calling CoordMaterializeTransitionXCommand |  Major | . | Purshotam Shah |  |
| [OOZIE-1885](https://issues.apache.org/jira/browse/OOZIE-1885) | Query optimization for StatusTransitService |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2031](https://issues.apache.org/jira/browse/OOZIE-2031) | Credentials doc uses 'hive' name for HBase Credentials example |  Trivial | docs | Harsh J | Harsh J |
| [OOZIE-2079](https://issues.apache.org/jira/browse/OOZIE-2079) | Notify when a coordinator action status becomes RUNNING |  Major | core | Venkatesan Ramachandran | Mohammad Kamrul Islam |
| [OOZIE-2076](https://issues.apache.org/jira/browse/OOZIE-2076) | Sharelib usage improvement |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2102](https://issues.apache.org/jira/browse/OOZIE-2102) | Streaming actions are broken cause of incorrect method signature |  Blocker | action | Harsh J | Harsh J |
| [OOZIE-2260](https://issues.apache.org/jira/browse/OOZIE-2260) | Only set "java.io.tmpdir" to "./tmp"  for the AM |  Major | . | Rohini Palaniswamy | Ryota Egashira |
| [OOZIE-2257](https://issues.apache.org/jira/browse/OOZIE-2257) | BundleStatusTransitXCommand doesn't update last modified time. |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2270](https://issues.apache.org/jira/browse/OOZIE-2270) | Audit log doesn't get loaded when "audit log" tab is clicked for coord job |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2215](https://issues.apache.org/jira/browse/OOZIE-2215) | Support glob in FS EL function |  Major | . | Ryota Egashira | Ryota Egashira |
| [OOZIE-2178](https://issues.apache.org/jira/browse/OOZIE-2178) | fix javadoc to compile on JDK8 |  Major | . | Ryota Egashira | Robert Kanter |
| [OOZIE-2268](https://issues.apache.org/jira/browse/OOZIE-2268) | Update ActiveMQ version for security and other fixes |  Major | . | Robert Kanter | Robert Kanter |
| [OOZIE-2264](https://issues.apache.org/jira/browse/OOZIE-2264) | Fix coord:offset(n,"DAY") to resolve correct data set |  Major | . | Kailong Sheng | Kailong Sheng |
| [OOZIE-2266](https://issues.apache.org/jira/browse/OOZIE-2266) | Fix 'total' actions returned in coordinator job info |  Major | core | Sai Chirravuri | Sai Chirravuri |
| [OOZIE-2262](https://issues.apache.org/jira/browse/OOZIE-2262) | Fix log streaming from other server with start/end filter |  Major | . | Kailong Sheng | Kailong Sheng |
| [OOZIE-2286](https://issues.apache.org/jira/browse/OOZIE-2286) | Update Log4j and Log4j-extras to latest 1.2.x release |  Major | . | Robert Kanter | Robert Kanter |
| [OOZIE-2284](https://issues.apache.org/jira/browse/OOZIE-2284) | HBaseCredentials should only add hbase-default.xml and hbase-site.xml to actionConf |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-2285](https://issues.apache.org/jira/browse/OOZIE-2285) | Change in concurrency should trigger coord action ready command |  Major | . | Kailong Sheng | Kailong Sheng |
| [OOZIE-1837](https://issues.apache.org/jira/browse/OOZIE-1837) | LauncherMainHadoopUtils sensitive to clock skew |  Minor | . | Lars Francke | Robert Kanter |
| [OOZIE-2300](https://issues.apache.org/jira/browse/OOZIE-2300) | TestAuthFilterAuthOozieClient.testClientAuthTokenCache fails with Hadoop 2.7.0 and later |  Major | tests | Robert Kanter | Robert Kanter |
| [OOZIE-2289](https://issues.apache.org/jira/browse/OOZIE-2289) | hive-jdbc dependency in core/pom.xml should be compile |  Major | . | Bowen Zhang | Bowen Zhang |
| [OOZIE-2291](https://issues.apache.org/jira/browse/OOZIE-2291) | Hive2 workflow.xml.security should have "cred" in action tag instead of "hive2" tag |  Major | . | Bowen Zhang | Bowen Zhang |
| [OOZIE-2315](https://issues.apache.org/jira/browse/OOZIE-2315) | TestOozieCLI.testshareLibUpdate\_withSecurity fails with Hadoop 2 |  Major | security, tests | Robert Kanter | Robert Kanter |
| [OOZIE-2293](https://issues.apache.org/jira/browse/OOZIE-2293) | Oozie 4.0.1 build failed while building Catalog |  Critical | . | Janarthanan | Ravi Prakash |
| [OOZIE-2320](https://issues.apache.org/jira/browse/OOZIE-2320) | TestZKXLogStreamingService.testStreamingWithMultipleOozieServers\_coordActionList is failing |  Major | tests | Robert Kanter | Robert Kanter |
| [OOZIE-2305](https://issues.apache.org/jira/browse/OOZIE-2305) | Compile Oozie with Hive-1.2.0 |  Major | . | Ravi Prakash | Ravi Prakash |
| [OOZIE-2324](https://issues.apache.org/jira/browse/OOZIE-2324) | A syntax error in the kill node causes the workflow to get stuck and other problems |  Major | . | Robert Kanter | Robert Kanter |
| [OOZIE-2325](https://issues.apache.org/jira/browse/OOZIE-2325) | Shell action fails if user overrides oozie.launcher.mapreduce.map.env |  Major | . | Kailong Sheng | Kailong Sheng |
| [OOZIE-2228](https://issues.apache.org/jira/browse/OOZIE-2228) | Statustransit service doesn't pick bundle with suspend status |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2329](https://issues.apache.org/jira/browse/OOZIE-2329) | Make handling yarn restarts configurable |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2322](https://issues.apache.org/jira/browse/OOZIE-2322) | Oozie Web UI doesn't work with Kerberos in Internet Explorer 10 or 11 and curl |  Blocker | security | Robert Kanter | Robert Kanter |
| [OOZIE-2344](https://issues.apache.org/jira/browse/OOZIE-2344) | Enabling 'oozie.action.jobinfo.enable' doesn't inject the job information into the map/reduce job's configuration. |  Major | . | Akshay Rai | Akshay Rai |
| [OOZIE-2355](https://issues.apache.org/jira/browse/OOZIE-2355) | Hive2 Action doesn't pass along oozie configs to jobconf |  Major | . | Robert Kanter | Robert Kanter |
| [OOZIE-2358](https://issues.apache.org/jira/browse/OOZIE-2358) | Coord rerun cleanup should reuse hcat connections |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [OOZIE-2345](https://issues.apache.org/jira/browse/OOZIE-2345) | Parallel job submission for forked actions |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2360](https://issues.apache.org/jira/browse/OOZIE-2360) | Spark Action fails due to missing mesos jar |  Blocker | action | Robert Kanter | Robert Kanter |
| [OOZIE-2365](https://issues.apache.org/jira/browse/OOZIE-2365) | oozie fail to start when smtp password not set |  Minor | . | Michelle Chiang | Rohini Palaniswamy |
| [OOZIE-2376](https://issues.apache.org/jira/browse/OOZIE-2376) | Default action configs not honored if no \<configuration\> section in workflow |  Major | . | Robert Kanter | Robert Kanter |
| [OOZIE-2377](https://issues.apache.org/jira/browse/OOZIE-2377) | Hive2 Action should not propagate oozie.hive2.\* properties to Beeline |  Major | . | Robert Kanter | Robert Kanter |
| [OOZIE-2379](https://issues.apache.org/jira/browse/OOZIE-2379) | org.apache.oozie.command.coord.TestCoordPushDependencyCheckXCommand.testRequeueOnException is flakey |  Major | tests | Robert Kanter | Robert Kanter |
| [OOZIE-2378](https://issues.apache.org/jira/browse/OOZIE-2378) | org.apache.oozie.client.TestOozieCLI.testAdminInstrumentation is flakey |  Major | tests | Robert Kanter | Robert Kanter |
| [OOZIE-2385](https://issues.apache.org/jira/browse/OOZIE-2385) | org.apache.oozie.TestCoordinatorEngineStreamLog.testCoordLogStreaming is flakey |  Major | tests | Robert Kanter | Robert Kanter |
| [OOZIE-2382](https://issues.apache.org/jira/browse/OOZIE-2382) | org.apache.oozie.action.hadoop.TestPigMain.testPig\_withNullExternalID is flakey |  Major | tests | Robert Kanter | Robert Kanter |
| [OOZIE-2386](https://issues.apache.org/jira/browse/OOZIE-2386) | org.apache.oozie.util.TestXConfiguration.testSubstituteVar is flakey |  Major | tests | Robert Kanter | Robert Kanter |
| [OOZIE-2314](https://issues.apache.org/jira/browse/OOZIE-2314) | Unable to kill old instance child job by workflow or coord rerun by Launcher |  Blocker | . | Jaydeep Vishwakarma | Jaydeep Vishwakarma |
| [OOZIE-2369](https://issues.apache.org/jira/browse/OOZIE-2369) | coord:offset doesn't resolve correctly |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2368](https://issues.apache.org/jira/browse/OOZIE-2368) | coord:dateOffset and coord:dateTzOffset can't be used for coord initial-instance |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2328](https://issues.apache.org/jira/browse/OOZIE-2328) | Coordinator endtime change should check if the last action is in database |  Major | . | Kailong Sheng | Kailong Sheng |
| [OOZIE-2347](https://issues.apache.org/jira/browse/OOZIE-2347) | Remove unnecessary new Configuration()/new jobConf() calls from oozie |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2303](https://issues.apache.org/jira/browse/OOZIE-2303) | Typo in documentation |  Trivial | docs | Lars Francke | Lars Francke |
| [OOZIE-2346](https://issues.apache.org/jira/browse/OOZIE-2346) | Add Oozie job console url and sub-workflow information like the super-parent id and workflow depth into the 'oozie.job.info' property |  Major | . | Akshay Rai | Akshay Rai |
| [OOZIE-2168](https://issues.apache.org/jira/browse/OOZIE-2168) | Oozie flow and action names have 50 char limit |  Major | action | Venkatesan Ramachandran | Akshay Rai |
| [OOZIE-2397](https://issues.apache.org/jira/browse/OOZIE-2397) | LAST\_ONLY and NONE don't properly handle READY actions |  Critical | core | Robert Kanter | Robert Kanter |
| [OOZIE-2413](https://issues.apache.org/jira/browse/OOZIE-2413) | Kerberos credentials can expire if the KDC is slow to respond |  Major | security | Robert Kanter | Robert Kanter |
| [OOZIE-2348](https://issues.apache.org/jira/browse/OOZIE-2348) | Recovery service keeps on recovering coord action of suspended jobs |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2407](https://issues.apache.org/jira/browse/OOZIE-2407) | AbandonedService should not send mail if there is no abandoned coord |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2380](https://issues.apache.org/jira/browse/OOZIE-2380) | Oozie Hive action failed with wrong tmp path |  Major | core | Sergey Svinarchuk | Sergey Svinarchuk |
| [OOZIE-2030](https://issues.apache.org/jira/browse/OOZIE-2030) | Configuration properties from global section is not getting set in Hadoop job conf when using sub-workflow action in Oozie workflow.xml |  Major | action | Peeyush Bishnoi | Jaydeep Vishwakarma |
| [OOZIE-2428](https://issues.apache.org/jira/browse/OOZIE-2428) | TestSLAService, TestSLAEventGeneration flakey tests |  Minor | tests | Ferenc Denes | Ferenc Denes |
| [OOZIE-2435](https://issues.apache.org/jira/browse/OOZIE-2435) | TestCoordChangeXCommand is flakey |  Major | tests | Ferenc Denes | Ferenc Denes |
| [OOZIE-2439](https://issues.apache.org/jira/browse/OOZIE-2439) | FS Action no longer uses name-node from global section or default NN |  Blocker | . | Robert Kanter | Robert Kanter |
| [OOZIE-2419](https://issues.apache.org/jira/browse/OOZIE-2419) | HBase credentials are not correctly proxied |  Major | . | Harsh J | Harsh J |
| [OOZIE-2441](https://issues.apache.org/jira/browse/OOZIE-2441) | SubWorkflow action with propagate-configuration but no global section throws NPE on submit |  Blocker | action | Robert Kanter | Robert Kanter |
| [OOZIE-2165](https://issues.apache.org/jira/browse/OOZIE-2165) | Job log fetching can fail in Oozie HA mode when using doAs impersonation |  Major | HA | Romain Rigaux | Satish Subhashrao Saley |
| [OOZIE-2438](https://issues.apache.org/jira/browse/OOZIE-2438) | Oozie client "jobs -filter" diagnostic message clarification |  Minor | . | Satish Subhashrao Saley | Satish Subhashrao Saley |
| [OOZIE-2434](https://issues.apache.org/jira/browse/OOZIE-2434) | inconsistent coord action status and workflow job status |  Minor | . | Satish Subhashrao Saley | Satish Subhashrao Saley |
| [OOZIE-2432](https://issues.apache.org/jira/browse/OOZIE-2432) | TestPurgeXCommand fails |  Critical | tests | Ferenc Denes | Ferenc Denes |
| [OOZIE-1922](https://issues.apache.org/jira/browse/OOZIE-1922) | MemoryLocksService fails if lock is acquired multiple times in same thread and released |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2394](https://issues.apache.org/jira/browse/OOZIE-2394) | Oozie can execute command without holding lock |  Critical | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2444](https://issues.apache.org/jira/browse/OOZIE-2444) | Need conditional logic in bundles |  Minor | . | Satish Subhashrao Saley | Satish Subhashrao Saley |
| [OOZIE-2312](https://issues.apache.org/jira/browse/OOZIE-2312) | oozie doesn't purge audit and error log |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2222](https://issues.apache.org/jira/browse/OOZIE-2222) | Oozie UI parent job should be clickable |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2431](https://issues.apache.org/jira/browse/OOZIE-2431) | Support hive.metastore.uris as alias for hcat.metastore.uri |  Minor | . | Satish Subhashrao Saley | Satish Subhashrao Saley |
| [OOZIE-2446](https://issues.apache.org/jira/browse/OOZIE-2446) | Job does not fail during submission if non existent credential is specified |  Minor | . | Satish Subhashrao Saley | Satish Subhashrao Saley |
| [OOZIE-2246](https://issues.apache.org/jira/browse/OOZIE-2246) | CoordinatorInputCheckCommand does not behave properly when har file is one of data dependency and doesn't exist |  Major | . | Ryota Egashira | Satish Subhashrao Saley |
| [OOZIE-2472](https://issues.apache.org/jira/browse/OOZIE-2472) | Remove infinite socket timeouts in the Oozie email action |  Major | action | Harsh J | Harsh J |
| [OOZIE-2429](https://issues.apache.org/jira/browse/OOZIE-2429) | TestEventGeneration test is flakey |  Minor | action, tests | Ferenc Denes | Ferenc Denes |
| [OOZIE-2492](https://issues.apache.org/jira/browse/OOZIE-2492) | JSON security issue in js code |  Major | client, security | Ferenc Denes | Ferenc Denes |
| [OOZIE-2486](https://issues.apache.org/jira/browse/OOZIE-2486) | TestSLAEventsGetForFilterJPAExecutor is flakey |  Major | tests | Robert Kanter | Robert Kanter |
| [OOZIE-2474](https://issues.apache.org/jira/browse/OOZIE-2474) | \<job-xml\> is not being applied to the launcher job |  Major | . | Robert Kanter | Robert Kanter |
| [OOZIE-2490](https://issues.apache.org/jira/browse/OOZIE-2490) | Oozie can't set hadoop.security.token.service.use\_ip |  Major | . | Robert Kanter | Robert Kanter |
| [OOZIE-2485](https://issues.apache.org/jira/browse/OOZIE-2485) | Oozie client keeps trying to use expired auth token |  Blocker | client, security | Robert Kanter | Robert Kanter |
| [OOZIE-2489](https://issues.apache.org/jira/browse/OOZIE-2489) | XML parsing is vulnerable |  Major | . | Ferenc Denes | Ferenc Denes |
| [OOZIE-2511](https://issues.apache.org/jira/browse/OOZIE-2511) | SubWorkflow missing variable set from option if config-default is present in parent workflow |  Major | . | Peter Cseh | Attila Sasvari |
| [OOZIE-2391](https://issues.apache.org/jira/browse/OOZIE-2391) | spark-opts value in workflow.xml is not parsed properly |  Major | . | Praveen Bathala | Peter Cseh |
| [OOZIE-2471](https://issues.apache.org/jira/browse/OOZIE-2471) | Show child job url tab for distcp |  Minor | . | Satish Subhashrao Saley | Satish Subhashrao Saley |
| [OOZIE-2510](https://issues.apache.org/jira/browse/OOZIE-2510) | TestLogStreamer.testStreamLog() fails in other timezones |  Minor | core, tests | Peter Bacsko | Peter Bacsko |
| [OOZIE-2509](https://issues.apache.org/jira/browse/OOZIE-2509) | SLA job status can stuck in running state |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2537](https://issues.apache.org/jira/browse/OOZIE-2537) | SqoopMain does not set up log4j properly |  Major | action | Peter Bacsko | Peter Bacsko |
| [OOZIE-2467](https://issues.apache.org/jira/browse/OOZIE-2467) | Oozie can shutdown itself on long GC pause |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2482](https://issues.apache.org/jira/browse/OOZIE-2482) | Pyspark job fails with Oozie |  Major | core, workflow | Alexandre Linte | Satish Subhashrao Saley |
| [OOZIE-2535](https://issues.apache.org/jira/browse/OOZIE-2535) | User can't disable uber mode |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2475](https://issues.apache.org/jira/browse/OOZIE-2475) | Oozie does not cleanup action dir of killed actions |  Major | . | Satish Subhashrao Saley | Satish Subhashrao Saley |
| [OOZIE-2476](https://issues.apache.org/jira/browse/OOZIE-2476) | When one of the action from fork fails with transient error, WF never joins. |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2546](https://issues.apache.org/jira/browse/OOZIE-2546) | Improperly closed resources in OozieDBCLI |  Trivial | tools | Peter Bacsko | Peter Bacsko |
| [OOZIE-2548](https://issues.apache.org/jira/browse/OOZIE-2548) | Flaky test TestZKLocksService.testLockReaper |  Minor | tests | Peter Bacsko | Peter Bacsko |
| [OOZIE-2447](https://issues.apache.org/jira/browse/OOZIE-2447) | Illegal character 0x0 oozie client |  Minor | . | Satish Subhashrao Saley | Satish Subhashrao Saley |
| [OOZIE-2542](https://issues.apache.org/jira/browse/OOZIE-2542) | Option to  disable OpenJPA BrokerImpl finalization |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2503](https://issues.apache.org/jira/browse/OOZIE-2503) | show ChildJobURLs to spark action |  Minor | . | Satish Subhashrao Saley | Satish Subhashrao Saley |
| [OOZIE-2553](https://issues.apache.org/jira/browse/OOZIE-2553) | Cred tag is required for all actions in the workflow even if an action does not require it |  Major | workflow | Venkatesan Ramachandran | Venkatesan Ramachandran |
| [OOZIE-2522](https://issues.apache.org/jira/browse/OOZIE-2522) | There can be multiple coord submit from bundle in case of ZK glitch |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2556](https://issues.apache.org/jira/browse/OOZIE-2556) | TestAbandonedCoordChecker.testCatchupJob is flaky |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2541](https://issues.apache.org/jira/browse/OOZIE-2541) | Possible resource leak in Hive2Credentials |  Trivial | core | Peter Bacsko | Peter Bacsko |
| [OOZIE-2445](https://issues.apache.org/jira/browse/OOZIE-2445) | Doc for -  Specifying coordinator input datasets in more logical ways (OOZIE-1976) |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2550](https://issues.apache.org/jira/browse/OOZIE-2550) | Flaky tests in TestZKUUIDService.java |  Minor | tests | Peter Bacsko | Peter Bacsko |
| [OOZIE-2547](https://issues.apache.org/jira/browse/OOZIE-2547) | Add mapreduce.job.cache.files to spark action |  Minor | . | Satish Subhashrao Saley | Satish Subhashrao Saley |
| [OOZIE-2567](https://issues.apache.org/jira/browse/OOZIE-2567) | HCat connection is not closed while getting hcat cred. |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2570](https://issues.apache.org/jira/browse/OOZIE-2570) | remove  -PtestPatchCompile from patch testing as there is no such profile |  Major | . | Peter Cseh | Peter Cseh |
| [OOZIE-2577](https://issues.apache.org/jira/browse/OOZIE-2577) | Flaky tests TestCoordActionInputCheckXCommand.testTimeout and testTimeoutWithException |  Minor | tests | Peter Bacsko | Peter Bacsko |
| [OOZIE-2362](https://issues.apache.org/jira/browse/OOZIE-2362) | SQL injection in BulkJPAExecutor |  Critical | core, security | thierry accart | Peter Bacsko |
| [OOZIE-2578](https://issues.apache.org/jira/browse/OOZIE-2578) | Oozie example distcp job fails to run within an encrypted zone with checksum match error |  Minor | examples | Peter Bacsko | Peter Bacsko |
| [OOZIE-2436](https://issues.apache.org/jira/browse/OOZIE-2436) | Fork/join workflow fails with "oozie.action.yarn.tag must not be null" |  Major | . | Purshotam Shah | Purshotam Shah |
| [OOZIE-2603](https://issues.apache.org/jira/browse/OOZIE-2603) | Give thread pools a meaningful name in CallableQueueService and SchedulerService |  Minor | core | Peter Bacsko | Peter Bacsko |
| [OOZIE-2587](https://issues.apache.org/jira/browse/OOZIE-2587) | Disable SchedulerService on certain tests |  Minor | . | Peter Bacsko | Peter Bacsko |
| [OOZIE-2579](https://issues.apache.org/jira/browse/OOZIE-2579) | Bulk kill tests in TestBulkWorkflowXCommand might fail because of a race condition |  Minor | . | Peter Bacsko | Peter Bacsko |
| [OOZIE-2581](https://issues.apache.org/jira/browse/OOZIE-2581) | Oozie should reset SecurityManager in finally block |  Major | . | Satish Subhashrao Saley | Satish Subhashrao Saley |
| [OOZIE-2462](https://issues.apache.org/jira/browse/OOZIE-2462) | When calling ParamChecker.notNull() in CoordActionsIgnoreXCommand.java, "Action" should be passed instead of "Action cannot be null". |  Trivial | . | Manjunath Ballur |  |
| [OOZIE-2390](https://issues.apache.org/jira/browse/OOZIE-2390) | Rerun with failed option removing completed output data |  Critical | . | Jaydeep Vishwakarma | Jaydeep Vishwakarma |
| [OOZIE-2515](https://issues.apache.org/jira/browse/OOZIE-2515) | Duplicate information for "Changing endtime/pausetime of a Bundle Job" in CommandLineTool wiki |  Major | docs | Abhishek Bafna | Abhishek Bafna |
| [OOZIE-2506](https://issues.apache.org/jira/browse/OOZIE-2506) | Add logs into RecoverService for logging information about queued commnads |  Major | core | Abhishek Bafna | Abhishek Bafna |
| [OOZIE-2430](https://issues.apache.org/jira/browse/OOZIE-2430) | Add root logger for hive,sqoop action |  Major | . | Satish Subhashrao Saley | Satish Subhashrao Saley |
| [OOZIE-2539](https://issues.apache.org/jira/browse/OOZIE-2539) | Incorrect property key is used for 'hive log4j configuration file for execution mode' |  Major | . | Abhishek Bafna | Abhishek Bafna |
| [OOZIE-2440](https://issues.apache.org/jira/browse/OOZIE-2440) | Exponential re-try policy for workflow action |  Minor | . | Satish Subhashrao Saley | Satish Subhashrao Saley |
| [OOZIE-2555](https://issues.apache.org/jira/browse/OOZIE-2555) | Oozie SSL enable setup does not return port for admin -servers |  Major | core | Abhishek Bafna | Abhishek Bafna |
| [OOZIE-2497](https://issues.apache.org/jira/browse/OOZIE-2497) | Some tests fail on windows due to hard coded URIs |  Major | tests | Abhishek Bafna | Abhishek Bafna |
| [OOZIE-2516](https://issues.apache.org/jira/browse/OOZIE-2516) | Update web service documentation for jobs API |  Major | docs | Abhishek Bafna | Abhishek Bafna |
| [OOZIE-2244](https://issues.apache.org/jira/browse/OOZIE-2244) | Oozie should mask passwords in the logs when logging command arguments |  Critical | . | Venkat Ranganathan | Venkat Ranganathan |
| [OOZIE-2433](https://issues.apache.org/jira/browse/OOZIE-2433) | oozie restart required if oozie metrics to graphing tool broken |  Major | . | Sanjeev T | Narayan Periwal |
| [OOZIE-2496](https://issues.apache.org/jira/browse/OOZIE-2496) | Testcase failure due to environment specific line.separator value |  Major | tests | Abhishek Bafna | Abhishek Bafna |
| [OOZIE-2493](https://issues.apache.org/jira/browse/OOZIE-2493) | TestDistcpMain deletes action.xml from wrong filesystem |  Major | tests | Abhishek Bafna | Abhishek Bafna |
| [OOZIE-2623](https://issues.apache.org/jira/browse/OOZIE-2623) | Oozie should use a dummy OutputFormat |  Major | . | Satish Subhashrao Saley | Satish Subhashrao Saley |
| [OOZIE-2628](https://issues.apache.org/jira/browse/OOZIE-2628) | Fix Workflow EL function return types in Documentation |  Major | docs | Abhishek Bafna | Abhishek Bafna |
| [OOZIE-2512](https://issues.apache.org/jira/browse/OOZIE-2512) | ShareLibservice returns incorrect path for jar |  Major | . | Satish Subhashrao Saley | Satish Subhashrao Saley |
| [OOZIE-2508](https://issues.apache.org/jira/browse/OOZIE-2508) | Documentation change for Coord action rerun [OOZIE-1735] |  Major | . | Satish Subhashrao Saley | Satish Subhashrao Saley |
| [OOZIE-2589](https://issues.apache.org/jira/browse/OOZIE-2589) | CompletedActionXCommand is hardcoded to wrong priority |  Major | core | Linflytang | Linflytang |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2466](https://issues.apache.org/jira/browse/OOZIE-2466) | Repeated failure of TestMetricsInstrumentation.testSamplers |  Trivial | build | Manjunath Ballur | Ferenc Denes |
| [OOZIE-2172](https://issues.apache.org/jira/browse/OOZIE-2172) | ZooKeeper Security Tests failed with JVM IBM JAVA |  Major | HA | pascal oliva | Gaurav Pande |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-1729](https://issues.apache.org/jira/browse/OOZIE-1729) | Add support to Hadoop-2 for AM restarts of the launcher job |  Major | . | Robert Kanter | Jaydeep Vishwakarma |
| [OOZIE-1236](https://issues.apache.org/jira/browse/OOZIE-1236) | Documentation on capture-output element for Java action has incorrect property to get the filename |  Minor | docs | Robert Kanter | Meenakshi Lakshmanan |
| [OOZIE-1836](https://issues.apache.org/jira/browse/OOZIE-1836) | Documenation is wrong for the timestamp() EL Function |  Major | docs | Robert Kanter | Meenakshi Lakshmanan |
| [OOZIE-2318](https://issues.apache.org/jira/browse/OOZIE-2318) | Provide better solution for specifying SSL truststore to Oozie Client |  Major | docs | Robert Kanter | Robert Kanter |
| [OOZIE-2401](https://issues.apache.org/jira/browse/OOZIE-2401) | Typo in twiki docs with FilesAchives instead of FilesArchives |  Trivial | docs | Anthony Rojas | Anthony Rojas |
| [OOZIE-2370](https://issues.apache.org/jira/browse/OOZIE-2370) | Docs for Coordinator Action Status Notification has wrong property name |  Major | docs | Robert Kanter | Eva Andreasson |
| [OOZIE-2173](https://issues.apache.org/jira/browse/OOZIE-2173) | DISCLAIMER.txt still refers to Apache Incubator |  Minor | docs | Robert Kanter | Eva Andreasson |
| [OOZIE-2283](https://issues.apache.org/jira/browse/OOZIE-2283) | Documentation should not say that System.exit is not allowed in Java Action |  Major | docs | Robert Kanter | Eva Andreasson |
| [OOZIE-2342](https://issues.apache.org/jira/browse/OOZIE-2342) | Coordinator docs still mention old SLA system |  Major | docs | Robert Kanter | Satish Subhashrao Saley |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-2452](https://issues.apache.org/jira/browse/OOZIE-2452) | Coordinator Functional Specification - EL Constants Typo |  Trivial | docs | Mark Greene | Mark Greene |
| [OOZIE-2532](https://issues.apache.org/jira/browse/OOZIE-2532) | patch apply does not handle binary files |  Major | . | Peter Cseh | Peter Cseh |
| [OOZIE-2625](https://issues.apache.org/jira/browse/OOZIE-2625) | Drop workflowgenerator |  Major | . | Robert Kanter | Robert Kanter |


