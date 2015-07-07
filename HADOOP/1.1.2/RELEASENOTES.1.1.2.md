# Apache Hadoop  1.1.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HADOOP-9115](https://issues.apache.org/jira/browse/HADOOP-9115) | *Blocker* | **Deadlock in configuration when writing configuration to hdfs**

This fixes a bug where Hive could trigger a deadlock condition in the Hadoop configuration management code.


---

* [HADOOP-8567](https://issues.apache.org/jira/browse/HADOOP-8567) | *Major* | **Port conf servlet to dump running configuration  to branch 1.x**

Users can use the conf servlet to get the server-side configuration. Users can

1) connect to http\_server\_url/conf or http\_server\_url/conf?format=xml and get XML-based configuration description;
2) connect to http\_server\_url/conf?format=json and get JSON-based configuration description.


---

* [HDFS-5996](https://issues.apache.org/jira/browse/HDFS-5996) | *Major* | **hadoop 1.1.2.  hdfs  write bug**

someone  has  discovered   this  bug  and  it  has  been  resolved


---

* [MAPREDUCE-4478](https://issues.apache.org/jira/browse/MAPREDUCE-4478) | *Major* | **TaskTracker's heartbeat is out of control**

Fixed a bug in TaskTracker's heartbeat to keep it under control.



