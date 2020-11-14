
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
# Apache HBase  2.1.3 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-21712](https://issues.apache.org/jira/browse/HBASE-21712) | *Minor* | **Make submit-patch.py python3 compatible**

Python3 support was added to dev-support/submit-patch.py. To install newly required dependencies run \`pip install -r dev-support/python-requirements.txt\` command.


---

* [HBASE-21732](https://issues.apache.org/jira/browse/HBASE-21732) | *Critical* | **Should call toUpperCase before using Enum.valueOf in some methods for ColumnFamilyDescriptor**

Now all the Enum configs in ColumnFamilyDescriptor can accept lower case config value.


---

* [HBASE-21738](https://issues.apache.org/jira/browse/HBASE-21738) | *Critical* | **Remove all the CSLM#size operation in our memstore because it's an quite time consuming.**

We found the memstore snapshotting would cost much time because of calling the time-consuming ConcurrentSkipListMap#Size, it would make the p999 latency spike happen. So in this issue, we remove all ConcurrentSkipListMap#size in memstore by counting the cellsCount in MemstoreSizeing. As the issue described, the p999 latency spike was mitigated.


---

* [HBASE-21734](https://issues.apache.org/jira/browse/HBASE-21734) | *Major* | **Some optimization in FilterListWithOR**

After HBASE-21620, the filterListWithOR has been a bit slow because we need to merge each sub-filter's RC , while before HBASE-21620, we will skip many RC merging, but the logic was wrong. So here we choose another way to optimaze the performance: removing the KeyValueUtil#toNewKeyCell. 
Anoop Sam John suggested that the KeyValueUtil#toNewKeyCell can save some GC before because if we copy key part of cell into a single byte[], then the block the cell refering won't be refered by the filter list any more, the upper layer can GC the data block quickly. while after HBASE-21620, we will update the prevCellList for every encountered cell now, so the lifecycle of cell in prevCellList for FilterList will be quite shorter. so just use the cell ref for saving cpu.
BTW, we removed all the arrays streams usage in filter list, because it's also quite time-consuming in our test.


---

* [HBASE-21791](https://issues.apache.org/jira/browse/HBASE-21791) | *Blocker* | **Upgrade thrift dependency to 0.12.0**

IMPORTANT: Due to security issues, all users who use hbase thrift should avoid using releases which do not have this fix.

The effect releases are:
2.1.x: 2.1.2 and below
2.0.x: 2.0.4 and below
1.x: 1.4.x and below

If you are using the effect releases above, please consider upgrading to a newer release ASAP.


---

* [HBASE-21684](https://issues.apache.org/jira/browse/HBASE-21684) | *Major* | **Throw DNRIOE when connection or rpc client is closed**

Make StoppedRpcClientException extend DoNotRetryIOException.


---

* [HBASE-21764](https://issues.apache.org/jira/browse/HBASE-21764) | *Major* | **Size of in-memory compaction thread pool should be configurable**

Introduced an new config key in this issue: hbase.regionserver.inmemory.compaction.pool.size. the default value would be 10.  you can configure this to set the pool size of in-memory compaction pool. Note that all memstores in one region server will share the same pool, so if you have many regions in one region server,  you need to set this larger to compact faster for better read performance.


---

* [HBASE-21727](https://issues.apache.org/jira/browse/HBASE-21727) | *Minor* | **Simplify documentation around client timeout**

Deprecated HBaseConfiguration#getInt(Configuration, String, String, int) method and removed it from 3.0.0 version.


---

* [HBASE-21201](https://issues.apache.org/jira/browse/HBASE-21201) | *Major* | **Support to run VerifyReplication MR tool without peerid**

We can specify peerQuorumAddress instead of peerId in VerifyReplication tool. So it no longer requires peerId to be setup when using this tool.

For example:
hbase org.apache.hadoop.hbase.mapreduce.replication.VerifyReplication zk1,zk2,zk3:2181/hbase testTable



