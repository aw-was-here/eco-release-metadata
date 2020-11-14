
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
# Apache HBase  1.4.10 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-20672](https://issues.apache.org/jira/browse/HBASE-20672) | *Minor* | **New metrics ReadRequestRate and WriteRequestRate**

Exposing 2 new metrics in HBase to provide ReadRequestRate and WriteRequestRate at region server level. These metrics give the rate of request handled by the region server and are reset after every monitoring interval.


---

* [HBASE-21492](https://issues.apache.org/jira/browse/HBASE-21492) | *Critical* | **CellCodec Written To WAL Before It's Verified**

After HBASE-21492 the return type of WALCellCodec#getWALCellCodecClass has been changed from String to Class


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

* [HBASE-21618](https://issues.apache.org/jira/browse/HBASE-21618) | *Critical* | **Scan with the same startRow(inclusive=true) and stopRow(inclusive=false) returns one result**

There was a bug when scan with the same startRow(inclusive=true) and stopRow(inclusive=false). The old incorrect behavior is return one result. After this fix, the new correct behavior is return nothing.


---

* [HBASE-21734](https://issues.apache.org/jira/browse/HBASE-21734) | *Major* | **Some optimization in FilterListWithOR**

After HBASE-21620, the filterListWithOR has been a bit slow because we need to merge each sub-filter's RC , while before HBASE-21620, we will skip many RC merging, but the logic was wrong. So here we choose another way to optimaze the performance: removing the KeyValueUtil#toNewKeyCell. 
Anoop Sam John suggested that the KeyValueUtil#toNewKeyCell can save some GC before because if we copy key part of cell into a single byte[], then the block the cell refering won't be refered by the filter list any more, the upper layer can GC the data block quickly. while after HBASE-21620, we will update the prevCellList for every encountered cell now, so the lifecycle of cell in prevCellList for FilterList will be quite shorter. so just use the cell ref for saving cpu.
BTW, we removed all the arrays streams usage in filter list, because it's also quite time-consuming in our test.


---

* [HBASE-22152](https://issues.apache.org/jira/browse/HBASE-22152) | *Major* | **Create a jenkins file for yetus to processing GitHub PR**

Add a new jenkins file for running pre commit check for GitHub PR.


---

* [HBASE-20851](https://issues.apache.org/jira/browse/HBASE-20851) | *Minor* | **Change rubocop config for max line length of 100**

The rubocop configuration in the hbase-shell module now allows a line length with 100 characters, instead of 80 as before. For everything before 2.1.5 this change introduces rubocop itself.


---

* [HBASE-22379](https://issues.apache.org/jira/browse/HBASE-22379) | *Minor* | **Fix Markdown for "Voting on Release Candidates" in book**

Fixes the formatting of the "Voting on Release Candidates" to actually show the quote and code formatting of the RAT check.


---

* [HBASE-22358](https://issues.apache.org/jira/browse/HBASE-22358) | *Minor* | **Change rubocop configuration for method length**

The rubocop definition for the maximum method length was set to 75.


---

* [HBASE-22392](https://issues.apache.org/jira/browse/HBASE-22392) | *Trivial* | **Remove extra/useless +**

Removed extra + in HRegion, HStore and LoadIncrementalHFiles for branch-2 and HRegion and HStore for branch-1.


---

* [HBASE-22384](https://issues.apache.org/jira/browse/HBASE-22384) | *Minor* | **Formatting issues in administration section of book**

Fixes a formatting issue in the administration section of the book, where listing indentation were a little bit off.


---

* [HBASE-21048](https://issues.apache.org/jira/browse/HBASE-21048) | *Major* | **Get LogLevel is not working from console in secure environment**

Support get\|set LogLevel in secure(kerberized) environment.


---

* [HBASE-21784](https://issues.apache.org/jira/browse/HBASE-21784) | *Major* | **Dump replication queue should show list of wal files ordered chronologically**

The DumpReplicationQueues tool will now list replication queues sorted in chronological order.


---

* [HBASE-21991](https://issues.apache.org/jira/browse/HBASE-21991) | *Major* | **Fix MetaMetrics issues - [Race condition, Faulty remove logic], few improvements**

The class LossyCounting was unintentionally marked Public but was never intended to be part of our public API. This oversight has been corrected and LossyCounting is now marked as Private and going forward may be subject to additional breaking changes or removal without notice. If you have taken a dependency on this class we recommend cloning it locally into your project before upgrading to this release.



