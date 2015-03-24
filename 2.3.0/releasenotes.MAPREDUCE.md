# Hadoop MAPREDUCE 2.3.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.

---

* [MAPREDUCE-5744](https://issues.apache.org/jira/browse/MAPREDUCE-5744) | *Blocker* | **Job hangs because RMContainerAllocator$AssignedRequests.preemptReduce() violates the comparator contract**
---

* [MAPREDUCE-5743](https://issues.apache.org/jira/browse/MAPREDUCE-5743) | *Major* | **TestRMContainerAllocator is failing**
---

* [MAPREDUCE-5729](https://issues.apache.org/jira/browse/MAPREDUCE-5729) | *Critical* | **mapred job -list throws NPE**
---

* [MAPREDUCE-5725](https://issues.apache.org/jira/browse/MAPREDUCE-5725) | *Major* | **TestNetworkedJob relies on the Capacity Scheduler**
---

* [MAPREDUCE-5724](https://issues.apache.org/jira/browse/MAPREDUCE-5724) | *Critical* | **JobHistoryServer does not start if HDFS is not running**
---

* [MAPREDUCE-5723](https://issues.apache.org/jira/browse/MAPREDUCE-5723) | *Blocker* | **MR AM container log can be truncated or empty**
---

* [MAPREDUCE-5694](https://issues.apache.org/jira/browse/MAPREDUCE-5694) | *Major* | **MR AM container syslog is empty**
---

* [MAPREDUCE-5693](https://issues.apache.org/jira/browse/MAPREDUCE-5693) | *Major* | **Restore MRv1 behavior for log flush**
---

* [MAPREDUCE-5692](https://issues.apache.org/jira/browse/MAPREDUCE-5692) | *Major* | **Add explicit diagnostics when a task attempt is killed due to speculative execution**
---

* [MAPREDUCE-5689](https://issues.apache.org/jira/browse/MAPREDUCE-5689) | *Critical* | **MRAppMaster does not preempt reducers when scheduled maps cannot be fulfilled**
---

* [MAPREDUCE-5687](https://issues.apache.org/jira/browse/MAPREDUCE-5687) | *Major* | **TestYARNRunner#testResourceMgrDelegate fails with NPE after YARN-1446**
---

* [MAPREDUCE-5685](https://issues.apache.org/jira/browse/MAPREDUCE-5685) | *Blocker* | **getCacheFiles()  api doesn't work in WrappedReducer.java due to typo**
---

* [MAPREDUCE-5679](https://issues.apache.org/jira/browse/MAPREDUCE-5679) | *Major* | **TestJobHistoryParsing has race condition**
---

* [MAPREDUCE-5674](https://issues.apache.org/jira/browse/MAPREDUCE-5674) | *Major* | **Missing start and finish time in mapred.JobStatus**
---

* [MAPREDUCE-5672](https://issues.apache.org/jira/browse/MAPREDUCE-5672) | *Major* | **Provide optional RollingFileAppender for container log4j (syslog)**
---

* [MAPREDUCE-5656](https://issues.apache.org/jira/browse/MAPREDUCE-5656) | *Critical* | **bzip2 codec can drop records when reading data in splits**
---

* [MAPREDUCE-5650](https://issues.apache.org/jira/browse/MAPREDUCE-5650) | *Major* | **Job fails when hprof mapreduce.task.profile.map/reduce.params is specified**
---

* [MAPREDUCE-5645](https://issues.apache.org/jira/browse/MAPREDUCE-5645) | *Major* | **TestFixedLengthInputFormat fails with native libs**
---

* [MAPREDUCE-5640](https://issues.apache.org/jira/browse/MAPREDUCE-5640) | *Trivial* | **Rename TestLineRecordReader in jobclient module**
---

* [MAPREDUCE-5632](https://issues.apache.org/jira/browse/MAPREDUCE-5632) | *Major* | **TestRMContainerAllocator#testUpdatedNodes fails**
---

* [MAPREDUCE-5631](https://issues.apache.org/jira/browse/MAPREDUCE-5631) | *Major* | **TestJobEndNotifier.testNotifyRetries fails with Should have taken more than 5 seconds in jdk7**
---

* [MAPREDUCE-5625](https://issues.apache.org/jira/browse/MAPREDUCE-5625) | *Major* | **TestFixedLengthInputFormat fails in jdk7 environment**
---

* [MAPREDUCE-5623](https://issues.apache.org/jira/browse/MAPREDUCE-5623) | *Major* | **TestJobCleanup fails because of RejectedExecutionException and NPE.**
---

* [MAPREDUCE-5616](https://issues.apache.org/jira/browse/MAPREDUCE-5616) | *Major* | **MR Client-AppMaster RPC max retries on socket timeout is too high.**
---

* [MAPREDUCE-5613](https://issues.apache.org/jira/browse/MAPREDUCE-5613) | *Major* | **DefaultSpeculator holds and checks hashmap that is always empty**
---

* [MAPREDUCE-5610](https://issues.apache.org/jira/browse/MAPREDUCE-5610) | *Major* | **TestSleepJob fails in jdk7**
---

* [MAPREDUCE-5604](https://issues.apache.org/jira/browse/MAPREDUCE-5604) | *Minor* | **TestMRAMWithNonNormalizedCapabilities fails on Windows due to exceeding max path length**
---

* [MAPREDUCE-5601](https://issues.apache.org/jira/browse/MAPREDUCE-5601) | *Major* | **ShuffleHandler fadvises file regions as DONTNEED even when fetch fails**
---

* [MAPREDUCE-5598](https://issues.apache.org/jira/browse/MAPREDUCE-5598) | *Major* | **TestUserDefinedCounters.testMapReduceJob is flakey**
---

* [MAPREDUCE-5596](https://issues.apache.org/jira/browse/MAPREDUCE-5596) | *Major* | **Allow configuring the number of threads used to serve shuffle connections**
---

* [MAPREDUCE-5587](https://issues.apache.org/jira/browse/MAPREDUCE-5587) | *Major* | **TestTextOutputFormat fails on JDK7**
---

* [MAPREDUCE-5586](https://issues.apache.org/jira/browse/MAPREDUCE-5586) | *Major* | **TestCopyMapper#testCopyFailOnBlockSizeDifference fails when run from hadoop-tools/hadoop-distcp directory**
---

* [MAPREDUCE-5585](https://issues.apache.org/jira/browse/MAPREDUCE-5585) | *Major* | **TestCopyCommitter#testNoCommitAction Fails on JDK7**
---

* [MAPREDUCE-5569](https://issues.apache.org/jira/browse/MAPREDUCE-5569) | *Major* | **FloatSplitter is not generating correct splits**
---

* [MAPREDUCE-5561](https://issues.apache.org/jira/browse/MAPREDUCE-5561) | *Critical* | **org.apache.hadoop.mapreduce.v2.app.job.impl.TestJobImpl testcase failing on trunk**
---

* [MAPREDUCE-5550](https://issues.apache.org/jira/browse/MAPREDUCE-5550) | *Major* | **Task Status message (reporter.setStatus) not shown in UI with Hadoop 2.0**
---

* [MAPREDUCE-5546](https://issues.apache.org/jira/browse/MAPREDUCE-5546) | *Major* | **mapred.cmd on Windows set HADOOP\_OPTS incorrectly**
---

* [MAPREDUCE-5522](https://issues.apache.org/jira/browse/MAPREDUCE-5522) | *Minor* | **Incorrectly expect the array of JobQueueInfo returned by o.a.h.mapred.QueueManager#getJobQueueInfos to have a specific order.**
---

* [MAPREDUCE-5518](https://issues.apache.org/jira/browse/MAPREDUCE-5518) | *Trivial* | **Fix typo "can't read paritions file"**
---

* [MAPREDUCE-5514](https://issues.apache.org/jira/browse/MAPREDUCE-5514) | *Blocker* | **TestRMContainerAllocator fails on trunk**
---

* [MAPREDUCE-5504](https://issues.apache.org/jira/browse/MAPREDUCE-5504) | *Major* | **mapred queue -info inconsistent with types**
---

* [MAPREDUCE-5487](https://issues.apache.org/jira/browse/MAPREDUCE-5487) | *Major* | **In task processes, JobConf is unnecessarily loaded again in Limits**
---

* [MAPREDUCE-5484](https://issues.apache.org/jira/browse/MAPREDUCE-5484) | *Major* | **YarnChild unnecessarily loads job conf twice**
---

* [MAPREDUCE-5481](https://issues.apache.org/jira/browse/MAPREDUCE-5481) | *Blocker* | **Enable uber jobs to have multiple reducers**
---

* [MAPREDUCE-5464](https://issues.apache.org/jira/browse/MAPREDUCE-5464) | *Major* | **Add analogs of the SLOTS\_MILLIS counters that jive with the YARN resource model**
---

* [MAPREDUCE-5463](https://issues.apache.org/jira/browse/MAPREDUCE-5463) | *Major* | **Deprecate SLOTS\_MILLIS counters**
---

* [MAPREDUCE-5457](https://issues.apache.org/jira/browse/MAPREDUCE-5457) | *Major* | **Add a KeyOnlyTextOutputReader to enable streaming to write out text files without separators**
---

* [MAPREDUCE-5451](https://issues.apache.org/jira/browse/MAPREDUCE-5451) | *Major* | **MR uses LD\_LIBRARY\_PATH which doesn't mean anything in Windows**
---

* [MAPREDUCE-5431](https://issues.apache.org/jira/browse/MAPREDUCE-5431) | *Major* | **Missing pom dependency in MR-client**
---

* [MAPREDUCE-5411](https://issues.apache.org/jira/browse/MAPREDUCE-5411) | *Major* | **Refresh size of loaded job cache on history server**
---

* [MAPREDUCE-5409](https://issues.apache.org/jira/browse/MAPREDUCE-5409) | *Major* | **MRAppMaster throws InvalidStateTransitonException: Invalid event: TA\_TOO\_MANY\_FETCH\_FAILURE at KILLED for TaskAttemptImpl**
---

* [MAPREDUCE-5404](https://issues.apache.org/jira/browse/MAPREDUCE-5404) | *Major* | **HSAdminServer does not use ephemeral ports in minicluster mode**
---

* [MAPREDUCE-5386](https://issues.apache.org/jira/browse/MAPREDUCE-5386) | *Major* | **Ability to refresh history server job retention and job cleaner settings**
---

* [MAPREDUCE-5380](https://issues.apache.org/jira/browse/MAPREDUCE-5380) | *Major* | **Invalid mapred command should return non-zero exit code**
---

* [MAPREDUCE-5373](https://issues.apache.org/jira/browse/MAPREDUCE-5373) | *Major* | **TestFetchFailure.testFetchFailureMultipleReduces could fail intermittently**
---

* [MAPREDUCE-5356](https://issues.apache.org/jira/browse/MAPREDUCE-5356) | *Major* | **Ability to refresh aggregated log retention period and check interval**
---

* [MAPREDUCE-5332](https://issues.apache.org/jira/browse/MAPREDUCE-5332) | *Major* | **Support token-preserving restart of history server**
---

* [MAPREDUCE-5329](https://issues.apache.org/jira/browse/MAPREDUCE-5329) | *Major* | **APPLICATION\_INIT is never sent to AuxServices other than the builtin ShuffleHandler**
---

* [MAPREDUCE-5316](https://issues.apache.org/jira/browse/MAPREDUCE-5316) | *Major* | **job -list-attempt-ids command does not handle illegal task-state**
---

* [MAPREDUCE-5266](https://issues.apache.org/jira/browse/MAPREDUCE-5266) | *Major* | **Ability to refresh retention settings on history server**
---

* [MAPREDUCE-5265](https://issues.apache.org/jira/browse/MAPREDUCE-5265) | *Major* | **History server admin service to refresh user and superuser group mappings**
---

* [MAPREDUCE-5186](https://issues.apache.org/jira/browse/MAPREDUCE-5186) | *Critical* | **mapreduce.job.max.split.locations causes some splits created by CombineFileInputFormat to fail**
---

* [MAPREDUCE-5102](https://issues.apache.org/jira/browse/MAPREDUCE-5102) | *Major* | **fix coverage  org.apache.hadoop.mapreduce.lib.db and org.apache.hadoop.mapred.lib.db**
---

* [MAPREDUCE-5084](https://issues.apache.org/jira/browse/MAPREDUCE-5084) | *Major* | **fix coverage  org.apache.hadoop.mapreduce.v2.app.webapp and org.apache.hadoop.mapreduce.v2.hs.webapp**
---

* [MAPREDUCE-5052](https://issues.apache.org/jira/browse/MAPREDUCE-5052) | *Critical* | **Job History UI and web services confusing job start time and job submit time**
---

* [MAPREDUCE-4680](https://issues.apache.org/jira/browse/MAPREDUCE-4680) | *Major* | **Job history cleaner should only check timestamps of files in old enough directories**
---

* [MAPREDUCE-4421](https://issues.apache.org/jira/browse/MAPREDUCE-4421) | *Major* | **Run MapReduce framework via the distributed cache**
---

* [MAPREDUCE-3310](https://issues.apache.org/jira/browse/MAPREDUCE-3310) | *Major* | **Custom grouping comparator cannot be set for Combiners**
---

* [MAPREDUCE-2734](https://issues.apache.org/jira/browse/MAPREDUCE-2734) | *Trivial* | **DistCp with FairScheduler assign all map tasks in one TT**
---

* [MAPREDUCE-1176](https://issues.apache.org/jira/browse/MAPREDUCE-1176) | *Major* | **FixedLengthInputFormat and FixedLengthRecordReader**

Addition of FixedLengthInputFormat and FixedLengthRecordReader in the org.apache.hadoop.mapreduce.lib.input package. These two classes can be used when you need to read data from files containing fixed length (fixed width) records. Such files have no CR/LF (or any combination thereof), no delimiters etc, but each record is a fixed length, and extra data is padded with spaces. The data is one gigantic line within a file. When creating a job that specifies this input format, the job must have the "mapreduce.input.fixedlengthinputformat.record.length" property set as follows myJobConf.setInt("mapreduce.input.fixedlengthinputformat.record.length",[myFixedRecordLength]); 

Please see javadoc for more details.

---

* [MAPREDUCE-434](https://issues.apache.org/jira/browse/MAPREDUCE-434) | *Minor* | **LocalJobRunner limited to single reducer**


