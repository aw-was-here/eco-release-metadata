
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
# Apache HBase Changelog

## Release 0.92.1 - 2012-03-17



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-4970](https://issues.apache.org/jira/browse/HBASE-4970) | Add a parameter so that keepAliveTime of Htable thread pool can be changed |  Trivial | Client | gaojinchao | gaojinchao |
| [HBASE-5255](https://issues.apache.org/jira/browse/HBASE-5255) | Use singletons for OperationStatus to save memory |  Minor | regionserver | Benoit Sigoure | Benoit Sigoure |
| [HBASE-5358](https://issues.apache.org/jira/browse/HBASE-5358) | HBaseObjectWritable should be able to serialize/deserialize generic arrays |  Major | Coprocessors, io | Enis Soztutar | Enis Soztutar |
| [HBASE-5363](https://issues.apache.org/jira/browse/HBASE-5363) | Automatically run rat check on mvn release builds |  Major | build | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-5197](https://issues.apache.org/jira/browse/HBASE-5197) | [replication] Handle socket timeouts in ReplicationSource to prevent DDOS |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-5395](https://issues.apache.org/jira/browse/HBASE-5395) | CopyTable needs to use GenericOptionsParser |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-5393](https://issues.apache.org/jira/browse/HBASE-5393) | Consider splitting after flushing |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-5421](https://issues.apache.org/jira/browse/HBASE-5421) | use hadoop-client/hadoop-minicluster artifacts for Hadoop 0.23 build |  Minor | build | Shaneal Manek | Shaneal Manek |
| [HBASE-5209](https://issues.apache.org/jira/browse/HBASE-5209) | HConnection/HMasterInterface should allow for way to get hostname of currently active master in multi-master HBase setup |  Major | master | Aditya Acharya | David S. Wang |
| [HBASE-5325](https://issues.apache.org/jira/browse/HBASE-5325) | Expose basic information about the master-status through jmx beans |  Minor | . | Hitesh Shah | Hitesh Shah |
| [HBASE-5483](https://issues.apache.org/jira/browse/HBASE-5483) | Allow configurable host to bind to for starting REST server from commandline |  Minor | REST | Dan Rosher |  |
| [HBASE-5491](https://issues.apache.org/jira/browse/HBASE-5491) | Remove HBaseConfiguration.create() call from coprocessor.Exec class |  Major | Coprocessors | Honghua Zhu |  |
| [HBASE-5489](https://issues.apache.org/jira/browse/HBASE-5489) | Add HTable accessor to get regions for a key range |  Minor | Client | David S. Wang | David S. Wang |
| [HBASE-6124](https://issues.apache.org/jira/browse/HBASE-6124) | Backport HBASE-6033 to 0.90, 0.92 and 0.94 |  Minor | . | Jimmy Xiang | Jimmy Xiang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-5009](https://issues.apache.org/jira/browse/HBASE-5009) | Failure of creating split dir if it already exists prevents splits from happening further |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-5121](https://issues.apache.org/jira/browse/HBASE-5121) | MajorCompaction may affect scan's correctness |  Critical | regionserver | chunhui shen | chunhui shen |
| [HBASE-5176](https://issues.apache.org/jira/browse/HBASE-5176) | AssignmentManager#getRegion: logging nit  adds a redundant '+' |  Minor | . | Karthik K | Karthik K |
| [HBASE-5228](https://issues.apache.org/jira/browse/HBASE-5228) | [REST] Rip out "transform" feature |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-3796](https://issues.apache.org/jira/browse/HBASE-3796) | Per-Store Entries in Compaction Queue |  Minor | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-5278](https://issues.apache.org/jira/browse/HBASE-5278) | HBase shell script refers to removed "migrate" functionality |  Trivial | scripts | Shaneal Manek | Shaneal Manek |
| [HBASE-5235](https://issues.apache.org/jira/browse/HBASE-5235) | HLogSplitter writer thread's streams not getting closed when any of the writer threads has exceptions. |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-5243](https://issues.apache.org/jira/browse/HBASE-5243) | LogSyncerThread not getting shutdown waiting for the interrupted flag |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-5237](https://issues.apache.org/jira/browse/HBASE-5237) | Addendum for HBASE-5160 and HBASE-4397 |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-5282](https://issues.apache.org/jira/browse/HBASE-5282) | Possible file handle leak with truncated HLog file. |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-5307](https://issues.apache.org/jira/browse/HBASE-5307) | Unable to gracefully decommission a node because of script error |  Major | scripts | Yifeng Jiang |  |
| [HBASE-5212](https://issues.apache.org/jira/browse/HBASE-5212) | Fix test TestTableMapReduce against 0.23. |  Major | . | Mahadev konar | Gregory Chanan |
| [HBASE-5191](https://issues.apache.org/jira/browse/HBASE-5191) | Fix compilation error against hadoop 0.23.1 |  Major | . | Ted Yu |  |
| [HBASE-5345](https://issues.apache.org/jira/browse/HBASE-5345) | CheckAndPut doesn't work when value is empty byte[] |  Major | . | Evert Arckens | Evert Arckens |
| [HBASE-5288](https://issues.apache.org/jira/browse/HBASE-5288) | Security source code dirs missing from 0.92.0 release tarballs. |  Blocker | build | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-5364](https://issues.apache.org/jira/browse/HBASE-5364) | Fix source files missing licenses in 0.92 and trunk |  Blocker | . | Jonathan Hsieh | Elliott Clark |
| [HBASE-5398](https://issues.apache.org/jira/browse/HBASE-5398) | HBase shell disable\_all/enable\_all/drop\_all promp wrong tables for confirmation |  Major | scripts | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5327](https://issues.apache.org/jira/browse/HBASE-5327) | Print a message when an invalid hbase.rootdir is passed |  Major | . | Jean-Daniel Cryans | Jimmy Xiang |
| [HBASE-5267](https://issues.apache.org/jira/browse/HBASE-5267) | Add a configuration to disable the slab cache by default |  Blocker | . | Jean-Daniel Cryans | Li Pi |
| [HBASE-5271](https://issues.apache.org/jira/browse/HBASE-5271) | Result.getValue and Result.getColumnLatest return the wrong column. |  Major | Client | Ghais Issa | Ghais Issa |
| [HBASE-5195](https://issues.apache.org/jira/browse/HBASE-5195) | [Coprocessors] preGet hook does not allow overriding or wrapping filter on incoming Get |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-5420](https://issues.apache.org/jira/browse/HBASE-5420) | TestImportTsv does not shut down MR Cluster correctly (fails against 0.23 hadoop) |  Major | test | Gregory Chanan | Gregory Chanan |
| [HBASE-5200](https://issues.apache.org/jira/browse/HBASE-5200) | AM.ProcessRegionInTransition() and AM.handleRegion() race thus leaving the region assignment inconsistent |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-5003](https://issues.apache.org/jira/browse/HBASE-5003) | If the master is started with a wrong root dir, it gets stuck and can't be killed |  Critical | . | Jean-Daniel Cryans | Shaneal Manek |
| [HBASE-5422](https://issues.apache.org/jira/browse/HBASE-5422) | StartupBulkAssigner would cause a lot of timeout on RIT when assigning large numbers of regions (timeout = 3 mins) |  Major | master | chunhui shen | chunhui shen |
| [HBASE-5279](https://issues.apache.org/jira/browse/HBASE-5279) | NPE in Master after upgrading to 0.92.0 |  Critical | master | Tobias Herbert | Tobias Herbert |
| [HBASE-5415](https://issues.apache.org/jira/browse/HBASE-5415) | FSTableDescriptors should handle random folders in hbase.root.dir better |  Critical | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-5466](https://issues.apache.org/jira/browse/HBASE-5466) | Opening a table also opens the metatable and never closes it. |  Major | Client | Ashley Taylor | Ashley Taylor |
| [HBASE-5351](https://issues.apache.org/jira/browse/HBASE-5351) | hbase completebulkload to a new table fails in a race |  Major | mapreduce | Gregory Chanan | Gregory Chanan |
| [HBASE-5481](https://issues.apache.org/jira/browse/HBASE-5481) | Uncaught UnknownHostException prevents HBase from starting |  Major | regionserver | Benoit Sigoure | Benoit Sigoure |
| [HBASE-5477](https://issues.apache.org/jira/browse/HBASE-5477) | Cannot build RPM for hbase-0.92.0 |  Major | . | Benjamin Lee |  |
| [HBASE-5502](https://issues.apache.org/jira/browse/HBASE-5502) | region\_mover.rb fails to load regions back to original server for regions only containing empty tables. |  Minor | scripts | James Page |  |
| [HBASE-5317](https://issues.apache.org/jira/browse/HBASE-5317) | Fix TestHFileOutputFormat to work against hadoop 0.23 |  Major | test | Gregory Chanan | Gregory Chanan |
| [HBASE-5430](https://issues.apache.org/jira/browse/HBASE-5430) | Fix licenses in 0.92.1 -- RAT plugin won't pass |  Blocker | . | stack | stack |
| [HBASE-5286](https://issues.apache.org/jira/browse/HBASE-5286) | bin/hbase's logic of adding Hadoop jar files to the classpath is fragile when presented with split packaged Hadoop 0.23 installation |  Major | scripts | Roman Shaposhnik | Roman Shaposhnik |
| [HBASE-5524](https://issues.apache.org/jira/browse/HBASE-5524) | Add a couple of more filters to our rat exclusion set |  Major | . | stack | stack |
| [HBASE-5522](https://issues.apache.org/jira/browse/HBASE-5522) | hbase 0.92 test artifacts are missing from Maven central |  Major | build | Roman Shaposhnik | stack |
| [HBASE-5537](https://issues.apache.org/jira/browse/HBASE-5537) | MXBean shouldn't have a dependence on InterfaceStability until 0.96 |  Major | . | Jean-Daniel Cryans | stack |
| [HBASE-4890](https://issues.apache.org/jira/browse/HBASE-4890) | fix possible NPE in HConnectionManager |  Blocker | . | Jonathan Hsieh | stack |
| [HBASE-5552](https://issues.apache.org/jira/browse/HBASE-5552) | Clean up our jmx view; its a bit of a mess |  Blocker | . | stack | stack |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-5223](https://issues.apache.org/jira/browse/HBASE-5223) | TestMetaReaderEditor is missing call to CatalogTracker.stop() |  Major | . | Ted Yu | Ted Yu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-5096](https://issues.apache.org/jira/browse/HBASE-5096) | Replication does not handle deletes correctly. |  Major | Replication | Lars Hofhansl | Lars Hofhansl |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-5427](https://issues.apache.org/jira/browse/HBASE-5427) | Upgrade our zk to 3.4.3 |  Major | . | stack | stack |
| [HBASE-5294](https://issues.apache.org/jira/browse/HBASE-5294) | Make sure javadoc is included in tarball bundle when we release |  Critical | . | stack | Shaneal Manek |
| [HBASE-5432](https://issues.apache.org/jira/browse/HBASE-5432) | Hunk missed applying 'hbase-5255 Use singletons for OperationStatus to save memory' |  Major | . | stack | stack |
| [HBASE-5511](https://issues.apache.org/jira/browse/HBASE-5511) | More doc on maven release process |  Major | . | stack | stack |


