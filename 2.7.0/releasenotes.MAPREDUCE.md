# Hadoop MAPREDUCE 2.7.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.

---

* [MAPREDUCE-6286](https://issues.apache.org/jira/browse/MAPREDUCE-6286) | *Major* | **A typo in HistoryViewer makes some code useless, which causes counter limits are not reset correctly.**
---

* [MAPREDUCE-6277](https://issues.apache.org/jira/browse/MAPREDUCE-6277) | *Major* | **Job can post multiple history files if attempt loses connection to the RM**
---

* [MAPREDUCE-6275](https://issues.apache.org/jira/browse/MAPREDUCE-6275) | *Critical* | **Race condition in FileOutputCommitter v2 for user-specified task output subdirs**
---

* [MAPREDUCE-6268](https://issues.apache.org/jira/browse/MAPREDUCE-6268) | *Minor* | **Fix typo in Task Attempt API's URL**
---

* [MAPREDUCE-6267](https://issues.apache.org/jira/browse/MAPREDUCE-6267) | *Minor* | **Refactor JobSubmitter#copyAndConfigureFiles into it's own class**
---

* [MAPREDUCE-6265](https://issues.apache.org/jira/browse/MAPREDUCE-6265) | *Major* | **Make ContainerLauncherImpl.INITIAL\_POOL\_SIZE configurable to better control to launch/kill containers**
---

* [MAPREDUCE-6264](https://issues.apache.org/jira/browse/MAPREDUCE-6264) | *Major* | **Remove httpclient dependency from hadoop-mapreduce-client**
---

* [MAPREDUCE-6261](https://issues.apache.org/jira/browse/MAPREDUCE-6261) | *Major* | **NullPointerException if MapOutputBuffer.flush invoked twice**
---

* [MAPREDUCE-6256](https://issues.apache.org/jira/browse/MAPREDUCE-6256) | *Minor* | **Removed unused private methods in o.a.h.mapreduce.Job.java**
---

* [MAPREDUCE-6255](https://issues.apache.org/jira/browse/MAPREDUCE-6255) | *Minor* | **Fix JobCounter's format to use grouping separator**
---

* [MAPREDUCE-6253](https://issues.apache.org/jira/browse/MAPREDUCE-6253) | *Minor* | **Update use of Iterator to Iterable**
---

* [MAPREDUCE-6248](https://issues.apache.org/jira/browse/MAPREDUCE-6248) | *Major* | **Allow users to get the MR job information for distcp**
---

* [MAPREDUCE-6243](https://issues.apache.org/jira/browse/MAPREDUCE-6243) | *Minor* | **Fix findbugs warnings in hadoop-rumen**
---

* [MAPREDUCE-6233](https://issues.apache.org/jira/browse/MAPREDUCE-6233) | *Major* | **org.apache.hadoop.mapreduce.TestLargeSort.testLargeSort failed in trunk**
---

* [MAPREDUCE-6231](https://issues.apache.org/jira/browse/MAPREDUCE-6231) | *Major* | **Grep example job is not working on a fully-distributed cluster**
---

* [MAPREDUCE-6230](https://issues.apache.org/jira/browse/MAPREDUCE-6230) | *Blocker* | **MR AM does not survive RM restart if RM activated a new AMRM secret key**
---

* [MAPREDUCE-6228](https://issues.apache.org/jira/browse/MAPREDUCE-6228) | *Major* | **Add truncate operation to SLive**
---

* [MAPREDUCE-6227](https://issues.apache.org/jira/browse/MAPREDUCE-6227) | *Major* | **DFSIO for truncate**
---

* [MAPREDUCE-6225](https://issues.apache.org/jira/browse/MAPREDUCE-6225) | *Major* | **Fix new findbug warnings in hadoop-mapreduce-client-core**
---

* [MAPREDUCE-6221](https://issues.apache.org/jira/browse/MAPREDUCE-6221) | *Minor* | **Stringifier is left unclosed in Chain#getChainElementConf()**
---

* [MAPREDUCE-6210](https://issues.apache.org/jira/browse/MAPREDUCE-6210) | *Minor* | **Use getApplicationAttemptId() instead of getApplicationID() for logging AttemptId in RMContainerAllocator.java**
---

* [MAPREDUCE-6206](https://issues.apache.org/jira/browse/MAPREDUCE-6206) | *Critical* | **TestAggregatedTransferRate fails on non-US systems**
---

* [MAPREDUCE-6199](https://issues.apache.org/jira/browse/MAPREDUCE-6199) | *Major* | **AbstractCounters are not reset completely on deserialization**
---

* [MAPREDUCE-6194](https://issues.apache.org/jira/browse/MAPREDUCE-6194) | *Minor* | **Bubble up final exception in failures during creation of output collectors**
---

* [MAPREDUCE-6186](https://issues.apache.org/jira/browse/MAPREDUCE-6186) | *Minor* | **Redundant call to requireJob() while displaying the conf page**
---

* [MAPREDUCE-6177](https://issues.apache.org/jira/browse/MAPREDUCE-6177) | *Trivial* | **Minor typo in the EncryptedShuffle document about ssl-client.xml**
---

* [MAPREDUCE-6173](https://issues.apache.org/jira/browse/MAPREDUCE-6173) | *Major* | **Document the configuration of deploying MR over distributed cache with enabling wired encryption at the same time**
---

* [MAPREDUCE-6172](https://issues.apache.org/jira/browse/MAPREDUCE-6172) | *Minor* | **TestDbClasses timeouts are too aggressive**
---

* [MAPREDUCE-6169](https://issues.apache.org/jira/browse/MAPREDUCE-6169) | *Major* | **MergeQueue should release reference to the current item from key and value at the end of the iteration to save memory.**
---

* [MAPREDUCE-6166](https://issues.apache.org/jira/browse/MAPREDUCE-6166) | *Major* | **Reducers do not validate checksum of map outputs when fetching directly to disk**
---

* [MAPREDUCE-6162](https://issues.apache.org/jira/browse/MAPREDUCE-6162) | *Blocker* | **mapred hsadmin fails on a secure cluster**
---

* [MAPREDUCE-6160](https://issues.apache.org/jira/browse/MAPREDUCE-6160) | *Major* | **Potential NullPointerException in MRClientProtocol interface implementation.**
---

* [MAPREDUCE-6151](https://issues.apache.org/jira/browse/MAPREDUCE-6151) | *Minor* | **Update document of GridMix**
---

* [MAPREDUCE-6150](https://issues.apache.org/jira/browse/MAPREDUCE-6150) | *Minor* | **Update document of Rumen**
---

* [MAPREDUCE-6149](https://issues.apache.org/jira/browse/MAPREDUCE-6149) | *Major* | **Document override log4j.properties in MR job**
---

* [MAPREDUCE-6143](https://issues.apache.org/jira/browse/MAPREDUCE-6143) | *Major* | **add configuration for  mapreduce speculative execution in MR2**
---

* [MAPREDUCE-6141](https://issues.apache.org/jira/browse/MAPREDUCE-6141) | *Major* | **History server leveldb recovery store**
---

* [MAPREDUCE-6136](https://issues.apache.org/jira/browse/MAPREDUCE-6136) | *Major* | **MRAppMaster doesn't shutdown file systems**
---

* [MAPREDUCE-6059](https://issues.apache.org/jira/browse/MAPREDUCE-6059) | *Major* | **Speed up history server startup time**
---

* [MAPREDUCE-6049](https://issues.apache.org/jira/browse/MAPREDUCE-6049) | *Major* | **AM JVM does not exit if MRClientService gracefull shutdown fails**
---

* [MAPREDUCE-6046](https://issues.apache.org/jira/browse/MAPREDUCE-6046) | *Minor* | **Change the class name for logs in RMCommunicator.java**
---

* [MAPREDUCE-6045](https://issues.apache.org/jira/browse/MAPREDUCE-6045) | *Minor* | **need close the DataInputStream after open it in TestMapReduce.java**
---

* [MAPREDUCE-5988](https://issues.apache.org/jira/browse/MAPREDUCE-5988) | *Minor* | **Fix dead links to the javadocs in mapreduce project**
---

* [MAPREDUCE-5932](https://issues.apache.org/jira/browse/MAPREDUCE-5932) | *Major* | **Provide an option to use a dedicated reduce-side shuffle log**
---

* [MAPREDUCE-5918](https://issues.apache.org/jira/browse/MAPREDUCE-5918) | *Major* | **LineRecordReader can return the same decompressor to CodecPool multiple times**
---

* [MAPREDUCE-5875](https://issues.apache.org/jira/browse/MAPREDUCE-5875) | *Major* | **Make Counter limits consistent across JobClient, MRAppMaster, and YarnChild**
---

* [MAPREDUCE-5800](https://issues.apache.org/jira/browse/MAPREDUCE-5800) | *Minor* | **Use Job#getInstance instead of deprecated constructors**
---

* [MAPREDUCE-5657](https://issues.apache.org/jira/browse/MAPREDUCE-5657) | *Minor* | **[JDK8] Fix Javadoc errors caused by incorrect or illegal tags in doc comments**
---

* [MAPREDUCE-5612](https://issues.apache.org/jira/browse/MAPREDUCE-5612) | *Minor* | **Add javadoc for TaskCompletionEvent.Status**
---

* [MAPREDUCE-5583](https://issues.apache.org/jira/browse/MAPREDUCE-5583) | *Major* | **Ability to limit running map and reduce tasks**
---

* [MAPREDUCE-5568](https://issues.apache.org/jira/browse/MAPREDUCE-5568) | *Major* | **JHS returns invalid string for reducer completion percentage if AM restarts with 0 reducer.**
---

* [MAPREDUCE-5420](https://issues.apache.org/jira/browse/MAPREDUCE-5420) | *Major* | **Remove mapreduce.task.tmp.dir from mapred-default.xml**
---

* [MAPREDUCE-5335](https://issues.apache.org/jira/browse/MAPREDUCE-5335) | *Major* | **Rename Job Tracker terminology in ShuffleSchedulerImpl**
---

* [MAPREDUCE-4879](https://issues.apache.org/jira/browse/MAPREDUCE-4879) | *Major* | **TeraOutputFormat may overwrite an existing output directory**
---

* [MAPREDUCE-4815](https://issues.apache.org/jira/browse/MAPREDUCE-4815) | *Major* | **Speed up FileOutputCommitter#commitJob for many output files**
---

* [MAPREDUCE-4742](https://issues.apache.org/jira/browse/MAPREDUCE-4742) | *Trivial* | **Fix typo in nnbench#displayUsage**
---

* [MAPREDUCE-4431](https://issues.apache.org/jira/browse/MAPREDUCE-4431) | *Minor* | **mapred command should print the reason on killing already completed jobs**
---

* [MAPREDUCE-4286](https://issues.apache.org/jira/browse/MAPREDUCE-4286) | *Major* | **TestClientProtocolProviderImpls passes on failure conditions**
---

* [MAPREDUCE-3283](https://issues.apache.org/jira/browse/MAPREDUCE-3283) | *Minor* | **mapred classpath CLI does not display the complete classpath**
---

* [MAPREDUCE-2815](https://issues.apache.org/jira/browse/MAPREDUCE-2815) | *Minor* | **JavaDoc does not generate correctly for MultithreadedMapRunner**


