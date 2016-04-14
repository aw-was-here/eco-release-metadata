
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
# Apache HBase  1.0.3 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-14313](https://issues.apache.org/jira/browse/HBASE-14313) | *Critical* | **After a Connection sees ConnectionClosingException it never recovers**

HConnection could get stuck when talking to a host that went down and then returned. This has been fixed by closing the connection in all paths.


---

* [HBASE-14261](https://issues.apache.org/jira/browse/HBASE-14261) | *Major* | **Enhance Chaos Monkey framework by adding zookeeper and datanode fault injections.**

This change augments existing chaos monkey framework with actions for restarting underlying zookeeper quorum and hdfs nodes of distributed hbase cluster. One assumption made while creating zk actions are that zookeper ensemble is an independent external service and won't be managed by hbase cluster.  For these actions to work as expected, the following parameters need to be configured appropriately.

{code}
\<property\>
  \<name\>hbase.it.clustermanager.hadoop.home\</name\>
  \<value\>$HADOOP\_HOME\</value\>
\</property\>
\<property\>
  \<name\>hbase.it.clustermanager.zookeeper.home\</name\>
  \<value\>$ZOOKEEPER\_HOME\</value\>
\</property\>
\<property\>
  \<name\>hbase.it.clustermanager.hbase.user\</name\>
  \<value\>hbase\</value\>
\</property\>
\<property\>
  \<name\>hbase.it.clustermanager.hadoop.hdfs.user\</name\>
  \<value\>hdfs\</value\>
\</property\>
\<property\>
  \<name\>hbase.it.clustermanager.zookeeper.user\</name\>
  \<value\>zookeeper\</value\>
\</property\>
{code}

The service user related configurations are newly introduced since in prod/test environments each service is managed by different user. Once the above parameters are configured properly, you can start using them as needed. An example usage for invoking these new actions is:

{{./hbase org.apache.hadoop.hbase.IntegrationTestAcidGuarantees -m serverAndDependenciesKilling}}


---

* [HBASE-14400](https://issues.apache.org/jira/browse/HBASE-14400) | *Critical* | **Fix HBase RPC protection documentation**

To use rpc protection in HBase, set the value of 'hbase.rpc.protection' to:
'authentication' : simple authentication using kerberos
'integrity' : authentication and integrity
'privacy' : authentication and confidentiality

Earlier, HBase reference guide erroneously mentioned in some places to set the value to 'auth-conf'. This patch fixes the guide and adds temporary support for erroneously recommended values.


---

* [HBASE-14475](https://issues.apache.org/jira/browse/HBASE-14475) | *Major* | **Region split requests are always audited with "hbase" user rather than request user**

Region observer notifications w.r.t. split request are now audited with request user through proper scope of doAs() calls.


---

* [HBASE-14799](https://issues.apache.org/jira/browse/HBASE-14799) | *Critical* | **Commons-collections object deserialization remote command execution vulnerability**

This issue resolves a potential security vulnerability. For all versions we update our commons-collections dependency to the release that fixes the reported vulnerability in that library. In 0.98 we additionally disable by default a feature of code carried from 0.94 for backwards compatibility that is not needed.


---

* [HBASE-14605](https://issues.apache.org/jira/browse/HBASE-14605) | *Blocker* | **Split fails due to 'No valid credentials' error when SecureBulkLoadEndpoint#start tries to access hdfs**

When split is requested by non-super user, split related notifications for Coprocessor are executed using the login of the request user.
Previously the notifications were carried out as super user.


---

* [HBASE-14631](https://issues.apache.org/jira/browse/HBASE-14631) | *Blocker* | **Region merge request should be audited with request user through proper scope of doAs() calls to region observer notifications**

Region observer notifications w.r.t. merge request are now audited with request user through proper scope of doAs() calls.


---

* [HBASE-14655](https://issues.apache.org/jira/browse/HBASE-14655) | *Blocker* | **Narrow the scope of doAs() calls to region observer notifications for compaction**

Region observer notifications w.r.t. compaction request are now audited with request user through proper scope of doAs() calls.


---

* [HBASE-14822](https://issues.apache.org/jira/browse/HBASE-14822) | *Major* | **Renewing leases of scanners doesn't work**

And 1.1, 1.0, and 0.98.


---

* [HBASE-15031](https://issues.apache.org/jira/browse/HBASE-15031) | *Major* | **Fix merge of MVCC and SequenceID performance regression in branch-1.0 for Increments**

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



