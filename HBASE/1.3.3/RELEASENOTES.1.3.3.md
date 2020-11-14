
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
# Apache HBase  1.3.3 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-17437](https://issues.apache.org/jira/browse/HBASE-17437) | *Major* | **Support specifying a WAL directory outside of the root directory**

This patch adds support for specifying a WAL directory outside of the HBase root directory.

Multiple configuration variables were added to accomplish this:
hbase.wal.dir: used to configure where the root WAL directory is located. Could be on a different FileSystem than the root directory. WAL directory can not be set to a subdirectory of the root directory. The default value of this is the root directory if unset.

hbase.rootdir.perms: Configures FileSystem permissions to set on the root directory. This is '700' by default.

hbase.wal.dir.perms: Configures FileSystem permissions to set on the WAL directory FileSystem. This is '700' by default.


---

* [HBASE-17861](https://issues.apache.org/jira/browse/HBASE-17861) | *Major* | **Regionserver down when checking the permission of staging dir if hbase.rootdir is on S3**

Some object store does not support unix style permission, this jira fix the permission check issue when specify staging dir in different file system. Currently it covers s3, wasb, swift.


---

* [HBASE-18786](https://issues.apache.org/jira/browse/HBASE-18786) | *Major* | **FileNotFoundException should not be silently handled for primary region replicas**

FileNotFoundException opening a StoreFile in a primary replica now causes a RegionServer to crash out where before it would be ignored (or optionally handled via close/reopen).


---

* [HBASE-19163](https://issues.apache.org/jira/browse/HBASE-19163) | *Major* | **"Maximum lock count exceeded" from region server's batch processing**

When there are many mutations against the same row in a batch, as each mutation will acquire a shared row lock, it will exceed the maximum shared lock count the java ReadWritelock supports (64k). Along with other optimization, the batch is divided into multiple possible minibatches. A new config is added to limit the maximum number of mutations in the minibatch.

   \<property\>
    \<name\>hbase.regionserver.minibatch.size\</name\>
    \<value\>20000\</value\>
   \</property\>
The default value is 20000.


---

* [HBASE-20352](https://issues.apache.org/jira/browse/HBASE-20352) | *Major* | **[Chore] Backport HBASE-18309 to branch-1**

HBASE-20352 aims to speed up process of cleaning oldWALs in two aspects,
1. Use multiple threads to scan oldWALs directories through config hbase.cleaner.scan.dir.concurrent.size, which supports both integer (meaning the concrete size, but no more than available cpu cores) and double (between \>0.0 and \<=1.0, meaning ratio of available cpu cores) value, 0.25 by default. Pay attention that 1.0 is different from 1, the former indicates it will use 100% of cores, while the latter will use only 1 thread for chore to scan dir. 
2. Use multiple threads to clean wals under oldWALs directory through hbase.oldwals.cleaner.thread.size, 2 by default.
3. In addition, two configs, hbase.cleaner.scan.dir.concurrent.size and hbase.oldwals.cleaner.thread.size both support online re-configuration.


---

* [HBASE-18842](https://issues.apache.org/jira/browse/HBASE-18842) | *Minor* | **The hbase shell clone\_snaphost command returns bad error message**

<!-- markdown -->

When attempting to clone a snapshot but using a namespace that does not exist, the HBase shell will now correctly report the exception as caused by the passed namespace. Previously, the shell would report that the problem was an unknown namespace but it would claim the user provided table name was not found as a namespace. Both before and after this change the shell properly used the passed namespace to attempt to handle the request.


---

* [HBASE-20004](https://issues.apache.org/jira/browse/HBASE-20004) | *Minor* | **Client is not able to execute REST queries in a secure cluster**

Added 'hbase.rest.http.allow.options.method' configuration property to allow user to decide whether Rest Server HTTP should allow OPTIONS method or not. By default it is enabled in HBase 2.1.0+ versions and in other versions it is disabled.
Similarly 'hbase.thrift.http.allow.options.method' is added HBase 1.5, 2.1.0 and 3.0.0 versions. It is disabled by default.


---

* [HBASE-20590](https://issues.apache.org/jira/browse/HBASE-20590) | *Critical* | **REST Java client is not able to negotiate with the server in the secure mode**

Adds a negotiation logic between a secure java REST client and server. After this jira the Java REST client will start responding to the Negotiate challenge sent by the server. Adds RESTDemoClient which can be used to verify whether the secure Java REST client works against secure REST server or not.


---

* [HBASE-20723](https://issues.apache.org/jira/browse/HBASE-20723) | *Critical* | **Custom hbase.wal.dir results in data loss because we write recovered edits into a different place than where the recovering region server looks for them**

Previously custom hbase.wal.dir, which is not on the same filesystem as hbase rootdir, results in data loss because we write recovered edits into a different place than where the recovering region server looks for them. This is fixed by retrieving actual recovered edits from the correct location.


---

* [HBASE-20884](https://issues.apache.org/jira/browse/HBASE-20884) | *Major* | **Replace usage of our Base64 implementation with java.util.Base64**

Class org.apache.hadoop.hbase.util.Base64 has been removed in it's entirety from HBase 2+. In HBase 1, unused methods have been removed from the class and the audience was changed from  Public to Private. This class was originally intended as an internal utility class that could be used externally but thinking since changed; these classes should not have been advertised as public to end-users.

This represents an incompatible change for users who relied on this implementation. An alternative implementation for affected clients is available at java.util.Base64 when using Java 8 or newer; be aware, it may encode/decode differently. For clients seeking to restore this specific implementation, it is available in the public domain for download at http://iharder.sourceforge.net/current/java/base64/


---

* [HBASE-20672](https://issues.apache.org/jira/browse/HBASE-20672) | *Minor* | **New metrics ReadRequestRate and WriteRequestRate**

Exposing 2 new metrics in HBase to provide ReadRequestRate and WriteRequestRate at region server level. These metrics give the rate of request handled by the region server and are reset after every monitoring interval.


---

* [HBASE-20942](https://issues.apache.org/jira/browse/HBASE-20942) | *Major* | **Improve RpcServer TRACE logging**

Allows configuration of the length of RPC messages printed to the log at TRACE level via "hbase.ipc.trace.param.size" in RpcServer.


---

* [HBASE-21185](https://issues.apache.org/jira/browse/HBASE-21185) | *Minor* | **WALPrettyPrinter: Additional useful info to be printed by wal printer tool, for debugability purposes**

This adds two extra features to WALPrettyPrinter tool:

1) Output for each cell combined size of cell descriptors, plus the cell value itself, in a given WAL edit. This is printed on the results as "cell total size sum:" info by default;

2) An optional -g/--goto argument, that allows to seek straight to that specific WAL file position, then sequentially reading the WAL from that point towards its end;


---

* [HBASE-21158](https://issues.apache.org/jira/browse/HBASE-21158) | *Critical* | **Empty qualifier cell should not be returned if it does not match QualifierFilter**

<!-- markdown -->

Scans that make use of `QualifierFilter` previously would erroneously return both columns with an empty qualifier along with those that matched. After this change that behavior has changed to only return those columns that match.


---

* [HBASE-21417](https://issues.apache.org/jira/browse/HBASE-21417) | *Critical* | **Pre commit build is broken due to surefire plugin crashes**

Add -Djdk.net.URLClassPath.disableClassPathURLCheck=true when executing surefire plugin.


---

* [HBASE-21387](https://issues.apache.org/jira/browse/HBASE-21387) | *Major* | **Race condition surrounding in progress snapshot handling in snapshot cache leads to loss of snapshot files**

To prevent race condition between in progress snapshot (performed by TakeSnapshotHandler) and HFileCleaner which results in data loss, this JIRA introduced mutual exclusion between taking snapshot and running HFileCleaner. That is, at any given moment, either some snapshot can be taken or, HFileCleaner checks hfiles which are not referenced, but not both can be running.


---

* [HBASE-21567](https://issues.apache.org/jira/browse/HBASE-21567) | *Major* | **Allow overriding configs starting up the shell**

Allow passing of -Dkey=value option to shell to override hbase-\* configuration: e.g.:

$ ./bin/hbase shell -Dhbase.zookeeper.quorum=ZK0.remote.cluster.example.org,ZK1.remote.cluster.example.org,ZK2.remote.cluster.example.org -Draining=false
...
hbase(main):001:0\> @shell.hbase.configuration.get("hbase.zookeeper.quorum")
=\> "ZK0.remote.cluster.example.org,ZK1.remote.cluster.example.org,ZK2.remote.cluster.example.org"
hbase(main):002:0\> @shell.hbase.configuration.get("raining")
=\> "false"


---

* [HBASE-20401](https://issues.apache.org/jira/browse/HBASE-20401) | *Minor* | **Make \`MAX\_WAIT\` and \`waitIfNotFinished\` in CleanerContext configurable**

When oldwals (and hfile) cleaner cleans stale wals (and hfiles), it will periodically check and wait the clean results from filesystem, the total wait time will be no more than a max time.

The periodically wait and check configurations are hbase.oldwals.cleaner.thread.check.interval.msec (default is 500 ms) and hbase.regionserver.hfilecleaner.thread.check.interval.msec (default is 1000 ms). 

Meanwhile, The max time configurations are hbase.oldwals.cleaner.thread.timeout.msec and hbase.regionserver.hfilecleaner.thread.timeout.msec, they are set to 60 seconds by default.

All support dynamic configuration.

e.g. in the oldwals cleaning scenario, one may consider tuning hbase.oldwals.cleaner.thread.timeout.msec and hbase.oldwals.cleaner.thread.check.interval.msec 

1. While deleting a oldwal never complete (strange but possible), then delete file task needs to wait for a max of 60 seconds. Here, 60 seconds might be too long, or the opposite way is to increase more than 60 seconds in the use cases of slow file delete. 
2. The check and wait of a file delete is set to default in the period of 500 milliseconds, one might want to tune this checking period to a short interval to check more frequently or to a longer interval to avoid checking too often to manage their delete file task checking period (the longer interval may be use to avoid checking too fast while using a high latency storage).


---

* [HBASE-20734](https://issues.apache.org/jira/browse/HBASE-20734) | *Major* | **Colocate recovered edits directory with hbase.wal.dir**

Previously the recovered.edits directory was under the root directory. This JIRA moves the recovered.edits directory to be under the hbase.wal.dir if set. It also adds a check for any recovered.edits found under the root directory for backwards compatibility. This gives improvements when a faster media(like SSD) or more local FileSystem is used for the hbase.wal.dir than the root dir.



