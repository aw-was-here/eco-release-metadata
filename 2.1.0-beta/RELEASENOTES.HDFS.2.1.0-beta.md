# Hadoop HDFS 2.1.0-beta Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HDFS-5083](https://issues.apache.org/jira/browse/HDFS-5083) | *Blocker* | **Update the HDFS compatibility version range**

**WARNING: No release note provided for this incompatible change.**


---

* [HDFS-4996](https://issues.apache.org/jira/browse/HDFS-4996) | *Minor* | **ClientProtocol#metaSave can be made idempotent by overwriting the output file instead of appending to it**

The dfsadmin -metasave command has been changed to overwrite the output file.  Previously, this command would append to the output file if it already existed.


---

* [HDFS-4866](https://issues.apache.org/jira/browse/HDFS-4866) | *Blocker* | **Protocol buffer support cannot compile under C**

The Protocol Buffers definition of the inter-namenode protocol required a change for compatibility with compiled C clients.  This is a backwards-incompatible change.  A namenode prior to this change will not be able to communicate with a namenode after this change.


---

* [HDFS-4832](https://issues.apache.org/jira/browse/HDFS-4832) | *Critical* | **Namenode doesn't change the number of missing blocks in safemode when DNs rejoin or leave**

This change makes name node keep its internal replication queues and data node state updated in manual safe mode. This allows metrics and UI to present up-to-date information while in safe mode. The behavior during start-up safe mode is unchanged.


---

* [HDFS-4659](https://issues.apache.org/jira/browse/HDFS-4659) | *Major* | **Support setting execution bit for regular files**

**WARNING: No release note provided for this incompatible change.**


---

* [HDFS-4519](https://issues.apache.org/jira/browse/HDFS-4519) | *Major* | **Support override of jsvc binary and log file locations when launching secure datanode.**

With this improvement the following options are available in release 1.2.0 and later on 1.x release stream:
1. jsvc location can be overridden by setting environment variable JSVC\_HOME. Defaults to jsvc binary packaged within the Hadoop distro.
2. jsvc log output is directed to the file defined by JSVC\_OUTFILE. Defaults to $HADOOP\_LOG\_DIR/jsvc.out.
3. jsvc error output is directed to the file defined by JSVC\_ERRFILE file.  Defaults to $HADOOP\_LOG\_DIR/jsvc.err.

With this improvement the following options are available in release 2.0.4 and later on 2.x release stream:
1. jsvc log output is directed to the file defined by JSVC\_OUTFILE. Defaults to $HADOOP\_LOG\_DIR/jsvc.out.
2. jsvc error output is directed to the file defined by JSVC\_ERRFILE file.  Defaults to $HADOOP\_LOG\_DIR/jsvc.err.

For overriding jsvc location on 2.x releases, here is the release notes from HDFS-2303:
To run secure Datanodes users must install jsvc for their platform and set JSVC\_HOME to point to the location of jsvc in their environment.


---

* [HDFS-4434](https://issues.apache.org/jira/browse/HDFS-4434) | *Major* | **Provide a mapping from INodeId to INode**

This change adds support for referencing files and directories based on fileID/inodeID using a path /.reserved/.inodes/<inodeid>. With this change creating a file or directory /.reserved is not longer allowed. Before upgrading to a release with this change, files /.reserved needs to be renamed to another name.


---

* [HDFS-4305](https://issues.apache.org/jira/browse/HDFS-4305) | *Minor* | **Add a configurable limit on number of blocks per file, and min block size**

This change introduces a maximum number of blocks per file, by default one million, and a minimum block size, by default 1MB. These can optionally be changed via the configuration settings "dfs.namenode.fs-limits.max-blocks-per-file" and "dfs.namenode.fs-limits.min-block-size", respectively.


---

* [HDFS-4053](https://issues.apache.org/jira/browse/HDFS-4053) | *Major* | **Increase the default block size**

The default blocks size prior to this change was 64MB. This jira changes the default block size to 128MB. To go back to previous behavior, please configure the in hdfs-site.xml, the configuration parameter "dfs.blocksize" to 67108864.


---

* [HDFS-2802](https://issues.apache.org/jira/browse/HDFS-2802) | *Major* | **Support for RW/RO snapshots in HDFS**

**WARNING: No release note provided for this incompatible change.**


---

* [HDFS-1804](https://issues.apache.org/jira/browse/HDFS-1804) | *Minor* | **Add a new block-volume device choosing policy that looks at free space**

There is now a new option to have the DN take into account available disk space on each volume when choosing where to place a replica when performing an HDFS write. This can be enabled by setting the config "dfs.datanode.fsdataset.volume.choosing.policy" to the value "org.apache.hadoop.hdfs.server.datanode.fsdataset.AvailableSpaceVolumeChoosingPolicy".



