# Apache Hadoop  1.3.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HADOOP-8873](https://issues.apache.org/jira/browse/HADOOP-8873) | *Major* | **Port HADOOP-8175 (Add mkdir -p flag) to branch-1**

FsShell mkdir now accepts a -p flag. Like unix, mkdir -p will not fail if the directory already exists. Unlike unix, intermediate directories are always created, regardless of the flag, to avoid incompatibilities.


---

* [HDFS-7312](https://issues.apache.org/jira/browse/HDFS-7312) | *Minor* | **Update DistCp v1 to optionally not use tmp location (branch-1 only)**

DistCp v1 currently copies files to a temporary location and then renames that to the specified destination. This can cause performance issues on file systems such as S3. A -skiptmp flag is added to bypass this step and copy directly to the destination.


---

* [HDFS-5685](https://issues.apache.org/jira/browse/HDFS-5685) | *Major* | **DistCp will fail to copy with -delete switch**

Has dependency on MAPREDUCE-1285/MAPREDUCE-5698


---

* [MAPREDUCE-5408](https://issues.apache.org/jira/browse/MAPREDUCE-5408) | *Major* | **CLONE - The logging level of the tasks should be configurable by the job**

Allow logging level of map/reduce tasks to be configurable.
Configuration changes:
  add mapred.map.child.log.level
  add mapred.reduce.child.log.level


---

* [MAPREDUCE-4049](https://issues.apache.org/jira/browse/MAPREDUCE-4049) | *Major* | **plugin for generic shuffle service**

Allow ReduceTask loading a third party plugin for shuffle (and merge) instead of the default shuffle.



