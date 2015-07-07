# Apache Hadoop  0.13.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HADOOP-1063](https://issues.apache.org/jira/browse/HADOOP-1063) | *Major* | **MiniDFSCluster exists a race condition that lead to data node resources are not properly released**

Resolved race condition in shutting down MiniDFSCluster data node that prevented resources from being deallocated properly.



