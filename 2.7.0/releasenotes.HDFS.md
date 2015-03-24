# Hadoop HDFS 2.7.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.

---

* [HDFS-7806](https://issues.apache.org/jira/browse/HDFS-7806) | *Minor* | **Refactor: move StorageType from hadoop-hdfs to hadoop-common**

This fix moves the public class StorageType from the package org.apache.hadoop.hdfs to org.apache.hadoop.fs.

---

* [HDFS-7774](https://issues.apache.org/jira/browse/HDFS-7774) | *Critical* | **Unresolved symbols error while compiling HDFS on Windows 7/32 bit**

LibHDFS now supports 32-bit build targets on Windows.

---

* [HDFS-7584](https://issues.apache.org/jira/browse/HDFS-7584) | *Major* | **Enable Quota Support for Storage Types**

1. Introduced quota by storage type as a hard limit on the amount of space usage allowed for different storage types (SSD, DISK, ARCHIVE) under the target directory.
2. Added {{SetQuotaByStorageType}} API and {{-storagetype}} option for  {{hdfs dfsadmin -setSpaceQuota/-clrSpaceQuota}} commands to allow set/clear quota by storage type under the target directory.

---

* [HDFS-7457](https://issues.apache.org/jira/browse/HDFS-7457) | *Major* | **DatanodeID generates excessive garbage**

Thanks for the reviews, gentlemen. I've committed this to trunk and branch-2. Thanks for identifying and working on the issue, Daryn.

---

* [HDFS-7411](https://issues.apache.org/jira/browse/HDFS-7411) | *Major* | **Refactor and improve decommissioning logic into DecommissionManager**

This change introduces a new configuration key used to throttle decommissioning work, "dfs.namenode.decommission.blocks.per.interval". This new key overrides and deprecates the previous related configuration key "dfs.namenode.decommission.nodes.per.interval". The new key is intended to result in more predictable pause times while scanning decommissioning nodes.

---

* [HDFS-7326](https://issues.apache.org/jira/browse/HDFS-7326) | *Minor* | **Add documentation for hdfs debug commands**

Added documentation for the hdfs debug commands to the following URL in the documentation website.

hadoop-project-dist/hadoop-hdfs/HDFSCommands.html

In order to view the new documentation, build the website in a staging area:
$ mvn clean site; mvn site:stage -DstagingDirectory=/tmp/hadoop-site

Point your browser to 
file:///tmp/hadoop-site/hadoop-project/hadoop-project-dist/hadoop-hdfs/HDFSCommands.html

---

* [HDFS-6651](https://issues.apache.org/jira/browse/HDFS-6651) | *Critical* | **Deletion failure can leak inodes permanently**
---

* [HDFS-6252](https://issues.apache.org/jira/browse/HDFS-6252) | *Minor* | **Phase out the old web UI in HDFS**
---

* [HDFS-6133](https://issues.apache.org/jira/browse/HDFS-6133) | *Major* | **Make Balancer support exclude specified path**

Add a feature for replica pinning so that when a replica is pinned in a datanode, it will not be moved by Balancer/Mover.  The replica pinning feature can be enabled/disabled by "dfs.datanode.block-pinning.enabled", where the default is false.

---

* [HDFS-3689](https://issues.apache.org/jira/browse/HDFS-3689) | *Major* | **Add support for variable length block**

1. HDFS now can choose to append data to a new block instead of end of the last partial block. Users can pass {{CreateFlag.APPEND}} and  {{CreateFlag.NEW\_BLOCK}} to the {{append}} API to indicate this requirement.
2. HDFS now allows users to pass {{SyncFlag.END\_BLOCK}} to the {{hsync}} API to finish the current block and write remaining data to a new block.

---

* [HDFS-1522](https://issues.apache.org/jira/browse/HDFS-1522) | *Major* | **Merge Block.BLOCK\_FILE\_PREFIX and DataStorage.BLOCK\_FILE\_PREFIX into one constant**

This merges Block.BLOCK\_FILE\_PREFIX and DataStorage.BLOCK\_FILE\_PREFIX into one constant. Hard-coded
literals of "blk\_" in various files are also updated to use the same constant.

---

* [HDFS-1362](https://issues.apache.org/jira/browse/HDFS-1362) | *Major* | **Provide volume management functionality for DataNode**

Based on the reconfiguration framework provided by HADOOP-7001, enable reconfigure the dfs.datanode.data.dir and add new volumes into service.



