# Hadoop Changelog

## Release 2.3.0 - 2014-02-20

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-5332](https://issues.apache.org/jira/browse/MAPREDUCE-5332) | Support token-preserving restart of history server |  Major | jobhistoryserver | Jason Lowe | Jason Lowe |
| [MAPREDUCE-5266](https://issues.apache.org/jira/browse/MAPREDUCE-5266) | Ability to refresh retention settings on history server |  Major | jobhistoryserver | Jason Lowe | Ashwin Shankar |
| [MAPREDUCE-5265](https://issues.apache.org/jira/browse/MAPREDUCE-5265) | History server admin service to refresh user and superuser group mappings |  Major | jobhistoryserver | Jason Lowe | Ashwin Shankar |
| [MAPREDUCE-1176](https://issues.apache.org/jira/browse/MAPREDUCE-1176) | FixedLengthInputFormat and FixedLengthRecordReader |  Major | . | BitsOfInfo | Mariappan Asokan |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-5692](https://issues.apache.org/jira/browse/MAPREDUCE-5692) | Add explicit diagnostics when a task attempt is killed due to speculative execution |  Major | mrv2 | Gera Shegalov | Gera Shegalov |
| [MAPREDUCE-5672](https://issues.apache.org/jira/browse/MAPREDUCE-5672) | Provide optional RollingFileAppender for container log4j (syslog) |  Major | mr-am, mrv2 | Gera Shegalov | Gera Shegalov |
| [MAPREDUCE-5640](https://issues.apache.org/jira/browse/MAPREDUCE-5640) | Rename TestLineRecordReader in jobclient module |  Trivial | test | Jason Lowe | Jason Lowe |
| [MAPREDUCE-5601](https://issues.apache.org/jira/browse/MAPREDUCE-5601) | ShuffleHandler fadvises file regions as DONTNEED even when fetch fails |  Major | . | Sandy Ryza | Sandy Ryza |
| [MAPREDUCE-5596](https://issues.apache.org/jira/browse/MAPREDUCE-5596) | Allow configuring the number of threads used to serve shuffle connections |  Major | . | Sandy Ryza | Sandy Ryza |
| [MAPREDUCE-5487](https://issues.apache.org/jira/browse/MAPREDUCE-5487) | In task processes, JobConf is unnecessarily loaded again in Limits |  Major | performance, task | Sandy Ryza | Sandy Ryza |
| [MAPREDUCE-5484](https://issues.apache.org/jira/browse/MAPREDUCE-5484) | YarnChild unnecessarily loads job conf twice |  Major | task | Sandy Ryza | Sandy Ryza |
| [MAPREDUCE-5457](https://issues.apache.org/jira/browse/MAPREDUCE-5457) | Add a KeyOnlyTextOutputReader to enable streaming to write out text files without separators |  Major | . | Sandy Ryza | Sandy Ryza |
| [MAPREDUCE-3310](https://issues.apache.org/jira/browse/MAPREDUCE-3310) | Custom grouping comparator cannot be set for Combiners |  Major | client | Mathias Herberts | Alejandro Abdelnur |
| [MAPREDUCE-2734](https://issues.apache.org/jira/browse/MAPREDUCE-2734) | DistCp with FairScheduler assign all map tasks in one TT |  Trivial | jobtracker | Bochun Bai | Bochun Bai |
| [MAPREDUCE-434](https://issues.apache.org/jira/browse/MAPREDUCE-434) | LocalJobRunner limited to single reducer |  Minor | . | Yoram Arnon | Aaron Kimball |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-5744](https://issues.apache.org/jira/browse/MAPREDUCE-5744) | Job hangs because RMContainerAllocator$AssignedRequests.preemptReduce() violates the comparator contract |  Blocker | . | Sangjin Lee | Gera Shegalov |
| [MAPREDUCE-5743](https://issues.apache.org/jira/browse/MAPREDUCE-5743) | TestRMContainerAllocator is failing |  Major | . | Ted Yu | Ted Yu |
| [MAPREDUCE-5729](https://issues.apache.org/jira/browse/MAPREDUCE-5729) | mapred job -list throws NPE |  Critical | mrv2 | Karthik Kambatla | Karthik Kambatla |
| [MAPREDUCE-5725](https://issues.apache.org/jira/browse/MAPREDUCE-5725) | TestNetworkedJob relies on the Capacity Scheduler |  Major | . | Sandy Ryza | Sandy Ryza |
| [MAPREDUCE-5724](https://issues.apache.org/jira/browse/MAPREDUCE-5724) | JobHistoryServer does not start if HDFS is not running |  Critical | jobhistoryserver | Alejandro Abdelnur | Alejandro Abdelnur |
| [MAPREDUCE-5723](https://issues.apache.org/jira/browse/MAPREDUCE-5723) | MR AM container log can be truncated or empty |  Blocker | applicationmaster | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [MAPREDUCE-5694](https://issues.apache.org/jira/browse/MAPREDUCE-5694) | MR AM container syslog is empty |  Major | . | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [MAPREDUCE-5693](https://issues.apache.org/jira/browse/MAPREDUCE-5693) | Restore MRv1 behavior for log flush |  Major | mrv2 | Gera Shegalov | Gera Shegalov |
| [MAPREDUCE-5689](https://issues.apache.org/jira/browse/MAPREDUCE-5689) | MRAppMaster does not preempt reducers when scheduled maps cannot be fulfilled |  Critical | . | Lohit Vijayarenu | Lohit Vijayarenu |
| [MAPREDUCE-5685](https://issues.apache.org/jira/browse/MAPREDUCE-5685) | getCacheFiles()  api doesn't work in WrappedReducer.java due to typo |  Blocker | client | Yi Song | Yi Song |
| [MAPREDUCE-5679](https://issues.apache.org/jira/browse/MAPREDUCE-5679) | TestJobHistoryParsing has race condition |  Major | . | Liyin Liang | Liyin Liang |
| [MAPREDUCE-5674](https://issues.apache.org/jira/browse/MAPREDUCE-5674) | Missing start and finish time in mapred.JobStatus |  Major | client | Chuan Liu | Chuan Liu |
| [MAPREDUCE-5656](https://issues.apache.org/jira/browse/MAPREDUCE-5656) | bzip2 codec can drop records when reading data in splits |  Critical | . | Jason Lowe | Jason Lowe |
| [MAPREDUCE-5650](https://issues.apache.org/jira/browse/MAPREDUCE-5650) | Job fails when hprof mapreduce.task.profile.map/reduce.params is specified |  Major | mrv2 | Gera Shegalov | Gera Shegalov |
| [MAPREDUCE-5645](https://issues.apache.org/jira/browse/MAPREDUCE-5645) | TestFixedLengthInputFormat fails with native libs |  Major | . | Jonathan Eagles | Mit Desai |
| [MAPREDUCE-5631](https://issues.apache.org/jira/browse/MAPREDUCE-5631) | TestJobEndNotifier.testNotifyRetries fails with Should have taken more than 5 seconds in jdk7 |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [MAPREDUCE-5623](https://issues.apache.org/jira/browse/MAPREDUCE-5623) | TestJobCleanup fails because of RejectedExecutionException and NPE. |  Major | . | Tsuyoshi Ozawa | Jason Lowe |
| [MAPREDUCE-5616](https://issues.apache.org/jira/browse/MAPREDUCE-5616) | MR Client-AppMaster RPC max retries on socket timeout is too high. |  Major | client | Chris Nauroth | Chris Nauroth |
| [MAPREDUCE-5613](https://issues.apache.org/jira/browse/MAPREDUCE-5613) | DefaultSpeculator holds and checks hashmap that is always empty |  Major | applicationmaster | Gera Shegalov | Gera Shegalov |
| [MAPREDUCE-5604](https://issues.apache.org/jira/browse/MAPREDUCE-5604) | TestMRAMWithNonNormalizedCapabilities fails on Windows due to exceeding max path length |  Minor | test | Chris Nauroth | Chris Nauroth |
| [MAPREDUCE-5598](https://issues.apache.org/jira/browse/MAPREDUCE-5598) | TestUserDefinedCounters.testMapReduceJob is flakey |  Major | test | Robert Kanter | Robert Kanter |
| [MAPREDUCE-5587](https://issues.apache.org/jira/browse/MAPREDUCE-5587) | TestTextOutputFormat fails on JDK7 |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [MAPREDUCE-5586](https://issues.apache.org/jira/browse/MAPREDUCE-5586) | TestCopyMapper#testCopyFailOnBlockSizeDifference fails when run from hadoop-tools/hadoop-distcp directory |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [MAPREDUCE-5585](https://issues.apache.org/jira/browse/MAPREDUCE-5585) | TestCopyCommitter#testNoCommitAction Fails on JDK7 |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [MAPREDUCE-5569](https://issues.apache.org/jira/browse/MAPREDUCE-5569) | FloatSplitter is not generating correct splits |  Major | . | Nathan Roberts | Nathan Roberts |
| [MAPREDUCE-5561](https://issues.apache.org/jira/browse/MAPREDUCE-5561) | org.apache.hadoop.mapreduce.v2.app.job.impl.TestJobImpl testcase failing on trunk |  Critical | . | Cindy Li | Karthik Kambatla |
| [MAPREDUCE-5550](https://issues.apache.org/jira/browse/MAPREDUCE-5550) | Task Status message (reporter.setStatus) not shown in UI with Hadoop 2.0 |  Major | . | Vrushali C | Gera Shegalov |
| [MAPREDUCE-5546](https://issues.apache.org/jira/browse/MAPREDUCE-5546) | mapred.cmd on Windows set HADOOP\_OPTS incorrectly |  Major | . | Chuan Liu | Chuan Liu |
| [MAPREDUCE-5522](https://issues.apache.org/jira/browse/MAPREDUCE-5522) | Incorrectly expect the array of JobQueueInfo returned by o.a.h.mapred.QueueManager#getJobQueueInfos to have a specific order. |  Minor | test | Jinghui Wang | Jinghui Wang |
| [MAPREDUCE-5518](https://issues.apache.org/jira/browse/MAPREDUCE-5518) | Fix typo "can't read paritions file" |  Trivial | examples | Albert Chu | Albert Chu |
| [MAPREDUCE-5514](https://issues.apache.org/jira/browse/MAPREDUCE-5514) | TestRMContainerAllocator fails on trunk |  Blocker | . | Zhijie Shen | Zhijie Shen |
| [MAPREDUCE-5504](https://issues.apache.org/jira/browse/MAPREDUCE-5504) | mapred queue -info inconsistent with types |  Major | client | Thomas Graves | Kousuke Saruta |
| [MAPREDUCE-5481](https://issues.apache.org/jira/browse/MAPREDUCE-5481) | Enable uber jobs to have multiple reducers |  Blocker | mrv2, test | Jason Lowe | Sandy Ryza |
| [MAPREDUCE-5451](https://issues.apache.org/jira/browse/MAPREDUCE-5451) | MR uses LD\_LIBRARY\_PATH which doesn't mean anything in Windows |  Major | . | Mostafa Elhemali | Yingda Chen |
| [MAPREDUCE-5431](https://issues.apache.org/jira/browse/MAPREDUCE-5431) | Missing pom dependency in MR-client |  Major | build | Timothy St. Clair | Timothy St. Clair |
| [MAPREDUCE-5404](https://issues.apache.org/jira/browse/MAPREDUCE-5404) | HSAdminServer does not use ephemeral ports in minicluster mode |  Major | jobhistoryserver | Ted Yu | Ted Yu |
| [MAPREDUCE-5380](https://issues.apache.org/jira/browse/MAPREDUCE-5380) | Invalid mapred command should return non-zero exit code |  Major | . | Stephen Chu | Stephen Chu |
| [MAPREDUCE-5373](https://issues.apache.org/jira/browse/MAPREDUCE-5373) | TestFetchFailure.testFetchFailureMultipleReduces could fail intermittently |  Major | . | Chuan Liu | Jonathan Eagles |
| [MAPREDUCE-5329](https://issues.apache.org/jira/browse/MAPREDUCE-5329) | APPLICATION\_INIT is never sent to AuxServices other than the builtin ShuffleHandler |  Major | mr-am | Avner BenHanoch | Avner BenHanoch |
| [MAPREDUCE-5316](https://issues.apache.org/jira/browse/MAPREDUCE-5316) | job -list-attempt-ids command does not handle illegal task-state |  Major | client | Ashwin Shankar | Ashwin Shankar |
| [MAPREDUCE-5186](https://issues.apache.org/jira/browse/MAPREDUCE-5186) | mapreduce.job.max.split.locations causes some splits created by CombineFileInputFormat to fail |  Critical | job submission | Sangjin Lee | Robert Parker |
| [MAPREDUCE-5052](https://issues.apache.org/jira/browse/MAPREDUCE-5052) | Job History UI and web services confusing job start time and job submit time |  Critical | jobhistoryserver, webapps | Kendall Thrapp | Chen He |
| [MAPREDUCE-4680](https://issues.apache.org/jira/browse/MAPREDUCE-4680) | Job history cleaner should only check timestamps of files in old enough directories |  Major | jobhistoryserver | Sandy Ryza | Robert Kanter |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-5687](https://issues.apache.org/jira/browse/MAPREDUCE-5687) | TestYARNRunner#testResourceMgrDelegate fails with NPE after YARN-1446 |  Major | . | Ted Yu | Jian He |
| [MAPREDUCE-5632](https://issues.apache.org/jira/browse/MAPREDUCE-5632) | TestRMContainerAllocator#testUpdatedNodes fails |  Major | . | Ted Yu | Jonathan Eagles |
| [MAPREDUCE-5625](https://issues.apache.org/jira/browse/MAPREDUCE-5625) | TestFixedLengthInputFormat fails in jdk7 environment |  Major | . | Jonathan Eagles | Mariappan Asokan |
| [MAPREDUCE-5610](https://issues.apache.org/jira/browse/MAPREDUCE-5610) | TestSleepJob fails in jdk7 |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [MAPREDUCE-5102](https://issues.apache.org/jira/browse/MAPREDUCE-5102) | fix coverage  org.apache.hadoop.mapreduce.lib.db and org.apache.hadoop.mapred.lib.db |  Major | . | Aleksey Gorshkov | Andrey Klochkov |
| [MAPREDUCE-5084](https://issues.apache.org/jira/browse/MAPREDUCE-5084) | fix coverage  org.apache.hadoop.mapreduce.v2.app.webapp and org.apache.hadoop.mapreduce.v2.hs.webapp |  Major | . | Aleksey Gorshkov | Aleksey Gorshkov |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-5411](https://issues.apache.org/jira/browse/MAPREDUCE-5411) | Refresh size of loaded job cache on history server |  Major | jobhistoryserver | Ashwin Shankar | Ashwin Shankar |
| [MAPREDUCE-5409](https://issues.apache.org/jira/browse/MAPREDUCE-5409) | MRAppMaster throws InvalidStateTransitonException: Invalid event: TA\_TOO\_MANY\_FETCH\_FAILURE at KILLED for TaskAttemptImpl |  Major | . | Devaraj K | Gera Shegalov |
| [MAPREDUCE-5386](https://issues.apache.org/jira/browse/MAPREDUCE-5386) | Ability to refresh history server job retention and job cleaner settings |  Major | jobhistoryserver | Ashwin Shankar | Ashwin Shankar |
| [MAPREDUCE-5356](https://issues.apache.org/jira/browse/MAPREDUCE-5356) | Ability to refresh aggregated log retention period and check interval |  Major | jobhistoryserver | Ashwin Shankar | Ashwin Shankar |
| [MAPREDUCE-4421](https://issues.apache.org/jira/browse/MAPREDUCE-4421) | Run MapReduce framework via the distributed cache |  Major | . | Arun C Murthy | Jason Lowe |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-5464](https://issues.apache.org/jira/browse/MAPREDUCE-5464) | Add analogs of the SLOTS\_MILLIS counters that jive with the YARN resource model |  Major | . | Sandy Ryza | Sandy Ryza |
| [MAPREDUCE-5463](https://issues.apache.org/jira/browse/MAPREDUCE-5463) | Deprecate SLOTS\_MILLIS counters |  Major | . | Sandy Ryza | Tsuyoshi Ozawa |


