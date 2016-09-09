
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

## Release 0.89-fb - Unreleased (as of 2016-09-08)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-6212](https://issues.apache.org/jira/browse/HBASE-6212) | [89-fb] Allow WAL to be disabled perTable. |  Minor | . | Amitanand Aiyer | Amitanand Aiyer |
| [HBASE-6980](https://issues.apache.org/jira/browse/HBASE-6980) | Parallel Flushing Of Memstores [89-fb] |  Major | . | Kannan Muthukkaruppan | Kannan Muthukkaruppan |
| [HBASE-5783](https://issues.apache.org/jira/browse/HBASE-5783) | Faster HBase bulk loader |  Major | Client, IPC/RPC, Performance, regionserver | Karthik Ranganathan | Amitanand Aiyer |
| [HBASE-7424](https://issues.apache.org/jira/browse/HBASE-7424) | Enable the DeltaEncoding for the HFileOutputFormat |  Minor | . | Manukranth Kolloju |  |
| [HBASE-6629](https://issues.apache.org/jira/browse/HBASE-6629) | [0.89-fb] Fast fail client operations if the regionserver is repeatedly unreachable. |  Minor | . | Amitanand Aiyer | Amitanand Aiyer |
| [HBASE-8307](https://issues.apache.org/jira/browse/HBASE-8307) | Adding a Histogram utility which captures data and creates a histogram. |  Minor | metrics | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-8185](https://issues.apache.org/jira/browse/HBASE-8185) | Feature to enable Client Side Scanning(Client side merging) in HBase. |  Major | regionserver | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-8544](https://issues.apache.org/jira/browse/HBASE-8544) | Add a utility to reload configurations in Region Server |  Major | . | Gaurav Menghani | Gaurav Menghani |
| [HBASE-8576](https://issues.apache.org/jira/browse/HBASE-8576) | [89-fb] Allow individual classes to get notified when Configuration is reloaded |  Major | . | Gaurav Menghani | Gaurav Menghani |
| [HBASE-6967](https://issues.apache.org/jira/browse/HBASE-6967) | [89-fb] Introduce a hook in StoreScanner to allow aggregation of KeyValues in a single row. |  Minor | . | Adela Maznikar | Adela Maznikar |
| [HBASE-7099](https://issues.apache.org/jira/browse/HBASE-7099) | [89-fb] Create compaction hooks |  Major | . | Adela Maznikar | Adela Maznikar |
| [HBASE-9325](https://issues.apache.org/jira/browse/HBASE-9325) | Add functionality to flush and wait and use it in ClientLocalScanner |  Minor | Client | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-10437](https://issues.apache.org/jira/browse/HBASE-10437) | Integrating CompoundRowPrefixFilter with RowPrefixBloomFilter |  Minor | Scanners | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-10027](https://issues.apache.org/jira/browse/HBASE-10027) | CompoundRowPrefixFilter |  Major | Filters | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-10939](https://issues.apache.org/jira/browse/HBASE-10939) | [89-fb] Adding a rack in HBase in online fashion |  Major | Region Assignment | Adela Maznikar | Adela Maznikar |
| [HBASE-10940](https://issues.apache.org/jira/browse/HBASE-10940) | [0.89-fb] Rebalance primaries in-non disruptive way |  Major | Region Assignment | Adela Maznikar | Adela Maznikar |
| [HBASE-10291](https://issues.apache.org/jira/browse/HBASE-10291) | Schema aware L2 BucketCache metrics |  Minor | regionserver | Arjen Roodselaar | Arjen Roodselaar |
| [HBASE-10905](https://issues.apache.org/jira/browse/HBASE-10905) | [0.89-fb] Be able to query a region location through the (Thrift)HRegionInterface |  Major | . | Gaurav Menghani | Gaurav Menghani |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-5494](https://issues.apache.org/jira/browse/HBASE-5494) | Introduce a zk hosted table-wide read/write lock so only one table operation at a time |  Major | . | stack | Alex Feinberg |
| [HBASE-5941](https://issues.apache.org/jira/browse/HBASE-5941) | improve multiDelete performance by grabbing locks ahead of time |  Minor | regionserver | Amitanand Aiyer | Amitanand Aiyer |
| [HBASE-6278](https://issues.apache.org/jira/browse/HBASE-6278) | Allow table splits during a MapReduce job to be parameterized the same way as we parameterize the splitAlgorithm during table creation. |  Minor | . | Amitanand Aiyer | Amitanand Aiyer |
| [HBASE-6508](https://issues.apache.org/jira/browse/HBASE-6508) | [0.89-fb] Filter out edits at log split time |  Major | master, regionserver, wal | Alex Feinberg | Alex Feinberg |
| [HBASE-6374](https://issues.apache.org/jira/browse/HBASE-6374) | [89-fb] Unify the multi-put/get/delete path so there is only one call to each RS, instead of one call per region |  Minor | . | Amitanand Aiyer | Amitanand Aiyer |
| [HBASE-5991](https://issues.apache.org/jira/browse/HBASE-5991) | Introduce sequential ZNode based read/write locks |  Major | . | Alex Feinberg | Alex Feinberg |
| [HBASE-6640](https://issues.apache.org/jira/browse/HBASE-6640) | [0.89-fb] Allow multiple regions to be opened simultaneously |  Critical | . | Amitanand Aiyer | Amitanand Aiyer |
| [HBASE-6605](https://issues.apache.org/jira/browse/HBASE-6605) | [0.89-fb] Allow bulk loading to continue past failures. |  Minor | . | Amitanand Aiyer | Amitanand Aiyer |
| [HBASE-6451](https://issues.apache.org/jira/browse/HBASE-6451) | Integrate getRegionServerWithRetries  and getRegionServerWithoutRetries |  Minor | . | Amitanand Aiyer | Amitanand Aiyer |
| [HBASE-6813](https://issues.apache.org/jira/browse/HBASE-6813) | Optimise the time spent holding the updateLock under log roll |  Minor | . | Amitanand Aiyer | Amitanand Aiyer |
| [HBASE-8805](https://issues.apache.org/jira/browse/HBASE-8805) | [89-fb] Allow compaction related configurations to be reloaded on-the-fly |  Major | . | Gaurav Menghani | Gaurav Menghani |
| [HBASE-8114](https://issues.apache.org/jira/browse/HBASE-8114) | [89-fb] Interrupt the server processing rpc call when client has closed the connection |  Major | . | Adela Maznikar | Adela Maznikar |
| [HBASE-5032](https://issues.apache.org/jira/browse/HBASE-5032) | Add other DELETE type information into the delete bloom filter to optimize the time range query |  Major | . | Liyin Tang | Adela Maznikar |
| [HBASE-8688](https://issues.apache.org/jira/browse/HBASE-8688) | Add a choice for single/multiple throttler for callqueue |  Major | . | Adela Maznikar | Adela Maznikar |
| [HBASE-3149](https://issues.apache.org/jira/browse/HBASE-3149) | Make flush decisions per column family |  Critical | regionserver | Karthik Ranganathan | Gaurav Menghani |
| [HBASE-10865](https://issues.apache.org/jira/browse/HBASE-10865) | Store per table server assignment preference |  Major | Admin, master, Region Assignment | Elliott Clark | Elliott Clark |
| [HBASE-10975](https://issues.apache.org/jira/browse/HBASE-10975) | [89-fb] HTableMultiplexer to use executor |  Minor | . | Adela Maznikar | Adela Maznikar |
| [HBASE-10894](https://issues.apache.org/jira/browse/HBASE-10894) | Add mock implementations for HTableInterface for facilitating mock testing |  Trivial | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-10891](https://issues.apache.org/jira/browse/HBASE-10891) | Add socks proxy support to hbase clients. |  Trivial | IPC/RPC | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-10759](https://issues.apache.org/jira/browse/HBASE-10759) | Use Guava Lexicographic comparator : Backporting |  Minor | regionserver | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-10236](https://issues.apache.org/jira/browse/HBASE-10236) | Avoid creating extra Invoker objects when locating a region |  Trivial | Client | Gaurav Menghani | Gaurav Menghani |
| [HBASE-10698](https://issues.apache.org/jira/browse/HBASE-10698) | Update the HBase.thrift file to work with the Thift2 C++ Client |  Major | . | Gaurav Menghani | Gaurav Menghani |
| [HBASE-11343](https://issues.apache.org/jira/browse/HBASE-11343) | Writing the RootRegionLocation znode in thrift format. |  Minor | . | Manukranth Kolloju | Manukranth Kolloju |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-4645](https://issues.apache.org/jira/browse/HBASE-4645) | Edits Log recovery losing data across column families |  Major | . | Amitanand Aiyer | Amitanand Aiyer |
| [HBASE-4823](https://issues.apache.org/jira/browse/HBASE-4823) | long running scans lose benefit of bloomfilters and timerange hints |  Major | . | Kannan Muthukkaruppan | Amitanand Aiyer |
| [HBASE-6035](https://issues.apache.org/jira/browse/HBASE-6035) | [0.89-fb] region\_status.rb does not count total regions correctly, when favornodes are used |  Major | . | Amitanand Aiyer | Amitanand Aiyer |
| [HBASE-6590](https://issues.apache.org/jira/browse/HBASE-6590) | [0.89-fb] Assign sequence number to bulk loaded data |  Minor | . | Amitanand Aiyer | Amitanand Aiyer |
| [HBASE-6727](https://issues.apache.org/jira/browse/HBASE-6727) | [89-fb] allow HBaseServers's callqueue to be better configurable to avoid OOMs |  Major | . | Kannan Muthukkaruppan | Adela Maznikar |
| [HBASE-6388](https://issues.apache.org/jira/browse/HBASE-6388) | Avoid potential data loss if the flush fails during regionserver shutdown |  Critical | . | Amitanand Aiyer | Amitanand Aiyer |
| [HBASE-6840](https://issues.apache.org/jira/browse/HBASE-6840) | SplitLogManager should reassign tasks even on a clean RS shutdown. |  Minor | . | Amitanand Aiyer | Amitanand Aiyer |
| [HBASE-8082](https://issues.apache.org/jira/browse/HBASE-8082) | Fixing NullPointerException in org.apache.hadoop.hbase.regionserver.HRegion.RegionScanner.nextRows. |  Blocker | regionserver | Manukranth Kolloju |  |
| [HBASE-7198](https://issues.apache.org/jira/browse/HBASE-7198) | fix lastSeqId logic in regionserver |  Minor | . | Amitanand Aiyer | Amitanand Aiyer |
| [HBASE-8206](https://issues.apache.org/jira/browse/HBASE-8206) | Thread safety issues with Compression.Algorithm.GZ and SNAPPY |  Minor | . | Manukranth Kolloju |  |
| [HBASE-8216](https://issues.apache.org/jira/browse/HBASE-8216) | Be able to differentiate Power failures from Rack switch reboot |  Minor | . | Amitanand Aiyer | Amitanand Aiyer |
| [HBASE-8476](https://issues.apache.org/jira/browse/HBASE-8476) | locateRegionInMeta should check the cache before doing the prefetch |  Minor | . | Amitanand Aiyer | Himanshu Vashishtha |
| [HBASE-8491](https://issues.apache.org/jira/browse/HBASE-8491) | Fixing the TestHeapSizes. |  Trivial | . | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-9114](https://issues.apache.org/jira/browse/HBASE-9114) | Fix TestChangingEncoding |  Minor | master | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-9219](https://issues.apache.org/jira/browse/HBASE-9219) | Fix TestMergeMeta and TestMergeTable |  Trivial | . | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-9949](https://issues.apache.org/jira/browse/HBASE-9949) | Fix the race condition between Compaction and StoreScanner.init |  Minor | Scanners | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-10464](https://issues.apache.org/jira/browse/HBASE-10464) | Race condition during RS shutdown that could cause data loss |  Critical | regionserver | Yunfan Zhong |  |
| [HBASE-10466](https://issues.apache.org/jira/browse/HBASE-10466) | Bugs that make flushes skipped during HRegion close could cause data loss |  Critical | regionserver | Yunfan Zhong |  |
| [HBASE-9828](https://issues.apache.org/jira/browse/HBASE-9828) | Fix the reflection call in SequenceFileLogReader |  Trivial | . | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-10875](https://issues.apache.org/jira/browse/HBASE-10875) | Remove GSon dependency |  Major | build, Region Assignment | Elliott Clark | Elliott Clark |
| [HBASE-10876](https://issues.apache.org/jira/browse/HBASE-10876) | Remove Avro Connector |  Major | build | Elliott Clark | Elliott Clark |
| [HBASE-10843](https://issues.apache.org/jira/browse/HBASE-10843) | Prepare HBase for java 8 |  Major | build | Elliott Clark | Elliott Clark |
| [HBASE-10904](https://issues.apache.org/jira/browse/HBASE-10904) | [89-FB] Add shell command support for creating tables on specific servers |  Major | shell | Elliott Clark | Elliott Clark |
| [HBASE-10907](https://issues.apache.org/jira/browse/HBASE-10907) | [0.89-fb] Fix rg.apache.hadoop.hbase.master.TestRegionPlacement.testRegionPlacement |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-10986](https://issues.apache.org/jira/browse/HBASE-10986) | [0.89-FB] Add timeouts to JUnit4 hanging tests. |  Major | build, test | Elliott Clark | Elliott Clark |
| [HBASE-10893](https://issues.apache.org/jira/browse/HBASE-10893) | Bug in Fast Diff Delta Block Encoding |  Major | Scanners | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-11187](https://issues.apache.org/jira/browse/HBASE-11187) | [89-fb] Limit the number of client threads per regionserver |  Major | Client | Elliott Clark | Elliott Clark |
| [HBASE-11258](https://issues.apache.org/jira/browse/HBASE-11258) | [0.89-fb] Pull in Integration Tests from open source 0.96/trunk |  Major | test | Elliott Clark | Elliott Clark |
| [HBASE-11265](https://issues.apache.org/jira/browse/HBASE-11265) | [89-fb] Remove shaded references to com.google |  Major | build | Elliott Clark | Elliott Clark |
| [HBASE-10747](https://issues.apache.org/jira/browse/HBASE-10747) | Fix the Online Config reload script to work with Swift |  Minor | . | Gaurav Menghani | Gaurav Menghani |
| [HBASE-10205](https://issues.apache.org/jira/browse/HBASE-10205) | ConcurrentModificationException in BucketAllocator |  Minor | regionserver | Arjen Roodselaar | Arjen Roodselaar |
| [HBASE-11379](https://issues.apache.org/jira/browse/HBASE-11379) | Force fix regioninfo in HBCK |  Minor | hbck | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-8936](https://issues.apache.org/jira/browse/HBASE-8936) | Fixing TestSplitLogWorker while running Jacoco tests. |  Trivial | . | Manukranth Kolloju | Manukranth Kolloju |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-6735](https://issues.apache.org/jira/browse/HBASE-6735) | [89-fb] Remove reflection from HBaseClient |  Minor | . | Michal Gregorczyk | Michal Gregorczyk |
| [HBASE-10959](https://issues.apache.org/jira/browse/HBASE-10959) | Packaging test sources jar |  Trivial | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-11228](https://issues.apache.org/jira/browse/HBASE-11228) | Adding HLogBenchmark |  Minor | test | Manukranth Kolloju | Manukranth Kolloju |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-6874](https://issues.apache.org/jira/browse/HBASE-6874) | Implement prefetching for scanners |  Major | . | Karthik Ranganathan | Karthik Ranganathan |
| [HBASE-6923](https://issues.apache.org/jira/browse/HBASE-6923) | Create scanner benchmark |  Major | . | Karthik Ranganathan | Karthik Ranganathan |
| [HBASE-6770](https://issues.apache.org/jira/browse/HBASE-6770) | Allow scanner setCaching to specify size instead of number of rows |  Major | Client, regionserver | Karthik Ranganathan | Chen Jin |
| [HBASE-9944](https://issues.apache.org/jira/browse/HBASE-9944) | Create an HBase C++ Thrift Client |  Major | . | Gaurav Menghani | Gaurav Menghani |
| [HBASE-10695](https://issues.apache.org/jira/browse/HBASE-10695) | Fix test failures related to Swift's merge with HBase |  Major | IPC/RPC | Gaurav Menghani | Gaurav Menghani |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8330](https://issues.apache.org/jira/browse/HBASE-8330) | What is the necessity of having a private ThreadLocal in FSReaderV2 |  Minor | HFile | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-8484](https://issues.apache.org/jira/browse/HBASE-8484) | Adding diagnostic messages when the RegionServer hists an IOException in RegionServerReport |  Trivial | regionserver | Manukranth Kolloju |  |


