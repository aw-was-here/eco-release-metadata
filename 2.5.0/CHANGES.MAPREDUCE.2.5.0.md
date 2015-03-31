# Hadoop Changelog

## Release 2.5.0 - 2014-08-11

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-5899](https://issues.apache.org/jira/browse/MAPREDUCE-5899) | Support incremental data copy in DistCp |  Major | distcp | Jing Zhao | Jing Zhao |
| [MAPREDUCE-5896](https://issues.apache.org/jira/browse/MAPREDUCE-5896) | InputSplits should indicate which locations have the block cached in memory |  Major | . | Sandy Ryza | Sandy Ryza |
| [MAPREDUCE-5886](https://issues.apache.org/jira/browse/MAPREDUCE-5886) | Allow wordcount example job to accept multiple input paths. |  Minor | examples | Chris Nauroth | Chris Nauroth |
| [MAPREDUCE-5861](https://issues.apache.org/jira/browse/MAPREDUCE-5861) | finishedSubMaps field in LocalContainerLauncher does not need to be volatile |  Minor | . | Ted Yu | Tsuyoshi Ozawa |
| [MAPREDUCE-5825](https://issues.apache.org/jira/browse/MAPREDUCE-5825) | Provide diagnostics for reducers killed during ramp down |  Major | mr-am | Gera Shegalov | Gera Shegalov |
| [MAPREDUCE-5812](https://issues.apache.org/jira/browse/MAPREDUCE-5812) |  Make job context available to OutputCommitter.isRecoverySupported() |  Major | mr-am | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [MAPREDUCE-5809](https://issues.apache.org/jira/browse/MAPREDUCE-5809) | Enhance distcp to support preserving HDFS ACLs. |  Major | distcp | Chris Nauroth | Chris Nauroth |
| [MAPREDUCE-5777](https://issues.apache.org/jira/browse/MAPREDUCE-5777) | Support utf-8 text with BOM (byte order marker) |  Major | . | bc Wong | zhihai xu |
| [MAPREDUCE-5774](https://issues.apache.org/jira/browse/MAPREDUCE-5774) | Job overview in History UI should list reducer phases in chronological order |  Trivial | jobhistoryserver | Gera Shegalov | Gera Shegalov |
| [MAPREDUCE-5402](https://issues.apache.org/jira/browse/MAPREDUCE-5402) | DynamicInputFormat should allow overriding of MAX\_CHUNKS\_TOLERABLE |  Major | distcp, mrv2 | David Rosenstrauch | Tsuyoshi Ozawa |
| [MAPREDUCE-5014](https://issues.apache.org/jira/browse/MAPREDUCE-5014) | Extending DistCp through a custom CopyListing is not possible |  Major | distcp | Srikanth Sundarrajan | Srikanth Sundarrajan |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-6002](https://issues.apache.org/jira/browse/MAPREDUCE-6002) | MR task should prevent report error to AM when process is shutting down |  Major | task | Wangda Tan | Wangda Tan |
| [MAPREDUCE-5952](https://issues.apache.org/jira/browse/MAPREDUCE-5952) | LocalContainerLauncher#renameMapOutputForReduce incorrectly assumes a single dir for mapOutIndex |  Blocker | mr-am, mrv2 | Gera Shegalov | Gera Shegalov |
| [MAPREDUCE-5939](https://issues.apache.org/jira/browse/MAPREDUCE-5939) | StartTime showing up as the epoch time in JHS UI after upgrade |  Major | . | Kihwal Lee | Chen He |
| [MAPREDUCE-5924](https://issues.apache.org/jira/browse/MAPREDUCE-5924) | Windows: Sort Job failed due to 'Invalid event: TA\_COMMIT\_PENDING at COMMIT\_PENDING' |  Major | . | Yesha Vora | Zhijie Shen |
| [MAPREDUCE-5920](https://issues.apache.org/jira/browse/MAPREDUCE-5920) | Add Xattr option in DistCp docs |  Minor | distcp, documentation | Uma Maheswara Rao G | Yi Liu |
| [MAPREDUCE-5898](https://issues.apache.org/jira/browse/MAPREDUCE-5898) | distcp to support preserving HDFS extended attributes(XAttrs) |  Major | distcp | Uma Maheswara Rao G | Yi Liu |
| [MAPREDUCE-5895](https://issues.apache.org/jira/browse/MAPREDUCE-5895) | FileAlreadyExistsException was thrown : Temporary Index File can not be cleaned up because OutputStream doesn't close properly |  Major | client | Kousuke Saruta | Kousuke Saruta |
| [MAPREDUCE-5888](https://issues.apache.org/jira/browse/MAPREDUCE-5888) | Failed job leaves hung AM after it unregisters |  Major | mr-am | Jason Lowe | Jason Lowe |
| [MAPREDUCE-5884](https://issues.apache.org/jira/browse/MAPREDUCE-5884) | History server uses short user name when canceling tokens |  Major | jobhistoryserver, security | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [MAPREDUCE-5874](https://issues.apache.org/jira/browse/MAPREDUCE-5874) | Creating MapReduce REST API section |  Major | documentation | Ravi Prakash | Tsuyoshi Ozawa |
| [MAPREDUCE-5868](https://issues.apache.org/jira/browse/MAPREDUCE-5868) | TestPipeApplication causing nightly build to fail |  Major | test | Jason Lowe | Akira AJISAKA |
| [MAPREDUCE-5862](https://issues.apache.org/jira/browse/MAPREDUCE-5862) | Line records longer than 2x split size aren't handled correctly |  Critical | . | bc Wong | bc Wong |
| [MAPREDUCE-5846](https://issues.apache.org/jira/browse/MAPREDUCE-5846) | Rumen doesn't understand JobQueueChangedEvent |  Major | tools/rumen | Nathan Roberts | Nathan Roberts |
| [MAPREDUCE-5844](https://issues.apache.org/jira/browse/MAPREDUCE-5844) | Add a configurable delay to reducer-preemption |  Major | . | Maysam Yabandeh | Maysam Yabandeh |
| [MAPREDUCE-5837](https://issues.apache.org/jira/browse/MAPREDUCE-5837) | MRAppMaster fails when checking on uber mode |  Critical | . | Haohui Mai | Haohui Mai |
| [MAPREDUCE-5836](https://issues.apache.org/jira/browse/MAPREDUCE-5836) | Fix typo in RandomTextWriter |  Trivial | . | Akira AJISAKA | Akira AJISAKA |
| [MAPREDUCE-5834](https://issues.apache.org/jira/browse/MAPREDUCE-5834) | TestGridMixClasses tests timesout on branch-2 |  Major | . | Mit Desai | Mit Desai |
| [MAPREDUCE-5814](https://issues.apache.org/jira/browse/MAPREDUCE-5814) | fat jar with *-default.xml may fail when mapreduce.job.classloader=true. |  Major | mrv2 | Gera Shegalov | Gera Shegalov |
| [MAPREDUCE-5790](https://issues.apache.org/jira/browse/MAPREDUCE-5790) | Default map hprof profile options do not work |  Blocker | . | Andrew Wang | Gera Shegalov |
| [MAPREDUCE-5775](https://issues.apache.org/jira/browse/MAPREDUCE-5775) | Remove unnecessary job.setNumReduceTasks in SleepJob.createJob |  Minor | . | Liyin Liang | jhanver chand sharma |
| [MAPREDUCE-5765](https://issues.apache.org/jira/browse/MAPREDUCE-5765) | Update hadoop-pipes examples README |  Minor | pipes | Jonathan Eagles | Mit Desai |
| [MAPREDUCE-5759](https://issues.apache.org/jira/browse/MAPREDUCE-5759) | Remove unnecessary conf load in Limits |  Major | . | Sandy Ryza | Sandy Ryza |
| [MAPREDUCE-5749](https://issues.apache.org/jira/browse/MAPREDUCE-5749) | TestRMContainerAllocator#testReportedAppProgress Failed |  Major | . | Hong Shen | Jason Lowe |
| [MAPREDUCE-5713](https://issues.apache.org/jira/browse/MAPREDUCE-5713) | InputFormat and JobConf JavaDoc Fixes |  Trivial | documentation | Ben Robie | Chen He |
| [MAPREDUCE-5671](https://issues.apache.org/jira/browse/MAPREDUCE-5671) | NaN can be created by client and assign to Progress |  Major | . | Chen He | Chen He |
| [MAPREDUCE-5665](https://issues.apache.org/jira/browse/MAPREDUCE-5665) | Add audience annotations to MiniMRYarnCluster and MiniMRCluster |  Major | test | Sandy Ryza | Anubhav Dhoot |
| [MAPREDUCE-5652](https://issues.apache.org/jira/browse/MAPREDUCE-5652) | NM Recovery. ShuffleHandler should handle NM restarts |  Major | . | Karthik Kambatla | Jason Lowe |
| [MAPREDUCE-5517](https://issues.apache.org/jira/browse/MAPREDUCE-5517) | enabling uber mode with 0 reducer still requires mapreduce.reduce.memory.mb to be less than yarn.app.mapreduce.am.resource.mb |  Minor | . | Siqi Li | Siqi Li |
| [MAPREDUCE-5456](https://issues.apache.org/jira/browse/MAPREDUCE-5456) | TestFetcher.testCopyFromHostExtraBytes is missing |  Minor | mrv2, test | Jason Lowe | Jason Lowe |
| [MAPREDUCE-5309](https://issues.apache.org/jira/browse/MAPREDUCE-5309) | 2.0.4 JobHistoryParser can't parse certain failed job history files generated by 2.0.3 history server |  Major | jobhistoryserver, mrv2 | Vrushali C | Rushabh S Shah |
| [MAPREDUCE-4937](https://issues.apache.org/jira/browse/MAPREDUCE-4937) | MR AM handles an oversized split metainfo file poorly |  Major | mr-am | Jason Lowe | Eric Payne |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-5852](https://issues.apache.org/jira/browse/MAPREDUCE-5852) | Prepare MapReduce codebase for JUnit 4.11. |  Minor | test | Chris Nauroth | Chris Nauroth |
| [MAPREDUCE-5804](https://issues.apache.org/jira/browse/MAPREDUCE-5804) | TestMRJobsWithProfiler#testProfiler timesout |  Major | . | Mit Desai | Mit Desai |
| [MAPREDUCE-5642](https://issues.apache.org/jira/browse/MAPREDUCE-5642) | TestMiniMRChildTask fails on Windows |  Minor | test | Chuan Liu | Chuan Liu |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-5900](https://issues.apache.org/jira/browse/MAPREDUCE-5900) | Container preemption interpreted as task failures and eventually job failures |  Major | applicationmaster, mr-am, mrv2 | Mayank Bansal | Mayank Bansal |
| [MAPREDUCE-5639](https://issues.apache.org/jira/browse/MAPREDUCE-5639) | Port DistCp2 document to trunk |  Major | documentation | Akira AJISAKA | Akira AJISAKA |
| [MAPREDUCE-5638](https://issues.apache.org/jira/browse/MAPREDUCE-5638) | Port Hadoop Archives document to trunk |  Major | documentation | Akira AJISAKA | Akira AJISAKA |
| [MAPREDUCE-5637](https://issues.apache.org/jira/browse/MAPREDUCE-5637) | Convert Hadoop Streaming document to APT |  Major | documentation | Akira AJISAKA | Akira AJISAKA |
| [MAPREDUCE-5636](https://issues.apache.org/jira/browse/MAPREDUCE-5636) | Convert MapReduce Tutorial document to APT |  Major | documentation | Akira AJISAKA | Akira AJISAKA |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-4282](https://issues.apache.org/jira/browse/MAPREDUCE-4282) | Convert Forrest docs to APT |  Major | documentation | Eli Collins | Akira AJISAKA |


