
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
# Apache HBase  1.5.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-17314](https://issues.apache.org/jira/browse/HBASE-17314) | *Major* | **Limit total buffered size for all replication sources**

Add a conf "replication.total.buffer.quota" to limit total size of buffered entries in all replication peers. It will prevent server getting OOM if there are many peers. Default value is 256MB.


---

* [HBASE-18517](https://issues.apache.org/jira/browse/HBASE-18517) | *Major* | **limit max log message width in log4j**

Sets a log length max of 1000 characters.


---

* [HBASE-18731](https://issues.apache.org/jira/browse/HBASE-18731) | *Major* | **[compat 1-2] Mark protected methods of QuotaSettings that touch Protobuf internals as IA.Private**

The following methods in QuotaSettings were annotated InterfaceAudience.Private; they are for internal use only in hbase-2.0.0

buildSetQuotaRequestProto(final QuotaSettings settings)
setupSetQuotaRequest(SetQuotaRequest.Builder builder)

Note that there were versions of these methods in HBase 1.y that used classes in the {{org.apache.hadoop.hbase.protobuf.generated}} package. That package no longer exists as a part of our cleanup of protobufs from our public facing API and the related methods have been removed.


---

* [HBASE-19189](https://issues.apache.org/jira/browse/HBASE-19189) | *Major* | **Ad-hoc test job for running a subset of tests lots of times**

<!-- markdown -->

Folks can now test out tests on an arbitrary release branch. Head over to [builds.a.o job "HBase-adhoc-run-tests"](https://builds.apache.org/view/H-L/view/HBase/job/HBase-adhoc-run-tests/), then pick "Build with parameters".
Tests are specified as just names e.g. TestLogRollingNoCluster. can also be a glob. e.g. TestHFile*


---

* [HBASE-19262](https://issues.apache.org/jira/browse/HBASE-19262) | *Major* | **Revisit checkstyle rules**

Change the import order rule that now we should put the shaded import at bottom. Ignore the VisibilityModifier warnings for test code.


---

* [HBASE-19691](https://issues.apache.org/jira/browse/HBASE-19691) | *Critical* | **Do not require ADMIN permission for obtaining ClusterStatus**

This change reverts an unintentional requirement for global ADMIN permission to obtain cluster status from the active HMaster.


---

* [HBASE-19673](https://issues.apache.org/jira/browse/HBASE-19673) | *Major* | **Backport " Periodically ensure records are not buffered too long by BufferedMutator" to branch-1**

The BufferedMutator now supports two settings that are used to ensure records do not stay too long in the buffer of a BufferedMutator. For periodically flushing the BufferedMutator there is now a "Timeout": "How old may the oldest record in the buffer be before we force a flush" and a "TimerTick": How often do we check if the timeout has been exceeded. Using these settings you can make the BufferedMutator automatically flush the write buffer if after the specified number of milliseconds no flush has occurred.

This is mainly useful in streaming scenarios (i.e. writing data into HBase using Apache Flink/Beam/Storm) where it is common (especially in a test/development situation) to see small unpredictable bursts of data that need to be written into HBase. When using the BufferedMutator till now the effect was that records would remain in the write buffer until the buffer was full or an explicit flush was triggered. In practice this would mean that the 'last few records' of a burst would remain in the write buffer until the next burst arrives filling the buffer to capacity and thus triggering a flush.


---

* [HBASE-19358](https://issues.apache.org/jira/browse/HBASE-19358) | *Major* | **Improve the stability of splitting log when do fail over**

After HBASE-19358 we introduced a new property hbase.split.writer.creation.bounded to limit the opening writers for each WALSplitter. If set to true, we won't open any writer for recovered.edits until the entries accumulated in memory reaching hbase.regionserver.hlog.splitlog.buffersize (which defaults at 128M) and will write and close the file in one go instead of keeping the writer open. It's false by default and we recommend to set it to true if your cluster has a high region load (like more than 300 regions per RS), especially when you observed obvious NN/HDFS slow down during hbase (single RS or cluster) failover.


---

* [HBASE-19483](https://issues.apache.org/jira/browse/HBASE-19483) | *Major* | **Add proper privilege check for rsgroup commands**

This JIRA aims at refactoring AccessController, using ACL as core library in CPs.
1. Stripping out a public class AccessChecker from AccessController, using ACL as core library in CPs. AccessChecker don't have any dependency on anything CP related. Create it's instance from other CPS.
2. Change the default value of hbase.security.authorization to false.
3. Don't use CP hooks to check access in RSGroup. Use the access checker instance directly in functions of RSGroupAdminServiceImpl.


---

* [HBASE-19769](https://issues.apache.org/jira/browse/HBASE-19769) | *Critical* | **IllegalAccessError on package-private Hadoop metrics2 classes in MapReduce jobs**

Client-side ZooKeeper metrics which were added to 2.0.0 alpha/beta releases cause issues when launching MapReduce jobs via {{yarn jar}} on the command line. This stems from ClassLoader separation issues that YARN implements. It was chosen that the easiest solution was to remove these ZooKeeper metrics entirely.


---

* [HBASE-11409](https://issues.apache.org/jira/browse/HBASE-11409) | *Major* | **Add more flexibility for input directory structure to LoadIncrementalHFiles**

Allows for users to bulk load entire tables from hdfs by specifying the parameter -loadTable.  This allows you to pass in a table level directory and have all regions column families bulk loaded, if you do not specify the -loadTable parameter LoadIncrementalHFiles will work as before. Note: you must have a pre-created table to run with -loadTable it will not create one for you.


---

* [HBASE-19163](https://issues.apache.org/jira/browse/HBASE-19163) | *Major* | **"Maximum lock count exceeded" from region server's batch processing**

When there are many mutations against the same row in a batch, as each mutation will acquire a shared row lock, it will exceed the maximum shared lock count the java ReadWritelock supports (64k). Along with other optimization, the batch is divided into multiple possible minibatches. A new config is added to limit the maximum number of mutations in the minibatch.

   \<property\>
    \<name\>hbase.regionserver.minibatch.size\</name\>
    \<value\>20000\</value\>
   \</property\>
The default value is 20000.


---

* [HBASE-15321](https://issues.apache.org/jira/browse/HBASE-15321) | *Major* | **Ability to open a HRegion from hdfs snapshot.**

HRegion.openReadOnlyFileSystemHRegion() provides the ability to open HRegion from a read-only hdfs snapshot.  Because hdfs snapshots are read-only, no cleanup happens when using this API.


---

* [HBASE-19770](https://issues.apache.org/jira/browse/HBASE-19770) | *Critical* | **Add '--return-values' option to Shell to print return values of commands in interactive mode**

Introduces a new option to the HBase shell: -r, --return-values. When the shell is in "interactive" mode (default), the return value of shell commands are not returned to the user as they dirty the console output. For those who desire this functionality, the "--return-values" option restores the old functionality of the commands passing their return value to the user.


---

* [HBASE-19892](https://issues.apache.org/jira/browse/HBASE-19892) | *Major* | **Checking 'patch attach' and yetus 0.7.0 and move to Yetus 0.7.0**

Moved our internal yetus reference from 0.6.0 to 0.7.0. Concurrently, I changed hadoopqa to run with 0.7.0 (by editing the config in jenkins).


---

* [HBASE-19901](https://issues.apache.org/jira/browse/HBASE-19901) | *Major* | **Up yetus proclimit on nightlies**

Pass to yetus a dockermemlimit of 20G and a proclimit of 10000. Defaults are 4G and 1G respectively.


---

* [HBASE-19528](https://issues.apache.org/jira/browse/HBASE-19528) | *Major* | **Major Compaction Tool**

Tool allows you to compact a cluster with given concurrency of regionservers compacting at a given time.  If tool completes successfully everything requested for compaction will be compacted, regardless of region moves, splits and merges.


---

* [HBASE-19900](https://issues.apache.org/jira/browse/HBASE-19900) | *Critical* | **Region-level exception destroy the result of batch**

This fix makes the following changes to how client handle the both of action result and region exception.
1) honor the action result rather than region exception. If the action have both of true result and region exception, the action is fine as the exception is caused by other actions which are in the same region.
2) honor the action exception rather than region exception. If the action have both of action exception and region exception, we deal with the action exception only. If we also handle the region exception for the same action, it will introduce the negative count of actions in progress. The AsyncRequestFuture#waitUntilDone will block forever.


---

* [HBASE-20017](https://issues.apache.org/jira/browse/HBASE-20017) | *Blocker* | **BufferedMutatorImpl submit the same mutation repeatedly**

This change fixes multithreading issues in the implementation of BufferedMutator. BufferedMutator should not be used with 1.4 releases prior to 1.4.2.


---

* [HBASE-20048](https://issues.apache.org/jira/browse/HBASE-20048) | *Blocker* | **Revert serial replication feature**

Revert the serial replication feature from all branches. Plan to reimplement it soon and land onto 2.1 release line.


---

* [HBASE-20087](https://issues.apache.org/jira/browse/HBASE-20087) | *Major* | **Periodically attempt redeploy of regions in FAILED\_OPEN state**

The AssignmentManager will attempt to assign regions in FAILED\_OPEN state at an interval specified by the configuration setting "hbase.assignment.failed.open.retry.period", defaulting to 300000 (5 minutes). If a transient condition leads a region to repeatedly fail to open sufficient to transition into FAILED\_OPEN state, such as the temporary inability to satisfy a RSGroups assignment constraint after server failures, the retries may automatically redeploy the region without operator intervention. Set to 0 to disable and keep the old behavior where regions in FAILED\_OPEN state are left to operators to manually reassign.


---

* [HBASE-18864](https://issues.apache.org/jira/browse/HBASE-18864) | *Major* | **NullPointerException thrown when adding rows to a table from peer cluster, table with replication factor other than 0 or 1**

The only currently legal values for REPLICATION\_SCOPE in column schema are 0 (local) and 1 (global). This change enforces selection of only either of these values when setting the attribute using HColumnDescriptor.


---

* [HBASE-19024](https://issues.apache.org/jira/browse/HBASE-19024) | *Critical* | **Configurable default durability for synchronous WAL**

The default durability setting for the synchronous WAL is Durability.SYNC\_WAL, which triggers HDFS hflush() to flush edits to the datanodes. We also support Durability.FSYNC\_WAL, which instead triggers HDFS hsync() to flush \_and\_ fsync edits. This change introduces the new configuration setting "hbase.wal.hsync", defaulting to FALSE, that if set to TRUE changes the default durability setting for the synchronous WAL to  FSYNC\_WAL.



