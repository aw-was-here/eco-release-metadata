# Apache Hadoop  0.17.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HADOOP-3859](https://issues.apache.org/jira/browse/HADOOP-3859) | *Blocker* | **1000  concurrent read on a single file failing  the task/client**

Allows the user to change the maximum number of xceivers in the datanode.


---

* [HADOOP-3760](https://issues.apache.org/jira/browse/HADOOP-3760) | *Blocker* | **DFS operations fail because of Stream closed error**

Fix a bug with HDFS file close() mistakenly introduced by HADOOP-3681.


---

* [HADOOP-3707](https://issues.apache.org/jira/browse/HADOOP-3707) | *Blocker* | **Frequent DiskOutOfSpaceException on almost-full datanodes**

NameNode keeps a count of number of blocks scheduled to be written to a datanode and uses it to avoid allocating more blocks than a datanode can hold.


---

* [HADOOP-3678](https://issues.apache.org/jira/browse/HADOOP-3678) | *Blocker* | **Avoid spurious "DataXceiver: java.io.IOException: Connection reset by peer" errors in DataNode log**

Avoid spurious exceptions logged at DataNode when clients read from DFS.



