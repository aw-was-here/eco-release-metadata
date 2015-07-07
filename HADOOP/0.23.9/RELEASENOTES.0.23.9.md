# Apache Hadoop  0.23.9 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HDFS-4832](https://issues.apache.org/jira/browse/HDFS-4832) | *Critical* | **Namenode doesn't change the number of missing blocks in safemode when DNs rejoin or leave**

This change makes name node keep its internal replication queues and data node state updated in manual safe mode. This allows metrics and UI to present up-to-date information while in safe mode. The behavior during start-up safe mode is unchanged.



