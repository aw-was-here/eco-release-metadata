# Apache Hadoop  0.18.4 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HADOOP-5114](https://issues.apache.org/jira/browse/HADOOP-5114) | *Minor* | **A bunch of mapred unit tests are failing on Windows**

Remove timeout for accept() in DataNode. This made accept() fail in JDK on Windows and caused many tests to fail.



