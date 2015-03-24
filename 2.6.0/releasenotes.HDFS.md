# Hadoop HDFS 2.6.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HDFS-7276](https://issues.apache.org/jira/browse/HDFS-7276) | *Major* | **Limit the number of byte arrays used by DFSOutputStream**

The following configuration properties are added.

- dfs.client.write.byte-array-manager.enabled:
for enabling/disabling byte array manger.  Default is false.

- dfs.client.write.byte-array-manager.count-threshold:
The count threshold for each array length so that a manager is created only after the allocation count exceeds the threshold.  In other words, the particular array length is not managed until the allocation count exceeds the threshold.  Default is 128.

- dfs.client.write.byte-array-manager.count-limit:
The maximum number of arrays allowed for each array length.  Default is 2048.

- dfs.client.write.byte-array-manager.count-reset-time-period-ms:
The time period in milliseconds that the allocation count for each array length is reset to zero if there is no increment.  Default is 10,000ms, i.e. 10 seconds.


---

* [HDFS-7091](https://issues.apache.org/jira/browse/HDFS-7091) | *Minor* | **Add forwarding constructor for INodeFile for existing callers**

Thanks Nicholas! Revised title and committed to the feature branch.


---

* [HDFS-7046](https://issues.apache.org/jira/browse/HDFS-7046) | *Critical* | **HA NN can NPE upon transition to active**

Thanks for the reviews, gentlemen. It's been committed to trunk and branch-2.


---

* [HDFS-6606](https://issues.apache.org/jira/browse/HDFS-6606) | *Major* | **Optimize HDFS Encrypted Transport performance**

HDFS now supports the option to configure AES encryption for block data transfer.  AES offers improved cryptographic strength and performance over the prior options of 3DES and RC4.


---

* [HDFS-6482](https://issues.apache.org/jira/browse/HDFS-6482) | *Major* | **Use block ID-based block layout on datanodes**

The directory structure for finalized replicas on DNs has been changed. Now, the directory that a finalized replica goes in is determined uniquely by its ID. Specifically, we use a two-level directory structure, with the 24th through 17th bits identifying the correct directory at the first level and the 16th through 8th bits identifying the correct directory at the second level.


---

* [HDFS-6376](https://issues.apache.org/jira/browse/HDFS-6376) | *Major* | **Distcp data between two HA clusters requires another configuration**

Allow distcp to copy data between HA clusters. Users can use a new configuration property "dfs.internal.nameservices" to explicitly specify the name services belonging to the local cluster, while continue using the configuration property "dfs.nameservices" to specify all the name services in the local and remote clusters.


---

* [HDFS-2856](https://issues.apache.org/jira/browse/HDFS-2856) | *Major* | **Fix block protocol so that Datanodes don't require root or jsvc**

SASL now can be used to secure the DataTransferProtocol, which transfers file block content between HDFS clients and DataNodes.  In this configuration, it is no longer required for secured clusters to start the DataNode as root and bind to privileged ports.


---

* [HDFS-573](https://issues.apache.org/jira/browse/HDFS-573) | *Major* | **Porting libhdfs to Windows**

The libhdfs C API is now supported on Windows.



