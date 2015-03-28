# Hadoop HDFS 2.0.3-alpha Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HDFS-4451](https://issues.apache.org/jira/browse/HDFS-4451) | *Major* | **hdfs balancer command returns exit code 1 on success instead of 0**

This is an incompatible change from release 2.0.2-alpha and prior releases. Balancer tool exited with exit code 1 on success. It is changed to exit with exit code 0 on success. Non 0 exit code indicates failure.


---

* [HDFS-4403](https://issues.apache.org/jira/browse/HDFS-4403) | *Minor* | **DFSClient can infer checksum type when not provided by reading first byte**

The HDFS implementation of getFileChecksum() can now operate correctly against earlier-version datanodes which do not include the checksum type information in their checksum response. The checksum type is automatically inferred by issuing a read of the first byte of each block.


---

* [HDFS-4369](https://issues.apache.org/jira/browse/HDFS-4369) | *Blocker* | **GetBlockKeysResponseProto does not handle null response**

Protobuf message GetBlockKeysResponseProto member keys is made optional from required so that null values can be passed over the wire. This is an incompatible wire protocol change and does not affect the API backward compatibility.


---

* [HDFS-4367](https://issues.apache.org/jira/browse/HDFS-4367) | *Blocker* | **GetDataEncryptionKeyResponseProto  does not handle null response**

Member dataEncryptionKey of the protobuf message GetDataEncryptionKeyResponseProto is made optional instead of required. This is incompatible change is not likely to affect the existing users (that are using HDFS FileSystem and other public APIs).


---

* [HDFS-4364](https://issues.apache.org/jira/browse/HDFS-4364) | *Blocker* | **GetLinkTargetResponseProto does not handle null path**

Protobuf message GetLinkTargetResponseProto member targetPath is made optional from required so that null values can be passed over the wire. This is an incompatible wire protocol change and does not affect the API backward compatibility.


---

* [HDFS-4362](https://issues.apache.org/jira/browse/HDFS-4362) | *Critical* | **GetDelegationTokenResponseProto does not handle null token**

**WARNING: No release note provided for this incompatible change.**


---

* [HDFS-4350](https://issues.apache.org/jira/browse/HDFS-4350) | *Major* | **Make enabling of stale marking on read and write paths independent**

This patch makes an incompatible configuration change, as described below:
In releases 1.1.0 and other point releases 1.1.x, the configuration parameter "dfs.namenode.check.stale.datanode" could be used to turn on checking for the stale nodes. This configuration is no longer supported in release 1.2.0 onwards and is renamed as "dfs.namenode.avoid.read.stale.datanode". 

How feature works and configuring this feature:
As described in HDFS-3703 release notes, datanode stale period can be configured using parameter "dfs.namenode.stale.datanode.interval" in seconds (default value is 30 seconds). NameNode can be configured to use this staleness information for reads using configuration "dfs.namenode.avoid.read.stale.datanode". When this parameter is set to true, namenode picks a stale datanode as the last target to read from when returning block locations for reads. Using staleness information for writes is as described in the releases notes of HDFS-3912.


---

* [HDFS-4122](https://issues.apache.org/jira/browse/HDFS-4122) | *Major* | **Cleanup HDFS logs and reduce the size of logged messages**

The change from this jira changes the content of some of the log messages. No log message are removed. Only the content of the log messages is changed to reduce the size. If you have a tool that depends on the exact content of the log, please look at the patch and make appropriate updates to the tool.


---

* [HDFS-4080](https://issues.apache.org/jira/browse/HDFS-4080) | *Major* | **Add a separate logger for block state change logs to enable turning off those logs**

Add a separate logger "BlockStateChange" for block state change logs.


---

* [HDFS-4059](https://issues.apache.org/jira/browse/HDFS-4059) | *Minor* | **Add number of stale DataNodes to metrics**

This jira adds a new metric with name "StaleDataNodes" under metrics context "dfs" of type Gauge. This tracks the number of DataNodes marked as stale. A DataNode is marked stale when the heartbeat message from the DataNode is not received within the configured time ""dfs.namenode.stale.datanode.interval". 


Please see hdfs-default.xml documentation corresponding to ""dfs.namenode.stale.datanode.interval"  for more details on how to configure this feature. When this feature is not configured, this metrics would return zero.


---

* [HDFS-3703](https://issues.apache.org/jira/browse/HDFS-3703) | *Major* | **Decrease the datanode failure detection time**

This jira adds a new DataNode state called "stale" at the NameNode. DataNodes are marked as stale if it does not send heartbeat message to NameNode within the timeout configured using the configuration parameter "dfs.namenode.stale.datanode.interval" in seconds (default value is 30 seconds). NameNode picks a stale datanode as the last target to read from when returning block locations for reads.

This feature is by default turned * off *. To turn on the feature, set the HDFS configuration "dfs.namenode.check.stale.datanode" to true.


---

* [HDFS-1331](https://issues.apache.org/jira/browse/HDFS-1331) | *Minor* | **dfs -test should work like /bin/test**

"test" will not print a warning for non-existent paths when testing for existence



