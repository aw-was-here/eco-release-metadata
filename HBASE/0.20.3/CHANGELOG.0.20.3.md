
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

## Release 0.20.3 - 2010-01-25



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1987](https://issues.apache.org/jira/browse/HBASE-1987) | The Put object has no simple read methods for checking what has already been added. |  Minor | Client | Ryan Smith | Ryan Smith |
| [HBASE-2037](https://issues.apache.org/jira/browse/HBASE-2037) | Alternate indexed hbase implementation; speeds scans by adding indexes to regions rather secondary tables |  Major | Coprocessors | stack | stack |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1975](https://issues.apache.org/jira/browse/HBASE-1975) | SingleColumnValueFilter: Add ability to match the value of previous versions of the specified column |  Major | Filters | Jeremiah Jacquet |  |
| [HBASE-1970](https://issues.apache.org/jira/browse/HBASE-1970) | Export does one version only; make it configurable how many it does |  Trivial | . | stack | stack |
| [HBASE-2011](https://issues.apache.org/jira/browse/HBASE-2011) | Add zktop like output to HBase's master UI (zk.jsp) |  Minor | . | Lars George | Lars George |
| [HBASE-2029](https://issues.apache.org/jira/browse/HBASE-2029) | Reduce shell exception dump on console |  Minor | scripts | Lars George | Jean-Daniel Cryans |
| [HBASE-2031](https://issues.apache.org/jira/browse/HBASE-2031) | When starting HQuorumPeer, try to match on more than 1 address |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2046](https://issues.apache.org/jira/browse/HBASE-2046) | Remove CompactionLimitThread on 0.20 branch |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2045](https://issues.apache.org/jira/browse/HBASE-2045) | Update trunk and branch zk to just-release 3.2.2. |  Major | . | stack | Jean-Daniel Cryans |
| [HBASE-2074](https://issues.apache.org/jira/browse/HBASE-2074) | Improvements to the hadoop-config script |  Major | scripts | Bassam Tabbara |  |
| [HBASE-2076](https://issues.apache.org/jira/browse/HBASE-2076) | Many javadoc warnings |  Minor | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2078](https://issues.apache.org/jira/browse/HBASE-2078) | Add JMX settings as commented out lines to hbase-env.sh |  Trivial | . | Lars George | Lars George |
| [HBASE-2081](https://issues.apache.org/jira/browse/HBASE-2081) | Set the retries higher in shell since client pause is lower |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2021](https://issues.apache.org/jira/browse/HBASE-2021) | Add compaction details to master UI |  Minor | . | Lars George | Lars George |
| [HBASE-2095](https://issues.apache.org/jira/browse/HBASE-2095) | TableInputFormat should support more confs for the scanner |  Major | mapreduce | Bassam Tabbara | Bassam Tabbara |
| [HBASE-2124](https://issues.apache.org/jira/browse/HBASE-2124) | Useless exception in HMaster on startup |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2133](https://issues.apache.org/jira/browse/HBASE-2133) | Increase default number of client handlers |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2152](https://issues.apache.org/jira/browse/HBASE-2152) | Add default jmxremote.{access\|password} files into conf |  Major | . | Lars George | Lars George |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1999](https://issues.apache.org/jira/browse/HBASE-1999) | When HTable goes away, close zk session in shutdown hook or something... |  Major | . | stack |  |
| [HBASE-1997](https://issues.apache.org/jira/browse/HBASE-1997) | zk tick time bounds maximum zk session time |  Major | . | stack | stack |
| [HBASE-2003](https://issues.apache.org/jira/browse/HBASE-2003) | [shell] deleteall ignores column if specified |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1979](https://issues.apache.org/jira/browse/HBASE-1979) | MurmurHash does not yield the same results as the reference C++ implementation when size % 4 \>= 2 |  Trivial | util | olivier gillet | olivier gillet |
| [HBASE-2018](https://issues.apache.org/jira/browse/HBASE-2018) | Updates to .META. blocked under high MemStore load |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1994](https://issues.apache.org/jira/browse/HBASE-1994) | Master will lose hlog entries while splitting if region has empty oldlogfile.log |  Blocker | master | Cosmin Lehene | Lars George |
| [HBASE-2022](https://issues.apache.org/jira/browse/HBASE-2022) | NPE in housekeeping kills RS |  Critical | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2027](https://issues.apache.org/jira/browse/HBASE-2027) | HConnectionManager.HBASE\_INSTANCES leaks TableServers |  Major | . | Dave Latham | Dave Latham |
| [HBASE-2033](https://issues.apache.org/jira/browse/HBASE-2033) | Shell scan 'limit' is off by one |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2034](https://issues.apache.org/jira/browse/HBASE-2034) | [Bulk load tools] loadtable.rb calls an undefined method `descendingIterator' |  Major | . | Ching-Shen Chen |  |
| [HBASE-2043](https://issues.apache.org/jira/browse/HBASE-2043) | Shell's scan broken |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2047](https://issues.apache.org/jira/browse/HBASE-2047) | Example command in the "Getting Started" documentation doesn't work |  Trivial | documentation | Benoit Sigoure | Benoit Sigoure |
| [HBASE-2048](https://issues.apache.org/jira/browse/HBASE-2048) | Small inconsistency in the "Example API Usage" |  Trivial | documentation | Benoit Sigoure | Benoit Sigoure |
| [HBASE-1813](https://issues.apache.org/jira/browse/HBASE-1813) | Remove compaction governor |  Major | . | stack |  |
| [HBASE-1962](https://issues.apache.org/jira/browse/HBASE-1962) | Bulk loading script makes regions incorrectly (loadtable.rb) |  Major | . | stack | stack |
| [HBASE-2052](https://issues.apache.org/jira/browse/HBASE-2052) | Make hbase more 'live' when comes to noticing table creation, splits, etc., for 0.20.3 |  Major | . | stack | Jean-Daniel Cryans |
| [HBASE-2049](https://issues.apache.org/jira/browse/HBASE-2049) | Cleanup HLog binary log output |  Minor | . | Dave Latham | Dave Latham |
| [HBASE-2054](https://issues.apache.org/jira/browse/HBASE-2054) | memstore size 0 is \>= than blocking -2.0g size |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2060](https://issues.apache.org/jira/browse/HBASE-2060) | Missing closing tag in mapreduce package-info.java |  Trivial | . | Lars George | Lars George |
| [HBASE-2062](https://issues.apache.org/jira/browse/HBASE-2062) | Metrics documentation outdated |  Trivial | documentation | Lars George | Lars George |
| [HBASE-2026](https://issues.apache.org/jira/browse/HBASE-2026) | NPE in StoreScanner on compaction |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2075](https://issues.apache.org/jira/browse/HBASE-2075) | HBaseMaster requires HDFS superuser privileges due to waitOnSafeMode |  Major | master | Bassam Tabbara | Andrew Purtell |
| [HBASE-2025](https://issues.apache.org/jira/browse/HBASE-2025) | 0.20.2 accessed from older client throws UndeclaredThrowableException; frustrates rolling upgrade |  Blocker | . | stack | Jean-Daniel Cryans |
| [HBASE-2082](https://issues.apache.org/jira/browse/HBASE-2082) | TableInputFormat is ignoring input scan's stop row setting |  Major | mapreduce | Scott Wang | Scott Wang |
| [HBASE-1636](https://issues.apache.org/jira/browse/HBASE-1636) | disable and drop of table is flakey still |  Major | . | stack | Jean-Daniel Cryans |
| [HBASE-2068](https://issues.apache.org/jira/browse/HBASE-2068) | MetricsRate is missing "registry" parameter |  Minor | . | Lars George | Lars George |
| [HBASE-2035](https://issues.apache.org/jira/browse/HBASE-2035) | Binary values are formatted wrong in shell |  Minor | . | Dave Latham | stack |
| [HBASE-2094](https://issues.apache.org/jira/browse/HBASE-2094) | hbase-2037 breaks mapreduce jobs going from 0.20.2 to 0.20.3 |  Blocker | . | stack |  |
| [HBASE-2093](https://issues.apache.org/jira/browse/HBASE-2093) | [stargate] RowSpec parse bug |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2097](https://issues.apache.org/jira/browse/HBASE-2097) | Deadlock between HRegion.put and HRegion.close |  Blocker | . | Jean-Daniel Cryans | stack |
| [HBASE-2101](https://issues.apache.org/jira/browse/HBASE-2101) | KeyValueSortReducer collapses all values to last passed |  Major | . | stack |  |
| [HBASE-2112](https://issues.apache.org/jira/browse/HBASE-2112) | New 'indexed' contrib is missing commons-lang.jar when packaged |  Major | . | stack |  |
| [HBASE-2113](https://issues.apache.org/jira/browse/HBASE-2113) | For indexed contrib, fast-forward to next row if no more results left... big performance improvement |  Major | . | stack |  |
| [HBASE-2119](https://issues.apache.org/jira/browse/HBASE-2119) | Fix top-level NOTICES.txt file.  Its stale. |  Major | . | stack | stack |
| [HBASE-2120](https://issues.apache.org/jira/browse/HBASE-2120) | [Stargate] Unable to delete column families |  Major | . | Greg Lu | Greg Lu |
| [HBASE-2123](https://issues.apache.org/jira/browse/HBASE-2123) | Remove 'master' command-line option from PE. |  Major | . | stack |  |
| [HBASE-2122](https://issues.apache.org/jira/browse/HBASE-2122) | [Stargate] Initializing scanners column families doesn't work |  Major | . | Greg Lu | Greg Lu |
| [HBASE-2024](https://issues.apache.org/jira/browse/HBASE-2024) | [stargate] deletes not working as expected |  Minor | . | Andrew Purtell | Greg Lu |
| [HBASE-2127](https://issues.apache.org/jira/browse/HBASE-2127) | randomWrite mode of PerformanceEvaluation benchmark program writes only to a small range of keys |  Minor | test | Kannan Muthukkaruppan |  |
| [HBASE-2138](https://issues.apache.org/jira/browse/HBASE-2138) | unknown metrics type |  Major | . | Jean-Daniel Cryans | stack |
| [HBASE-2154](https://issues.apache.org/jira/browse/HBASE-2154) | Fix Client#next(int) javadoc |  Major | . | stack | stack |
| [HBASE-2146](https://issues.apache.org/jira/browse/HBASE-2146) | RPC related metrics are missing in 0.20.3 since recent changes |  Major | . | Lars George | Gary Helmling |
| [HBASE-2149](https://issues.apache.org/jira/browse/HBASE-2149) | hbase.regionserver.global.memstore.lowerLimit is too low |  Major | . | Jean-Daniel Cryans | stack |
| [HBASE-2157](https://issues.apache.org/jira/browse/HBASE-2157) | LATEST\_TIMESTAMP not replaced by current timestamp in KeyValue |  Major | . | Menno Luiten | stack |
| [HBASE-2057](https://issues.apache.org/jira/browse/HBASE-2057) | Cluster won't stop |  Major | . | Jean-Daniel Cryans | Gary Helmling |
| [HBASE-2160](https://issues.apache.org/jira/browse/HBASE-2160) | Can't put with ts in shell |  Major | . | Jean-Daniel Cryans | stack |
| [HBASE-2144](https://issues.apache.org/jira/browse/HBASE-2144) | [shell] Now does \x20 for spaces |  Major | . | stack | stack |
| [HBASE-2156](https://issues.apache.org/jira/browse/HBASE-2156) | HBASE-2037 broke Scan |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1993](https://issues.apache.org/jira/browse/HBASE-1993) | Set up convenient ssh between instances |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2012](https://issues.apache.org/jira/browse/HBASE-2012) | [EC2] LZO support |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2032](https://issues.apache.org/jira/browse/HBASE-2032) | [EC2] Add support for installation of user packages when instances start up |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1982](https://issues.apache.org/jira/browse/HBASE-1982) | [EC2] handle potentially large and uneven instance startup times |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2064](https://issues.apache.org/jira/browse/HBASE-2064) | Cannot disable a table if at the same the Master is moving its regions around |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2065](https://issues.apache.org/jira/browse/HBASE-2065) | Cannot disable a table if any of its region is opening at the same time |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2080](https://issues.apache.org/jira/browse/HBASE-2080) | [EC2] Support multivolume local instance storage |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2083](https://issues.apache.org/jira/browse/HBASE-2083) | [EC2] HDFS DataNode no longer required on master |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2084](https://issues.apache.org/jira/browse/HBASE-2084) | [EC2] JAVA\_HOME handling broken |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2100](https://issues.apache.org/jira/browse/HBASE-2100) | [EC2] Adjust fs.file-max |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2103](https://issues.apache.org/jira/browse/HBASE-2103) | [EC2] pull version from build |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2132](https://issues.apache.org/jira/browse/HBASE-2132) | [EC2] Rebuild AMIs with jdk6u18 |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2131](https://issues.apache.org/jira/browse/HBASE-2131) | [EC2] Mount data volumes as xfs, noatime |  Minor | . | Andrew Purtell | Andrew Purtell |


