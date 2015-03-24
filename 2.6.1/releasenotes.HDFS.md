# Hadoop HDFS 2.6.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.

---

* [HDFS-7733](https://issues.apache.org/jira/browse/HDFS-7733) | *Major* | **NFS: readdir/readdirplus return null directory attribute on failure**
---

* [HDFS-7503](https://issues.apache.org/jira/browse/HDFS-7503) | *Major* | **Namenode restart after large deletions can cause slow processReport (due to logging)**
---

* [HDFS-7489](https://issues.apache.org/jira/browse/HDFS-7489) | *Critical* | **Incorrect locking in FsVolumeList#checkDirs can hang datanodes**
---

* [HDFS-7443](https://issues.apache.org/jira/browse/HDFS-7443) | *Blocker* | **Datanode upgrade to BLOCKID\_BASED\_LAYOUT fails if duplicate block files are present in the same volume**
---

* [HDFS-7425](https://issues.apache.org/jira/browse/HDFS-7425) | *Minor* | **NameNode block deletion logging uses incorrect appender.**
---

* [HDFS-4882](https://issues.apache.org/jira/browse/HDFS-4882) | *Critical* | **Prevent the Namenode's LeaseManager from looping forever in checkLeases**
---

* [HDFS-3443](https://issues.apache.org/jira/browse/HDFS-3443) | *Major* | **Fix NPE when namenode transition to active during startup by adding checkNNStartup() in NameNodeRpcServer**


