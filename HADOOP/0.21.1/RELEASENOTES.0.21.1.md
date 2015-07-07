# Apache Hadoop  0.21.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HADOOP-7193](https://issues.apache.org/jira/browse/HADOOP-7193) | *Minor* | **Help message is wrong for touchz command.**

Updated the help for the touchz command.


---

* [HADOOP-7117](https://issues.apache.org/jira/browse/HADOOP-7117) | *Major* | **Move secondary namenode checkpoint configs from core-default.xml to hdfs-default.xml**

Removed references to the older fs.checkpoint.* properties that resided in core-site.xml


---

* [HADOOP-6971](https://issues.apache.org/jira/browse/HADOOP-6971) | *Major* | **Clover build doesn't generate per-test coverage**

This fix requires that test coverage is running under Clover 3.0+


---

* [HADOOP-6944](https://issues.apache.org/jira/browse/HADOOP-6944) | *Major* | **[Herriot] Implement a functionality for getting proxy users definitions like groups and hosts.**

I have just committed this to 0.21 and trunk. Thanks Vinay.


---

* [HDFS-1596](https://issues.apache.org/jira/browse/HDFS-1596) | *Major* | **Move secondary namenode checkpoint configs from core-default.xml to hdfs-default.xml**

Removed references to the older fs.checkpoint.* properties that resided in core-site.xml


---

* [HDFS-1420](https://issues.apache.org/jira/browse/HDFS-1420) | *Major* | **Clover build doesn't generate per-test coverage**

This fix requires that test coverage is running under Clover 3.0+


---

* [MAPREDUCE-2090](https://issues.apache.org/jira/browse/MAPREDUCE-2090) | *Major* | **Clover build doesn't generate per-test coverage**

This fix requires that test coverage is running under Clover 3.0+


---

* [MAPREDUCE-2040](https://issues.apache.org/jira/browse/MAPREDUCE-2040) | *Minor* | **Forrest Documentation for Dynamic Priority Scheduler**

Forrest Documentation for Dynamic Priority Scheduler


---

* [MAPREDUCE-2032](https://issues.apache.org/jira/browse/MAPREDUCE-2032) | *Major* | **TestJobOutputCommitter fails in ant test run**

Clears a problem that {{TestJobCleanup}} leaves behind files that cause {{TestJobOutputCommitter}} to error out.


---

* [MAPREDUCE-1905](https://issues.apache.org/jira/browse/MAPREDUCE-1905) | *Blocker* | **Context.setStatus() and progress() api are ignored**

Moved the api public Counter getCounter(Enum<?> counterName), public Counter getCounter(String groupName, String counterName) from org.apache.hadoop.mapreduce.TaskInputOutputContext to org.apache.hadoop.mapreduce.TaskAttemptContext



