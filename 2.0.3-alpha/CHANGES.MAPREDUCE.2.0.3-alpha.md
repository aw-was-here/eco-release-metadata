# Hadoop Changelog

## Release 2.0.3-alpha - 2013-02-14

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-4928](https://issues.apache.org/jira/browse/MAPREDUCE-4928) | Use token request messages defined in hadoop common |  Major | applicationmaster, security | Suresh Srinivas | Suresh Srinivas |
| [MAPREDUCE-4123](https://issues.apache.org/jira/browse/MAPREDUCE-4123) | ./mapred groups gives NoClassDefFoundError |  Critical | mrv2 | Nishan Shetty | Devaraj K |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-4808](https://issues.apache.org/jira/browse/MAPREDUCE-4808) | Refactor MapOutput and MergeManager to facilitate reuse by Shuffle implementations |  Major | . | Arun C Murthy | Mariappan Asokan |
| [MAPREDUCE-4520](https://issues.apache.org/jira/browse/MAPREDUCE-4520) | Add experimental support for MR AM to schedule CPUs along-with memory |  Major | . | Arun C Murthy | Arun C Murthy |
| [MAPREDUCE-3678](https://issues.apache.org/jira/browse/MAPREDUCE-3678) | The Map tasks logs should have the value of input split it processed |  Major | mrv1, mrv2 | Bejoy KS | Harsh J |
| [MAPREDUCE-2454](https://issues.apache.org/jira/browse/MAPREDUCE-2454) | Allow external sorter plugin for MR |  Minor | . | Mariappan Asokan | Mariappan Asokan |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-4977](https://issues.apache.org/jira/browse/MAPREDUCE-4977) | Documentation for pluggable shuffle and pluggable sort |  Major | documentation | Alejandro Abdelnur | Alejandro Abdelnur |
| [MAPREDUCE-4971](https://issues.apache.org/jira/browse/MAPREDUCE-4971) | Minor extensibility enhancements |  Minor | . | Arun C Murthy | Arun C Murthy |
| [MAPREDUCE-4949](https://issues.apache.org/jira/browse/MAPREDUCE-4949) | Enable multiple pi jobs to run in parallel |  Minor | examples | Sandy Ryza | Sandy Ryza |
| [MAPREDUCE-4907](https://issues.apache.org/jira/browse/MAPREDUCE-4907) | TrackerDistributedCacheManager issues too many getFileStatus calls |  Major | mrv1, tasktracker | Sandy Ryza | Sandy Ryza |
| [MAPREDUCE-4899](https://issues.apache.org/jira/browse/MAPREDUCE-4899) | Provide a plugin to the Yarn Web App Proxy to generate tracking links for M/R appllications given the ID |  Major | . | Derek Dagit | Derek Dagit |
| [MAPREDUCE-4845](https://issues.apache.org/jira/browse/MAPREDUCE-4845) | ClusterStatus.getMaxMemory() and getUsedMemory() exist in MR1 but not MR2 |  Major | client | Sandy Ryza | Sandy Ryza |
| [MAPREDUCE-4838](https://issues.apache.org/jira/browse/MAPREDUCE-4838) | Add extra info to JH files |  Major | . | Arun C Murthy | Zhijie Shen |
| [MAPREDUCE-4822](https://issues.apache.org/jira/browse/MAPREDUCE-4822) | Unnecessary conversions in History Events |  Trivial | jobhistoryserver | Robert Joseph Evans | Chu Tong |
| [MAPREDUCE-4811](https://issues.apache.org/jira/browse/MAPREDUCE-4811) | JobHistoryServer should show when it was started in WebUI About page |  Minor | jobhistoryserver, mrv2 | Ravi Prakash | Ravi Prakash |
| [MAPREDUCE-4810](https://issues.apache.org/jira/browse/MAPREDUCE-4810) | Add admin command options for ApplicationMaster |  Minor | applicationmaster | Jason Lowe | Jerry Chen |
| [MAPREDUCE-4802](https://issues.apache.org/jira/browse/MAPREDUCE-4802) | Takes a long time to load the task list on the AM for large jobs |  Major | mr-am, mrv2, webapps | Ravi Prakash | Ravi Prakash |
| [MAPREDUCE-4777](https://issues.apache.org/jira/browse/MAPREDUCE-4777) | In TestIFile, testIFileReaderWithCodec relies on testIFileWriterWithCodec |  Minor | . | Sandy Ryza | Sandy Ryza |
| [MAPREDUCE-4764](https://issues.apache.org/jira/browse/MAPREDUCE-4764) | repair test org.apache.hadoop.mapreduce.security.TestBinaryTokenFile |  Major | . | Ivan A. Veselovsky |  |
| [MAPREDUCE-4763](https://issues.apache.org/jira/browse/MAPREDUCE-4763) | repair test org.apache.hadoop.mapreduce.security.TestUmbilicalProtocolWithJobToken |  Minor | . | Ivan A. Veselovsky |  |
| [MAPREDUCE-4752](https://issues.apache.org/jira/browse/MAPREDUCE-4752) | Reduce MR AM memory usage through String Interning |  Major | mrv2 | Robert Joseph Evans | Robert Joseph Evans |
| [MAPREDUCE-4736](https://issues.apache.org/jira/browse/MAPREDUCE-4736) | Remove obsolete option [-rootDir] from TestDFSIO |  Trivial | test | Brandon Li | Brandon Li |
| [MAPREDUCE-4723](https://issues.apache.org/jira/browse/MAPREDUCE-4723) | Fix warnings found by findbugs 2 |  Major | . | Sandy Ryza | Sandy Ryza |
| [MAPREDUCE-4703](https://issues.apache.org/jira/browse/MAPREDUCE-4703) | Add the ability to start the MiniMRClientCluster using the configurations used before it is being stopped. |  Major | mrv1, mrv2, test | Ahmed Radwan | Ahmed Radwan |
| [MAPREDUCE-4666](https://issues.apache.org/jira/browse/MAPREDUCE-4666) | JVM metrics for history server |  Minor | jobhistoryserver | Jason Lowe | Jason Lowe |
| [MAPREDUCE-4616](https://issues.apache.org/jira/browse/MAPREDUCE-4616) | Improvement to MultipleOutputs javadocs |  Minor | documentation | Tony Burton | Tony Burton |
| [MAPREDUCE-4517](https://issues.apache.org/jira/browse/MAPREDUCE-4517) | Too many INFO messages written out during AM to RM heartbeat |  Minor | applicationmaster | James Kinley | Jason Lowe |
| [MAPREDUCE-4458](https://issues.apache.org/jira/browse/MAPREDUCE-4458) | Warn if java.library.path is used for AM or Task |  Major | mrv2 | Robert Joseph Evans | Robert Parker |
| [MAPREDUCE-4229](https://issues.apache.org/jira/browse/MAPREDUCE-4229) | Counter names' memory usage can be decreased by interning |  Major | jobtracker | Todd Lipcon | Miomir Boljanovic |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-4969](https://issues.apache.org/jira/browse/MAPREDUCE-4969) | TestKeyValueTextInputFormat test fails with Open JDK 7 |  Major | test | Arpit Agarwal | Arpit Agarwal |
| [MAPREDUCE-4953](https://issues.apache.org/jira/browse/MAPREDUCE-4953) | HadoopPipes misuses fprintf |  Major | pipes | Andy Isaacson | Andy Isaacson |
| [MAPREDUCE-4948](https://issues.apache.org/jira/browse/MAPREDUCE-4948) | TestYARNRunner.testHistoryServerToken failed on trunk |  Critical | client | Junping Du | Junping Du |
| [MAPREDUCE-4946](https://issues.apache.org/jira/browse/MAPREDUCE-4946) | Type conversion of map completion events leads to performance problems with large jobs |  Critical | mr-am | Jason Lowe | Jason Lowe |
| [MAPREDUCE-4936](https://issues.apache.org/jira/browse/MAPREDUCE-4936) | JobImpl uber checks for cpu are wrong |  Critical | mrv2 | Daryn Sharp | Arun C Murthy |
| [MAPREDUCE-4934](https://issues.apache.org/jira/browse/MAPREDUCE-4934) | Maven RAT plugin is not checking all source files |  Critical | build | Thomas Graves | Thomas Graves |
| [MAPREDUCE-4925](https://issues.apache.org/jira/browse/MAPREDUCE-4925) | The pentomino option parser may be buggy |  Major | examples | Karthik Kambatla | Karthik Kambatla |
| [MAPREDUCE-4924](https://issues.apache.org/jira/browse/MAPREDUCE-4924) | flakey test: org.apache.hadoop.mapred.TestClusterMRNotification.testMR |  Trivial | mrv1 | Robert Kanter | Robert Kanter |
| [MAPREDUCE-4923](https://issues.apache.org/jira/browse/MAPREDUCE-4923) | Add toString method to TaggedInputSplit |  Minor | mrv1, mrv2, task | Sandy Ryza | Sandy Ryza |
| [MAPREDUCE-4921](https://issues.apache.org/jira/browse/MAPREDUCE-4921) | JobClient should acquire HS token with RM principal |  Blocker | client | Daryn Sharp | Daryn Sharp |
| [MAPREDUCE-4920](https://issues.apache.org/jira/browse/MAPREDUCE-4920) | Use security token protobuf definition from hadoop common |  Major | . | Vinod Kumar Vavilapalli | Suresh Srinivas |
| [MAPREDUCE-4913](https://issues.apache.org/jira/browse/MAPREDUCE-4913) | TestMRAppMaster#testMRAppMasterMissingStaging occasionally exits |  Major | mr-am | Jason Lowe | Jason Lowe |
| [MAPREDUCE-4902](https://issues.apache.org/jira/browse/MAPREDUCE-4902) | Fix typo "receievd" should be "received" in log output |  Trivial | . | Albert Chu | Albert Chu |
| [MAPREDUCE-4895](https://issues.apache.org/jira/browse/MAPREDUCE-4895) | Fix compilation failure of org.apache.hadoop.mapred.gridmix.TestResourceUsageEmulators |  Major | . | Dennis Y | Dennis Y |
| [MAPREDUCE-4894](https://issues.apache.org/jira/browse/MAPREDUCE-4894) | Renewal / cancellation of JobHistory tokens |  Blocker | jobhistoryserver, mrv2 | Siddharth Seth | Siddharth Seth |
| [MAPREDUCE-4893](https://issues.apache.org/jira/browse/MAPREDUCE-4893) | MR AppMaster can do sub-optimal assignment of containers to map tasks leading to poor node locality |  Major | applicationmaster | Bikas Saha | Bikas Saha |
| [MAPREDUCE-4890](https://issues.apache.org/jira/browse/MAPREDUCE-4890) | Invalid TaskImpl state transitions when task fails while speculating |  Critical | mr-am | Jason Lowe | Jason Lowe |
| [MAPREDUCE-4884](https://issues.apache.org/jira/browse/MAPREDUCE-4884) | streaming tests fail to start MiniMRCluster due to "Queue configuration missing child queue names for root" |  Major | contrib/streaming, test | Chris Nauroth | Chris Nauroth |
| [MAPREDUCE-4861](https://issues.apache.org/jira/browse/MAPREDUCE-4861) | Cleanup: Remove unused mapreduce.security.token.DelegationTokenRenewal |  Major | . | Karthik Kambatla | Karthik Kambatla |
| [MAPREDUCE-4856](https://issues.apache.org/jira/browse/MAPREDUCE-4856) | TestJobOutputCommitter uses same directory as TestJobCleanup |  Major | test | Sandy Ryza | Sandy Ryza |
| [MAPREDUCE-4848](https://issues.apache.org/jira/browse/MAPREDUCE-4848) | TaskAttemptContext cast error during AM recovery |  Major | mr-am | Jason Lowe | Jerry Chen |
| [MAPREDUCE-4842](https://issues.apache.org/jira/browse/MAPREDUCE-4842) | Shuffle race can hang reducer |  Blocker | mrv2 | Jason Lowe | Mariappan Asokan |
| [MAPREDUCE-4836](https://issues.apache.org/jira/browse/MAPREDUCE-4836) | Elapsed time for running tasks on AM web UI tasks page is 0 |  Major | . | Ravi Prakash | Ravi Prakash |
| [MAPREDUCE-4833](https://issues.apache.org/jira/browse/MAPREDUCE-4833) | Task can get stuck in FAIL\_CONTAINER\_CLEANUP |  Critical | applicationmaster, mrv2 | Robert Joseph Evans | Robert Parker |
| [MAPREDUCE-4832](https://issues.apache.org/jira/browse/MAPREDUCE-4832) | MR AM can get in a split brain situation |  Critical | applicationmaster | Robert Joseph Evans | Jason Lowe |
| [MAPREDUCE-4825](https://issues.apache.org/jira/browse/MAPREDUCE-4825) | JobImpl.finished doesn't expect ERROR as a final job state |  Major | mr-am | Jason Lowe | Jason Lowe |
| [MAPREDUCE-4819](https://issues.apache.org/jira/browse/MAPREDUCE-4819) | AM can rerun job after reporting final job status to the client |  Blocker | mr-am | Jason Lowe | Bikas Saha |
| [MAPREDUCE-4817](https://issues.apache.org/jira/browse/MAPREDUCE-4817) | Hardcoded task ping timeout kills tasks localizing large amounts of data |  Critical | applicationmaster, mr-am | Jason Lowe | Thomas Graves |
| [MAPREDUCE-4813](https://issues.apache.org/jira/browse/MAPREDUCE-4813) | AM timing out during job commit |  Critical | applicationmaster | Jason Lowe | Jason Lowe |
| [MAPREDUCE-4801](https://issues.apache.org/jira/browse/MAPREDUCE-4801) | ShuffleHandler can generate large logs due to prematurely closed channels |  Critical | . | Jason Lowe | Jason Lowe |
| [MAPREDUCE-4797](https://issues.apache.org/jira/browse/MAPREDUCE-4797) | LocalContainerAllocator can loop forever trying to contact the RM |  Major | applicationmaster | Jason Lowe | Jason Lowe |
| [MAPREDUCE-4787](https://issues.apache.org/jira/browse/MAPREDUCE-4787) | TestJobMonitorAndPrint is broken |  Major | test | Ravi Prakash | Robert Parker |
| [MAPREDUCE-4786](https://issues.apache.org/jira/browse/MAPREDUCE-4786) | Job End Notification retry interval is 5 milliseconds by default |  Major | mrv2 | Ravi Prakash | Ravi Prakash |
| [MAPREDUCE-4782](https://issues.apache.org/jira/browse/MAPREDUCE-4782) | NLineInputFormat skips first line of last InputSplit |  Blocker | client | Mark Fuhs | Mark Fuhs |
| [MAPREDUCE-4778](https://issues.apache.org/jira/browse/MAPREDUCE-4778) | Fair scheduler event log is only written if directory exists on HDFS |  Major | jobtracker, scheduler | Sandy Ryza | Sandy Ryza |
| [MAPREDUCE-4774](https://issues.apache.org/jira/browse/MAPREDUCE-4774) | JobImpl does not handle asynchronous task events in FAILED state |  Major | applicationmaster, mrv2 | Ivan A. Veselovsky | Jason Lowe |
| [MAPREDUCE-4772](https://issues.apache.org/jira/browse/MAPREDUCE-4772) | Fetch failures can take way too long for a map to be restarted |  Critical | mrv2 | Robert Joseph Evans | Robert Joseph Evans |
| [MAPREDUCE-4771](https://issues.apache.org/jira/browse/MAPREDUCE-4771) | KeyFieldBasedPartitioner not partitioning properly when configured |  Major | mrv2 | Jason Lowe | Jason Lowe |
| [MAPREDUCE-4751](https://issues.apache.org/jira/browse/MAPREDUCE-4751) | AM stuck in KILL\_WAIT for days |  Major | . | Ravi Prakash | Vinod Kumar Vavilapalli |
| [MAPREDUCE-4748](https://issues.apache.org/jira/browse/MAPREDUCE-4748) | Invalid event: T\_ATTEMPT\_SUCCEEDED at SUCCEEDED |  Blocker | mrv2 | Robert Joseph Evans | Jason Lowe |
| [MAPREDUCE-4746](https://issues.apache.org/jira/browse/MAPREDUCE-4746) | The MR Application Master does not have a config to set environment variables |  Major | applicationmaster | Robert Parker | Robert Parker |
| [MAPREDUCE-4741](https://issues.apache.org/jira/browse/MAPREDUCE-4741) | WARN and ERROR messages logged during normal AM shutdown |  Minor | applicationmaster, mrv2 | Jason Lowe | Vinod Kumar Vavilapalli |
| [MAPREDUCE-4740](https://issues.apache.org/jira/browse/MAPREDUCE-4740) | only .jars can be added to the Distributed Cache classpath |  Blocker | mrv2 | Robert Joseph Evans | Robert Joseph Evans |
| [MAPREDUCE-4733](https://issues.apache.org/jira/browse/MAPREDUCE-4733) | Reducer can fail to make progress during shuffle if too many reducers complete consecutively |  Major | applicationmaster, mrv2 | Jason Lowe | Jason Lowe |
| [MAPREDUCE-4730](https://issues.apache.org/jira/browse/MAPREDUCE-4730) | AM crashes due to OOM while serving up map task completion events |  Blocker | applicationmaster, mrv2 | Jason Lowe | Jason Lowe |
| [MAPREDUCE-4729](https://issues.apache.org/jira/browse/MAPREDUCE-4729) | job history UI not showing all job attempts |  Major | jobhistoryserver | Thomas Graves | Vinod Kumar Vavilapalli |
| [MAPREDUCE-4724](https://issues.apache.org/jira/browse/MAPREDUCE-4724) | job history web ui applications page should be sorted to display last app first |  Major | jobhistoryserver | Thomas Graves | Thomas Graves |
| [MAPREDUCE-4721](https://issues.apache.org/jira/browse/MAPREDUCE-4721) | Task startup time in JHS is same as job startup time. |  Major | jobhistoryserver | Ravi Prakash | Ravi Prakash |
| [MAPREDUCE-4720](https://issues.apache.org/jira/browse/MAPREDUCE-4720) | Browser thinks History Server main page JS is taking too long |  Major | . | Robert Joseph Evans | Ravi Prakash |
| [MAPREDUCE-4712](https://issues.apache.org/jira/browse/MAPREDUCE-4712) | mr-jobhistory-daemon.sh doesn't accept --config |  Major | jobhistoryserver | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [MAPREDUCE-4705](https://issues.apache.org/jira/browse/MAPREDUCE-4705) | Historyserver links expire before the history data does |  Critical | jobhistoryserver, mrv2 | Jason Lowe | Jason Lowe |
| [MAPREDUCE-4681](https://issues.apache.org/jira/browse/MAPREDUCE-4681) | HDFS-3910 broke MR tests |  Major | . | Arun C Murthy | Arun C Murthy |
| [MAPREDUCE-4678](https://issues.apache.org/jira/browse/MAPREDUCE-4678) | Running the Pentomino example with defaults throws java.lang.NegativeArraySizeException |  Minor | examples | Chris McConnell | Chris McConnell |
| [MAPREDUCE-4674](https://issues.apache.org/jira/browse/MAPREDUCE-4674) | Hadoop examples secondarysort has a typo "secondarysrot" in the usage |  Minor | . | Robert Justice | Robert Justice |
| [MAPREDUCE-4654](https://issues.apache.org/jira/browse/MAPREDUCE-4654) | TestDistCp is @ignored |  Critical | test | Colin Patrick McCabe | Sandy Ryza |
| [MAPREDUCE-4637](https://issues.apache.org/jira/browse/MAPREDUCE-4637) | Killing an unassigned task attempt causes the job to fail |  Major | mrv2 | Tom White | Mayank Bansal |
| [MAPREDUCE-4607](https://issues.apache.org/jira/browse/MAPREDUCE-4607) | Race condition in ReduceTask completion can result in Task being incorrectly failed |  Major | . | Bikas Saha | Bikas Saha |
| [MAPREDUCE-4554](https://issues.apache.org/jira/browse/MAPREDUCE-4554) | Job Credentials are not transmitted if security is turned off |  Major | job submission, security | Benoy Antony | Benoy Antony |
| [MAPREDUCE-4521](https://issues.apache.org/jira/browse/MAPREDUCE-4521) | mapreduce.user.classpath.first incompatibility with 0.20/1.x |  Major | mrv2 | Jason Lowe | Ravi Prakash |
| [MAPREDUCE-4479](https://issues.apache.org/jira/browse/MAPREDUCE-4479) | Fix parameter order in assertEquals() in TestCombineInputFileFormat.java |  Major | test | Mariappan Asokan | Mariappan Asokan |
| [MAPREDUCE-4425](https://issues.apache.org/jira/browse/MAPREDUCE-4425) | Speculation + Fetch failures can lead to a hung job |  Critical | mrv2 | Siddharth Seth | Jason Lowe |
| [MAPREDUCE-4279](https://issues.apache.org/jira/browse/MAPREDUCE-4279) | getClusterStatus() fails with null pointer exception when running jobs in local mode |  Major | jobtracker | Rahul Jain | Devaraj K |
| [MAPREDUCE-4278](https://issues.apache.org/jira/browse/MAPREDUCE-4278) | cannot run two local jobs in parallel from the same gateway. |  Major | . | Araceli Henley | Sandy Ryza |
| [MAPREDUCE-4272](https://issues.apache.org/jira/browse/MAPREDUCE-4272) | SortedRanges.Range#compareTo is not spec compliant |  Major | task | Luke Lu | Yu Gao |
| [MAPREDUCE-2264](https://issues.apache.org/jira/browse/MAPREDUCE-2264) | Job status exceeds 100% in some cases |  Major | jobtracker | Adam Kramer | Devaraj K |
| [MAPREDUCE-1806](https://issues.apache.org/jira/browse/MAPREDUCE-1806) | CombineFileInputFormat does not work with paths not on default FS |  Major | harchive | Paul Yang | Gera Shegalov |
| [MAPREDUCE-1700](https://issues.apache.org/jira/browse/MAPREDUCE-1700) | User supplied dependencies may conflict with MapReduce system JARs |  Major | task | Tom White | Tom White |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-4905](https://issues.apache.org/jira/browse/MAPREDUCE-4905) | test org.apache.hadoop.mapred.pipes |  Major | . | Aleksey Gorshkov | Aleksey Gorshkov |
| [MAPREDUCE-4803](https://issues.apache.org/jira/browse/MAPREDUCE-4803) | Duplicate copies of TestIndexCache.java |  Minor | test | Mariappan Asokan | Mariappan Asokan |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-4809](https://issues.apache.org/jira/browse/MAPREDUCE-4809) | Change visibility of classes for pluggable sort changes |  Major | . | Arun C Murthy | Mariappan Asokan |
| [MAPREDUCE-4807](https://issues.apache.org/jira/browse/MAPREDUCE-4807) | Allow MapOutputBuffer to be pluggable |  Major | . | Arun C Murthy | Mariappan Asokan |
| [MAPREDUCE-4049](https://issues.apache.org/jira/browse/MAPREDUCE-4049) | plugin for generic shuffle service |  Major | performance, task, tasktracker | Avner BenHanoch | Avner BenHanoch |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-4596](https://issues.apache.org/jira/browse/MAPREDUCE-4596) | Split StateMachine state from states seen by MRClientProtocol (for Job, Task, TaskAttempt) |  Major | applicationmaster, mrv2 | Siddharth Seth | Siddharth Seth |
| [MAPREDUCE-4266](https://issues.apache.org/jira/browse/MAPREDUCE-4266) | remove Ant remnants from MR |  Major | build | Alejandro Abdelnur | Alejandro Abdelnur |


