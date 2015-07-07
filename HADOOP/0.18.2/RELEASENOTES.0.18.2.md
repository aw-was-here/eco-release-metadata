# Apache Hadoop  0.18.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HADOOP-4467](https://issues.apache.org/jira/browse/HADOOP-4467) | *Blocker* | **SerializationFactory should use current context ClassLoader**

SerializationFactory now uses the current context ClassLoader allowing for user supplied Serialization instances.


---

* [HADOOP-4314](https://issues.apache.org/jira/browse/HADOOP-4314) | *Blocker* | **TestReplication fails quite often**

Simulated Datanodes should not include blocks that are still being written in their block report.


---

* [HADOOP-4277](https://issues.apache.org/jira/browse/HADOOP-4277) | *Blocker* | **Checksum verification is disabled for LocalFS**

Checksum verification was mistakenly disabled for LocalFileSystem.


---

* [HADOOP-4271](https://issues.apache.org/jira/browse/HADOOP-4271) | *Blocker* | **Bug in FSInputChecker makes it possible to read from an invalid buffer**

Checksum input stream can sometimes return invalid data to the user.


---

* [HADOOP-4228](https://issues.apache.org/jira/browse/HADOOP-4228) | *Blocker* | **dfs datanode metrics, bytes\_read, bytes\_written overflows due to incorrect type used.**

Changed bytes\_read, bytes\_written to type long to prevent metrics overflow.



