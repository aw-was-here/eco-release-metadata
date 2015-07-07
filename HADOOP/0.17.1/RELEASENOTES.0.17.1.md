# Apache Hadoop  0.17.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HADOOP-3565](https://issues.apache.org/jira/browse/HADOOP-3565) | *Major* | **JavaSerialization can throw java.io.StreamCorruptedException**

Change the Java serialization framework, which is not enabled by default, to correctly make the objects independent of the previous objects.


---

* [HADOOP-1979](https://issues.apache.org/jira/browse/HADOOP-1979) | *Minor* | **fsck on namenode without datanodes takes too much time**

Improved performance of {{fsck}} by better management of the data stream on the client side.



