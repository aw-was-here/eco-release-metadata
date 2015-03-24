# Hadoop HDFS 2.5.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HDFS-6471](https://issues.apache.org/jira/browse/HDFS-6471) | *Major* | **Make moveFromLocal CLI testcases to be non-disruptive**

Committed to trunk and merged into branch-2. Thanks Dasha!


---

* [HDFS-6297](https://issues.apache.org/jira/browse/HDFS-6297) | *Major* | **Add CLI testcases to reflect new features of dfs and dfsadmin**

Committed to the trunk and branch-2. Thanks Dasha!


---

* [HDFS-6293](https://issues.apache.org/jira/browse/HDFS-6293) | *Blocker* | **Issues with OIV processing PB-based fsimages**

Set "dfs.namenode.legacy-oiv-image.dir" to an appropriate directory to make standby name node or secondary name node save its file system state in the old fsimage format during checkpointing. This image can be used for offline analysis using the OfflineImageViewer.  Use the "hdfs oiv\_legacy" command to process the old fsimage format.


---

* [HDFS-6273](https://issues.apache.org/jira/browse/HDFS-6273) | *Major* | **Config options to allow wildcard endpoints for namenode HTTP and HTTPS servers**

HDFS-6273 introduces two new HDFS configuration keys: 
- dfs.namenode.http-bind-host
- dfs.namenode.https-bind-host

The most common use case for these keys is to have the NameNode HTTP (or HTTPS) endpoints listen on all interfaces on multi-homed systems by setting the keys to 0.0.0.0 i.e. INADDR\_ANY.

For the systems background on this usage of INADDR\_ANY please refer to ip(7) in the Linux Programmer's Manual (web link: http://man7.org/linux/man-pages/man7/ip.7.html).

These keys complement the existing NameNode options:
- dfs.namenode.rpc-bind-host
- dfs.namenode.servicerpc-bind-host


---

* [HDFS-6168](https://issues.apache.org/jira/browse/HDFS-6168) | *Major* | **Remove deprecated methods in DistributedFileSystem**

**WARNING: No release note provided for this incompatible change.**


---

* [HDFS-6164](https://issues.apache.org/jira/browse/HDFS-6164) | *Major* | **Remove lsr in OfflineImageViewer**

The offlineimageviewer no longer generates lsr-style outputs. The functionality has been superseded by a tool that takes the fsimage and exposes WebHDFS-like API for user queries.


---

* [HDFS-6110](https://issues.apache.org/jira/browse/HDFS-6110) | *Major* | **adding more slow action log in critical write path**

Log slow i/o.  Set log thresholds in dfsclient and datanode via the below  new configs:

dfs.client.slow.io.warning.threshold.ms (Default 30 seconds)
dfs.datanode.slow.io.warning.threshold.ms (Default 300ms)



