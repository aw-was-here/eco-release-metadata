# Apache Hadoop Changelog

## Release 0.23.7 - 2013-04-18

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-395](https://issues.apache.org/jira/browse/HDFS-395) | DFS Scalability: Incremental block reports |  Major | datanode, namenode | dhruba borthakur | Tomasz Nykiel |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-9209](https://issues.apache.org/jira/browse/HADOOP-9209) | Add shell command to dump file checksums |  Major | fs, tools | Todd Lipcon | Todd Lipcon |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-9374](https://issues.apache.org/jira/browse/HADOOP-9374) | Add tokens from -tokenCacheFile into UGI |  Major | security | Daryn Sharp | Daryn Sharp |
| [HADOOP-9352](https://issues.apache.org/jira/browse/HADOOP-9352) | Expose UGI.setLoginUser for tests |  Major | security | Daryn Sharp | Daryn Sharp |
| [HADOOP-9336](https://issues.apache.org/jira/browse/HADOOP-9336) | Allow UGI of current connection to be queried |  Critical | ipc | Daryn Sharp | Daryn Sharp |
| [HADOOP-9216](https://issues.apache.org/jira/browse/HADOOP-9216) | CompressionCodecFactory#getCodecClasses should trim the result of parsing by Configuration. |  Major | io | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [HADOOP-8711](https://issues.apache.org/jira/browse/HADOOP-8711) | provide an option for IPC server users to avoid printing stack information for certain exceptions |  Major | ipc | Brandon Li | Brandon Li |
| [HADOOP-8462](https://issues.apache.org/jira/browse/HADOOP-8462) | Native-code implementation of bzip2 codec |  Major | io | Govind Kamat | Govind Kamat |
| [HADOOP-8214](https://issues.apache.org/jira/browse/HADOOP-8214) | make hadoop script recognize a full set of deprecated commands |  Major | scripts | Roman Shaposhnik | Roman Shaposhnik |
| [HADOOP-8075](https://issues.apache.org/jira/browse/HADOOP-8075) | Lower native-hadoop library log from info to debug |  Major | native | Eli Collins | Hızır Sefa İrken |
| [HADOOP-7358](https://issues.apache.org/jira/browse/HADOOP-7358) | Improve log levels when exceptions caught in RPC handler |  Minor | ipc | Todd Lipcon | Todd Lipcon |
| [HDFS-3817](https://issues.apache.org/jira/browse/HDFS-3817) | avoid printing stack information for SafeModeException |  Major | namenode | Brandon Li | Brandon Li |
| [MAPREDUCE-5079](https://issues.apache.org/jira/browse/MAPREDUCE-5079) | Recovery should restore task state from job history info directly |  Critical | mr-am | Jason Lowe | Jason Lowe |
| [MAPREDUCE-4989](https://issues.apache.org/jira/browse/MAPREDUCE-4989) | JSONify DataTables input data for Attempts page |  Major | jobhistoryserver, mr-am | Ravi Prakash | Ravi Prakash |
| [MAPREDUCE-4949](https://issues.apache.org/jira/browse/MAPREDUCE-4949) | Enable multiple pi jobs to run in parallel |  Minor | examples | Sandy Ryza | Sandy Ryza |
| [MAPREDUCE-4907](https://issues.apache.org/jira/browse/MAPREDUCE-4907) | TrackerDistributedCacheManager issues too many getFileStatus calls |  Major | mrv1, tasktracker | Sandy Ryza | Sandy Ryza |
| [MAPREDUCE-4822](https://issues.apache.org/jira/browse/MAPREDUCE-4822) | Unnecessary conversions in History Events |  Trivial | jobhistoryserver | Robert Joseph Evans | Chu Tong |
| [MAPREDUCE-4458](https://issues.apache.org/jira/browse/MAPREDUCE-4458) | Warn if java.library.path is used for AM or Task |  Major | mrv2 | Robert Joseph Evans | Robert Parker |
| [YARN-525](https://issues.apache.org/jira/browse/YARN-525) | make CS node-locality-delay refreshable |  Major | capacityscheduler | Thomas Graves | Thomas Graves |
| [YARN-443](https://issues.apache.org/jira/browse/YARN-443) | allow OS scheduling priority of NM to be different than the containers it launches |  Major | nodemanager | Thomas Graves | Thomas Graves |
| [YARN-249](https://issues.apache.org/jira/browse/YARN-249) | Capacity Scheduler web page should show list of active users per queue like it used to (in 1.x) |  Major | capacityscheduler | Ravi Prakash | Ravi Prakash |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-9406](https://issues.apache.org/jira/browse/HADOOP-9406) | hadoop-client leaks dependency on JDK tools jar |  Major | build | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-9339](https://issues.apache.org/jira/browse/HADOOP-9339) | IPC.Server incorrectly sets UGI auth type |  Major | ipc | Daryn Sharp | Daryn Sharp |
| [HADOOP-9302](https://issues.apache.org/jira/browse/HADOOP-9302) | HDFS docs not linked from top level |  Major | documentation | Thomas Graves | Andy Isaacson |
| [HADOOP-9289](https://issues.apache.org/jira/browse/HADOOP-9289) | FsShell rm -f fails for non-matching globs |  Blocker | fs | Daryn Sharp | Daryn Sharp |
| [HADOOP-9278](https://issues.apache.org/jira/browse/HADOOP-9278) | HarFileSystem may leak file handle |  Major | fs | Chris Nauroth | Chris Nauroth |
| [HADOOP-9231](https://issues.apache.org/jira/browse/HADOOP-9231) | Parametrize staging URL for the uniformity of distributionManagement |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [HADOOP-9212](https://issues.apache.org/jira/browse/HADOOP-9212) | Potential deadlock in FileSystem.Cache/IPC/UGI |  Major | fs | Tom White | Tom White |
| [HADOOP-9193](https://issues.apache.org/jira/browse/HADOOP-9193) | hadoop script can inadvertently expand wildcard arguments when delegating to hdfs script |  Minor | scripts | Jason Lowe | Andy Isaacson |
| [HADOOP-9190](https://issues.apache.org/jira/browse/HADOOP-9190) | packaging docs is broken |  Major | documentation | Thomas Graves | Andy Isaacson |
| [HADOOP-9154](https://issues.apache.org/jira/browse/HADOOP-9154) | SortedMapWritable#putAll() doesn't add key/value classes to the map |  Major | io | Karthik Kambatla | Karthik Kambatla |
| [HADOOP-9124](https://issues.apache.org/jira/browse/HADOOP-9124) | SortedMapWritable violates contract of Map interface for equals() and hashCode() |  Minor | io | Patrick Hunt | Surenkumar Nihalani |
| [HADOOP-8857](https://issues.apache.org/jira/browse/HADOOP-8857) | hadoop.http.authentication.signature.secret.file docs should not state that secret is randomly generated |  Minor | security | Eli Collins | Alejandro Abdelnur |
| [HADOOP-8816](https://issues.apache.org/jira/browse/HADOOP-8816) | HTTP Error 413 full HEAD if using kerberos authentication |  Major | net | Moritz Moeller | Moritz Moeller |
| [HADOOP-8346](https://issues.apache.org/jira/browse/HADOOP-8346) | Changes to support Kerberos with non Sun JVM (HADOOP-6941) broke SPNEGO |  Blocker | security | Alejandro Abdelnur | Devaraj Das |
| [HADOOP-8251](https://issues.apache.org/jira/browse/HADOOP-8251) | SecurityUtil.fetchServiceTicket broken after HADOOP-6941 |  Blocker | security | Todd Lipcon | Todd Lipcon |
| [HDFS-4649](https://issues.apache.org/jira/browse/HDFS-4649) | Webhdfs cannot list large directories |  Blocker | namenode, security, webhdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-4581](https://issues.apache.org/jira/browse/HDFS-4581) | DataNode#checkDiskError should not be called on network errors |  Major | datanode | Rohit Kochar | Rohit Kochar |
| [HDFS-4553](https://issues.apache.org/jira/browse/HDFS-4553) | Webhdfs will NPE on some unexpected response codes |  Major | webhdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-4532](https://issues.apache.org/jira/browse/HDFS-4532) | RPC call queue may fill due to current user lookup |  Critical | namenode | Daryn Sharp | Daryn Sharp |
| [HDFS-4495](https://issues.apache.org/jira/browse/HDFS-4495) | Allow client-side lease renewal to be retried beyond soft-limit |  Major | hdfs-client | Kihwal Lee | Kihwal Lee |
| [HDFS-4462](https://issues.apache.org/jira/browse/HDFS-4462) | 2NN will fail to checkpoint after an HDFS upgrade from a pre-federation version of HDFS |  Major | namenode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-4426](https://issues.apache.org/jira/browse/HDFS-4426) | Secondary namenode shuts down immediately after startup |  Blocker | namenode | Jason Lowe | Arpit Agarwal |
| [HDFS-4288](https://issues.apache.org/jira/browse/HDFS-4288) | NN accepts incremental BR as IBR in safemode |  Critical | namenode | Daryn Sharp | Daryn Sharp |
| [HDFS-4222](https://issues.apache.org/jira/browse/HDFS-4222) | NN is unresponsive and loses heartbeats of DNs when Hadoop is configured to use LDAP and LDAP has issues |  Minor | namenode | Xiaobo Peng | Xiaobo Peng |
| [HDFS-4128](https://issues.apache.org/jira/browse/HDFS-4128) | 2NN gets stuck in inconsistent state if edit log replay fails in the middle |  Major | namenode | Todd Lipcon | Kihwal Lee |
| [HDFS-4072](https://issues.apache.org/jira/browse/HDFS-4072) | On file deletion remove corresponding blocks pending replication |  Minor | namenode | Jing Zhao | Jing Zhao |
| [HDFS-3344](https://issues.apache.org/jira/browse/HDFS-3344) | Unreliable corrupt blocks counting in TestProcessCorruptBlocks |  Major | namenode | Tsz Wo Nicholas Sze | Kihwal Lee |
| [HDFS-3119](https://issues.apache.org/jira/browse/HDFS-3119) | Overreplicated block is not deleted even after the replication factor is reduced after sync follwed by closing that file |  Minor | namenode | J.Andreina | Ashish Singhi |
| [HDFS-2434](https://issues.apache.org/jira/browse/HDFS-2434) | TestNameNodeMetrics.testCorruptBlock fails intermittently |  Major | test | Uma Maheswara Rao G | Jing Zhao |
| [HDFS-1765](https://issues.apache.org/jira/browse/HDFS-1765) | Block Replication should respect under-replication block priority |  Major | namenode | Hairong Kuang | Uma Maheswara Rao G |
| [MAPREDUCE-5137](https://issues.apache.org/jira/browse/MAPREDUCE-5137) | AM web UI: clicking on Map Task results in 500 error |  Major | applicationmaster | Thomas Graves | Thomas Graves |
| [MAPREDUCE-5075](https://issues.apache.org/jira/browse/MAPREDUCE-5075) | DistCp leaks input file handles |  Major | distcp | Chris Nauroth | Chris Nauroth |
| [MAPREDUCE-5043](https://issues.apache.org/jira/browse/MAPREDUCE-5043) | Fetch failure processing can cause AM event queue to backup and eventually OOM |  Blocker | mr-am | Jason Lowe | Jason Lowe |
| [MAPREDUCE-5042](https://issues.apache.org/jira/browse/MAPREDUCE-5042) | Reducer unable to fetch for a map task that was recovered |  Blocker | mr-am, security | Jason Lowe | Jason Lowe |
| [MAPREDUCE-5023](https://issues.apache.org/jira/browse/MAPREDUCE-5023) | History Server Web Services missing Job Counters |  Critical | jobhistoryserver, webapps | Kendall Thrapp | Ravi Prakash |
| [MAPREDUCE-5009](https://issues.apache.org/jira/browse/MAPREDUCE-5009) | Killing the Task Attempt slated for commit does not clear the value from the Task commitAttempt member |  Critical | mrv1 | Robert Parker | Robert Parker |
| [MAPREDUCE-5000](https://issues.apache.org/jira/browse/MAPREDUCE-5000) | TaskImpl.getCounters() can return the counters for the wrong task attempt when task is speculating |  Critical | mr-am | Jason Lowe | Jason Lowe |
| [MAPREDUCE-4992](https://issues.apache.org/jira/browse/MAPREDUCE-4992) | AM hangs in RecoveryService when recovering tasks with speculative attempts |  Critical | mr-am | Robert Parker | Robert Parker |
| [MAPREDUCE-4969](https://issues.apache.org/jira/browse/MAPREDUCE-4969) | TestKeyValueTextInputFormat test fails with Open JDK 7 |  Major | test | Arpit Agarwal | Arpit Agarwal |
| [MAPREDUCE-4953](https://issues.apache.org/jira/browse/MAPREDUCE-4953) | HadoopPipes misuses fprintf |  Major | pipes | Andy Isaacson | Andy Isaacson |
| [MAPREDUCE-4946](https://issues.apache.org/jira/browse/MAPREDUCE-4946) | Type conversion of map completion events leads to performance problems with large jobs |  Critical | mr-am | Jason Lowe | Jason Lowe |
| [MAPREDUCE-4893](https://issues.apache.org/jira/browse/MAPREDUCE-4893) | MR AppMaster can do sub-optimal assignment of containers to map tasks leading to poor node locality |  Major | applicationmaster | Bikas Saha | Bikas Saha |
| [MAPREDUCE-4871](https://issues.apache.org/jira/browse/MAPREDUCE-4871) | AM uses mapreduce.jobtracker.split.metainfo.maxsize but mapred-default has mapreduce.job.split.metainfo.maxsize |  Major | mrv2 | Jason Lowe | Jason Lowe |
| [MAPREDUCE-4794](https://issues.apache.org/jira/browse/MAPREDUCE-4794) | DefaultSpeculator generates error messages on normal shutdown |  Major | applicationmaster | Jason Lowe | Jason Lowe |
| [MAPREDUCE-4637](https://issues.apache.org/jira/browse/MAPREDUCE-4637) | Killing an unassigned task attempt causes the job to fail |  Major | mrv2 | Tom White | Mayank Bansal |
| [MAPREDUCE-4470](https://issues.apache.org/jira/browse/MAPREDUCE-4470) | Fix TestCombineFileInputFormat.testForEmptyFile |  Major | test | Kihwal Lee | Ilya Katsov |
| [MAPREDUCE-4007](https://issues.apache.org/jira/browse/MAPREDUCE-4007) | JobClient getJob(JobID) should return NULL if the job does not exist (for backwards compatibility) |  Major | mrv2 | Alejandro Abdelnur | Alejandro Abdelnur |
| [MAPREDUCE-3952](https://issues.apache.org/jira/browse/MAPREDUCE-3952) | In MR2, when Total input paths to process == 1, CombinefileInputFormat.getSplits() returns 0 split. |  Major | mrv2 | Zhenxiao Luo | Bhallamudi Venkata Siva Kamesh |
| [MAPREDUCE-3685](https://issues.apache.org/jira/browse/MAPREDUCE-3685) | There are some bugs in implementation of MergeManager |  Critical | mrv2 | anty.rao | anty |
| [YARN-460](https://issues.apache.org/jira/browse/YARN-460) | CS user left in list of active users for the queue even when application finished |  Blocker | capacityscheduler | Thomas Graves | Thomas Graves |
| [YARN-448](https://issues.apache.org/jira/browse/YARN-448) | Remove unnecessary hflush from log aggregation |  Major | nodemanager | Kihwal Lee | Kihwal Lee |
| [YARN-426](https://issues.apache.org/jira/browse/YARN-426) | Failure to download a public resource on a node prevents further downloads of the resource from that node |  Critical | nodemanager | Jason Lowe | Jason Lowe |
| [YARN-400](https://issues.apache.org/jira/browse/YARN-400) | RM can return null application resource usage report leading to NPE in client |  Critical | resourcemanager | Jason Lowe | Jason Lowe |
| [YARN-376](https://issues.apache.org/jira/browse/YARN-376) | Apps that have completed can appear as RUNNING on the NM UI |  Blocker | resourcemanager | Jason Lowe | Jason Lowe |
| [YARN-357](https://issues.apache.org/jira/browse/YARN-357) | App submission should not be synchronized |  Major | resourcemanager | Daryn Sharp | Daryn Sharp |
| [YARN-355](https://issues.apache.org/jira/browse/YARN-355) | RM app submission jams under load |  Blocker | resourcemanager | Daryn Sharp | Daryn Sharp |
| [YARN-345](https://issues.apache.org/jira/browse/YARN-345) | Many InvalidStateTransitonException errors for ApplicationImpl in Node Manager |  Critical | nodemanager | Devaraj K | Robert Parker |
| [YARN-343](https://issues.apache.org/jira/browse/YARN-343) | Capacity Scheduler maximum-capacity value -1 is invalid |  Major | capacityscheduler | Thomas Graves | Xuan Gong |
| [YARN-269](https://issues.apache.org/jira/browse/YARN-269) | Resource Manager not logging the health\_check\_script result when taking it out |  Major | resourcemanager | Thomas Graves | Jason Lowe |
| [YARN-236](https://issues.apache.org/jira/browse/YARN-236) | RM should point tracking URL to RM web page when app fails to start |  Major | resourcemanager | Jason Lowe | Jason Lowe |
| [YARN-227](https://issues.apache.org/jira/browse/YARN-227) | Application expiration difficult to debug for end-users |  Major | resourcemanager | Jason Lowe | Jason Lowe |
| [YARN-133](https://issues.apache.org/jira/browse/YARN-133) | update web services docs for RM clusterMetrics |  Major | resourcemanager | Thomas Graves | Ravi Prakash |
| [YARN-109](https://issues.apache.org/jira/browse/YARN-109) | .tmp file is not deleted for localized archives |  Major | nodemanager | Jason Lowe | Mayank Bansal |
| [YARN-83](https://issues.apache.org/jira/browse/YARN-83) | Change package of YarnClient to include apache |  Major | client | Bikas Saha | Bikas Saha |
| [YARN-40](https://issues.apache.org/jira/browse/YARN-40) | Provide support for missing yarn commands |  Major | client | Devaraj K | Devaraj K |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-4875](https://issues.apache.org/jira/browse/MAPREDUCE-4875) | coverage fixing for org.apache.hadoop.mapred |  Major | test | Aleksey Gorshkov | Aleksey Gorshkov |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-4577](https://issues.apache.org/jira/browse/HDFS-4577) | Webhdfs operations should declare if authentication is required |  Major | webhdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-4567](https://issues.apache.org/jira/browse/HDFS-4567) | Webhdfs does not need a token for token operations |  Major | webhdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-4566](https://issues.apache.org/jira/browse/HDFS-4566) | Webdhfs token cancelation should use authentication |  Major | webhdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-4560](https://issues.apache.org/jira/browse/HDFS-4560) | Webhdfs cannot use tokens obtained by another user |  Major | webhdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-4542](https://issues.apache.org/jira/browse/HDFS-4542) | Webhdfs doesn't support secure proxy users |  Blocker | webhdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-2495](https://issues.apache.org/jira/browse/HDFS-2495) | Increase granularity of write operations in ReplicationMonitor thus reducing contention for write lock |  Major | namenode | Tomasz Nykiel | Tomasz Nykiel |
| [HDFS-2477](https://issues.apache.org/jira/browse/HDFS-2477) | Optimize computing the diff between a block report and the namenode state. |  Major | namenode | Tomasz Nykiel | Tomasz Nykiel |
| [HDFS-2476](https://issues.apache.org/jira/browse/HDFS-2476) | More CPU efficient data structure for under-replicated/over-replicated/invalidate blocks |  Major | namenode | Tomasz Nykiel | Tomasz Nykiel |
| [HDFS-395](https://issues.apache.org/jira/browse/HDFS-395) | DFS Scalability: Incremental block reports |  Major | datanode, namenode | dhruba borthakur | Tomasz Nykiel |
| [YARN-29](https://issues.apache.org/jira/browse/YARN-29) | Add a yarn-client module |  Major | client | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


