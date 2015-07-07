
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
# Apache HBase  0.98.4 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HBASE-11492](https://issues.apache.org/jira/browse/HBASE-11492) | *Critical* | **Hadoop configuration overrides some ipc parameters including tcpNoDelay**

If the Hadoop configuration is read after the HBase configuration, Hadoop's settings can override HBase's settings if the names of the settings are the same. To avoid the risk of override, HBase has renamed the following settings (by prepending 'hbase.') so that you can set them independent of your setting for Hadoop. If you do not use the HBase-specific variants, the Hadoop settings will be used.

Old Name   -->   New Name
======================================================
ipc.server.listen.queue.size   -->   hbase.ipc.server.listen.queue.size
ipc.server.max.callqueue.size   -->   hbase.ipc.server.max.callqueue.size
ipc.server.callqueue.handler.factor --> hbase.ipc.server.callqueue.handler.factor
ipc.server.callqueue.read.share --> hbase.ipc.server.callqueue.read.share
ipc.server.callqueue.type --> hbase.ipc.server.callqueue.type
ipc.server.queue.max.call.delay --> hbase.ipc.server.queue.max.call.delay
ipc.server.max.callqueue.length --> hbase.ipc.server.max.callqueue.length
ipc.server.read.threadpool.size   -->  hbase.ipc.server.read.threadpool.size
ipc.server.tcpkeepalive   -->   hbase.ipc.server.tcpkeepalive
ipc.server.tcpnodelay   -->   hbase.ipc.server.tcpnodelay
ipc.client.call.purge.timeout   -->   hbase.ipc.client.call.purge.timeout
ipc.client.connection.maxidletime   -->   hbase.ipc.client.connection.maxidletime
ipc.client.idlethreshold   -->   hbase.ipc.client.idlethreshold
ipc.client.kill.max   -->   hbase.ipc.client.kill.max
ipc.server.scan.vtime.weight --> hbase.ipc.server.scan.vtime.weight


---

* [HBASE-11374](https://issues.apache.org/jira/browse/HBASE-11374) | *Critical* | **RpcRetryingCaller#callWithoutRetries has a timeout of zero**

Previously, RPC multi operations had a timeout of 0, which was erroneously interpreted as infinity, and resulted in a fallback value of 2 seconds. RPC multi operations now use the value of hbase.rpc.timeout, as do other RPC operations. The default value is 60000, or 60 seconds.


---

* [HBASE-11307](https://issues.apache.org/jira/browse/HBASE-11307) | *Major* | **Deprecate SlabCache**

SlabCache is deprecated and will be dropped for 1.0! Start investigating BucketCache for your off-heap caching needs.


---

* [HBASE-11118](https://issues.apache.org/jira/browse/HBASE-11118) | *Blocker* | **non environment variable solution for "IllegalAccessError: class com.google.protobuf.ZeroCopyLiteralByteString cannot access its superclass com.google.protobuf.LiteralByteString"**

The workaround documented in HBASE-10304 for running a mapreduce job with a "fat jar" is no longer required. Such applications can be launched without adding hbase-protocol.jar to the HADOOP\_CLASSPATH.


---

* [HBASE-11094](https://issues.apache.org/jira/browse/HBASE-11094) | *Blocker* | **Distributed log replay is incompatible for rolling restarts**

Configuration setting "hbase.master.distributed.log.replay" is only used by Master(source of truth) and region servers which participate in recovery process will recover region servers either in log splitting or replay mode depending on what setting is told by Master.

When "hbase.master.distributed.log.replay" configuration setting changes, master will wait for all existing log recovery work items drain before it applies the new setting in order not to mix different recovery mode & ease administrator duty to manually wait all recovery work is done and then restart master.


---

* [HBASE-11052](https://issues.apache.org/jira/browse/HBASE-11052) | *Major* | **Sending random data crashes thrift service**

Thrift servers should use framed/compact protocol to protect against buffer overflow (default disabled as they are breaking old clients)
- hbase.regionserver.thrift.framed = true
- hbase.regionserver.thrift.compact = true


---

* [HBASE-10885](https://issues.apache.org/jira/browse/HBASE-10885) | *Blocker* | **Support visibility expressions on Deletes**

Deletes can be specified with Cell Visibility as done for puts.
Cells covered by the delete is found by doing pattern matching. 
A deleteFamily issued for row1, f1 with Cell Visibility (A & B) would delete only those cells of row1 under family f1 which has cell visibility A&B or B&A. A delete without any cell visibility would only delete those cells that does not have any cell visibility.
In case of delete specific column with latest version only the latest cell with the specified cell visibility will be covered by the delete marker. In case there is no such cell with the specified cell visibility then no cell gets deleted.



