# Apache Hadoop  0.18.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HADOOP-4060](https://issues.apache.org/jira/browse/HADOOP-4060) | *Blocker* | **[HOD] Make HOD to roll log files on the client**

HOD client was modified to roll over client logs being written to the cluster directory. A new configuration parameter, hod.log-rollover-count, was introduced to specify how many rollover log files to retain.


---

* [HADOOP-3995](https://issues.apache.org/jira/browse/HADOOP-3995) | *Blocker* | **renameTo(src, dst) does not restore src name in case of quota failure.**

In case of quota failure on HDFS, rename does not restore source filename.



