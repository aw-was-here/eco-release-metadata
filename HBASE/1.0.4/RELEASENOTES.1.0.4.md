
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
# Apache HBase  1.0.4 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-15031](https://issues.apache.org/jira/browse/HBASE-15031) | *Major* | **Fix merge of MVCC and SequenceID performance regression in branch-1.0**

Increments can be 10x slower (or more) when there is high concurrency since HBase 1.0.0 (HBASE-8763).

This 'fix' adds back a fast increment but speed is achieved by relaxing row-level consistency for Increments (only). The default remains the old, slow, consistent Increment behavior.

Set  "hbase.increment.fast.but.narrow.consistency" to true in hbase-site.xml to enable 'fast' increments and then rolling restart your cluster. This is a setting the server-side needs to read.

Intermixing fast increment with other Mutations will give indeterminate results; e.g. a Put and Increment against the same Cell will not always give you the result you expect. Fast Increments are consistent unto themselves. A Get with {@link IsolationLevel#READ\_UNCOMMITTED} will return the latest increment value or an Increment of an amount zero will do the same (beware doing Get on a cell that has not been incremented yet -- this will return no results).

The difference between fastAndNarrowConsistencyIncrement and slowButConsistentIncrement is that the former holds the row lock until the WAL sync completes; this allows us to reason that there are no other writers afoot when we read the current increment value. In this case we do not need to wait on mvcc reads to catch up to writes before we proceed with the read of the current Increment value, the root of the slowdown seen in HBASE-14460. The fast-path also does not wait on mvcc to complete before returning to the client (but the write has been synced and put into memstore before we return). 

Also adds a simple performance test tool that will run against existing cluster. It expects the table to be already created (by default it expects the table 'tableName' with a column family 'columnFamilyName'): 

{code}
$ ./bin/hbase org.apache.hadoop.hbase.IncrementPerformanceTest
{code]

Configure it by passing -D options. Here are the set below:

2015-12-23 19:33:36,941 INFO  [main] hbase.IncrementPerformanceTest: Running test with hbase.zookeeper.quorum=localhost, tableName=tableName, columnFamilyName=columnFamilyName, threadCount=80, incrementCount=10000

... so to set the tableName pass -DtableName=SOME\_TABLENAME

Here is an example use of the test tool:

{code}
$ time ./bin/hbase --config ~/conf\_hbase org.apache.hadoop.hbase.IncrementPerformanceTest -DincrementCount=50000
{code}

Comparing before and after I have without patch:

2015-12-28 09:58:05,087 INFO  [main] hbase.IncrementPerformanceTest: 75th=25.99884175, 95th=38.259990499999994, 99th=46.06327961000003

.. and then with the patch:

2015-12-28 10:07:34,192 INFO  [main] hbase.IncrementPerformanceTest: 75th=5.8296235, 95th=9.775977899999997, 99th=17.758502090000025


---

* [HBASE-14822](https://issues.apache.org/jira/browse/HBASE-14822) | *Major* | **Renewing leases of scanners doesn't work**

And 1.1, 1.0, and 0.98.


---

* [HBASE-14799](https://issues.apache.org/jira/browse/HBASE-14799) | *Critical* | **Commons-collections object deserialization remote command execution vulnerability**

This issue resolves a potential security vulnerability. For all versions we update our commons-collections dependency to the release that fixes the reported vulnerability in that library. In 0.98 we additionally disable by default a feature of code carried from 0.94 for backwards compatibility that is not needed.



