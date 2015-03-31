# Hadoop Changelog

## Release 2.6.0 - 2014-11-18

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-6086](https://issues.apache.org/jira/browse/MAPREDUCE-6086) | mapreduce.job.credentials.binary should allow all URIs |  Major | security | zhihai xu | zhihai xu |
| [MAPREDUCE-6072](https://issues.apache.org/jira/browse/MAPREDUCE-6072) | Remove INSTALL document |  Minor | documentation | Akira AJISAKA | Akira AJISAKA |
| [MAPREDUCE-6071](https://issues.apache.org/jira/browse/MAPREDUCE-6071) | JobImpl#makeUberDecision doesn't log that Uber mode is disabled because of too much CPUs |  Trivial | client | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [MAPREDUCE-6070](https://issues.apache.org/jira/browse/MAPREDUCE-6070) | yarn.app.am.resource.mb/cpu-vcores affects uber mode but is not documented |  Trivial | documentation | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [MAPREDUCE-6024](https://issues.apache.org/jira/browse/MAPREDUCE-6024) | java.net.SocketTimeoutException in Fetcher caused jobs stuck for more than 1 hour |  Critical | mr-am, task | zhaoyunjiong | zhaoyunjiong |
| [MAPREDUCE-5971](https://issues.apache.org/jira/browse/MAPREDUCE-5971) | Move the default options for distcp -p to DistCpOptionSwitch |  Trivial | distcp | Charles Lamb | Charles Lamb |
| [MAPREDUCE-5970](https://issues.apache.org/jira/browse/MAPREDUCE-5970) | Provide a boolean switch to enable MR-AM profiling |  Minor | applicationmaster, client | Gera Shegalov | Gera Shegalov |
| [MAPREDUCE-5943](https://issues.apache.org/jira/browse/MAPREDUCE-5943) | Separate mapred commands from CommandsManual.apt.vm |  Minor | documentation | Akira AJISAKA | Akira AJISAKA |
| [MAPREDUCE-5906](https://issues.apache.org/jira/browse/MAPREDUCE-5906) | Inconsistent configuration in property "mapreduce.reduce.shuffle.input.buffer.percent" |  Minor | . | Akira AJISAKA | Akira AJISAKA |
| [MAPREDUCE-5130](https://issues.apache.org/jira/browse/MAPREDUCE-5130) | Add missing job config options to mapred-default.xml |  Major | documentation | Sandy Ryza | Ray Chiang |
| [MAPREDUCE-4791](https://issues.apache.org/jira/browse/MAPREDUCE-4791) | Javadoc for KeyValueTextInputFormat should include default separator and how to change it |  Minor | documentation | Matt Lavin | Akira AJISAKA |
| [MAPREDUCE-883](https://issues.apache.org/jira/browse/MAPREDUCE-883) | harchive: Document how to unarchive |  Minor | documentation, harchive | Koji Noguchi | Akira AJISAKA |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-6156](https://issues.apache.org/jira/browse/MAPREDUCE-6156) | Fetcher - connect() doesn't handle connection refused correctly |  Blocker | . | Sidharta Seethana | Junping Du |
| [MAPREDUCE-6126](https://issues.apache.org/jira/browse/MAPREDUCE-6126) | (Rumen) Rumen tool returns error "ava.lang.IllegalArgumentException: JobBuilder.process(HistoryEvent): unknown event type" |  Major | . | Junping Du | Junping Du |
| [MAPREDUCE-6125](https://issues.apache.org/jira/browse/MAPREDUCE-6125) | TestContainerLauncherImpl sometimes fails |  Major | test | Mit Desai | Mit Desai |
| [MAPREDUCE-6123](https://issues.apache.org/jira/browse/MAPREDUCE-6123) | TestCombineFileInputFormat incorrectly starts 2 MiniDFSCluster instances. |  Trivial | test | Chris Nauroth | Chris Nauroth |
| [MAPREDUCE-6122](https://issues.apache.org/jira/browse/MAPREDUCE-6122) | TestLineRecordReader may fail due to test data files checked out of git with incorrect line endings. |  Trivial | test | Chris Nauroth | Chris Nauroth |
| [MAPREDUCE-6109](https://issues.apache.org/jira/browse/MAPREDUCE-6109) | Fix minor typo in distcp -p usage text |  Trivial | distcp | Charles Lamb | Charles Lamb |
| [MAPREDUCE-6104](https://issues.apache.org/jira/browse/MAPREDUCE-6104) | TestJobHistoryParsing.testPartialJob fails in branch-2 |  Major | . | Mit Desai | Mit Desai |
| [MAPREDUCE-6095](https://issues.apache.org/jira/browse/MAPREDUCE-6095) | Enable DistributedCache for uber-mode Jobs |  Major | applicationmaster, distributed-cache | Gera Shegalov | Gera Shegalov |
| [MAPREDUCE-6094](https://issues.apache.org/jira/browse/MAPREDUCE-6094) | TestMRCJCFileInputFormat.testAddInputPath() fails on trunk |  Minor | test | Sangjin Lee | Akira AJISAKA |
| [MAPREDUCE-6093](https://issues.apache.org/jira/browse/MAPREDUCE-6093) | minor distcp doc edits |  Trivial | distcp, documentation | Charles Lamb | Charles Lamb |
| [MAPREDUCE-6091](https://issues.apache.org/jira/browse/MAPREDUCE-6091) | YARNRunner.getJobStatus() fails with ApplicationNotFoundException if the job rolled off the RM view |  Major | client | Sangjin Lee | Sangjin Lee |
| [MAPREDUCE-6090](https://issues.apache.org/jira/browse/MAPREDUCE-6090) | mapred hsadmin getGroups fails to connect in some cases |  Major | client | Robert Kanter | Robert Kanter |
| [MAPREDUCE-6087](https://issues.apache.org/jira/browse/MAPREDUCE-6087) | MRJobConfig#MR\_CLIENT\_TO\_AM\_IPC\_MAX\_RETRIES\_ON\_TIMEOUTS config name is wrong |  Major | . | Jian He | Akira AJISAKA |
| [MAPREDUCE-6075](https://issues.apache.org/jira/browse/MAPREDUCE-6075) | HistoryServerFileSystemStateStore can create zero-length files |  Major | jobhistoryserver | Jason Lowe | Jason Lowe |
| [MAPREDUCE-6073](https://issues.apache.org/jira/browse/MAPREDUCE-6073) | Description of mapreduce.job.speculative.slowtaskthreshold in mapred-default should be moved into description tags |  Trivial | documentation | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [MAPREDUCE-6063](https://issues.apache.org/jira/browse/MAPREDUCE-6063) | In sortAndSpill of MapTask.java, size is calculated wrongly when bufend \< bufstart. |  Major | mrv1, mrv2 | zhihai xu | zhihai xu |
| [MAPREDUCE-6052](https://issues.apache.org/jira/browse/MAPREDUCE-6052) | Support overriding log4j.properties per job |  Major | . | Junping Du | Junping Du |
| [MAPREDUCE-6051](https://issues.apache.org/jira/browse/MAPREDUCE-6051) | Fix typos in log messages |  Trivial | . | Ray Chiang | Ray Chiang |
| [MAPREDUCE-6044](https://issues.apache.org/jira/browse/MAPREDUCE-6044) | Fully qualified intermediate done directory will break per-user dir creation on Windows |  Major | jobhistoryserver | Zhijie Shen | Zhijie Shen |
| [MAPREDUCE-6036](https://issues.apache.org/jira/browse/MAPREDUCE-6036) | TestJobEndNotifier fails intermittently in branch-2 |  Major | . | Mit Desai | Chang Li |
| [MAPREDUCE-6032](https://issues.apache.org/jira/browse/MAPREDUCE-6032) | Unable to check mapreduce job status if submitted using a non-default namenode |  Major | jobhistoryserver | Benjamin Zhitomirsky | Benjamin Zhitomirsky |
| [MAPREDUCE-6029](https://issues.apache.org/jira/browse/MAPREDUCE-6029) | TestCommitterEventHandler fails in trunk |  Major | . | Ted Yu | Mit Desai |
| [MAPREDUCE-6022](https://issues.apache.org/jira/browse/MAPREDUCE-6022) | map\_input\_file is missing from streaming job environment |  Major | . | Jason Lowe | Jason Lowe |
| [MAPREDUCE-6021](https://issues.apache.org/jira/browse/MAPREDUCE-6021) | MR AM should have working directory in LD\_LIBRARY\_PATH |  Major | mr-am | Jason Lowe | Jason Lowe |
| [MAPREDUCE-6019](https://issues.apache.org/jira/browse/MAPREDUCE-6019) | MapReduce changes for exposing YARN/MR endpoints on multiple interfaces. |  Major | . | Xuan Gong | Craig Welch |
| [MAPREDUCE-6014](https://issues.apache.org/jira/browse/MAPREDUCE-6014) | New task status field in task attempts table can lead to an empty web page |  Major | . | Mit Desai | Mit Desai |
| [MAPREDUCE-6012](https://issues.apache.org/jira/browse/MAPREDUCE-6012) | DBInputSplit creates invalid ranges on Oracle |  Major | . | Julien Serdaru | Wei Yan |
| [MAPREDUCE-6010](https://issues.apache.org/jira/browse/MAPREDUCE-6010) | HistoryServerFileSystemStateStore fails to update tokens |  Major | jobhistoryserver | Jason Lowe | Jason Lowe |
| [MAPREDUCE-5999](https://issues.apache.org/jira/browse/MAPREDUCE-5999) | Fix dead link in InputFormat javadoc |  Minor | documentation | Akira AJISAKA | Akira AJISAKA |
| [MAPREDUCE-5998](https://issues.apache.org/jira/browse/MAPREDUCE-5998) | CompositeInputFormat javadoc is broken |  Minor | documentation | Akira AJISAKA | Akira AJISAKA |
| [MAPREDUCE-5960](https://issues.apache.org/jira/browse/MAPREDUCE-5960) | JobSubmitter's check whether job.jar is local is incorrect with no authority in job jar path. |  Major | client | Gera Shegalov | Gera Shegalov |
| [MAPREDUCE-5958](https://issues.apache.org/jira/browse/MAPREDUCE-5958) | Wrong reduce task progress if map output is compressed |  Minor | . | Emilio Coppa | Emilio Coppa |
| [MAPREDUCE-5957](https://issues.apache.org/jira/browse/MAPREDUCE-5957) | AM throws ClassNotFoundException with job classloader enabled if custom output format/committer is used |  Major | . | Sangjin Lee | Sangjin Lee |
| [MAPREDUCE-5950](https://issues.apache.org/jira/browse/MAPREDUCE-5950) | incorrect description in distcp2 document |  Major | documentation | Yongjun Zhang | Akira AJISAKA |
| [MAPREDUCE-5931](https://issues.apache.org/jira/browse/MAPREDUCE-5931) | Validate SleepJob command line parameters |  Minor | test | Gera Shegalov | Gera Shegalov |
| [MAPREDUCE-5885](https://issues.apache.org/jira/browse/MAPREDUCE-5885) | build/test/test.mapred.spill causes release audit warnings |  Major | test | Jason Lowe | Chen He |
| [MAPREDUCE-5878](https://issues.apache.org/jira/browse/MAPREDUCE-5878) | some standard JDK APIs are not part of system classes defaults |  Major | mrv2 | Sangjin Lee | Sangjin Lee |
| [MAPREDUCE-5873](https://issues.apache.org/jira/browse/MAPREDUCE-5873) | Shuffle bandwidth computation includes time spent waiting for maps |  Major | . | Siqi Li | Siqi Li |
| [MAPREDUCE-5831](https://issues.apache.org/jira/browse/MAPREDUCE-5831) | Old MR client is not compatible with new MR application |  Blocker | client, mr-am | Zhijie Shen | Junping Du |
| [MAPREDUCE-5796](https://issues.apache.org/jira/browse/MAPREDUCE-5796) | Use current version of the archive name in DistributedCacheDeploy document |  Minor | documentation | Akira AJISAKA | Akira AJISAKA |
| [MAPREDUCE-5756](https://issues.apache.org/jira/browse/MAPREDUCE-5756) | CombineFileInputFormat.getSplits() including directories in its results |  Major | . | Jason Dere | Jason Dere |
| [MAPREDUCE-5597](https://issues.apache.org/jira/browse/MAPREDUCE-5597) | Missing alternatives in javadocs for deprecated constructors in mapreduce.Job |  Minor | client, documentation, job submission | Christopher Tubbs | Akira AJISAKA |
| [MAPREDUCE-5595](https://issues.apache.org/jira/browse/MAPREDUCE-5595) | Typo in MergeManagerImpl.java |  Trivial | . | Efe Gencer | Akira AJISAKA |
| [MAPREDUCE-5542](https://issues.apache.org/jira/browse/MAPREDUCE-5542) | Killing a job just as it finishes can generate an NPE in client |  Major | client, mrv2 | Jason Lowe | Rohith |
| [MAPREDUCE-5363](https://issues.apache.org/jira/browse/MAPREDUCE-5363) | Fix doc and spelling for TaskCompletionEvent#getTaskStatus and getStatus |  Minor | mrv1, mrv2 | Sandy Ryza | Akira AJISAKA |
| [MAPREDUCE-5279](https://issues.apache.org/jira/browse/MAPREDUCE-5279) | Jobs can deadlock if headroom is limited by cpu instead of memory |  Critical | mrv2, scheduler | Peng Zhang | Peng Zhang |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-6115](https://issues.apache.org/jira/browse/MAPREDUCE-6115) | TestPipeApplication#testSubmitter fails in trunk |  Minor | . | Ted Yu | Binglin Chang |
| [MAPREDUCE-6048](https://issues.apache.org/jira/browse/MAPREDUCE-6048) | TestJavaSerialization fails in trunk build |  Minor | . | Ted Yu | Varun Vasudev |
| [MAPREDUCE-5866](https://issues.apache.org/jira/browse/MAPREDUCE-5866) | TestFixedLengthInputFormat fails in windows |  Major | client, test | Varun Vasudev | Varun Vasudev |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-6142](https://issues.apache.org/jira/browse/MAPREDUCE-6142) | Test failure in TestJobHistoryEventHandler and TestMRTimelineEventHandling |  Critical | . | Zhijie Shen | Zhijie Shen |
| [MAPREDUCE-6018](https://issues.apache.org/jira/browse/MAPREDUCE-6018) | Create a framework specific config to enable timeline server |  Major | . | Jonathan Eagles | Robert Kanter |
| [MAPREDUCE-5974](https://issues.apache.org/jira/browse/MAPREDUCE-5974) | Allow specifying multiple MapOutputCollectors with fallback |  Major | task | Todd Lipcon | Todd Lipcon |
| [MAPREDUCE-5963](https://issues.apache.org/jira/browse/MAPREDUCE-5963) | ShuffleHandler DB schema should be versioned with compatible/incompatible changes |  Major | . | Junping Du | Junping Du |
| [MAPREDUCE-5956](https://issues.apache.org/jira/browse/MAPREDUCE-5956) | MapReduce AM should not use maxAttempts to determine if this is the last retry |  Blocker | applicationmaster, mrv2 | Vinod Kumar Vavilapalli | Wangda Tan |
| [MAPREDUCE-5945](https://issues.apache.org/jira/browse/MAPREDUCE-5945) | Update the description of GenericOptionsParser -jt option |  Minor | documentation | Akira AJISAKA | Akira AJISAKA |
| [MAPREDUCE-5942](https://issues.apache.org/jira/browse/MAPREDUCE-5942) | Remove MRv1 commands from CommandsManual.apt.vm |  Minor | documentation | Akira AJISAKA | Akira AJISAKA |
| [MAPREDUCE-5933](https://issues.apache.org/jira/browse/MAPREDUCE-5933) | Enable MR AM to post history events to the timeline server |  Major | mr-am | Zhijie Shen | Robert Kanter |
| [MAPREDUCE-5891](https://issues.apache.org/jira/browse/MAPREDUCE-5891) | Improved shuffle error handling across NM restarts |  Major | . | Jason Lowe | Junping Du |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-5910](https://issues.apache.org/jira/browse/MAPREDUCE-5910) | MRAppMaster should handle Resync from RM instead of shutting down. |  Major | applicationmaster | Rohith | Rohith |


