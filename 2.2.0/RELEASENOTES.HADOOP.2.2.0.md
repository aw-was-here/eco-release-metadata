# Hadoop HADOOP 2.2.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HADOOP-10020](https://issues.apache.org/jira/browse/HADOOP-10020) | *Blocker* | **disable symlinks temporarily**

During review of symbolic links, many issues were found related to the impact on semantics of existing APIs such FileSystem#listStatus, FileSystem#globStatus etc. There were also many issues brought up about symbolic links, and the impact on security and functionality of HDFS. All these issues will be addressed in the upcoming release 2.3. Until then the feature is temporarily disabled.



