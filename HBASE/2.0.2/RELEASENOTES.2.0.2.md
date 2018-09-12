
<!---
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
-->
# Apache HBase  2.0.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-20681](https://issues.apache.org/jira/browse/HBASE-20681) | *Major* | **IntegrationTestDriver fails after HADOOP-15406 due to missing hamcrest-core**

<!-- markdown -->

Users of our integration tests on Hadoop 3 can now add all needed dependencies by pointing at jars included in our binary convenience artifact.

Prior to this fix, downstream users on Hadoop 3 would need to get a copy of the Hamcrest v1.3 jar from elsewhere.


---

* [HBASE-20745](https://issues.apache.org/jira/browse/HBASE-20745) | *Major* | **Log when master proc wal rolls**

Log Master WAL Proc at INFO level so can tell where we transition; will help debugging/figuring accounting. Also change DEFAULT\_RIT\_CHORE\_INTERVAL\_MSEC from 5 to 60 seconds; makes it so we emit STUCK RIT notice once a minute only rather than 12 times a minute (latter was causing us to quickly roll-away the logging around problem 'events').


---

* [HBASE-20642](https://issues.apache.org/jira/browse/HBASE-20642) | *Major* | **IntegrationTestDDLMasterFailover throws 'InvalidFamilyOperationException**

This changes client-side nonce generation to use the same nonce for re-submissions of client RPC DDL operations.


---

* [HBASE-20244](https://issues.apache.org/jira/browse/HBASE-20244) | *Blocker* | **NoSuchMethodException when retrieving private method decryptEncryptedDataEncryptionKey from DFSClient**

HDFS-12574 made an incompatible change to HdfsKMSUtil with different method signature.
This issue uses reflection to try known method signatures in order to work with hadoop releases with and without HDFS-12574


---

* [HBASE-20839](https://issues.apache.org/jira/browse/HBASE-20839) | *Blocker* | **Fallback to FSHLog if we can not instantiated AsyncFSWAL when user does not specify AsyncFSWAL explicitly**

As we hack into the internal of DFSClient when implementing AsyncFSWAL to get better performance, a patch release of hadoop can make it broken.

So now, if user does not specify a wal provider, then we will first try to use 'asyncfs', i.e, the AsyncFSWALProvider. If we fail due to some compatible issues, we will fallback to 'filesystem', i.e, FSHLog.


---

* [HBASE-20691](https://issues.apache.org/jira/browse/HBASE-20691) | *Blocker* | **Storage policy should allow deferring to HDFS**

After HBASE-20691 we have changed the default setting of hbase.wal.storage.policy from "HOT" back to "NONE" which means we defer the policy to HDFS. This fixes the problem of release 2.0.0 that the storage policy of WAL directory will defer to HDFS and may not be "HOT" even if you explicitly set hbase.wal.storage.policy to "HOT"


---

* [HBASE-20884](https://issues.apache.org/jira/browse/HBASE-20884) | *Major* | **Replace usage of our Base64 implementation with java.util.Base64**

Class org.apache.hadoop.hbase.util.Base64 has been removed in it's entirety from HBase 2+. In HBase 1, unused methods have been removed from the class and the audience was changed from  Public to Private. This class was originally intended as an internal utility class that could be used externally but thinking since changed; these classes should not have been advertised as public to end-users.

This represents an incompatible change for users who relied on this implementation. An alternative implementation for affected clients is available at java.util.Base64 when using Java 8 or newer; be aware, it may encode/decode differently. For clients seeking to restore this specific implementation, it is available in the public domain for download at http://iharder.sourceforge.net/current/java/base64/


---

* [HBASE-20538](https://issues.apache.org/jira/browse/HBASE-20538) | *Critical* | **Upgrade our hadoop versions to 2.7.7 and 3.0.3**

Update hadoop-two.version to 2.7.7 and hadoop-three.version to 3.0.3 due to a JDK issue which is solved by HADOOP-15473.


---

* [HBASE-20856](https://issues.apache.org/jira/browse/HBASE-20856) | *Minor* | **PITA having to set WAL provider in two places**

With this change if a WAL's meta provider (hbase.wal.meta\_provider) is not explicitly set, it now defaults to whatever hbase.wal.provider is set to. Previous, the two settings operated independently, each with its own default.

This change is operationally incompatible with previous HBase versions because the default WAL meta provider no longer defaults to AsyncFSWALProvider but to hbase.wal.provider.

The thought is that this is more in line with an operator's expectation, that a change in hbase.wal.provider is sufficient to change how WALs are written, especially given hbase.wal.meta\_provider is an obscure configuration and that the very idea that meta regions would have their own wal provider would likely come as a surprise.


---

* [HBASE-20813](https://issues.apache.org/jira/browse/HBASE-20813) | *Minor* | **Remove RPC quotas when the associated table/Namespace is dropped off**

In previous releases, when a Space Quota was configured on a table or namespace and that table or namespace was deleted, the Space Quota was also deleted. This change improves the implementation so that the same is also done for RPC Quotas.


---

* [HBASE-21012](https://issues.apache.org/jira/browse/HBASE-21012) | *Critical* | **Revert the change of serializing TimeRangeTracker**

HFiles generated by 2.0.0, 2.0.1, 2.1.0 are not forward compatible to 1.4.6-, 1.3.2.1-, 1.2.6.1-, and other inactive releases. Why HFile lose compatability is hbase in new versions (2.0.0, 2.0.1, 2.1.0) use protobuf to serialize/deserialize TimeRangeTracker (TRT) while old versions use DataInput/DataOutput. To solve this, We have to put HBASE-21012 to 2.x and put HBASE-21013 in 1.x. For more information, please check HBASE-21008.


---

* [HBASE-21072](https://issues.apache.org/jira/browse/HBASE-21072) | *Major* | **Block out HBCK1 in hbase2**

Fence out hbase-1.x hbck1 instances. Stop them making state changes on an hbase-2.x cluster; they could do damage. We do this by writing the hbck1 lock file into place on hbase-2.x Master start-up.

To disable this new behavior, set hbase.write.hbck1.lock.file to false


---

* [HBASE-20941](https://issues.apache.org/jira/browse/HBASE-20941) | *Major* | **Create and implement HbckService in master**

Adds an HBCK Service and a first method to force-change-in-table-state for use by an HBCK client effecting 'repair' to a malfunctioning HBase.


---

* [HBASE-20649](https://issues.apache.org/jira/browse/HBASE-20649) | *Minor* | **Validate HFiles do not have PREFIX\_TREE DataBlockEncoding**

<!-- markdown -->
Users who have previously made use of prefix tree encoding can now check that their existing HFiles no longer contain data that uses it with an additional preupgrade check command.

```
hbase pre-upgrade validate-hfile
```

Please see the "HFile Content validation" section of the ref guide's coverage of the pre-upgrade validator tool for usage details.


---

* [HBASE-20942](https://issues.apache.org/jira/browse/HBASE-20942) | *Major* | **Improve RpcServer TRACE logging**

Allows configuration of the length of RPC messages printed to the log at TRACE level via "hbase.ipc.trace.param.size" in RpcServer.



