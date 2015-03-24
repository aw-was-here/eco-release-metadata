# Hadoop MAPREDUCE 2.4.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.

---

* [MAPREDUCE-5813](https://issues.apache.org/jira/browse/MAPREDUCE-5813) | *Blocker* | **YarnChild does not load job.xml with mapreduce.job.classloader=true**
---

* [MAPREDUCE-5810](https://issues.apache.org/jira/browse/MAPREDUCE-5810) | *Major* | **TestStreamingTaskLog#testStreamingTaskLogWithHadoopCmd is failing**
---

* [MAPREDUCE-5806](https://issues.apache.org/jira/browse/MAPREDUCE-5806) | *Major* | **Log4j settings in container-log4j.properties cannot be overridden**
---

* [MAPREDUCE-5805](https://issues.apache.org/jira/browse/MAPREDUCE-5805) | *Major* | **Unable to parse launch time from job history file**
---

* [MAPREDUCE-5795](https://issues.apache.org/jira/browse/MAPREDUCE-5795) | *Major* | **Job should be marked as Failed if it is recovered from commit.**
---

* [MAPREDUCE-5794](https://issues.apache.org/jira/browse/MAPREDUCE-5794) | *Minor* | **SliveMapper always uses default FileSystem.**
---

* [MAPREDUCE-5791](https://issues.apache.org/jira/browse/MAPREDUCE-5791) | *Major* | **Shuffle phase is slow in Windows - FadviseFileRegion::transferTo does not read disks efficiently**
---

* [MAPREDUCE-5789](https://issues.apache.org/jira/browse/MAPREDUCE-5789) | *Major* | **Average Reduce time is incorrect on Job Overview page**
---

* [MAPREDUCE-5787](https://issues.apache.org/jira/browse/MAPREDUCE-5787) | *Critical* | **Modify ShuffleHandler to support Keep-Alive**
---

* [MAPREDUCE-5780](https://issues.apache.org/jira/browse/MAPREDUCE-5780) | *Minor* | **SliveTest always uses default FileSystem**
---

* [MAPREDUCE-5778](https://issues.apache.org/jira/browse/MAPREDUCE-5778) | *Major* | **JobSummary does not escape newlines in the job name**
---

* [MAPREDUCE-5773](https://issues.apache.org/jira/browse/MAPREDUCE-5773) | *Blocker* | **Provide dedicated MRAppMaster syslog length limit**
---

* [MAPREDUCE-5770](https://issues.apache.org/jira/browse/MAPREDUCE-5770) | *Major* | **Redirection from AM-URL is broken with HTTPS\_ONLY policy**
---

* [MAPREDUCE-5769](https://issues.apache.org/jira/browse/MAPREDUCE-5769) | *Major* | **Unregistration to RM should not be called if AM is crashed before registering with RM**
---

* [MAPREDUCE-5768](https://issues.apache.org/jira/browse/MAPREDUCE-5768) | *Major* | **TestMRJobs.testContainerRollingLog fails on trunk**
---

* [MAPREDUCE-5766](https://issues.apache.org/jira/browse/MAPREDUCE-5766) | *Minor* | **Ping messages from attempts should be moved to DEBUG**
---

* [MAPREDUCE-5761](https://issues.apache.org/jira/browse/MAPREDUCE-5761) | *Trivial* | **Add a log message like "encrypted shuffle is ON" in nodemanager logs**
---

* [MAPREDUCE-5757](https://issues.apache.org/jira/browse/MAPREDUCE-5757) | *Major* | **ConcurrentModificationException in JobControl.toList**
---

* [MAPREDUCE-5754](https://issues.apache.org/jira/browse/MAPREDUCE-5754) | *Major* | **Preserve Job diagnostics in history**
---

* [MAPREDUCE-5751](https://issues.apache.org/jira/browse/MAPREDUCE-5751) | *Major* | **MR app master fails to start in some cases if mapreduce.job.classloader is true**
---

* [MAPREDUCE-5746](https://issues.apache.org/jira/browse/MAPREDUCE-5746) | *Major* | **Job diagnostics can implicate wrong task for a failed job**
---

* [MAPREDUCE-5732](https://issues.apache.org/jira/browse/MAPREDUCE-5732) | *Major* | **Report proper queue when job has been automatically placed**
---

* [MAPREDUCE-5699](https://issues.apache.org/jira/browse/MAPREDUCE-5699) | *Major* | **Allow setting tags on MR jobs**
---

* [MAPREDUCE-5688](https://issues.apache.org/jira/browse/MAPREDUCE-5688) | *Major* | **TestStagingCleanup fails intermittently with JDK7**
---

* [MAPREDUCE-5670](https://issues.apache.org/jira/browse/MAPREDUCE-5670) | *Minor* | **CombineFileRecordReader should report progress when moving to the next file**
---

* [MAPREDUCE-5570](https://issues.apache.org/jira/browse/MAPREDUCE-5570) | *Major* | **Map task attempt with fetch failure has incorrect attempt finish time**
---

* [MAPREDUCE-5553](https://issues.apache.org/jira/browse/MAPREDUCE-5553) | *Minor* | **Add task state filters on Application/MRJob page for MR Application master**
---

* [MAPREDUCE-5028](https://issues.apache.org/jira/browse/MAPREDUCE-5028) | *Critical* | **Maps fail when io.sort.mb is set to high value**
---

* [MAPREDUCE-4052](https://issues.apache.org/jira/browse/MAPREDUCE-4052) | *Major* | **Windows eclipse cannot submit job from Windows client to Linux/Unix Hadoop cluster.**
---

* [MAPREDUCE-2349](https://issues.apache.org/jira/browse/MAPREDUCE-2349) | *Major* | **speed up list[located]status calls from input formats**


