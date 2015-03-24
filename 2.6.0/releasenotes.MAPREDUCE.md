# Hadoop MAPREDUCE 2.6.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.

---

* [MAPREDUCE-6156](https://issues.apache.org/jira/browse/MAPREDUCE-6156) | *Blocker* | **Fetcher - connect() doesn't handle connection refused correctly**
---

* [MAPREDUCE-6142](https://issues.apache.org/jira/browse/MAPREDUCE-6142) | *Critical* | **Test failure in TestJobHistoryEventHandler and TestMRTimelineEventHandling**
---

* [MAPREDUCE-6126](https://issues.apache.org/jira/browse/MAPREDUCE-6126) | *Major* | **(Rumen) Rumen tool returns error "ava.lang.IllegalArgumentException: JobBuilder.process(HistoryEvent): unknown event type"**
---

* [MAPREDUCE-6125](https://issues.apache.org/jira/browse/MAPREDUCE-6125) | *Major* | **TestContainerLauncherImpl sometimes fails**
---

* [MAPREDUCE-6123](https://issues.apache.org/jira/browse/MAPREDUCE-6123) | *Trivial* | **TestCombineFileInputFormat incorrectly starts 2 MiniDFSCluster instances.**
---

* [MAPREDUCE-6122](https://issues.apache.org/jira/browse/MAPREDUCE-6122) | *Trivial* | **TestLineRecordReader may fail due to test data files checked out of git with incorrect line endings.**
---

* [MAPREDUCE-6115](https://issues.apache.org/jira/browse/MAPREDUCE-6115) | *Minor* | **TestPipeApplication#testSubmitter fails in trunk**
---

* [MAPREDUCE-6109](https://issues.apache.org/jira/browse/MAPREDUCE-6109) | *Trivial* | **Fix minor typo in distcp -p usage text**
---

* [MAPREDUCE-6104](https://issues.apache.org/jira/browse/MAPREDUCE-6104) | *Major* | **TestJobHistoryParsing.testPartialJob fails in branch-2**
---

* [MAPREDUCE-6095](https://issues.apache.org/jira/browse/MAPREDUCE-6095) | *Major* | **Enable DistributedCache for uber-mode Jobs**
---

* [MAPREDUCE-6094](https://issues.apache.org/jira/browse/MAPREDUCE-6094) | *Minor* | **TestMRCJCFileInputFormat.testAddInputPath() fails on trunk**
---

* [MAPREDUCE-6093](https://issues.apache.org/jira/browse/MAPREDUCE-6093) | *Trivial* | **minor distcp doc edits**
---

* [MAPREDUCE-6091](https://issues.apache.org/jira/browse/MAPREDUCE-6091) | *Major* | **YARNRunner.getJobStatus() fails with ApplicationNotFoundException if the job rolled off the RM view**
---

* [MAPREDUCE-6090](https://issues.apache.org/jira/browse/MAPREDUCE-6090) | *Major* | **mapred hsadmin getGroups fails to connect in some cases**
---

* [MAPREDUCE-6086](https://issues.apache.org/jira/browse/MAPREDUCE-6086) | *Major* | **mapreduce.job.credentials.binary should allow all URIs**
---

* [MAPREDUCE-6075](https://issues.apache.org/jira/browse/MAPREDUCE-6075) | *Major* | **HistoryServerFileSystemStateStore can create zero-length files**
---

* [MAPREDUCE-6073](https://issues.apache.org/jira/browse/MAPREDUCE-6073) | *Trivial* | **Description of mapreduce.job.speculative.slowtaskthreshold in mapred-default should be moved into description tags**
---

* [MAPREDUCE-6072](https://issues.apache.org/jira/browse/MAPREDUCE-6072) | *Minor* | **Remove INSTALL document**
---

* [MAPREDUCE-6071](https://issues.apache.org/jira/browse/MAPREDUCE-6071) | *Trivial* | **JobImpl#makeUberDecision doesn't log that Uber mode is disabled because of too much CPUs**
---

* [MAPREDUCE-6070](https://issues.apache.org/jira/browse/MAPREDUCE-6070) | *Trivial* | **yarn.app.am.resource.mb/cpu-vcores affects uber mode but is not documented**
---

* [MAPREDUCE-6063](https://issues.apache.org/jira/browse/MAPREDUCE-6063) | *Major* | **In sortAndSpill of MapTask.java, size is calculated wrongly when bufend < bufstart.**
---

* [MAPREDUCE-6052](https://issues.apache.org/jira/browse/MAPREDUCE-6052) | *Major* | **Support overriding log4j.properties per job**
---

* [MAPREDUCE-6051](https://issues.apache.org/jira/browse/MAPREDUCE-6051) | *Trivial* | **Fix typos in log messages**
---

* [MAPREDUCE-6048](https://issues.apache.org/jira/browse/MAPREDUCE-6048) | *Minor* | **TestJavaSerialization fails in trunk build**
---

* [MAPREDUCE-6044](https://issues.apache.org/jira/browse/MAPREDUCE-6044) | *Major* | **Fully qualified intermediate done directory will break per-user dir creation on Windows**
---

* [MAPREDUCE-6036](https://issues.apache.org/jira/browse/MAPREDUCE-6036) | *Major* | **TestJobEndNotifier fails intermittently in branch-2**
---

* [MAPREDUCE-6032](https://issues.apache.org/jira/browse/MAPREDUCE-6032) | *Major* | **Unable to check mapreduce job status if submitted using a non-default namenode**
---

* [MAPREDUCE-6029](https://issues.apache.org/jira/browse/MAPREDUCE-6029) | *Major* | **TestCommitterEventHandler fails in trunk**
---

* [MAPREDUCE-6024](https://issues.apache.org/jira/browse/MAPREDUCE-6024) | *Critical* | **java.net.SocketTimeoutException in Fetcher caused jobs stuck for more than 1 hour**
---

* [MAPREDUCE-6022](https://issues.apache.org/jira/browse/MAPREDUCE-6022) | *Major* | **map\_input\_file is missing from streaming job environment**
---

* [MAPREDUCE-6021](https://issues.apache.org/jira/browse/MAPREDUCE-6021) | *Major* | **MR AM should have working directory in LD\_LIBRARY\_PATH**
---

* [MAPREDUCE-6019](https://issues.apache.org/jira/browse/MAPREDUCE-6019) | *Major* | **MapReduce changes for exposing YARN/MR endpoints on multiple interfaces.**
---

* [MAPREDUCE-6018](https://issues.apache.org/jira/browse/MAPREDUCE-6018) | *Major* | **Create a framework specific config to enable timeline server**
---

* [MAPREDUCE-6014](https://issues.apache.org/jira/browse/MAPREDUCE-6014) | *Major* | **New task status field in task attempts table can lead to an empty web page**
---

* [MAPREDUCE-6012](https://issues.apache.org/jira/browse/MAPREDUCE-6012) | *Major* | **DBInputSplit creates invalid ranges on Oracle**
---

* [MAPREDUCE-6010](https://issues.apache.org/jira/browse/MAPREDUCE-6010) | *Major* | **HistoryServerFileSystemStateStore fails to update tokens**
---

* [MAPREDUCE-5999](https://issues.apache.org/jira/browse/MAPREDUCE-5999) | *Minor* | **Fix dead link in InputFormat javadoc**
---

* [MAPREDUCE-5998](https://issues.apache.org/jira/browse/MAPREDUCE-5998) | *Minor* | **CompositeInputFormat javadoc is broken**
---

* [MAPREDUCE-5974](https://issues.apache.org/jira/browse/MAPREDUCE-5974) | *Major* | **Allow specifying multiple MapOutputCollectors with fallback**
---

* [MAPREDUCE-5971](https://issues.apache.org/jira/browse/MAPREDUCE-5971) | *Trivial* | **Move the default options for distcp -p to DistCpOptionSwitch**
---

* [MAPREDUCE-5970](https://issues.apache.org/jira/browse/MAPREDUCE-5970) | *Minor* | **Provide a boolean switch to enable MR-AM profiling**
---

* [MAPREDUCE-5963](https://issues.apache.org/jira/browse/MAPREDUCE-5963) | *Major* | **ShuffleHandler DB schema should be versioned with compatible/incompatible changes**
---

* [MAPREDUCE-5960](https://issues.apache.org/jira/browse/MAPREDUCE-5960) | *Major* | **JobSubmitter's check whether job.jar is local is incorrect with no authority in job jar path.**
---

* [MAPREDUCE-5958](https://issues.apache.org/jira/browse/MAPREDUCE-5958) | *Minor* | **Wrong reduce task progress if map output is compressed**
---

* [MAPREDUCE-5957](https://issues.apache.org/jira/browse/MAPREDUCE-5957) | *Major* | **AM throws ClassNotFoundException with job classloader enabled if custom output format/committer is used**
---

* [MAPREDUCE-5956](https://issues.apache.org/jira/browse/MAPREDUCE-5956) | *Blocker* | **MapReduce AM should not use maxAttempts to determine if this is the last retry**
---

* [MAPREDUCE-5950](https://issues.apache.org/jira/browse/MAPREDUCE-5950) | *Major* | **incorrect description in distcp2 document**
---

* [MAPREDUCE-5945](https://issues.apache.org/jira/browse/MAPREDUCE-5945) | *Minor* | **Update the description of GenericOptionsParser -jt option**
---

* [MAPREDUCE-5943](https://issues.apache.org/jira/browse/MAPREDUCE-5943) | *Minor* | **Separate mapred commands from CommandsManual.apt.vm**
---

* [MAPREDUCE-5942](https://issues.apache.org/jira/browse/MAPREDUCE-5942) | *Minor* | **Remove MRv1 commands from CommandsManual.apt.vm**
---

* [MAPREDUCE-5933](https://issues.apache.org/jira/browse/MAPREDUCE-5933) | *Major* | **Enable MR AM to post history events to the timeline server**
---

* [MAPREDUCE-5931](https://issues.apache.org/jira/browse/MAPREDUCE-5931) | *Minor* | **Validate SleepJob command line parameters**
---

* [MAPREDUCE-5910](https://issues.apache.org/jira/browse/MAPREDUCE-5910) | *Major* | **MRAppMaster should handle Resync from RM instead of shutting down.**
---

* [MAPREDUCE-5906](https://issues.apache.org/jira/browse/MAPREDUCE-5906) | *Minor* | **Inconsistent configuration in property "mapreduce.reduce.shuffle.input.buffer.percent"**
---

* [MAPREDUCE-5891](https://issues.apache.org/jira/browse/MAPREDUCE-5891) | *Major* | **Improved shuffle error handling across NM restarts**
---

* [MAPREDUCE-5885](https://issues.apache.org/jira/browse/MAPREDUCE-5885) | *Major* | **build/test/test.mapred.spill causes release audit warnings**
---

* [MAPREDUCE-5878](https://issues.apache.org/jira/browse/MAPREDUCE-5878) | *Major* | **some standard JDK APIs are not part of system classes defaults**
---

* [MAPREDUCE-5873](https://issues.apache.org/jira/browse/MAPREDUCE-5873) | *Major* | **Shuffle bandwidth computation includes time spent waiting for maps**
---

* [MAPREDUCE-5866](https://issues.apache.org/jira/browse/MAPREDUCE-5866) | *Major* | **TestFixedLengthInputFormat fails in windows**
---

* [MAPREDUCE-5831](https://issues.apache.org/jira/browse/MAPREDUCE-5831) | *Blocker* | **Old MR client is not compatible with new MR application**
---

* [MAPREDUCE-5796](https://issues.apache.org/jira/browse/MAPREDUCE-5796) | *Minor* | **Use current version of the archive name in DistributedCacheDeploy document**
---

* [MAPREDUCE-5756](https://issues.apache.org/jira/browse/MAPREDUCE-5756) | *Major* | **CombineFileInputFormat.getSplits() including directories in its results**
---

* [MAPREDUCE-5597](https://issues.apache.org/jira/browse/MAPREDUCE-5597) | *Minor* | **Missing alternatives in javadocs for deprecated constructors in mapreduce.Job**
---

* [MAPREDUCE-5595](https://issues.apache.org/jira/browse/MAPREDUCE-5595) | *Trivial* | **Typo in MergeManagerImpl.java**
---

* [MAPREDUCE-5542](https://issues.apache.org/jira/browse/MAPREDUCE-5542) | *Major* | **Killing a job just as it finishes can generate an NPE in client**
---

* [MAPREDUCE-5363](https://issues.apache.org/jira/browse/MAPREDUCE-5363) | *Minor* | **Fix doc and spelling for TaskCompletionEvent#getTaskStatus and getStatus**
---

* [MAPREDUCE-5279](https://issues.apache.org/jira/browse/MAPREDUCE-5279) | *Critical* | **Jobs can deadlock if headroom is limited by cpu instead of memory**
---

* [MAPREDUCE-5130](https://issues.apache.org/jira/browse/MAPREDUCE-5130) | *Major* | **Add missing job config options to mapred-default.xml**
---

* [MAPREDUCE-4791](https://issues.apache.org/jira/browse/MAPREDUCE-4791) | *Minor* | **Javadoc for KeyValueTextInputFormat should include default separator and how to change it**
---

* [MAPREDUCE-883](https://issues.apache.org/jira/browse/MAPREDUCE-883) | *Minor* | **harchive: Document how to unarchive**


