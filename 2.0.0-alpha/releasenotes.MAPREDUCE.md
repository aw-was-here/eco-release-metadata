# Hadoop MAPREDUCE 2.0.0-alpha Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.

---

* [MAPREDUCE-4231](https://issues.apache.org/jira/browse/MAPREDUCE-4231) | *Major* | **Update RAID to not to use FSInodeInfo**
---

* [MAPREDUCE-4219](https://issues.apache.org/jira/browse/MAPREDUCE-4219) | *Major* | **make default container-executor.conf.dir be a path relative to the container-executor binary**
---

* [MAPREDUCE-4202](https://issues.apache.org/jira/browse/MAPREDUCE-4202) | *Major* | **TestYarnClientProtocolProvider is broken**
---

* [MAPREDUCE-4193](https://issues.apache.org/jira/browse/MAPREDUCE-4193) | *Major* | **broken doc link for yarn-default.xml in site.xml**
---

* [MAPREDUCE-4147](https://issues.apache.org/jira/browse/MAPREDUCE-4147) | *Major* | **YARN should not have a compile-time dependency on HDFS**
---

* [MAPREDUCE-4138](https://issues.apache.org/jira/browse/MAPREDUCE-4138) | *Major* | **Reduce memory usage of counters due to non-static nested classes**
---

* [MAPREDUCE-4113](https://issues.apache.org/jira/browse/MAPREDUCE-4113) | *Major* | **Fix tests org.apache.hadoop.mapred.TestClusterMRNotification**
---

* [MAPREDUCE-4112](https://issues.apache.org/jira/browse/MAPREDUCE-4112) | *Major* | **Fix tests org.apache.hadoop.mapred.TestClusterMapReduceTestCase**
---

* [MAPREDUCE-4111](https://issues.apache.org/jira/browse/MAPREDUCE-4111) | *Major* | **Fix tests in org.apache.hadoop.mapred.TestJobName**
---

* [MAPREDUCE-4110](https://issues.apache.org/jira/browse/MAPREDUCE-4110) | *Major* | **Fix tests in org.apache.hadoop.mapred.TestMiniMRClasspath & org.apache.hadoop.mapred.TestMiniMRWithDFSWithDistinctUsers**
---

* [MAPREDUCE-4108](https://issues.apache.org/jira/browse/MAPREDUCE-4108) | *Major* | **Fix tests in org.apache.hadoop.util.TestRunJar**
---

* [MAPREDUCE-4107](https://issues.apache.org/jira/browse/MAPREDUCE-4107) | *Major* | **Fix tests in org.apache.hadoop.ipc.TestSocketFactory**
---

* [MAPREDUCE-4105](https://issues.apache.org/jira/browse/MAPREDUCE-4105) | *Major* | **Yarn RackResolver ignores rack configurations**
---

* [MAPREDUCE-4103](https://issues.apache.org/jira/browse/MAPREDUCE-4103) | *Major* | **Fix HA docs for changes to shell command fencer args**
---

* [MAPREDUCE-4098](https://issues.apache.org/jira/browse/MAPREDUCE-4098) | *Major* | **TestMRApps testSetClasspath fails**
---

* [MAPREDUCE-4095](https://issues.apache.org/jira/browse/MAPREDUCE-4095) | *Major* | **TestJobInProgress#testLocality uses a bogus topology**
---

* [MAPREDUCE-4093](https://issues.apache.org/jira/browse/MAPREDUCE-4093) | *Major* | **Improve RM WebApp start up when proxy address is not set**
---

* [MAPREDUCE-4081](https://issues.apache.org/jira/browse/MAPREDUCE-4081) | *Blocker* | **TestMROutputFormat.java does not compile**
---

* [MAPREDUCE-4076](https://issues.apache.org/jira/browse/MAPREDUCE-4076) | *Blocker* | **Stream job fails with ZipException when use yarn jar command**
---

* [MAPREDUCE-4066](https://issues.apache.org/jira/browse/MAPREDUCE-4066) | *Minor* | **To get "yarn.app.mapreduce.am.staging-dir" value, should set the default value**
---

* [MAPREDUCE-4057](https://issues.apache.org/jira/browse/MAPREDUCE-4057) | *Major* | **Compilation error in RAID**
---

* [MAPREDUCE-4008](https://issues.apache.org/jira/browse/MAPREDUCE-4008) | *Major* | **ResourceManager throws MetricsException on start up saying QueueMetrics MBean already exists**
---

* [MAPREDUCE-4007](https://issues.apache.org/jira/browse/MAPREDUCE-4007) | *Major* | **JobClient getJob(JobID) should return NULL if the job does not exist (for backwards compatibility)**
---

* [MAPREDUCE-3991](https://issues.apache.org/jira/browse/MAPREDUCE-3991) | *Trivial* | **Streaming FAQ has some wrong instructions about input files splitting**
---

* [MAPREDUCE-3974](https://issues.apache.org/jira/browse/MAPREDUCE-3974) | *Blocker* | **TestSubmitJob in MR1 tests doesn't compile after HDFS-1623 merge**
---

* [MAPREDUCE-3958](https://issues.apache.org/jira/browse/MAPREDUCE-3958) | *Major* | **RM: Remove RMNodeState and replace it with NodeState**
---

* [MAPREDUCE-3955](https://issues.apache.org/jira/browse/MAPREDUCE-3955) | *Blocker* | **Replace ProtoOverHadoopRpcEngine with ProtobufRpcEngine.**
---

* [MAPREDUCE-3952](https://issues.apache.org/jira/browse/MAPREDUCE-3952) | *Major* | **In MR2, when Total input paths to process == 1, CombinefileInputFormat.getSplits() returns 0 split.**
---

* [MAPREDUCE-3933](https://issues.apache.org/jira/browse/MAPREDUCE-3933) | *Major* | **Failures because MALLOC\_ARENA\_MAX is not set**
---

* [MAPREDUCE-3916](https://issues.apache.org/jira/browse/MAPREDUCE-3916) | *Critical* | **various issues with running yarn proxyserver**
---

* [MAPREDUCE-3909](https://issues.apache.org/jira/browse/MAPREDUCE-3909) | *Trivial* | **javadoc the Service interfaces**
---

* [MAPREDUCE-3885](https://issues.apache.org/jira/browse/MAPREDUCE-3885) | *Major* | **Apply the fix similar to HADOOP-8084**
---

* [MAPREDUCE-3883](https://issues.apache.org/jira/browse/MAPREDUCE-3883) | *Minor* | **Document yarn.nodemanager.delete.debug-delay-sec configuration property**
---

* [MAPREDUCE-3869](https://issues.apache.org/jira/browse/MAPREDUCE-3869) | *Blocker* | **Distributed shell application fails with NoClassDefFoundError**
---

* [MAPREDUCE-3867](https://issues.apache.org/jira/browse/MAPREDUCE-3867) | *Major* | **MiniMRYarn/MiniYarn uses fixed ports**
---

* [MAPREDUCE-3818](https://issues.apache.org/jira/browse/MAPREDUCE-3818) | *Blocker* | **Trunk MRV1 compilation is broken.**

Fixed broken compilation in TestSubmitJob after the patch for HDFS-2895.

---

* [MAPREDUCE-3740](https://issues.apache.org/jira/browse/MAPREDUCE-3740) | *Blocker* | **Mapreduce Trunk compilation fails**
---

* [MAPREDUCE-3578](https://issues.apache.org/jira/browse/MAPREDUCE-3578) | *Major* | **starting nodemanager as 'root' gives "Unknown -jvm option"**
---

* [MAPREDUCE-3545](https://issues.apache.org/jira/browse/MAPREDUCE-3545) | *Major* | **Remove Avro RPC**
---

* [MAPREDUCE-3431](https://issues.apache.org/jira/browse/MAPREDUCE-3431) | *Minor* | **NPE in Resource Manager shutdown**
---

* [MAPREDUCE-3377](https://issues.apache.org/jira/browse/MAPREDUCE-3377) | *Major* | **Compatibility issue with 0.20.203.**
---

* [MAPREDUCE-3353](https://issues.apache.org/jira/browse/MAPREDUCE-3353) | *Major* | **Need a RM->AM channel to inform AMs about faulty/unhealthy/lost nodes**
---

* [MAPREDUCE-3173](https://issues.apache.org/jira/browse/MAPREDUCE-3173) | *Critical* | **MRV2 UI doesn't work properly without internet**
---

* [MAPREDUCE-2942](https://issues.apache.org/jira/browse/MAPREDUCE-2942) | *Critical* | **TestNMAuditLogger.testNMAuditLoggerWithIP failing**
---

* [MAPREDUCE-2934](https://issues.apache.org/jira/browse/MAPREDUCE-2934) | *Major* | **MR portion of HADOOP-7607 - Simplify the RPC proxy cleanup process**
---

* [MAPREDUCE-2887](https://issues.apache.org/jira/browse/MAPREDUCE-2887) | *Major* | **MR changes to match HADOOP-7524 (multiple RPC protocols)**
---

* [MAPREDUCE-1740](https://issues.apache.org/jira/browse/MAPREDUCE-1740) | *Major* | **NPE in getMatchingLevelForNodes when node locations are variable depth**


