# Hadoop Changelog

## Release 2.7.0 - 2015-03-10

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-6228](https://issues.apache.org/jira/browse/MAPREDUCE-6228) | Add truncate operation to SLive |  Major | (benchmarks , test) | Konstantin Shvachko | Plamen Jeliazkov |
| [MAPREDUCE-6227](https://issues.apache.org/jira/browse/MAPREDUCE-6227) | DFSIO for truncate |  Major | (benchmarks , test) | Konstantin Shvachko | Konstantin Shvachko |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-6267](https://issues.apache.org/jira/browse/MAPREDUCE-6267) | Refactor JobSubmitter#copyAndConfigureFiles into it's own class |  Minor |  | Chris Trezzo | Chris Trezzo |
| [MAPREDUCE-6256](https://issues.apache.org/jira/browse/MAPREDUCE-6256) | Removed unused private methods in o.a.h.mapreduce.Job.java |  Minor |  | Devaraj K | Naganarasimha G R |
| [MAPREDUCE-6255](https://issues.apache.org/jira/browse/MAPREDUCE-6255) | Fix JobCounter's format to use grouping separator |  Minor | (client) | Ryu Kobayashi | Ryu Kobayashi |
| [MAPREDUCE-6253](https://issues.apache.org/jira/browse/MAPREDUCE-6253) | Update use of Iterator to Iterable |  Minor |  | Ray Chiang | Ray Chiang |
| [MAPREDUCE-6248](https://issues.apache.org/jira/browse/MAPREDUCE-6248) | Allow users to get the MR job information for distcp |  Major | (distcp) | Jing Zhao | Jing Zhao |
| [MAPREDUCE-6194](https://issues.apache.org/jira/browse/MAPREDUCE-6194) | Bubble up final exception in failures during creation of output collectors |  Minor | (task) | Harsh J | Varun Saxena |
| [MAPREDUCE-6173](https://issues.apache.org/jira/browse/MAPREDUCE-6173) | Document the configuration of deploying MR over distributed cache with enabling wired encryption at the same time |  Major | (distributed-cache , documentation) | Junping Du | Junping Du |
| [MAPREDUCE-6169](https://issues.apache.org/jira/browse/MAPREDUCE-6169) | MergeQueue should release reference to the current item from key and value at the end of the iteration to save memory. |  Major | (mrv2) | zhihai xu | zhihai xu |
| [MAPREDUCE-6151](https://issues.apache.org/jira/browse/MAPREDUCE-6151) | Update document of GridMix |  Minor | (documentation) | Masatake Iwasaki | Masatake Iwasaki |
| [MAPREDUCE-6150](https://issues.apache.org/jira/browse/MAPREDUCE-6150) | Update document of Rumen |  Minor | (documentation) | Masatake Iwasaki | Masatake Iwasaki |
| [MAPREDUCE-6149](https://issues.apache.org/jira/browse/MAPREDUCE-6149) | Document override log4j.properties in MR job |  Major | (documentation) | Junping Du | Junping Du |
| [MAPREDUCE-6143](https://issues.apache.org/jira/browse/MAPREDUCE-6143) | add configuration for  mapreduce speculative execution in MR2 |  Major | (mrv2) | zhihai xu | zhihai xu |
| [MAPREDUCE-6141](https://issues.apache.org/jira/browse/MAPREDUCE-6141) | History server leveldb recovery store |  Major | (jobhistoryserver) | Jason Lowe | Jason Lowe |
| [MAPREDUCE-6059](https://issues.apache.org/jira/browse/MAPREDUCE-6059) | Speed up history server startup time |  Major |  | Siqi Li | Siqi Li |
| [MAPREDUCE-6046](https://issues.apache.org/jira/browse/MAPREDUCE-6046) | Change the class name for logs in RMCommunicator.java |  Minor | (mr-am) | Devaraj K | Sahil Takiar |
| [MAPREDUCE-5932](https://issues.apache.org/jira/browse/MAPREDUCE-5932) | Provide an option to use a dedicated reduce-side shuffle log |  Major | (mrv2) | Gera Shegalov | Gera Shegalov |
| [MAPREDUCE-5800](https://issues.apache.org/jira/browse/MAPREDUCE-5800) | Use Job#getInstance instead of deprecated constructors |  Minor |  | Akira AJISAKA | Akira AJISAKA |
| [MAPREDUCE-5612](https://issues.apache.org/jira/browse/MAPREDUCE-5612) | Add javadoc for TaskCompletionEvent.Status |  Minor | (documentation) | Sandy Ryza | Chris Palmer |
| [MAPREDUCE-5583](https://issues.apache.org/jira/browse/MAPREDUCE-5583) | Ability to limit running map and reduce tasks |  Major | (mr-am , mrv2) | Jason Lowe | Jason Lowe |
| [MAPREDUCE-5335](https://issues.apache.org/jira/browse/MAPREDUCE-5335) | Rename Job Tracker terminology in ShuffleSchedulerImpl |  Major | (applicationmaster) | Devaraj K | Devaraj K |
| [MAPREDUCE-4815](https://issues.apache.org/jira/browse/MAPREDUCE-4815) | Speed up FileOutputCommitter#commitJob for many output files |  Major | (mrv2) | Jason Lowe | Siqi Li |
| [MAPREDUCE-4431](https://issues.apache.org/jira/browse/MAPREDUCE-4431) | mapred command should print the reason on killing already completed jobs |  Minor | (mrv2) | Nishan Shetty | Devaraj K |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-6268](https://issues.apache.org/jira/browse/MAPREDUCE-6268) | Fix typo in Task Attempt API's URL |  Minor |  | Ryu Kobayashi | Ryu Kobayashi |
| [MAPREDUCE-6261](https://issues.apache.org/jira/browse/MAPREDUCE-6261) | NullPointerException if MapOutputBuffer.flush invoked twice |  Major | (mrv2) | Jason Lowe | Tsuyoshi Ozawa |
| [MAPREDUCE-6243](https://issues.apache.org/jira/browse/MAPREDUCE-6243) | Fix findbugs warnings in hadoop-rumen |  Minor | (tools/rumen) | Akira AJISAKA | Masatake Iwasaki |
| [MAPREDUCE-6233](https://issues.apache.org/jira/browse/MAPREDUCE-6233) | org.apache.hadoop.mapreduce.TestLargeSort.testLargeSort failed in trunk |  Major | (test) | Yongjun Zhang | zhihai xu |
| [MAPREDUCE-6231](https://issues.apache.org/jira/browse/MAPREDUCE-6231) | Grep example job is not working on a fully-distributed cluster |  Major | (examples) | Akira AJISAKA | Akira AJISAKA |
| [MAPREDUCE-6230](https://issues.apache.org/jira/browse/MAPREDUCE-6230) | MR AM does not survive RM restart if RM activated a new AMRM secret key |  Blocker | (mr-am) | Jason Lowe | Jason Lowe |
| [MAPREDUCE-6225](https://issues.apache.org/jira/browse/MAPREDUCE-6225) | Fix new findbug warnings in hadoop-mapreduce-client-core |  Major |  | Jason Lowe | Varun Saxena |
| [MAPREDUCE-6221](https://issues.apache.org/jira/browse/MAPREDUCE-6221) | Stringifier is left unclosed in Chain#getChainElementConf() |  Minor |  | Ted Yu | Ted Yu |
| [MAPREDUCE-6210](https://issues.apache.org/jira/browse/MAPREDUCE-6210) | Use getApplicationAttemptId() instead of getApplicationID() for logging AttemptId in RMContainerAllocator.java |  Minor | (applicationmaster) | Leitao Guo | Leitao Guo |
| [MAPREDUCE-6206](https://issues.apache.org/jira/browse/MAPREDUCE-6206) | TestAggregatedTransferRate fails on non-US systems |  Critical |  | Jens Rabe | Jens Rabe |
| [MAPREDUCE-6199](https://issues.apache.org/jira/browse/MAPREDUCE-6199) | AbstractCounters are not reset completely on deserialization |  Major |  | Anubhav Dhoot | Anubhav Dhoot |
| [MAPREDUCE-6186](https://issues.apache.org/jira/browse/MAPREDUCE-6186) | Redundant call to requireJob() while displaying the conf page |  Minor | (jobhistoryserver) | Rohit Agarwal | Rohit Agarwal |
| [MAPREDUCE-6177](https://issues.apache.org/jira/browse/MAPREDUCE-6177) | Minor typo in the EncryptedShuffle document about ssl-client.xml |  Trivial | (documentation) | yangping wu | yangping wu |
| [MAPREDUCE-6172](https://issues.apache.org/jira/browse/MAPREDUCE-6172) | TestDbClasses timeouts are too aggressive |  Minor | (test) | Jason Lowe | Varun Saxena |
| [MAPREDUCE-6166](https://issues.apache.org/jira/browse/MAPREDUCE-6166) | Reducers do not validate checksum of map outputs when fetching directly to disk |  Major | (mrv2) | Eric Payne | Eric Payne |
| [MAPREDUCE-6162](https://issues.apache.org/jira/browse/MAPREDUCE-6162) | mapred hsadmin fails on a secure cluster |  Blocker | (jobhistoryserver) | Jason Lowe | Jason Lowe |
| [MAPREDUCE-6160](https://issues.apache.org/jira/browse/MAPREDUCE-6160) | Potential NullPointerException in MRClientProtocol interface implementation. |  Major |  | Rohith | Rohith |
| [MAPREDUCE-6136](https://issues.apache.org/jira/browse/MAPREDUCE-6136) | MRAppMaster doesn't shutdown file systems |  Major | (applicationmaster) | Noah Watkins | Brahma Reddy Battula |
| [MAPREDUCE-6049](https://issues.apache.org/jira/browse/MAPREDUCE-6049) | AM JVM does not exit if MRClientService gracefull shutdown fails |  Major | (applicationmaster , resourcemanager) | Nishan Shetty | Rohith |
| [MAPREDUCE-6045](https://issues.apache.org/jira/browse/MAPREDUCE-6045) | need close the DataInputStream after open it in TestMapReduce.java |  Minor | (test) | zhihai xu | zhihai xu |
| [MAPREDUCE-5988](https://issues.apache.org/jira/browse/MAPREDUCE-5988) | Fix dead links to the javadocs in mapreduce project |  Minor | (documentation) | Akira AJISAKA | Akira AJISAKA |
| [MAPREDUCE-5918](https://issues.apache.org/jira/browse/MAPREDUCE-5918) | LineRecordReader can return the same decompressor to CodecPool multiple times |  Major |  | Sergey Murylev | Sergey Murylev |
| [MAPREDUCE-5875](https://issues.apache.org/jira/browse/MAPREDUCE-5875) | Make Counter limits consistent across JobClient, MRAppMaster, and YarnChild |  Major | (applicationmaster , client , task) | Gera Shegalov | Gera Shegalov |
| [MAPREDUCE-5657](https://issues.apache.org/jira/browse/MAPREDUCE-5657) | [JDK8] Fix Javadoc errors caused by incorrect or illegal tags in doc comments |  Minor | (documentation) | Andrew Purtell | Akira AJISAKA |
| [MAPREDUCE-5568](https://issues.apache.org/jira/browse/MAPREDUCE-5568) | JHS returns invalid string for reducer completion percentage if AM restarts with 0 reducer. |  Major |  | Jian He | MinJi Kim |
| [MAPREDUCE-4879](https://issues.apache.org/jira/browse/MAPREDUCE-4879) | TeraOutputFormat may overwrite an existing output directory |  Major | (examples) | Gera Shegalov | Gera Shegalov |
| [MAPREDUCE-4286](https://issues.apache.org/jira/browse/MAPREDUCE-4286) | TestClientProtocolProviderImpls passes on failure conditions |  Major |  | Devaraj K | Devaraj K |
| [MAPREDUCE-3283](https://issues.apache.org/jira/browse/MAPREDUCE-3283) | mapred classpath CLI does not display the complete classpath |  Minor | (scripts) | Ramya Sunil | Varun Saxena |
| [MAPREDUCE-2815](https://issues.apache.org/jira/browse/MAPREDUCE-2815) | JavaDoc does not generate correctly for MultithreadedMapRunner |  Minor | (documentation) | Shane Butler | Chris Palmer |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-6264](https://issues.apache.org/jira/browse/MAPREDUCE-6264) | Remove httpclient dependency from hadoop-mapreduce-client |  Major |  | Akira AJISAKA | Brahma Reddy Battula |
| [MAPREDUCE-5420](https://issues.apache.org/jira/browse/MAPREDUCE-5420) | Remove mapreduce.task.tmp.dir from mapred-default.xml |  Major |  | Sandy Ryza | James Carman |


