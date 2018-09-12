
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
# Apache HBase  2.1.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-20884](https://issues.apache.org/jira/browse/HBASE-20884) | *Major* | **Replace usage of our Base64 implementation with java.util.Base64**

Class org.apache.hadoop.hbase.util.Base64 has been removed in it's entirety from HBase 2+. In HBase 1, unused methods have been removed from the class and the audience was changed from  Public to Private. This class was originally intended as an internal utility class that could be used externally but thinking since changed; these classes should not have been advertised as public to end-users.

This represents an incompatible change for users who relied on this implementation. An alternative implementation for affected clients is available at java.util.Base64 when using Java 8 or newer; be aware, it may encode/decode differently. For clients seeking to restore this specific implementation, it is available in the public domain for download at http://iharder.sourceforge.net/current/java/base64/


---

* [HBASE-20846](https://issues.apache.org/jira/browse/HBASE-20846) | *Major* | **Restore procedure locks when master restarts**

1. Make hasLock method final, and add a locked field in Procedure to record whether we have the lock. We will set it to true in doAcquireLock and to false in doReleaseLock. The sub procedures do not need to manage it any more.

2. Also added a locked field in the proto message. When storing, the field will be set according to the return value of hasLock. And when loading, there is a new field in Procedure called lockedWhenLoading. We will set it to true if the locked field in proto message is true.

3. The reason why we can not set the locked field directly to true by calling doAcquireLock is that, during initialization, most procedures need to wait until master is initialized. So the solution here is that, we introduced a new method called waitInitialized in Procedure, and move the wait master initialized related code from acquireLock to this method. And we added a restoreLock method to Procedure, if lockedWhenLoading is true, we will call the acquireLock to get the lock, but do not set locked to true. And later when we call doAcquireLock and pass the waitInitialized check, we will test lockedWhenLoading, if it is true, when we just set the locked field to true and return, without actually calling the acquireLock method since we have already called it once.


---

* [HBASE-20538](https://issues.apache.org/jira/browse/HBASE-20538) | *Critical* | **Upgrade our hadoop versions to 2.7.7 and 3.0.3**

Update hadoop-two.version to 2.7.7 and hadoop-three.version to 3.0.3 due to a JDK issue which is solved by HADOOP-15473.


---

* [HBASE-20856](https://issues.apache.org/jira/browse/HBASE-20856) | *Minor* | **PITA having to set WAL provider in two places**

With this change if a WAL's meta provider (hbase.wal.meta\_provider) is not explicitly set, it now defaults to whatever hbase.wal.provider is set to. Previous, the two settings operated independently, each with its own default.

This change is operationally incompatible with previous HBase versions because the default WAL meta provider no longer defaults to AsyncFSWALProvider but to hbase.wal.provider.

The thought is that this is more in line with an operator's expectation, that a change in hbase.wal.provider is sufficient to change how WALs are written, especially given hbase.wal.meta\_provider is an obscure configuration and that the very idea that meta regions would have their own wal provider would likely come as a surprise.


---

* [HBASE-20986](https://issues.apache.org/jira/browse/HBASE-20986) | *Major* | **Separate the config of block size when we do log splitting and write Hlog**

After HBASE-20986, we can set different value to block size of WAL and recovered edits. Both of their default value is 2 \* default HDFS blocksize. And hbase.regionserver.recoverededits.blocksize is for block size of recovered edits while hbase.regionserver.hlog.blocksize is for block size of WAL.


---

* [HBASE-20813](https://issues.apache.org/jira/browse/HBASE-20813) | *Minor* | **Remove RPC quotas when the associated table/Namespace is dropped off**

In previous releases, when a Space Quota was configured on a table or namespace and that table or namespace was deleted, the Space Quota was also deleted. This change improves the implementation so that the same is also done for RPC Quotas.


---

* [HBASE-20965](https://issues.apache.org/jira/browse/HBASE-20965) | *Major* | **Separate region server report requests to new handlers**

After HBASE-20965, we can use MasterFifoRpcScheduler in master to separate RegionServerReport requests to indenpedent handler. To use this feature, please set "hbase.master.rpc.scheduler.factory.class" to
 "org.apache.hadoop.hbase.ipc.MasterFifoRpcScheduler". Use "hbase.master.server.report.handler.count" to set RegionServerReport handlers count, the default value is half of "hbase.regionserver.handler.count" value, but at least 1, and the other handlers count in master is "hbase.regionserver.handler.count" value minus RegionServerReport handlers count, but at least 1 too.


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

* [HBASE-21153](https://issues.apache.org/jira/browse/HBASE-21153) | *Major* | **Shaded client jars should always build in relevant phase to avoid confusion**

Client facing artifacts are now built whenever Maven is run through the "package" goal. Previously, the client facing artifacts would create placeholder jars that skipped repackaging HBase and third-party dependencies unless the "release" profile was active.

Build times may be noticeably longer depending on your build hardware. For example, the Jenkins worker nodes maintained by ASF Infra take ~14% longer to do a full packaging build. An example portability-focused personal laptop took ~25% longer.


---

* [HBASE-21171](https://issues.apache.org/jira/browse/HBASE-21171) | *Major* | **[amv2] Tool to parse a directory of MasterProcWALs standalone**

Make it so can run the WAL parse and load system in isolation. Here is an example:

{code}$ HBASE\_OPTS=" -XX:+UnlockDiagnosticVMOptions -XX:+UnlockCommercialFeatures -XX:+FlightRecorder -XX:+DebugNonSafepoints" ./bin/hbase org.apache.hadoop.hbase.procedure2.store.wal.WALProcedureStore ~/big\_set\_of\_masterprocwals/
{code}


---

* [HBASE-21125](https://issues.apache.org/jira/browse/HBASE-21125) | *Major* | **Backport 'HBASE-20942 Improve RpcServer TRACE logging' to branch-2.1**

Allows configuration of the length of RPC messages printed to the log at TRACE level via "hbase.ipc.trace.param.size" in RpcServer.



