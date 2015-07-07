# Apache Hadoop  0.20.3 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HADOOP-6701](https://issues.apache.org/jira/browse/HADOOP-6701) | *Minor* | ** Incorrect exit codes for "dfs -chown", "dfs -chgrp"**

Commands chmod, chown and chgrp now returns non zero exit code and an error message on failure instead of returning zero.


---

* [HADOOP-6382](https://issues.apache.org/jira/browse/HADOOP-6382) | *Major* | **publish hadoop jars to apache mvn repo.**

The hadoop jars are renamed  from previous hadoop-<version>-<name>.jar to hadoop-<name>-<version>.jar. Applications and documentation need to be updated to use the new file naming scheme.


---

* [HDFS-132](https://issues.apache.org/jira/browse/HDFS-132) | *Minor* | **Namenode in Safemode reports to Simon non-zero number of deleted files during startup**

With this incompatible change, under metrics context "dfs", the record name "FSDirectory" is no longer available. The metrics "files\_deleted" from the deleted record "FSDirectory" is now available in metrics context "dfs", record name "namenode" with the metrics name "FilesDeleted".



