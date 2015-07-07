# Apache Hadoop  0.16.4 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HADOOP-3304](https://issues.apache.org/jira/browse/HADOOP-3304) | *Blocker* | **[HOD] logcondense fails if DFS has files that are not log files, but match a certain pattern**

Fixed the regular expression used by the logcondense utility to generate the list of log files to purge from HDFS. Also, improved error handling, so a single invalid log file does not fail the purge process.



