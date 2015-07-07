# Apache Hadoop  0.16.3 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HADOOP-3182](https://issues.apache.org/jira/browse/HADOOP-3182) | *Blocker* | **JobClient creates submitJobDir with SYSTEM\_DIR\_PERMISSION ( rwx-wx-wx)**

Changed <job-dir> from 733 to 777, so that a shared JobTracker can be started by a non-superuser account.



