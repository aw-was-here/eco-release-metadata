# Hadoop HDFS 3.0.0 Release Notes

These release notes include new developer and user-facing incompatibilities, features, and major improvements.

## Changes since Hadoop 2.7.0

* [HDFS-7460](https://issues.apache.org/jira/browse/HDFS-7460) | Major | Rewrite httpfs to use new shell framework

This deprecates the following environment variables:
HTTPFS\_CONFIG
HTTPFS\_LOG

* [HDFS-7302](https://issues.apache.org/jira/browse/HDFS-7302) | Major | namenode -rollingUpgrade downgrade may finalize a rolling upgrade

Remove "downgrade" from "namenode -rollingUpgrade" startup option since it may incorrectly finalize an ongoing rolling upgrade.


* [HDFS-6246](https://issues.apache.org/jira/browse/HDFS-6246) | Minor | Remove 'dfs.support.append' flag from trunk code

Appends in HDFS can no longer be disabled.

* [HDFS-5570](https://issues.apache.org/jira/browse/HDFS-5570) | Major | Deprecate hftp / hsftp and replace them with webhdfs / swebhdfs

Support for hftp and hsftp has been removed.  They have superseded by webhdfs  and swebhdfs.

* [HDFS-3034](https://issues.apache.org/jira/browse/HDFS-3034) | Major | Remove the deprecated Syncable.sync() method

Remove the deprecated DFSOutputStream.sync() method.

* [HDFS-2538](https://issues.apache.org/jira/browse/HDFS-2538) | Minor | option to disable fsck dots 

fsck does not print out dots for progress reporting by default. To print out dots, you should specify '-showprogress' option.

* [HDFS-46](https://issues.apache.org/jira/browse/HDFS-46) | Major | The namespace quota of root directory should not be Integer.MAX\_VALUE

Change default namespace quota of root directory from Integer.MAX\_VALUE to Long.MAX\_VALUE.



