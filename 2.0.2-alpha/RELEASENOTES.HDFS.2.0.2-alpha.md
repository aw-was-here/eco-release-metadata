# Hadoop HDFS 2.0.2-alpha Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HDFS-3755](https://issues.apache.org/jira/browse/HDFS-3755) | *Major* | **Creating an already-open-for-write file with overwrite=true fails**

This is an incompatible change: Before this change, if a file is already open for write by one client, and another client calls fs.create() with overwrite=true, an AlreadyBeingCreatedException is thrown.  After this change, the file will be deleted and the new file will be created successfully.


---

* [HDFS-3697](https://issues.apache.org/jira/browse/HDFS-3697) | *Minor* | **Enable fadvise readahead by default**

The datanode now performs 4MB readahead by default when reading data from its disks, if the native libraries are present. This has been shown to improve performance in many workloads. The feature may be disabled by setting dfs.datanode.readahead.bytes to "0".


---

* [HDFS-3675](https://issues.apache.org/jira/browse/HDFS-3675) | *Minor* | **libhdfs: follow documented return codes**

**WARNING: No release note provided for this incompatible change.**


---

* [HDFS-3522](https://issues.apache.org/jira/browse/HDFS-3522) | *Major* | **If NN is in safemode, it should throw SafeModeException when getBlockLocations has zero locations**

getBlockLocations(), and hence open() for read, will now throw SafeModeException if the NameNode is still in safe mode and there are no replicas reported yet for one of the blocks in the file.


---

* [HDFS-3518](https://issues.apache.org/jira/browse/HDFS-3518) | *Major* | **Provide API to check HDFS operational state**

Add a utility method HdfsUtils.isHealthy(uri) for checking if the given HDFS is healthy.


---

* [HDFS-3475](https://issues.apache.org/jira/browse/HDFS-3475) | *Trivial* | **Make the replication and invalidation rates configurable**

This change adds two new configuration parameters. 
# {{dfs.namenode.invalidate.work.pct.per.iteration}} for controlling deletion rate of blocks. 
# {{dfs.namenode.replication.work.multiplier.per.iteration}} for controlling replication rate. This in turn allows controlling the time it takes for decommissioning. 

Please see hdfs-default.xml for detailed description.


---

* [HDFS-3446](https://issues.apache.org/jira/browse/HDFS-3446) | *Major* | **HostsFileReader silently ignores bad includes/excludes**

HDFS no longer silently ignores missing or unreadable host files specified by dfs.hosts or dfs.hosts.exclude. In order to specify that no hosts should be included or excluded, administrators should either refrain from setting the relevant config properties, or create an empty file in order to represent an empty list.


---

* [HDFS-3318](https://issues.apache.org/jira/browse/HDFS-3318) | *Blocker* | **Hftp hangs on transfers \>2GB**

**WARNING: No release note provided for this incompatible change.**


---

* [HDFS-3110](https://issues.apache.org/jira/browse/HDFS-3110) | *Major* | **libhdfs implementation of direct read API**

libhdfs is enhanced to read directly into user-supplied buffers when possible, reducing the number of memory copies.


---

* [HDFS-2793](https://issues.apache.org/jira/browse/HDFS-2793) | *Major* | **Add an admin command to trigger an edit log roll**

Introduced a new command, "hdfs dfsadmin -rollEdits" which requests that the active NameNode roll its edit log. This can be useful for administrators manually backing up log segments.


---

* [HDFS-2727](https://issues.apache.org/jira/browse/HDFS-2727) | *Minor* | **libhdfs should get the default block size from the server**

libhdfs now uses the server block size configuration rather than the deprecated dfs.block.size client configuration.


---

* [HDFS-2686](https://issues.apache.org/jira/browse/HDFS-2686) | *Major* | **Remove DistributedUpgrade related code**

This jira removes functionality that has not been used/applicable since release 0.17. The incompatibility introduced by this change will not affect any HDFS users.


---

* [HDFS-2617](https://issues.apache.org/jira/browse/HDFS-2617) | *Major* | **Replaced Kerberized SSL for image transfer and fsck with SPNEGO-based solution**

Due to the requirement that KSSL use weak encryption types for Kerberos tickets, HTTP authentication to the NameNode will now use SPNEGO by default. This will require users of previous branch-1 releases with security enabled to modify their configurations and create new Kerberos principals in order to use SPNEGO. The old behavior of using KSSL can optionally be enabled by setting the configuration option "hadoop.security.use-weak-http-crypto" to "true".



