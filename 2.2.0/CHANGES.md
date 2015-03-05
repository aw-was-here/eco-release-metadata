# Hadoop Changelog

## Release 2.2.0 - 2015-03-05

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-10020](https://issues.apache.org/jira/browse/HADOOP-10020) | disable symlinks temporarily |  Blocker | (fs) | Colin Patrick McCabe | Sanjay Radia |
| [YARN-1229](https://issues.apache.org/jira/browse/YARN-1229) | Define constraints on Auxiliary Service names. Change ShuffleHandler service name from mapreduce.shuffle to mapreduce_shuffle. |  Blocker | (nodemanager) | Tassapol Athiapinya | Xuan Gong |
| [YARN-1228](https://issues.apache.org/jira/browse/YARN-1228) | Clean up Fair Scheduler configuration loading |  Major | (scheduler) | Sandy Ryza | Sandy Ryza |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-9758](https://issues.apache.org/jira/browse/HADOOP-9758) | Provide configuration option for FileSystem/FileContext symlink resolution |  Major |  | Andrew Wang | Andrew Wang |
| [HADOOP-8315](https://issues.apache.org/jira/browse/HADOOP-8315) | Support SASL-authenticated ZooKeeper in ActiveStandbyElector |  Major | (auto-failover , ha) | Todd Lipcon | Todd Lipcon |
| [HDFS-5308](https://issues.apache.org/jira/browse/HDFS-5308) | Replace HttpConfig#getSchemePrefix with implicit schemes in HDFS JSP  |  Major |  | Haohui Mai | Haohui Mai |
| [HDFS-5256](https://issues.apache.org/jira/browse/HDFS-5256) | Use guava LoadingCache to implement DFSClientCache |  Major | (nfs) | Haohui Mai | Haohui Mai |
| [HDFS-5139](https://issues.apache.org/jira/browse/HDFS-5139) | Remove redundant -R option from setrep |  Major | (tools) | Arpit Agarwal | Arpit Agarwal |
| [HDFS-4817](https://issues.apache.org/jira/browse/HDFS-4817) | make HDFS advisory caching configurable on a per-file basis |  Minor | (hdfs-client) | Colin Patrick McCabe | Colin Patrick McCabe |
| [YARN-1246](https://issues.apache.org/jira/browse/YARN-1246) | Log application status in the rm log when app is done running |  Minor |  | Arpit Gupta | Arpit Gupta |
| [YARN-1213](https://issues.apache.org/jira/browse/YARN-1213) | Restore config to ban submitting to undeclared pools in the Fair Scheduler |  Major | (scheduler) | Sandy Ryza | Sandy Ryza |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-10012](https://issues.apache.org/jira/browse/HADOOP-10012) | Secure Oozie jobs fail with delegation token renewal exception in Namenode HA setup |  Blocker | (ha) | Arpit Gupta | Suresh Srinivas |
| [HADOOP-10003](https://issues.apache.org/jira/browse/HADOOP-10003) | HarFileSystem.listLocatedStatus() fails |  Major | (fs) | Jason Dere |  |
| [HADOOP-9976](https://issues.apache.org/jira/browse/HADOOP-9976) | Different versions of avro and avro-maven-plugin |  Major |  | Karthik Kambatla | Karthik Kambatla |
| [HADOOP-9776](https://issues.apache.org/jira/browse/HADOOP-9776) | HarFileSystem.listStatus() returns invalid authority if port number is empty |  Major | (fs) | shanyu zhao | shanyu zhao |
| [HADOOP-9761](https://issues.apache.org/jira/browse/HADOOP-9761) | ViewFileSystem#rename fails when using DistributedFileSystem |  Blocker | (viewfs) | Andrew Wang | Andrew Wang |
| [HDFS-5300](https://issues.apache.org/jira/browse/HDFS-5300) | FSNameSystem#deleteSnapshot() should not check owner in case of permissions disabled |  Major | (namenode) | Vinayakumar B | Vinayakumar B |
| [HDFS-5299](https://issues.apache.org/jira/browse/HDFS-5299) | DFS client hangs in updatePipeline RPC when failover happened |  Blocker | (namenode) | Vinayakumar B | Vinayakumar B |
| [HDFS-5289](https://issues.apache.org/jira/browse/HDFS-5289) | Race condition in TestRetryCacheWithHA#testCreateSymlink causes spurious test failure |  Major | (test) | Aaron T. Myers | Aaron T. Myers |
| [HDFS-5279](https://issues.apache.org/jira/browse/HDFS-5279) | Guard against NullPointerException in NameNode JSP pages before initialization of FSNamesystem. |  Major | (namenode) | Chris Nauroth | Chris Nauroth |
| [HDFS-5268](https://issues.apache.org/jira/browse/HDFS-5268) | NFS write commit verifier is not set in a few places |  Major | (nfs) | Brandon Li | Brandon Li |
| [HDFS-5265](https://issues.apache.org/jira/browse/HDFS-5265) | Namenode fails to start when dfs.https.port is unspecified |  Major |  | Haohui Mai | Haohui Mai |
| [HDFS-5258](https://issues.apache.org/jira/browse/HDFS-5258) | Skip tests in TestHDFSCLI that are not applicable on Windows. |  Minor | (test) | Chris Nauroth | Chuan Liu |
| [HDFS-5255](https://issues.apache.org/jira/browse/HDFS-5255) | Distcp job fails with hsftp when https is enabled in insecure cluster |  Major |  | Yesha Vora | Arpit Agarwal |
| [HDFS-5251](https://issues.apache.org/jira/browse/HDFS-5251) | Race between the initialization of NameNode and the http server |  Major |  | Haohui Mai | Haohui Mai |
| [HDFS-5228](https://issues.apache.org/jira/browse/HDFS-5228) | The RemoteIterator returned by DistributedFileSystem.listFiles(..) may throw NPE |  Blocker | (hdfs-client) | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-5031](https://issues.apache.org/jira/browse/HDFS-5031) | BlockScanner scans the block multiple times and on restart scans everything |  Blocker | (datanode) | Vinayakumar B | Vinayakumar B |
| [MAPREDUCE-5554](https://issues.apache.org/jira/browse/MAPREDUCE-5554) | hdfs-site.xml included in hadoop-mapreduce-client-jobclient tests jar is breaking tests for downstream components |  Minor | (test) | Robert Kanter | Robert Kanter |
| [MAPREDUCE-5545](https://issues.apache.org/jira/browse/MAPREDUCE-5545) | org.apache.hadoop.mapred.TestTaskAttemptListenerImpl.testCommitWindow times out |  Major |  | Robert Kanter | Robert Kanter |
| [MAPREDUCE-5544](https://issues.apache.org/jira/browse/MAPREDUCE-5544) | JobClient#getJob loads job conf twice |  Major |  | Sandy Ryza | Sandy Ryza |
| [MAPREDUCE-5536](https://issues.apache.org/jira/browse/MAPREDUCE-5536) | mapreduce.jobhistory.webapp.https.address property is not respected |  Blocker |  | Yesha Vora | Omkar Vinit Joshi |
| [MAPREDUCE-5533](https://issues.apache.org/jira/browse/MAPREDUCE-5533) | Speculative execution does not function for reduce |  Major | (applicationmaster) | Tassapol Athiapinya | Xuan Gong |
| [MAPREDUCE-5523](https://issues.apache.org/jira/browse/MAPREDUCE-5523) | Need to add https port related property in Job history server |  Major |  | Omkar Vinit Joshi | Omkar Vinit Joshi |
| [MAPREDUCE-5515](https://issues.apache.org/jira/browse/MAPREDUCE-5515) | Application Manager UI does not appear with Https enabled |  Major |  | Omkar Vinit Joshi | Omkar Vinit Joshi |
| [MAPREDUCE-5513](https://issues.apache.org/jira/browse/MAPREDUCE-5513) | ConcurrentModificationException in JobControl |  Major |  | Jason Lowe | Robert Parker |
| [MAPREDUCE-5503](https://issues.apache.org/jira/browse/MAPREDUCE-5503) | TestMRJobClient.testJobClient is failing |  Blocker | (mrv2) | Jason Lowe | Jian He |
| [MAPREDUCE-5489](https://issues.apache.org/jira/browse/MAPREDUCE-5489) | MR jobs hangs as it does not use the node-blacklisting feature in RM requests |  Critical |  | Yesha Vora | Zhijie Shen |
| [MAPREDUCE-5488](https://issues.apache.org/jira/browse/MAPREDUCE-5488) | Job recovery fails after killing all the running containers for the app |  Major |  | Arpit Gupta | Jian He |
| [MAPREDUCE-5459](https://issues.apache.org/jira/browse/MAPREDUCE-5459) | Update the doc of running MRv1 examples jar on YARN |  Major |  | Zhijie Shen | Zhijie Shen |
| [MAPREDUCE-5442](https://issues.apache.org/jira/browse/MAPREDUCE-5442) | $HADOOP_MAPRED_HOME/$HADOOP_CONF_DIR setting not working on Windows |  Major | (client) | Yingda Chen | Yingda Chen |
| [MAPREDUCE-5170](https://issues.apache.org/jira/browse/MAPREDUCE-5170) | incorrect exception message if min node size &gt; min rack size |  Trivial | (mrv2) | Sangjin Lee | Sangjin Lee |
| [YARN-1278](https://issues.apache.org/jira/browse/YARN-1278) | New AM does not start after rm restart |  Blocker |  | Yesha Vora | Hitesh Shah |
| [YARN-1274](https://issues.apache.org/jira/browse/YARN-1274) | LCE fails to run containers that don't have resources to localize |  Blocker | (nodemanager) | Alejandro Abdelnur | Siddharth Seth |
| [YARN-1273](https://issues.apache.org/jira/browse/YARN-1273) | Distributed shell does not account for start container failures reported asynchronously. |  Major |  | Hitesh Shah | Hitesh Shah |
| [YARN-1271](https://issues.apache.org/jira/browse/YARN-1271) | "Text file busy" errors launching containers again |  Major | (nodemanager) | Sandy Ryza | Sandy Ryza |
| [YARN-1262](https://issues.apache.org/jira/browse/YARN-1262) | TestApplicationCleanup relies on all containers assigned in a single heartbeat |  Major |  | Sandy Ryza | Karthik Kambatla |
| [YARN-1251](https://issues.apache.org/jira/browse/YARN-1251) | TestDistributedShell#TestDSShell failed with timeout |  Major | (applications/distributed-shell) | Junping Du | Xuan Gong |
| [YARN-1247](https://issues.apache.org/jira/browse/YARN-1247) | test-container-executor has gotten out of sync with the changes to container-executor |  Major | (nodemanager) | Roman Shaposhnik | Roman Shaposhnik |
| [YARN-1236](https://issues.apache.org/jira/browse/YARN-1236) | FairScheduler setting queue name in RMApp is not working  |  Major | (resourcemanager) | Sandy Ryza | Sandy Ryza |
| [YARN-1221](https://issues.apache.org/jira/browse/YARN-1221) | With Fair Scheduler, reserved MB reported in RM web UI increases indefinitely |  Major | (resourcemanager , scheduler) | Sandy Ryza | Siqi Li |
| [YARN-1219](https://issues.apache.org/jira/browse/YARN-1219) | FSDownload changes file suffix making FileUtil.unTar() throw exception |  Major | (nodemanager) | shanyu zhao | shanyu zhao |
| [YARN-1215](https://issues.apache.org/jira/browse/YARN-1215) | Yarn URL should include userinfo |  Major | (api) | Chuan Liu | Chuan Liu |
| [YARN-1167](https://issues.apache.org/jira/browse/YARN-1167) | Submitted distributed shell application shows appMasterHost = empty |  Major | (applications/distributed-shell) | Tassapol Athiapinya | Xuan Gong |
| [YARN-1157](https://issues.apache.org/jira/browse/YARN-1157) | ResourceManager UI has invalid tracking URL link for distributed shell application |  Major | (resourcemanager) | Tassapol Athiapinya | Xuan Gong |
| [YARN-1149](https://issues.apache.org/jira/browse/YARN-1149) | NM throws InvalidStateTransitonException: Invalid event: APPLICATION_LOG_HANDLING_FINISHED at RUNNING |  Major |  | Ramya Sunil | Xuan Gong |
| [YARN-1141](https://issues.apache.org/jira/browse/YARN-1141) | Updating resource requests should be decoupled with updating blacklist |  Major |  | Zhijie Shen | Zhijie Shen |
| [YARN-1128](https://issues.apache.org/jira/browse/YARN-1128) | FifoPolicy.computeShares throws NPE on empty list of Schedulables |  Major | (scheduler) | Sandy Ryza | Karthik Kambatla |
| [YARN-1090](https://issues.apache.org/jira/browse/YARN-1090) | Job does not get into Pending State |  Major |  | Yesha Vora | Jian He |
| [YARN-1032](https://issues.apache.org/jira/browse/YARN-1032) | NPE in RackResolve |  Critical |  | Lohit Vijayarenu | Lohit Vijayarenu |
| [YARN-890](https://issues.apache.org/jira/browse/YARN-890) | The roundup for memory values on resource manager UI is misleading |  Major | (resourcemanager) | Trupti Dhavle | Xuan Gong |
| [YARN-876](https://issues.apache.org/jira/browse/YARN-876) | Node resource is added twice when node comes back from unhealthy to healthy |  Major | (resourcemanager) | Peng Zhang | Peng Zhang |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-9948](https://issues.apache.org/jira/browse/HADOOP-9948) | Add a config value to CLITestHelper to skip tests on Windows |  Minor | (test) | Chuan Liu | Chuan Liu |
| [HDFS-5186](https://issues.apache.org/jira/browse/HDFS-5186) | TestFileJournalManager fails on Windows due to file handle leaks |  Minor | (namenode , test) | Chuan Liu | Chuan Liu |
| [MAPREDUCE-5525](https://issues.apache.org/jira/browse/MAPREDUCE-5525) | Increase timeout of TestDFSIO.testAppend and TestMRJobsWithHistoryService.testJobHistoryData |  Minor | (mrv2 , test) | Chuan Liu | Chuan Liu |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


