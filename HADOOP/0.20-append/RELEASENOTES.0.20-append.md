# Apache Hadoop  0.20-append Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HDFS-1554](https://issues.apache.org/jira/browse/HDFS-1554) | *Major* | **Append 0.20: New semantics for recoverLease**

Change recoverLease API to return if the file is closed or not. It also change the semantics of recoverLease to start lease recovery immediately.


---

* [HDFS-630](https://issues.apache.org/jira/browse/HDFS-630) | *Major* | **In DFSOutputStream.nextBlockOutputStream(), the client can exclude specific datanodes when locating the next block.**

**WARNING: No release note provided for this incompatible change.**



