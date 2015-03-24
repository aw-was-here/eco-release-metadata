# Hadoop  2.8.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.

---

* [HADOOP-11737](https://issues.apache.org/jira/browse/HADOOP-11737) | *Minor* | **mockito's version in hadoop-nfs’ pom.xml shouldn't be specified**
---

* [HADOOP-11711](https://issues.apache.org/jira/browse/HADOOP-11711) | *Minor* | **Provide a default value for AES/CTR/NoPadding CryptoCodec classes**
---

* [HADOOP-11709](https://issues.apache.org/jira/browse/HADOOP-11709) | *Trivial* | **Time.NANOSECONDS\_PER\_MILLISECOND - use class-level final constant instead of method variable**
---

* [HADOOP-11692](https://issues.apache.org/jira/browse/HADOOP-11692) | *Major* | **Improve authentication failure WARN message to avoid user confusion**
---

* [HADOOP-11659](https://issues.apache.org/jira/browse/HADOOP-11659) | *Minor* | **o.a.h.fs.FileSystem.Cache#remove should use a single hash map lookup**
---

* [HADOOP-11568](https://issues.apache.org/jira/browse/HADOOP-11568) | *Trivial* | **Description on usage of classpath in hadoop command is incomplete.**
---

* [HADOOP-11447](https://issues.apache.org/jira/browse/HADOOP-11447) | *Minor* | **Add a more meaningful toString method to SampleStat and MutableStat**
---

* [HADOOP-11226](https://issues.apache.org/jira/browse/HADOOP-11226) | *Major* | **Add a configuration to set ipc.Client's traffic class with IPTOS\_LOWDELAY\|IPTOS\_RELIABILITY**

Use low latency TCP connections for hadoop IPC

---

* [HADOOP-10027](https://issues.apache.org/jira/browse/HADOOP-10027) | *Minor* | ***Compressor\_deflateBytesDirect passes instance instead of jclass to GetStaticObjectField**
---

* [HADOOP-9477](https://issues.apache.org/jira/browse/HADOOP-9477) | *Major* | **Add posixGroups support for LDAP groups mapping service**

Add posixGroups support for LDAP groups mapping service. The change in LDAPGroupMapping is compatible with previous scenario. In LDAP, the group mapping between {{posixAccount}} and {{posixGroup}} is different from the general LDAPGroupMapping, one of the differences is the {{"memberUid"}} will be used to mapping {{posixAccount}} and {{posixGroup}}. The feature will handle the mapping in internal when configuration {{hadoop.security.group.mapping.ldap.search.filter.user}} is set as "posixAccount" and {{hadoop.security.group.mapping.ldap.search.filter.group}} is "posixGroup".

---

* [HDFS-7867](https://issues.apache.org/jira/browse/HDFS-7867) | *Trivial* | **Update action param from "start" to "prepare" in rolling upgrade javadoc**
---

* [HDFS-7835](https://issues.apache.org/jira/browse/HDFS-7835) | *Major* | **make initial sleeptime in locateFollowingBlock configurable for DFSClient.**
---

* [HDFS-7829](https://issues.apache.org/jira/browse/HDFS-7829) | *Minor* | **Code clean up for LocatedBlock**
---

* [HDFS-5356](https://issues.apache.org/jira/browse/HDFS-5356) | *Critical* | **MiniDFSCluster shoud close all open FileSystems when shutdown()**
---

* [HDFS-2360](https://issues.apache.org/jira/browse/HDFS-2360) | *Minor* | **Ugly stacktrace when quota exceeds**
---

* [MAPREDUCE-6287](https://issues.apache.org/jira/browse/MAPREDUCE-6287) | *Minor* | **Deprecated methods in org.apache.hadoop.examples.Sort**
---

* [MAPREDUCE-6282](https://issues.apache.org/jira/browse/MAPREDUCE-6282) | *Trivial* | **Reuse historyFileAbsolute.getFileSystem in CompletedJob#loadFullHistoryData for code optimization.**
---

* [MAPREDUCE-6281](https://issues.apache.org/jira/browse/MAPREDUCE-6281) | *Trivial* | **Fix javadoc in Terasort**
---

* [MAPREDUCE-6242](https://issues.apache.org/jira/browse/MAPREDUCE-6242) | *Major* | **Progress report log is incredibly excessive in application master**
---

* [MAPREDUCE-6239](https://issues.apache.org/jira/browse/MAPREDUCE-6239) | *Minor* | **Consolidate TestJobConf classes in hadoop-mapreduce-client-jobclient and hadoop-mapreduce-client-core**
---

* [MAPREDUCE-6213](https://issues.apache.org/jira/browse/MAPREDUCE-6213) | *Minor* | **NullPointerException caused by job history server addr not resolvable**
---

* [MAPREDUCE-6105](https://issues.apache.org/jira/browse/MAPREDUCE-6105) | *Trivial* | **Inconsistent configuration in property mapreduce.reduce.shuffle.merge.percent**
---

* [MAPREDUCE-6100](https://issues.apache.org/jira/browse/MAPREDUCE-6100) | *Trivial* | **replace "mapreduce.job.credentials.binary" with MRJobConfig.MAPREDUCE\_JOB\_CREDENTIALS\_BINARY for better readability.**
---

* [MAPREDUCE-5807](https://issues.apache.org/jira/browse/MAPREDUCE-5807) | *Trivial* | **Print usage for TeraSort job.**
---

* [MAPREDUCE-5755](https://issues.apache.org/jira/browse/MAPREDUCE-5755) | *Trivial* | **MapTask.MapOutputBuffer#compare/swap should have @Override annotation**
---

* [MAPREDUCE-5448](https://issues.apache.org/jira/browse/MAPREDUCE-5448) | *Minor* | **MapFileOutputFormat#getReaders bug with invisible files/folders**
---

* [MAPREDUCE-5190](https://issues.apache.org/jira/browse/MAPREDUCE-5190) | *Minor* | **Unnecessary condition test in RandomSampler**
---

* [MAPREDUCE-4653](https://issues.apache.org/jira/browse/MAPREDUCE-4653) | *Trivial* | **TestRandomAlgorithm has an unused "import" statement**
---

* [MAPREDUCE-4414](https://issues.apache.org/jira/browse/MAPREDUCE-4414) | *Major* | **Add main methods to JobConf and YarnConfiguration, for debug purposes**
---

* [YARN-3356](https://issues.apache.org/jira/browse/YARN-3356) | *Major* | **Capacity Scheduler FiCaSchedulerApp should use ResourceUsage to track used-resources-by-label.**
---

* [YARN-3351](https://issues.apache.org/jira/browse/YARN-3351) | *Major* | **AppMaster tracking URL is broken in HA**
---

* [YARN-3350](https://issues.apache.org/jira/browse/YARN-3350) | *Major* | **YARN RackResolver spams logs with messages at info level**
---

* [YARN-3345](https://issues.apache.org/jira/browse/YARN-3345) | *Major* | **Add non-exclusive node label API to RMAdmin protocol and NodeLabelsManager**
---

* [YARN-3339](https://issues.apache.org/jira/browse/YARN-3339) | *Minor* | **TestDockerContainerExecutor should pull a single image and not the entire centos repository**
---

* [YARN-3305](https://issues.apache.org/jira/browse/YARN-3305) | *Major* | **AM-Used Resource for leafqueue is wrongly populated if AM ResourceRequest is less than minimumAllocation**
---

* [YARN-3273](https://issues.apache.org/jira/browse/YARN-3273) | *Major* | **Improve web UI to facilitate scheduling analysis and debugging**
---

* [YARN-3269](https://issues.apache.org/jira/browse/YARN-3269) | *Major* | **Yarn.nodemanager.remote-app-log-dir could not be configured to fully qualified path**
---

* [YARN-3243](https://issues.apache.org/jira/browse/YARN-3243) | *Major* | **CapacityScheduler should pass headroom from parent to children to make sure ParentQueue obey its capacity limits.**
---

* [YARN-3241](https://issues.apache.org/jira/browse/YARN-3241) | *Major* | **FairScheduler handles "invalid" queue names inconsistently**

FairScheduler does not allow queue names with leading or tailing spaces or empty sub-queue names anymore.

---

* [YARN-3205](https://issues.apache.org/jira/browse/YARN-3205) | *Major* | **FileSystemRMStateStore should disable FileSystem Cache to avoid get a Filesystem with an old configuration.**
---

* [YARN-3197](https://issues.apache.org/jira/browse/YARN-3197) | *Minor* | **Confusing log generated by CapacityScheduler**
---

* [YARN-2868](https://issues.apache.org/jira/browse/YARN-2868) | *Major* | **FairScheduler: Metric for latency to allocate first container for an application**


