# Hadoop Changelog

## Release 2.0.0-alpha - 2012-05-23

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-4219](https://issues.apache.org/jira/browse/MAPREDUCE-4219) | make default container-executor.conf.dir be a path relative to the container-executor binary |  Major | security | Roman Shaposhnik | Roman Shaposhnik |
| [MAPREDUCE-4138](https://issues.apache.org/jira/browse/MAPREDUCE-4138) | Reduce memory usage of counters due to non-static nested classes |  Major | . | Tom White | Tom White |
| [MAPREDUCE-4103](https://issues.apache.org/jira/browse/MAPREDUCE-4103) | Fix HA docs for changes to shell command fencer args |  Major | documentation | Todd Lipcon | Todd Lipcon |
| [MAPREDUCE-4093](https://issues.apache.org/jira/browse/MAPREDUCE-4093) | Improve RM WebApp start up when proxy address is not set |  Major | mrv2 | Devaraj K | Devaraj K |
| [MAPREDUCE-3991](https://issues.apache.org/jira/browse/MAPREDUCE-3991) | Streaming FAQ has some wrong instructions about input files splitting |  Trivial | documentation | Harsh J | Harsh J |
| [MAPREDUCE-3955](https://issues.apache.org/jira/browse/MAPREDUCE-3955) | Replace ProtoOverHadoopRpcEngine with ProtobufRpcEngine. |  Blocker | mrv2 | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [MAPREDUCE-3909](https://issues.apache.org/jira/browse/MAPREDUCE-3909) | javadoc the Service interfaces |  Trivial | mrv2 | Steve Loughran | Steve Loughran |
| [MAPREDUCE-3885](https://issues.apache.org/jira/browse/MAPREDUCE-3885) | Apply the fix similar to HADOOP-8084 |  Major | mrv2 | Devaraj Das | Devaraj Das |
| [MAPREDUCE-3883](https://issues.apache.org/jira/browse/MAPREDUCE-3883) | Document yarn.nodemanager.delete.debug-delay-sec configuration property |  Minor | documentation, mrv2 | Eugene Koontz | Eugene Koontz |
| [MAPREDUCE-2934](https://issues.apache.org/jira/browse/MAPREDUCE-2934) | MR portion of HADOOP-7607 - Simplify the RPC proxy cleanup process |  Major | mrv2 | Aaron T. Myers | Aaron T. Myers |
| [MAPREDUCE-2887](https://issues.apache.org/jira/browse/MAPREDUCE-2887) | MR changes to match HADOOP-7524 (multiple RPC protocols) |  Major | . | Sanjay Radia | Sanjay Radia |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-4231](https://issues.apache.org/jira/browse/MAPREDUCE-4231) | Update RAID to not to use FSInodeInfo |  Major | contrib/raid | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [MAPREDUCE-4202](https://issues.apache.org/jira/browse/MAPREDUCE-4202) | TestYarnClientProtocolProvider is broken |  Major | test | Daryn Sharp | Daryn Sharp |
| [MAPREDUCE-4193](https://issues.apache.org/jira/browse/MAPREDUCE-4193) | broken doc link for yarn-default.xml in site.xml |  Major | documentation | Patrick Hunt | Patrick Hunt |
| [MAPREDUCE-4147](https://issues.apache.org/jira/browse/MAPREDUCE-4147) | YARN should not have a compile-time dependency on HDFS |  Major | . | Tom White | Tom White |
| [MAPREDUCE-4105](https://issues.apache.org/jira/browse/MAPREDUCE-4105) | Yarn RackResolver ignores rack configurations |  Major | mrv2 | Ahmed Radwan | Ahmed Radwan |
| [MAPREDUCE-4098](https://issues.apache.org/jira/browse/MAPREDUCE-4098) | TestMRApps testSetClasspath fails |  Major | test | Alejandro Abdelnur | Alejandro Abdelnur |
| [MAPREDUCE-4095](https://issues.apache.org/jira/browse/MAPREDUCE-4095) | TestJobInProgress#testLocality uses a bogus topology |  Major | . | Eli Collins | Colin Patrick McCabe |
| [MAPREDUCE-4081](https://issues.apache.org/jira/browse/MAPREDUCE-4081) | TestMROutputFormat.java does not compile |  Blocker | build, mrv2 | Jason Lowe | Jason Lowe |
| [MAPREDUCE-4076](https://issues.apache.org/jira/browse/MAPREDUCE-4076) | Stream job fails with ZipException when use yarn jar command |  Blocker | mrv2 | Devaraj K | Devaraj K |
| [MAPREDUCE-4066](https://issues.apache.org/jira/browse/MAPREDUCE-4066) | To get "yarn.app.mapreduce.am.staging-dir" value, should set the default value |  Minor | job submission, mrv2 | xieguiming | xieguiming |
| [MAPREDUCE-4057](https://issues.apache.org/jira/browse/MAPREDUCE-4057) | Compilation error in RAID |  Major | contrib/raid | Tsz Wo Nicholas Sze | Devaraj K |
| [MAPREDUCE-4008](https://issues.apache.org/jira/browse/MAPREDUCE-4008) | ResourceManager throws MetricsException on start up saying QueueMetrics MBean already exists |  Major | mrv2, scheduler | Devaraj K | Devaraj K |
| [MAPREDUCE-4007](https://issues.apache.org/jira/browse/MAPREDUCE-4007) | JobClient getJob(JobID) should return NULL if the job does not exist (for backwards compatibility) |  Major | mrv2 | Alejandro Abdelnur | Alejandro Abdelnur |
| [MAPREDUCE-3974](https://issues.apache.org/jira/browse/MAPREDUCE-3974) | TestSubmitJob in MR1 tests doesn't compile after HDFS-1623 merge |  Blocker | . | Arun C Murthy | Aaron T. Myers |
| [MAPREDUCE-3958](https://issues.apache.org/jira/browse/MAPREDUCE-3958) | RM: Remove RMNodeState and replace it with NodeState |  Major | mrv2 | Bikas Saha | Bikas Saha |
| [MAPREDUCE-3952](https://issues.apache.org/jira/browse/MAPREDUCE-3952) | In MR2, when Total input paths to process == 1, CombinefileInputFormat.getSplits() returns 0 split. |  Major | mrv2 | Zhenxiao Luo | Bhallamudi Venkata Siva Kamesh |
| [MAPREDUCE-3933](https://issues.apache.org/jira/browse/MAPREDUCE-3933) | Failures because MALLOC\_ARENA\_MAX is not set |  Major | mrv2, test | Ahmed Radwan | Ahmed Radwan |
| [MAPREDUCE-3916](https://issues.apache.org/jira/browse/MAPREDUCE-3916) | various issues with running yarn proxyserver |  Critical | mrv2, resourcemanager, webapps | Roman Shaposhnik | Devaraj K |
| [MAPREDUCE-3869](https://issues.apache.org/jira/browse/MAPREDUCE-3869) | Distributed shell application fails with NoClassDefFoundError |  Blocker | mrv2 | Devaraj K | Devaraj K |
| [MAPREDUCE-3867](https://issues.apache.org/jira/browse/MAPREDUCE-3867) | MiniMRYarn/MiniYarn uses fixed ports |  Major | test | Alejandro Abdelnur | Alejandro Abdelnur |
| [MAPREDUCE-3818](https://issues.apache.org/jira/browse/MAPREDUCE-3818) | Trunk MRV1 compilation is broken. |  Blocker | build, test | Vinod Kumar Vavilapalli | Suresh Srinivas |
| [MAPREDUCE-3740](https://issues.apache.org/jira/browse/MAPREDUCE-3740) | Mapreduce Trunk compilation fails |  Blocker | mrv2 | Devaraj K | Devaraj K |
| [MAPREDUCE-3578](https://issues.apache.org/jira/browse/MAPREDUCE-3578) | starting nodemanager as 'root' gives "Unknown -jvm option" |  Major | nodemanager | Gilad Wolff | Tom White |
| [MAPREDUCE-3545](https://issues.apache.org/jira/browse/MAPREDUCE-3545) | Remove Avro RPC |  Major | . | Suresh Srinivas | Suresh Srinivas |
| [MAPREDUCE-3431](https://issues.apache.org/jira/browse/MAPREDUCE-3431) | NPE in Resource Manager shutdown |  Minor | resourcemanager | Steve Loughran | Steve Loughran |
| [MAPREDUCE-3377](https://issues.apache.org/jira/browse/MAPREDUCE-3377) | Compatibility issue with 0.20.203. |  Major | . | Jane Chen | Jane Chen |
| [MAPREDUCE-3353](https://issues.apache.org/jira/browse/MAPREDUCE-3353) | Need a RM-\>AM channel to inform AMs about faulty/unhealthy/lost nodes |  Major | applicationmaster, mrv2, resourcemanager | Vinod Kumar Vavilapalli | Bikas Saha |
| [MAPREDUCE-3173](https://issues.apache.org/jira/browse/MAPREDUCE-3173) | MRV2 UI doesn't work properly without internet |  Critical | mrv2 | Devaraj K | Devaraj K |
| [MAPREDUCE-2942](https://issues.apache.org/jira/browse/MAPREDUCE-2942) | TestNMAuditLogger.testNMAuditLoggerWithIP failing |  Critical | . | Vinod Kumar Vavilapalli | Thomas Graves |
| [MAPREDUCE-1740](https://issues.apache.org/jira/browse/MAPREDUCE-1740) | NPE in getMatchingLevelForNodes when node locations are variable depth |  Major | jobtracker | Todd Lipcon | Ahmed Radwan |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-4113](https://issues.apache.org/jira/browse/MAPREDUCE-4113) | Fix tests org.apache.hadoop.mapred.TestClusterMRNotification |  Major | mrv2, test | Devaraj K | Devaraj K |
| [MAPREDUCE-4112](https://issues.apache.org/jira/browse/MAPREDUCE-4112) | Fix tests org.apache.hadoop.mapred.TestClusterMapReduceTestCase |  Major | mrv2, test | Devaraj K | Devaraj K |
| [MAPREDUCE-4111](https://issues.apache.org/jira/browse/MAPREDUCE-4111) | Fix tests in org.apache.hadoop.mapred.TestJobName |  Major | mrv2, test | Devaraj K | Devaraj K |
| [MAPREDUCE-4110](https://issues.apache.org/jira/browse/MAPREDUCE-4110) | Fix tests in org.apache.hadoop.mapred.TestMiniMRClasspath & org.apache.hadoop.mapred.TestMiniMRWithDFSWithDistinctUsers |  Major | mrv2, test | Devaraj K | Devaraj K |
| [MAPREDUCE-4108](https://issues.apache.org/jira/browse/MAPREDUCE-4108) | Fix tests in org.apache.hadoop.util.TestRunJar |  Major | mrv2 | Devaraj K | Devaraj K |
| [MAPREDUCE-4107](https://issues.apache.org/jira/browse/MAPREDUCE-4107) | Fix tests in org.apache.hadoop.ipc.TestSocketFactory |  Major | mrv2 | Devaraj K | Devaraj K |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


