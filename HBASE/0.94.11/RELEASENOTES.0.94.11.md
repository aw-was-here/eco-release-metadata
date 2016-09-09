
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
# Apache HBase  0.94.11 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-7826](https://issues.apache.org/jira/browse/HBASE-7826) | *Minor* | **Improve Hbase Thrift v1 to return results in sorted order**

When passing a TScan object, it's possible to ask for sortColumns. The result of doing this will populate TRowResult's "sortedColumns" instead of "columns", where the former is a list of the new type TColumn that wraps a column name and a TCell. 
Backward compatibility is kept. Old clients will work against thrift servers with this patch, but new clients cannot request sorted columns on an old thrift server.


---

* [HBASE-9080](https://issues.apache.org/jira/browse/HBASE-9080) | *Critical* | **Retain assignment should be used when re-enabling table(s)**

To achieve good data locality, retain assignment is used when re-enabling tables. 

hbase.master.enabletable.roundrobin is no longer effective.


---

* [HBASE-9049](https://issues.apache.org/jira/browse/HBASE-9049) | *Major* | **Generalize ServerCallable creation to support custom callables**

Support custom RpcRetryingCaller via a configurable factory.


---

* [HBASE-8949](https://issues.apache.org/jira/browse/HBASE-8949) | *Major* | **hbase.mapreduce.hfileoutputformat.blocksize should configure with blocksize of a table**

While writing hfiles from HFileOutputFormat forcing blocksize from table schema(HColumnDescriptor).  Even if we configure hbase.mapreduce.hfileoutputformat.blocksize during bulkload/import it will be overridden with actual block size from table schema.


---

* [HBASE-6580](https://issues.apache.org/jira/browse/HBASE-6580) | *Major* | **Deprecate HTablePool in favor of HConnection.getTable(...)**

This issue introduces a few new APIs:
\* HConnectionManager:
{code}
    public static HConnection createConnection(Configuration conf)
    public static HConnection createConnection(Configuration conf, ExecutorService pool)
{code}
\* HConnection:
{code}
    public HTableInterface getTable(String tableName) throws IOException
    public HTableInterface getTable(byte[] tableName) throws IOException
    public HTableInterface getTable(String tableName, ExecutorService pool) throws IOException
    public HTableInterface getTable(byte[] tableName, ExecutorService pool) throws IOException
{code}

By default HConnectionImplementation will create an ExecutorService when needed. The ExecutorService can optionally passed be passed in.
HTableInterfaces are retrieved from the HConnection. By default the HConnection's ExecutorService is used, but optionally that can be overridden for each HTable.


---

* [HBASE-9097](https://issues.apache.org/jira/browse/HBASE-9097) | *Major* | **Set HBASE\_CLASSPATH before rest of the classpath**

Move HBASE\_CLASSPATH to the beginning of the CLASSPATH in bin/hbase script.


---

* [HBASE-8663](https://issues.apache.org/jira/browse/HBASE-8663) | *Critical* | **a HBase Shell command to list the tables replicated from current cluster**

list\_replicated\_tables can now be used in the shell to get the list of tables and families that are configured to be replicated, instead of having to describe all the tables and manually filter those that have a replication scope of 1



