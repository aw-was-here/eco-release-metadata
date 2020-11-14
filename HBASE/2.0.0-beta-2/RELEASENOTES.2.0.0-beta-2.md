
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
# Apache HBase  2.0.0-beta-2 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-19430](https://issues.apache.org/jira/browse/HBASE-19430) | *Major* | **Remove the SettableTimestamp and SettableSequenceId**

All the cells which are used in server side are of ExtendedCell now.


---

* [HBASE-19691](https://issues.apache.org/jira/browse/HBASE-19691) | *Critical* | **Do not require ADMIN permission for obtaining ClusterStatus**

This change reverts an unintentional requirement for global ADMIN permission to obtain cluster status from the active HMaster.


---

* [HBASE-19783](https://issues.apache.org/jira/browse/HBASE-19783) | *Minor* | **Change replication peer cluster key/endpoint from a not-null value to null is not allowed**

To reduce the confusing behavior, now when you call updatePeerConfig with empty ClusterKey or ReplicationEndpointImpl, but the value of field of the to-be-updated ReplicationPeerConfig is not null, we will throw exception instead of ignoring them.


---

* [HBASE-19769](https://issues.apache.org/jira/browse/HBASE-19769) | *Critical* | **IllegalAccessError on package-private Hadoop metrics2 classes in MapReduce jobs**

Client-side ZooKeeper metrics which were added to 2.0.0 alpha/beta releases cause issues when launching MapReduce jobs via {{yarn jar}} on the command line. This stems from ClassLoader separation issues that YARN implements. It was chosen that the easiest solution was to remove these ZooKeeper metrics entirely.


---

* [HBASE-19739](https://issues.apache.org/jira/browse/HBASE-19739) | *Minor* | **Include thrift IDL files in HBase binary distribution**

Thrift IDLs are now shipped, bundled up in the respective hbase-\*thrift.jars (look for files ending in .thrift).


---

* [HBASE-15321](https://issues.apache.org/jira/browse/HBASE-15321) | *Major* | **Ability to open a HRegion from hdfs snapshot.**

HRegion.openReadOnlyFileSystemHRegion() provides the ability to open HRegion from a read-only hdfs snapshot.  Because hdfs snapshots are read-only, no cleanup happens when using this API.


---

* [HBASE-19770](https://issues.apache.org/jira/browse/HBASE-19770) | *Critical* | **Add '--return-values' option to Shell to print return values of commands in interactive mode**

Introduces a new option to the HBase shell: -r, --return-values. When the shell is in "interactive" mode (default), the return value of shell commands are not returned to the user as they dirty the console output. For those who desire this functionality, the "--return-values" option restores the old functionality of the commands passing their return value to the user.


---

* [HBASE-19873](https://issues.apache.org/jira/browse/HBASE-19873) | *Major* | **Add a CategoryBasedTimeout ClassRule for all UTs**

Along with @category -- small, medium, large -- all hbase tests must now carry a ClassRule as follows:

+  @ClassRule
+  public static final HBaseClassTestRule CLASS\_RULE =
+      HBaseClassTestRule.forClass(TestInterfaceAudienceAnnotations.class);

where the class changes by test.

Currently the classrule enforces timeout for the whole test suite -- i.e. if a SmallTest Category then all the tests in the TestSuite must complete inside 60seconds, the timeout we set on SmallTest Category test suite -- but is meant to be a repository for general, runtime, hbase test facility.


---

* [HBASE-19892](https://issues.apache.org/jira/browse/HBASE-19892) | *Major* | **Checking 'patch attach' and yetus 0.7.0 and move to Yetus 0.7.0**

Moved our internal yetus reference from 0.6.0 to 0.7.0. Concurrently, I changed hadoopqa to run with 0.7.0 (by editing the config in jenkins).


---

* [HBASE-19911](https://issues.apache.org/jira/browse/HBASE-19911) | *Major* | **Convert some tests from small to medium because they are timing out: TestNettyRpcServer, TestClientClusterStatus, TestCheckTestClasses**

Changed a few tests so they are medium sized rather than small size.

Also, upped the time we wait on small tests to 60seconds from 30seconds. Small tests are tests that run in 15seconds or less. What we changed was the timeout watcher. It is now more lax, more tolerant of dodgy infrastructure that might be running tests slowly.


---

* [HBASE-19912](https://issues.apache.org/jira/browse/HBASE-19912) | *Minor* | **The flag "writeToWAL" of Region#checkAndRowMutate is useless**

Remove useless 'writeToWAL' flag of Region#checkAndRowMutate & related class


---

* [HBASE-19901](https://issues.apache.org/jira/browse/HBASE-19901) | *Major* | **Up yetus proclimit on nightlies**

Pass to yetus a dockermemlimit of 20G and a proclimit of 10000. Defaults are 4G and 1G respectively.


---

* [HBASE-19919](https://issues.apache.org/jira/browse/HBASE-19919) | *Major* | **Tidying up logging**

(I thought this change innocuous but I made work for a co-worker when I upped interval between log cleaner runs -- meant a smoke test failed because we were slow doing an expected cleanup).

Edit of log lines removing redundancy. Shorten thread names shown in log.  Made some log TRACE instead of DEBUG.  Capitalizations.

Upped log cleaner interval from every minute to every ten minutes. hbase.master.cleaner.interval

Lowered default count of threads started by Procedure Executor from count of CPUs to 1/4 of count of CPUs.


---

* [HBASE-19528](https://issues.apache.org/jira/browse/HBASE-19528) | *Major* | **Major Compaction Tool**

Tool allows you to compact a cluster with given concurrency of regionservers compacting at a given time.  If tool completes successfully everything requested for compaction will be compacted, regardless of region moves, splits and merges.


---

* [HBASE-19841](https://issues.apache.org/jira/browse/HBASE-19841) | *Major* | **Tests against hadoop3 fail with StreamLacksCapabilityException**

HBaseTestingUtility now assumes that all clusters will use local storage until a MiniDFSCluster is started or assigned.


---

* [HBASE-19900](https://issues.apache.org/jira/browse/HBASE-19900) | *Critical* | **Region-level exception destroy the result of batch**

This fix makes the following changes to how client handle the both of action result and region exception.
1) honor the action result rather than region exception. If the action have both of true result and region exception, the action is fine as the exception is caused by other actions which are in the same region.
2) honor the action exception rather than region exception. If the action have both of action exception and region exception, we deal with the action exception only. If we also handle the region exception for the same action, it will introduce the negative count of actions in progress. The AsyncRequestFuture#waitUntilDone will block forever.


---

* [HBASE-16060](https://issues.apache.org/jira/browse/HBASE-16060) | *Blocker* | **1.x clients cannot access table state talking to 2.0 cluster**

By default, we mirror table state to zookeeper so hbase-1.x clients will work against an hbase-2 cluster (With this patch, hbase-1.x clients can do most Admin functions including table create; hbase-1.x clients can do all Table/DML against hbase-2 cluster).

Flag to disable mirroring is hbase.mirror.table.state.to.zookeeper; set it to false in Configuration.

Related, Master on startup will look to see if there are table state znodes left over by an hbase-1 instance. If any found, it will migrate the table state to hbase-2 setting the state into the hbase:meta table where table state is now kept. We will do this check on every Master start. Notion is that this will be overall beneficial with low impediment. To disable the migration check, set hbase.migrate.table.state.from.zookeeper to false.


---

* [HBASE-19948](https://issues.apache.org/jira/browse/HBASE-19948) | *Major* | **Since HBASE-19873, HBaseClassTestRule, Small/Medium/Large has different semantic**

In subtask, fixed doc and annotations to be more explicit that test timings are for the whole Test Fixture/Test Class/Test Suite NOT the test method only as we'd measuring up to this (tother subtasks untethered Categorization and test timeout such that all categories now have a ten minute timeout -- no test can run longer than ten minutes or it gets killed/timedout).


---

* [HBASE-19116](https://issues.apache.org/jira/browse/HBASE-19116) | *Critical* | **Currently the tail of hfiles with CellComparator\* classname makes it so hbase1 can't open hbase2 written hfiles; fix**

hbase-2.x sets KeyValue Comparators into the tail of hfiles rather than CellComparator, what it uses internally, just so hbase-1.x can continue to read hbase-2.x written hfiles.


---

* [HBASE-18294](https://issues.apache.org/jira/browse/HBASE-18294) | *Major* | **Reduce global heap pressure: flush based on heap occupancy**

A region is flushed if its memory component exceeds the region flush threshold.
A flush policy decides which stores to flush by comparing the size of the store to a column-family-flush threshold.
If the overall size of all memstores in the machine exceeds the bounds defined by the administrator (denoted global pressure) a region is selected and flushed. 
HBASE-18294 changes flush decisions to be based on heap-occupancy and not data (key-value) size, consistently across levels. This rolls back some of the changes by HBASE-16747. Specifically,
(1) RSs, Regions and stores track their overall on-heap and off-heap occupancy,
(2) A region is flushed when its on-heap+off-heap size exceeds the region flush threshold specified in hbase.hregion.memstore.flush.size,
(3) The store to be flushed is chosen based on its on-heap+off-heap size 
(4) At the RS level, a flush is triggered when the overall on-heap exceeds the on-heap limit, or when the overall off-heap size exceeds the off-heap limit (low/high water marks).

Note that when the region flush size is set to XXmb a region flush may be triggered even before writing keys and values of size XX because the total heap occupancy of the region which includes additional metadata exceeded the threshold.


---

* [HBASE-19978](https://issues.apache.org/jira/browse/HBASE-19978) | *Major* | **The keepalive logic is incomplete in ProcedureExecutor**

Completes keep-alive logic and then enables it; ProcedureExecutor Workers will spin up more threads when need settling back to the core count after the burst in demand has passed. Default keep-alive is one minute. Default core-count is CPUs/4 or 16, which ever is greater. Maximum is an arbitrary core-count \* 10 (a limit that should never be hit and if it is, there is something else very wrong).


---

* [HBASE-20020](https://issues.apache.org/jira/browse/HBASE-20020) | *Critical* | **Make sure we throw DoNotRetryIOException when ConnectionImplementation is closed**

Add checkClosed to core Client methods. Avoid unnecessary retry.


---

* [HBASE-20014](https://issues.apache.org/jira/browse/HBASE-20014) | *Major* | **TestAdmin1 Times out**

Ups the overall test timeout from 10 minutes to 13minutes. 15minutes is the surefire timeout.


---

* [HBASE-20032](https://issues.apache.org/jira/browse/HBASE-20032) | *Minor* | **Receving multiple warnings for missing reporting.plugins.plugin.version**

Add (latest) version elements missing from reporting plugins in top-level pom.


---

* [HBASE-18596](https://issues.apache.org/jira/browse/HBASE-18596) | *Blocker* | **[TEST] A hbase1 cluster should be able to replicate to a hbase2 cluster; verify**

Replication between versions verified as basically working. 0.98.25-SNAPSHOT to beta-2 hbase2 and a 1.2-ish version tried.


---

* [HBASE-19166](https://issues.apache.org/jira/browse/HBASE-19166) | *Blocker* | **AsyncProtobufLogWriter persists ProtobufLogWriter as class name for backward compatibility**

For backward compatibility, AsyncProtobufLogWriter uses "ProtobufLogWriter" as writer class name and SecureAsyncProtobufLogWriter uses "SecureProtobufLogWriter" as writer class name.


---

* [HBASE-20048](https://issues.apache.org/jira/browse/HBASE-20048) | *Blocker* | **Revert serial replication feature**

Revert the serial replication feature from all branches. Plan to reimplement it soon and land onto 2.1 release line.


---

* [HBASE-19400](https://issues.apache.org/jira/browse/HBASE-19400) | *Major* | **Add missing security checks in MasterRpcServices**

Added ACL check to following Admin functions:
enableCatalogJanitor, runCatalogJanitor, cleanerChoreSwitch, runCleanerChore, execProcedure, execProcedureWithReturn, normalize, normalizerSwitch, coprocessorService.
When ACL is enabled, only those with ADMIN rights will be able to invoke these operations successfully.


---

* [HBASE-19954](https://issues.apache.org/jira/browse/HBASE-19954) | *Major* | **Separate TestBlockReorder into individual tests to avoid ShutdownHook suppression error against hadoop3**

hadoop3 minidfscluster removes all shutdown handlers when the cluster goes down which made this test that does FS-stuff fail (Fix was to break up the test so each test method ran with an unadulterated FS).



