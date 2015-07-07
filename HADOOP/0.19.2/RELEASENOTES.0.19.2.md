# Apache Hadoop  0.19.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HADOOP-5332](https://issues.apache.org/jira/browse/HADOOP-5332) | *Blocker* | **Make support for file append API configurable**

Appending to HDFS files is supported only if dfs.support.append is set to true.


---

* [HADOOP-4780](https://issues.apache.org/jira/browse/HADOOP-4780) | *Major* | **Task Tracker  burns a lot of cpu in calling getLocalCache**

make DistributedCache remember the size of each cache directory



