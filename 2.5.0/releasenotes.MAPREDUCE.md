# Hadoop MAPREDUCE 2.5.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.

---

* [MAPREDUCE-6002](https://issues.apache.org/jira/browse/MAPREDUCE-6002) | *Major* | **MR task should prevent report error to AM when process is shutting down**
---

* [MAPREDUCE-5952](https://issues.apache.org/jira/browse/MAPREDUCE-5952) | *Blocker* | **LocalContainerLauncher#renameMapOutputForReduce incorrectly assumes a single dir for mapOutIndex**
---

* [MAPREDUCE-5939](https://issues.apache.org/jira/browse/MAPREDUCE-5939) | *Major* | **StartTime showing up as the epoch time in JHS UI after upgrade**
---

* [MAPREDUCE-5924](https://issues.apache.org/jira/browse/MAPREDUCE-5924) | *Major* | **Windows: Sort Job failed due to 'Invalid event: TA\_COMMIT\_PENDING at COMMIT\_PENDING'**
---

* [MAPREDUCE-5920](https://issues.apache.org/jira/browse/MAPREDUCE-5920) | *Minor* | **Add Xattr option in DistCp docs**
---

* [MAPREDUCE-5900](https://issues.apache.org/jira/browse/MAPREDUCE-5900) | *Major* | **Container preemption interpreted as task failures and eventually job failures**
---

* [MAPREDUCE-5899](https://issues.apache.org/jira/browse/MAPREDUCE-5899) | *Major* | **Support incremental data copy in DistCp**
---

* [MAPREDUCE-5898](https://issues.apache.org/jira/browse/MAPREDUCE-5898) | *Major* | **distcp to support preserving HDFS extended attributes(XAttrs)**
---

* [MAPREDUCE-5896](https://issues.apache.org/jira/browse/MAPREDUCE-5896) | *Major* | **InputSplits should indicate which locations have the block cached in memory**
---

* [MAPREDUCE-5895](https://issues.apache.org/jira/browse/MAPREDUCE-5895) | *Major* | **FileAlreadyExistsException was thrown : Temporary Index File can not be cleaned up because OutputStream doesn't close properly**
---

* [MAPREDUCE-5888](https://issues.apache.org/jira/browse/MAPREDUCE-5888) | *Major* | **Failed job leaves hung AM after it unregisters**
---

* [MAPREDUCE-5886](https://issues.apache.org/jira/browse/MAPREDUCE-5886) | *Minor* | **Allow wordcount example job to accept multiple input paths.**
---

* [MAPREDUCE-5884](https://issues.apache.org/jira/browse/MAPREDUCE-5884) | *Major* | **History server uses short user name when canceling tokens**
---

* [MAPREDUCE-5874](https://issues.apache.org/jira/browse/MAPREDUCE-5874) | *Major* | **Creating MapReduce REST API section**
---

* [MAPREDUCE-5868](https://issues.apache.org/jira/browse/MAPREDUCE-5868) | *Major* | **TestPipeApplication causing nightly build to fail**
---

* [MAPREDUCE-5862](https://issues.apache.org/jira/browse/MAPREDUCE-5862) | *Critical* | **Line records longer than 2x split size aren't handled correctly**
---

* [MAPREDUCE-5861](https://issues.apache.org/jira/browse/MAPREDUCE-5861) | *Minor* | **finishedSubMaps field in LocalContainerLauncher does not need to be volatile**
---

* [MAPREDUCE-5852](https://issues.apache.org/jira/browse/MAPREDUCE-5852) | *Minor* | **Prepare MapReduce codebase for JUnit 4.11.**
---

* [MAPREDUCE-5846](https://issues.apache.org/jira/browse/MAPREDUCE-5846) | *Major* | **Rumen doesn't understand JobQueueChangedEvent**
---

* [MAPREDUCE-5844](https://issues.apache.org/jira/browse/MAPREDUCE-5844) | *Major* | **Add a configurable delay to reducer-preemption**
---

* [MAPREDUCE-5837](https://issues.apache.org/jira/browse/MAPREDUCE-5837) | *Critical* | **MRAppMaster fails when checking on uber mode**
---

* [MAPREDUCE-5836](https://issues.apache.org/jira/browse/MAPREDUCE-5836) | *Trivial* | **Fix typo in RandomTextWriter**
---

* [MAPREDUCE-5834](https://issues.apache.org/jira/browse/MAPREDUCE-5834) | *Major* | **TestGridMixClasses tests timesout on branch-2**
---

* [MAPREDUCE-5825](https://issues.apache.org/jira/browse/MAPREDUCE-5825) | *Major* | **Provide diagnostics for reducers killed during ramp down**
---

* [MAPREDUCE-5814](https://issues.apache.org/jira/browse/MAPREDUCE-5814) | *Major* | **fat jar with *-default.xml may fail when mapreduce.job.classloader=true.**
---

* [MAPREDUCE-5812](https://issues.apache.org/jira/browse/MAPREDUCE-5812) | *Major* | ** Make job context available to OutputCommitter.isRecoverySupported()**
---

* [MAPREDUCE-5809](https://issues.apache.org/jira/browse/MAPREDUCE-5809) | *Major* | **Enhance distcp to support preserving HDFS ACLs.**
---

* [MAPREDUCE-5804](https://issues.apache.org/jira/browse/MAPREDUCE-5804) | *Major* | **TestMRJobsWithProfiler#testProfiler timesout**
---

* [MAPREDUCE-5790](https://issues.apache.org/jira/browse/MAPREDUCE-5790) | *Blocker* | **Default map hprof profile options do not work**
---

* [MAPREDUCE-5777](https://issues.apache.org/jira/browse/MAPREDUCE-5777) | *Major* | **Support utf-8 text with BOM (byte order marker)**
---

* [MAPREDUCE-5775](https://issues.apache.org/jira/browse/MAPREDUCE-5775) | *Minor* | **Remove unnecessary job.setNumReduceTasks in SleepJob.createJob**
---

* [MAPREDUCE-5774](https://issues.apache.org/jira/browse/MAPREDUCE-5774) | *Trivial* | **Job overview in History UI should list reducer phases in chronological order**
---

* [MAPREDUCE-5765](https://issues.apache.org/jira/browse/MAPREDUCE-5765) | *Minor* | **Update hadoop-pipes examples README**
---

* [MAPREDUCE-5759](https://issues.apache.org/jira/browse/MAPREDUCE-5759) | *Major* | **Remove unnecessary conf load in Limits**
---

* [MAPREDUCE-5749](https://issues.apache.org/jira/browse/MAPREDUCE-5749) | *Major* | **TestRMContainerAllocator#testReportedAppProgress Failed**
---

* [MAPREDUCE-5713](https://issues.apache.org/jira/browse/MAPREDUCE-5713) | *Trivial* | **InputFormat and JobConf JavaDoc Fixes**
---

* [MAPREDUCE-5671](https://issues.apache.org/jira/browse/MAPREDUCE-5671) | *Major* | **NaN can be created by client and assign to Progress**
---

* [MAPREDUCE-5665](https://issues.apache.org/jira/browse/MAPREDUCE-5665) | *Major* | **Add audience annotations to MiniMRYarnCluster and MiniMRCluster**
---

* [MAPREDUCE-5652](https://issues.apache.org/jira/browse/MAPREDUCE-5652) | *Major* | **NM Recovery. ShuffleHandler should handle NM restarts**
---

* [MAPREDUCE-5642](https://issues.apache.org/jira/browse/MAPREDUCE-5642) | *Minor* | **TestMiniMRChildTask fails on Windows**
---

* [MAPREDUCE-5639](https://issues.apache.org/jira/browse/MAPREDUCE-5639) | *Major* | **Port DistCp2 document to trunk**
---

* [MAPREDUCE-5638](https://issues.apache.org/jira/browse/MAPREDUCE-5638) | *Major* | **Port Hadoop Archives document to trunk**
---

* [MAPREDUCE-5637](https://issues.apache.org/jira/browse/MAPREDUCE-5637) | *Major* | **Convert Hadoop Streaming document to APT**
---

* [MAPREDUCE-5636](https://issues.apache.org/jira/browse/MAPREDUCE-5636) | *Major* | **Convert MapReduce Tutorial document to APT**
---

* [MAPREDUCE-5517](https://issues.apache.org/jira/browse/MAPREDUCE-5517) | *Minor* | **enabling uber mode with 0 reducer still requires mapreduce.reduce.memory.mb to be less than yarn.app.mapreduce.am.resource.mb**
---

* [MAPREDUCE-5456](https://issues.apache.org/jira/browse/MAPREDUCE-5456) | *Minor* | **TestFetcher.testCopyFromHostExtraBytes is missing**
---

* [MAPREDUCE-5402](https://issues.apache.org/jira/browse/MAPREDUCE-5402) | *Major* | **DynamicInputFormat should allow overriding of MAX\_CHUNKS\_TOLERABLE**
---

* [MAPREDUCE-5309](https://issues.apache.org/jira/browse/MAPREDUCE-5309) | *Major* | **2.0.4 JobHistoryParser can't parse certain failed job history files generated by 2.0.3 history server**
---

* [MAPREDUCE-5014](https://issues.apache.org/jira/browse/MAPREDUCE-5014) | *Major* | **Extending DistCp through a custom CopyListing is not possible**
---

* [MAPREDUCE-4937](https://issues.apache.org/jira/browse/MAPREDUCE-4937) | *Major* | **MR AM handles an oversized split metainfo file poorly**
---

* [MAPREDUCE-4282](https://issues.apache.org/jira/browse/MAPREDUCE-4282) | *Major* | **Convert Forrest docs to APT**


