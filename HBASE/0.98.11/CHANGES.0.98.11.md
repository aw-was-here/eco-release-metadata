
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

## Release 0.98.11 - 2015-03-09

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12869](https://issues.apache.org/jira/browse/HBASE-12869) | Add a REST API implementation of the ClusterManager interface |  Major | integration tests | Dima Spivak | Dima Spivak |
| [HBASE-9531](https://issues.apache.org/jira/browse/HBASE-9531) | a command line (hbase shell) interface to retreive the replication metrics and show replication lag |  Major | Replication | Demai Ni | Ashish Singhi |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13086](https://issues.apache.org/jira/browse/HBASE-13086) | Show ZK root node on Master WebUI |  Minor | master | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13080](https://issues.apache.org/jira/browse/HBASE-13080) | Hbase shell message containing extra quote at the end of error message. |  Trivial | . | Abhishek Kumar | Abhishek Kumar |
| [HBASE-13059](https://issues.apache.org/jira/browse/HBASE-13059) | Set executable bit for scripts in dev-support |  Trivial | scripts | Dima Spivak | Dima Spivak |
| [HBASE-13056](https://issues.apache.org/jira/browse/HBASE-13056) | Refactor table.jsp code to remove repeated code and make it easier to add new checks |  Major | . | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-13054](https://issues.apache.org/jira/browse/HBASE-13054) | Provide more tracing information for locking/latching events. |  Major | . | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [HBASE-13045](https://issues.apache.org/jira/browse/HBASE-13045) | Ensure MapReduce javadoc example works |  Minor | mapreduce | Sean Busbey | Sean Busbey |
| [HBASE-13044](https://issues.apache.org/jira/browse/HBASE-13044) | Configuration option for disabling coprocessor loading |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13008](https://issues.apache.org/jira/browse/HBASE-13008) | Better default for hbase.regionserver.regionSplitLimit parameter. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13002](https://issues.apache.org/jira/browse/HBASE-13002) | Make encryption cipher configurable |  Major | . | Ashish Singhi | Ashish Singhi |
| [HBASE-12997](https://issues.apache.org/jira/browse/HBASE-12997) | FSHLog should print pipeline on low replication |  Major | wal | Sean Busbey | Sean Busbey |
| [HBASE-12979](https://issues.apache.org/jira/browse/HBASE-12979) | Use setters instead of return values for handing back statistics from HRegion methods |  Major | . | Andrew Purtell | Jesse Yates |
| [HBASE-12973](https://issues.apache.org/jira/browse/HBASE-12973) | RegionCoprocessorEnvironment should provide HRegionInfo directly |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12957](https://issues.apache.org/jira/browse/HBASE-12957) | region\_mover#isSuccessfulScan may be extremely slow on region with lots of expired data |  Minor | scripts | hongyu bi | hongyu bi |
| [HBASE-8329](https://issues.apache.org/jira/browse/HBASE-8329) | Limit compaction speed |  Major | Compaction | binlijin | Duo Zhang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13134](https://issues.apache.org/jira/browse/HBASE-13134) | mutateRow and checkAndMutate apis don't throw region level exceptions |  Major | . | Francis Liu | Francis Liu |
| [HBASE-13131](https://issues.apache.org/jira/browse/HBASE-13131) | ReplicationAdmin leaks connections if there's an error in the constructor |  Critical | Replication | Sean Busbey | Sean Busbey |
| [HBASE-13123](https://issues.apache.org/jira/browse/HBASE-13123) | Minor bug in ROW bloom filter |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13111](https://issues.apache.org/jira/browse/HBASE-13111) | truncate\_preserve command is failing with undefined method error |  Major | shell | Ashish Singhi | Ashish Singhi |
| [HBASE-13104](https://issues.apache.org/jira/browse/HBASE-13104) | ZooKeeper session timeout cannot be changed for standalone HBase |  Major | master | Alex Araujo | Alex Araujo |
| [HBASE-13085](https://issues.apache.org/jira/browse/HBASE-13085) | Security issue in the implementation of Rest gataway 'doAs' proxy user support |  Critical | REST, security | Jerry He | Jerry He |
| [HBASE-13072](https://issues.apache.org/jira/browse/HBASE-13072) | BucketCache.evictBlock returns true if block does not exist |  Major | BlockCache | Duo Zhang | Duo Zhang |
| [HBASE-13070](https://issues.apache.org/jira/browse/HBASE-13070) | Fix TestCacheOnWrite |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13065](https://issues.apache.org/jira/browse/HBASE-13065) | Increasing -Xmx when running TestDistributedLogSplitting |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13055](https://issues.apache.org/jira/browse/HBASE-13055) | HRegion FIXED\_OVERHEAD missed one boolean |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-13050](https://issues.apache.org/jira/browse/HBASE-13050) | Hbase shell create\_namespace command throws ArrayIndexOutOfBoundException for (invalid) empty text input. |  Trivial | . | Abhishek Kumar | Abhishek Kumar |
| [HBASE-13049](https://issues.apache.org/jira/browse/HBASE-13049) | wal\_roll ruby command doesn't work. |  Major | shell | Bhupendra Kumar Jain | Bhupendra Kumar Jain |
| [HBASE-13048](https://issues.apache.org/jira/browse/HBASE-13048) | Use hbase.crypto.wal.algorithm in SecureProtobufLogReader while decrypting the data |  Minor | . | Ashish Singhi | Ashish Singhi |
| [HBASE-13047](https://issues.apache.org/jira/browse/HBASE-13047) | Add "HBase Configuration" link missing on the table details pages |  Trivial | Operability | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-13039](https://issues.apache.org/jira/browse/HBASE-13039) | Add patchprocess/\* to .gitignore to fix builds of branches |  Major | build | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13037](https://issues.apache.org/jira/browse/HBASE-13037) | LoadIncrementalHFile should try to verify the content of unmatched families |  Minor | Client, mapreduce | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13026](https://issues.apache.org/jira/browse/HBASE-13026) | Wrong error message in case incorrect snapshot name OR Incorrect table name |  Minor | . | Bhupendra Kumar Jain | Bhupendra Kumar Jain |
| [HBASE-13010](https://issues.apache.org/jira/browse/HBASE-13010) | HFileOutputFormat2 partitioner's path is hard-coded as '/tmp' |  Major | mapreduce | Aditya Kishore | Aditya Kishore |
| [HBASE-13009](https://issues.apache.org/jira/browse/HBASE-13009) | HBase REST UI inaccessible |  Major | REST | Aditya Kishore | Aditya Kishore |
| [HBASE-13005](https://issues.apache.org/jira/browse/HBASE-13005) | TestDeleteTableHandler failing in 0.98 hadoop 1 builds |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13001](https://issues.apache.org/jira/browse/HBASE-13001) | NullPointer in master logs for table.jsp |  Trivial | . | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-12999](https://issues.apache.org/jira/browse/HBASE-12999) | Make foreground\_start return the correct exit code |  Major | shell | Elliott Clark | Elliott Clark |
| [HBASE-12998](https://issues.apache.org/jira/browse/HBASE-12998) | Compilation with Hdfs-2.7.0-SNAPSHOT is broken after HDFS-7647 |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12996](https://issues.apache.org/jira/browse/HBASE-12996) | Reversed field on Filter should be transient |  Trivial | . | Ian Friedman | Ian Friedman |
| [HBASE-12989](https://issues.apache.org/jira/browse/HBASE-12989) | region\_mover.rb unloadRegions method uses ArrayList concurrently resulting in errors |  Minor | scripts | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-12976](https://issues.apache.org/jira/browse/HBASE-12976) | Set default value for hbase.client.scanner.max.result.size |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-12964](https://issues.apache.org/jira/browse/HBASE-12964) | Add the ability for hbase-daemon.sh to start in the foreground |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12961](https://issues.apache.org/jira/browse/HBASE-12961) | Negative values in read and write region server metrics |  Minor | regionserver | Victoria | Victoria |
| [HBASE-12958](https://issues.apache.org/jira/browse/HBASE-12958) | SSH doing hbase:meta get but hbase:meta not assigned |  Major | . | stack | stack |
| [HBASE-12948](https://issues.apache.org/jira/browse/HBASE-12948) | Calling Increment#addColumn on the same column multiple times produces wrong result |  Critical | Client, regionserver | hongyu bi | hongyu bi |
| [HBASE-12914](https://issues.apache.org/jira/browse/HBASE-12914) | Mark public features that require HFilev3 Unstable in 0.98, warn in upgrade section |  Critical | API, documentation | Sean Busbey | ramkrishna.s.vasudevan |
| [HBASE-12897](https://issues.apache.org/jira/browse/HBASE-12897) | Minimum memstore size is a percentage |  Major | . | churro morales | churro morales |
| [HBASE-12747](https://issues.apache.org/jira/browse/HBASE-12747) | IntegrationTestMTTR will OOME if launched with mvn verify |  Minor | . | Andrew Purtell | Abhishek Singh Chouhan |
| [HBASE-12108](https://issues.apache.org/jira/browse/HBASE-12108) | HBaseConfiguration: set classloader before loading xml files |  Minor | Client | Aniket Bhatnagar |  |
| [HBASE-12102](https://issues.apache.org/jira/browse/HBASE-12102) | Duplicate keys in HBase.RegionServer metrics JSON |  Minor | . | Andrew Purtell | Ravi Kishore Valeti |
| [HBASE-12070](https://issues.apache.org/jira/browse/HBASE-12070) | Add an option to hbck to fix ZK inconsistencies |  Major | hbck | Sudarshan Kadambi | Stephen Yuan Jiang |
| [HBASE-9910](https://issues.apache.org/jira/browse/HBASE-9910) | TestHFilePerformance and HFilePerformanceEvaluation should be merged in a single HFile performance test class. |  Major | Performance, test | Jean-Marc Spaggiari | Vikas Vishwakarma |
| [HBASE-7332](https://issues.apache.org/jira/browse/HBASE-7332) | [webui] HMaster webui should display the number of regions a table has. |  Minor | UI | Jonathan Hsieh | Andrey Stepachev |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13106](https://issues.apache.org/jira/browse/HBASE-13106) | Ensure endpoint-only table coprocessors can be dynamically loaded |  Trivial | . | Andrew Purtell | Andrew Purtell |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13137](https://issues.apache.org/jira/browse/HBASE-13137) | [0.98] Backport HBASE-13057 - Provide client utility to easily enable and disable table replication |  Major | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-12980](https://issues.apache.org/jira/browse/HBASE-12980) | Delete of a table may not clean all rows from hbase:meta |  Major | Operability | stack | stack |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13020](https://issues.apache.org/jira/browse/HBASE-13020) | Add 'patchprocess/\*' to RAT excludes on all branches |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13000](https://issues.apache.org/jira/browse/HBASE-13000) | Backport HBASE-11240 (Print hdfs pipeline when hlog's sync is slow) to 0.98 |  Minor | . | Andrew Purtell | Sean Busbey |
| [HBASE-12995](https://issues.apache.org/jira/browse/HBASE-12995) | Document that HConnection#getTable methods do not check table existence since 0.98.1 |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12795](https://issues.apache.org/jira/browse/HBASE-12795) | Backport HBASE-12429 (Add port to ClusterManager's actions) to 0.98 |  Minor | . | Andrew Purtell | Andrew Purtell |


