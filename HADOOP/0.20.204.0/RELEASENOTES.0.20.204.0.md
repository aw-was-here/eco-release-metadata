# Apache Hadoop  0.20.204.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HADOOP-6255](https://issues.apache.org/jira/browse/HADOOP-6255) | *Major* | **Create an rpm integration project**

Added RPM/DEB packages to build system.


---

* [HDFS-2218](https://issues.apache.org/jira/browse/HDFS-2218) | *Blocker* | **Disable TestHdfsProxy.testHdfsProxyInterface in 0.20-security and branch-1 until HDFS-2217 is fixed**

Test case TestHdfsProxy.testHdfsProxyInterface has been temporarily disabled for this release, due to failure in the Hudson automated test environment.


---

* [HDFS-1445](https://issues.apache.org/jira/browse/HDFS-1445) | *Major* | **Batch the calls in DataStorage to FileUtil.createHardLink(), so we call it once per directory instead of once per file**

Batch hardlinking during "upgrade" snapshots, cutting time from aprx 8 minutes per volume to aprx 8 seconds.  Validated in both Linux and Windows.  Depends on prior integration with patch for HADOOP-7133.


---

* [MAPREDUCE-2846](https://issues.apache.org/jira/browse/MAPREDUCE-2846) | *Blocker* | **a small % of all tasks fail with DefaultTaskController**

Fixed a race condition in writing the log index file that caused tasks to 'fail'.


---

* [MAPREDUCE-2804](https://issues.apache.org/jira/browse/MAPREDUCE-2804) | *Blocker* | **"Creation of symlink to attempt log dir failed." message is not useful**

Removed duplicate chmods of job log dir that were vulnerable to race conditions between tasks. Also improved the messages when the symlinks failed to be created.


---

* [MAPREDUCE-2529](https://issues.apache.org/jira/browse/MAPREDUCE-2529) | *Major* | **Recognize Jetty bug 1342 and handle it**

Added 2 new config parameters:

mapreduce.reduce.shuffle.catch.exception.stack.regex
mapreduce.reduce.shuffle.catch.exception.message.regex


---

* [MAPREDUCE-2524](https://issues.apache.org/jira/browse/MAPREDUCE-2524) | *Minor* | **Backport trunk heuristics for failing maps when we get fetch failures retrieving map output during shuffle**

Added a new configuration option: mapreduce.reduce.shuffle.maxfetchfailures, and removed a no longer used option: mapred.reduce.copy.backoff.


---

* [MAPREDUCE-2479](https://issues.apache.org/jira/browse/MAPREDUCE-2479) | *Major* | **Backport MAPREDUCE-1568 to hadoop security branch**

Added mapreduce.tasktracker.distributedcache.checkperiod to the task tracker that defined the period to wait while cleaning up the distributed cache.  The default is 1 min.



