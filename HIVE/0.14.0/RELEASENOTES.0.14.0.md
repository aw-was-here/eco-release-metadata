
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
#  0.14.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HIVE-8772](https://issues.apache.org/jira/browse/HIVE-8772) | *Major* | **zookeeper info logs are always printed from beeline with service discovery mode**

Log messages in beeline that come from jdbc driver logging statements can be configured using placing a beeline-log4j.properties file in hive conf directory.
In the default setting, log messages at WARN level or above are printed to console.


---

* [HIVE-8687](https://issues.apache.org/jira/browse/HIVE-8687) | *Critical* | **Support Avro through HCatalog**

Hive Avro tables are now usable through HCatalog.


---

* [HIVE-8632](https://issues.apache.org/jira/browse/HIVE-8632) | *Major* | **VectorKeyHashWrapper::duplicateTo allocates too many zero sized arrays**

VectorKeyHashWrapper::duplicateTo allocates too many zero sized arrays


---

* [HIVE-8629](https://issues.apache.org/jira/browse/HIVE-8629) | *Major* | **Streaming / ACID : hive cli session creation takes too long and times out if execution engine is tez**

Patch committed to trunk and branch 0.14.  Thanks Roshan.


---

* [HIVE-8615](https://issues.apache.org/jira/browse/HIVE-8615) | *Critical* | **beeline csv,tsv outputformat needs backward compatibility mode**

The formats csv, tsv have been deprecated. The use of csv2 and tsv2 is recommended in place of them.

- Old format quoted every field. New format quotes only fields that contain a delimiter or the quoting char.
- Old format quoted using single quotes, new format quotes using double quotes
- Old format didn't escape quotes in a field (a bug). New format does escape the quotes


---

* [HIVE-8546](https://issues.apache.org/jira/browse/HIVE-8546) | *Critical* | **Handle "add archive scripts.tar.gz" in Tez**

Support ADD ARCHIVE in Tez


---

* [HIVE-8461](https://issues.apache.org/jira/browse/HIVE-8461) | *Critical* | **Make Vectorized Decimal query results match Non-Vectorized query results with respect to trailing zeroes... .0000**

Fix a few test failures.


---

* [HIVE-8349](https://issues.apache.org/jira/browse/HIVE-8349) | *Major* | **DISTRIBUTE BY should work with tez auto-parallelism enabled**

HIVE-8349: Distinguish between UNIFORM hash-partitioning and AUTOPARALLEL re-partitioning. (Gopal V, reviewed by Gunther Hagleitner)


---

* [HIVE-8341](https://issues.apache.org/jira/browse/HIVE-8341) | *Critical* | **Transaction information in config file can grow excessively large**

A new environment variable hive.script.operator.env.blacklist was added in 0.14.  Its default value is "hive.txn.valid.txns,hive.script.operator.env.blacklist"

By default all values in the HiveConf object are converted to environment variables of the same name as the key (with '.' (dot) converted to '\_' (underscore)) and set as part of the script operator's environment.  However, some values can grow large or are not amenable to translation to environment variables.  This value gives a comma separated list of configuration values that will not be set in the environment when calling a script operator.  By default the valid transaction list is excluded, as it can grow large and is sometimes compressed, which does not translate well to an environment variable.


---

* [HIVE-8328](https://issues.apache.org/jira/browse/HIVE-8328) | *Blocker* | **MapJoin implementation in Tez should not reload hashtables**

HIVE-8328: Mapjoins in reducer vertices should reuse cached hashtables (Gopal V, reviewed by Vikram Dixit)


---

* [HIVE-8304](https://issues.apache.org/jira/browse/HIVE-8304) | *Critical* | **Tez Reduce-Side GROUP BY Vectorization doesn't copy NULL keys correctly**

HIVE-8304: Tez Reduce-Side GROUP BY Vectorization doesn't copy NULL keys correctly (Matt McCline via Gopal V)"


---

* [HIVE-8296](https://issues.apache.org/jira/browse/HIVE-8296) | *Critical* | **Tez ReduceShuffle Vectorization needs 2 data buffers (key and value) for adding rows**

"HIVE-8296: Reduce vectorization should use independent buffers for key and value (Matt McCline, via Gopal V)"


---

* [HIVE-8292](https://issues.apache.org/jira/browse/HIVE-8292) | *Major* | **Reading from partitioned bucketed tables has high overhead in MapOperator.cleanUpInputFileChangedOp**

HIVE-8292: MapRecordSource should obtain its ExecContext from a MapOperator (Gopal V, reviewed by Vikram Dixit)


---

* [HIVE-8240](https://issues.apache.org/jira/browse/HIVE-8240) | *Critical* | **VectorColumnAssignFactory throws "Incompatible Bytes vector column and primitive category VARCHAR"**

HIVE-8240: VectorColumnAssignFactory support for VARCHAR (Matt McCline, via Gopal V)


---

* [HIVE-8236](https://issues.apache.org/jira/browse/HIVE-8236) | *Blocker* | **VectorHashKeyWrapper allocates too many zero sized arrays**

HIVE-8236: VectorHashKeyWrapper allocates too many zero sized arrays (Gopal V, reviewed by Prasanth J)


---

* [HIVE-8224](https://issues.apache.org/jira/browse/HIVE-8224) | *Major* | **Support Char, Varchar in AvroSerDe**

To document support of char/varchar for avro.


---

* [HIVE-8221](https://issues.apache.org/jira/browse/HIVE-8221) | *Blocker* | **authorize additional metadata read operations in metastore storage based authorization**

Storagebased authorization now authorizes read privilege on database and tables. get\_database api call needs database directory read privilege. get\_table\_* calls that fetch table information and get\_partition\_* calls to list the partitions of a table require read privilege on the table directory. 
. It is enabled by default with Storagebased authorization. Set hive.security.metastore.authorization.auth.reads=false to disable this check in storage based authorization.


---

* [HIVE-8158](https://issues.apache.org/jira/browse/HIVE-8158) | *Major* | **Optimize writeValue/setValue in VectorExpressionWriterFactory (in VectorReduceSinkOperator codepath)**

HIVE-8158: Optimize writeValue/setValue in VectorExpressionWriterFactory


---

* [HIVE-8156](https://issues.apache.org/jira/browse/HIVE-8156) | *Major* | **Vectorized reducers need to avoid memory build-up during a single key**

HIVE-8156: Vectorized reducers need to avoid memory build-up during a single key (Gopal V reviewed by Prasanth J)


---

* [HIVE-8151](https://issues.apache.org/jira/browse/HIVE-8151) | *Blocker* | **Dynamic partition sort optimization inserts record wrongly to partition when used with GroupBy**

Added config changes to https://cwiki.apache.org/confluence/display/Hive/Configuration+Properties


---

* [HIVE-8114](https://issues.apache.org/jira/browse/HIVE-8114) | *Major* | **Type resolution for udf arguments of Decimal Type results in error**

Removes mixed double/decimal versions of log(). log() will be resolved to one of the following versions, using type conversion where necessary:

double log(double base, double a)
double log(decimal base, decimal a)


---

* [HIVE-8090](https://issues.apache.org/jira/browse/HIVE-8090) | *Minor* | **Potential null pointer reference in WriterImpl#StreamFactory#createStream()**

Committed to trunk - thanks  [~rpalamut]!


---

* [HIVE-8083](https://issues.apache.org/jira/browse/HIVE-8083) | *Major* | **Authorization DDLs should not enforce hive identifier syntax for user or group**

The user name in the grant and revoke statements may be optionally surrounded by backtick characters (`) irrespective of the hive.support.quoted.identifiers setting.


---

* [HIVE-8071](https://issues.apache.org/jira/browse/HIVE-8071) | *Major* | **hive shell tries to write hive-exec.jar for each run**

"HIVE-8071: Speed up hive shell startup by avoiding hive-exec.jar uploads (Rajesh Balamohan via Gopal V)"


---

* [HIVE-8038](https://issues.apache.org/jira/browse/HIVE-8038) | *Major* | **Decouple ORC files split calculation logic from Filesystem's get file location implementation**

HIVE-8038: Decouple ORC files split calculation logic from fixed-size block assumptions. (Pankit Thapar via Gopal V)


---

* [HIVE-7936](https://issues.apache.org/jira/browse/HIVE-7936) | *Major* | **Support for handling Thrift Union types**

Support Thrift union type as hive union type


---

* [HIVE-7901](https://issues.apache.org/jira/browse/HIVE-7901) | *Major* | **CLONE - pig -useHCatalog with embedded metastore fails to pass command line args to metastore (org.apache.hive.hcatalog version)**

(None, this is reinstating a fix that was already in place with HIVE-6633 and was lost)


---

* [HIVE-7892](https://issues.apache.org/jira/browse/HIVE-7892) | *Major* | **Thrift Set type not working with Hive**

Maps thrift's set type to hive's array type.


---

* [HIVE-7832](https://issues.apache.org/jira/browse/HIVE-7832) | *Major* | **Do ORC dictionary check at a finer level and preserve encoding across stripes**

Added the new configuration to https://cwiki.apache.org/confluence/display/Hive/Configuration+Properties#ConfigurationProperties-ORCFileFormat


---

* [HIVE-7777](https://issues.apache.org/jira/browse/HIVE-7777) | *Major* | **Add CSV Serde based on OpenCSV**

A CSVSerde based on OpenCSV has been added. This Serde works for most CSV data, but does not handled embedded newlines. To use the Serde, specify the fully qualified class name org.apache.hadoop.hive.serde2.OpenCSVSerde.


---

* [HIVE-7738](https://issues.apache.org/jira/browse/HIVE-7738) | *Major* | **tez select sum(decimal) from union all of decimal and null throws NPE**

tez select sum(decimal) from union all of decimal and null throws NPE (Alexander Pivovarov, reviewed by Gopal V)


---

* [HIVE-7694](https://issues.apache.org/jira/browse/HIVE-7694) | *Major* | **SMB join on tables differing by number of sorted by columns with same join prefix fails**

SMB join on tables differing by number of sorted by columns with same join prefix


---

* [HIVE-7669](https://issues.apache.org/jira/browse/HIVE-7669) | *Major* | **parallel order by clause on a string column fails with IOException: Split points are out of order**

Background: HIVE-1402 added parallelism (multiple reducers) to an order-by query, enabled by "hive.optimize.sampling.orderby".  As order-by requires total order, partitioning data among reducers uses a range-partition, and thus sampling is needed to give us the values for the ranges of each reducer (eg, 1-100, 100-200, etc). 

HIVE-7669 fixes the algorithm to generate a better range-partition split when the sample data lacks enough unique values.


---

* [HIVE-7647](https://issues.apache.org/jira/browse/HIVE-7647) | *Minor* | **Beeline does not honor --headerInterval and --color when executing with "-e"**

Beeline does not honor --headerInterval and --color options when running with "-e" option. It results in header being printed after each row. This has now been resolved in Hive 0.14.


---

* [HIVE-7553](https://issues.apache.org/jira/browse/HIVE-7553) | *Major* | **avoid the scheduling maintenance window for every jar change**

The newly added parameter "hive.reloadable.aux.jars.path" is serving for the complement of the previous configuration "hive.aux.jars.path". In order to making the HiveServer2 as a service, it should not be restarted when the auxiliary jars changed. In this JIRA, a new command "reload" with a parameter "hive.reloadable.aux.jars.path" can be used for avoid the scheduling maintenance window for every jar change. User can execute the reload command via the beeline to make the HS2 aware of the changes made in the path specified by the parameter "hive.reloadable.aux.jars.path". And the supported changes including adding, removing or updating jar files.


---

* [HIVE-7544](https://issues.apache.org/jira/browse/HIVE-7544) | *Major* | **Changes related to TEZ-1288 (FastTezSerialization)**

TEZ-1288 related changes


---

* [HIVE-7509](https://issues.apache.org/jira/browse/HIVE-7509) | *Major* | **Fast stripe level merging for ORC**

Added hive.merge.orcfile.stripe.level configuration parameter here https://cwiki.apache.org/confluence/display/Hive/Configuration+Properties#ConfigurationProperties-HiveConfigurationProperties

Added concatenate syntax to https://cwiki.apache.org/confluence/display/Hive/LanguageManual+DDL#LanguageManualDDL-AlterTable/PartitionConcatenate


---

* [HIVE-7446](https://issues.apache.org/jira/browse/HIVE-7446) | *Major* | **Add support to ALTER TABLE .. ADD COLUMN to Avro backed tables**

Support to add columns to an Avro backed Hive table using Alter Table﻿ statement.


---

* [HIVE-7427](https://issues.apache.org/jira/browse/HIVE-7427) | *Major* | **Changes for EdgeConfigurations**

Committed to tez branch.


---

* [HIVE-7397](https://issues.apache.org/jira/browse/HIVE-7397) | *Major* | **Set the default threshold for fetch task conversion to 1Gb**

Set the simple fetch task conversion to "more" with a default threshold of 1Gb


---

* [HIVE-7394](https://issues.apache.org/jira/browse/HIVE-7394) | *Trivial* | **ORC writer logging fails when the padding is \< 0.01**

Fix logging of ORC padding percentages during inserts


---

* [HIVE-7390](https://issues.apache.org/jira/browse/HIVE-7390) | *Major* | **Make single quote character optional and configurable in BeeLine CSV/TSV output**

--outputformat=[table/vertical/csv/tsv/dsv]	
Format mode for result display. Default is table.
Usage: beeline --outputformat=tsv

--delimiterForDSV=DELIMITER
specify the delimiter for delimiter-separated values output format (default: |)
Usage: beeline --outputformat=dsv --delimiterForDSV=,

beeline dsv and delimiterForDSV examples are as followings:
% bin/beeline
Hive version 0.11.0-SNAPSHOT by Apache
beeline> !connect jdbc:hive2://localhost:10000 scott tiger org.apache.hive.jdbc.HiveDriver
!connect jdbc:hive2://localhost:10000 scott tiger org.apache.hive.jdbc.HiveDriver
Connecting to jdbc:hive2://localhost:10000
Connected to: Hive (version 0.14.0-SNAPSHOT)
Driver: Hive (version 0.14.0-SNAPSHOT)
Transaction isolation: TRANSACTION\_REPEATABLE\_READ
HiveServer2 Clients – dsv Example
0: jdbc:hive2://localhost:10000> create table csv\_table(id int, name string, info string) row format delimited fields terminated by '\t';
No rows affected (0.121 seconds)
0: jdbc:hive2://localhost:10000> load data local inpath '/root/names' overwrite into table csv\_table;               
No rows affected (0.245 seconds)
0: jdbc:hive2://localhost:10000> select * from csv\_table;                                                               
+---------------+-----------------+-----------------+--+
| csv\_table.id  | csv\_table.name  | csv\_table.info  |
+---------------+-----------------+-----------------+--+
| 19630001      | "john"          | lennon          |
| 19630002      | peter,paul      | mccartney       |
| 19630003      | george          | harrison        |
| 19630004      | ringo           | starr           |
+---------------+-----------------+-----------------+--+
4 rows selected (0.09 seconds)
0: jdbc:hive2://localhost:10000> !outformat csv 
Unknown command: outformat csv
0: jdbc:hive2://localhost:10000> !outputformat csv
0: jdbc:hive2://localhost:10000> select * from csv\_table;
csv\_table.id,csv\_table.name,csv\_table.info
19630001,"""john""",lennon
19630002,"peter,paul",mccartney
19630003,george,harrison
19630004,ringo,starr
4 rows selected (0.105 seconds)
0: jdbc:hive2://localhost:10000> !outputformat dsv       
0: jdbc:hive2://localhost:10000> select * from csv\_table;
csv\_table.id|csv\_table.name|csv\_table.info
19630001|"""john"""|lennon
19630002|peter,paul|mccartney
19630003|george|harrison
19630004|ringo|starr
4 rows selected (0.123 seconds)
0: jdbc:hive2://localhost:10000> !set delimiterForDSV ',';
0: jdbc:hive2://localhost:10000> select * from csv\_table; 
csv\_table.id'csv\_table.name'csv\_table.info
19630001'"""john"""'lennon
19630002'peter,paul'mccartney
19630003'george'harrison
19630004'ringo'starr
4 rows selected (0.11 seconds)


---

* [HIVE-7385](https://issues.apache.org/jira/browse/HIVE-7385) | *Major* | **Optimize for empty relation scans**

Don't scan relations which are guaranteed to not generate any rows.


---

* [HIVE-7381](https://issues.apache.org/jira/browse/HIVE-7381) | *Trivial* | **Class TezEdgeProperty missing license header**

It would be good if we can go thru all other Tez related classes to fix all in one shot.


---

* [HIVE-7361](https://issues.apache.org/jira/browse/HIVE-7361) | *Major* | **using authorization api for RESET, DFS, ADD, DELETE, COMPILE commands**

This also changes behavior in SQL std auth -
reset command is now allowed.
dfs,add,delete,compile commands are now allowed for the admin user.


---

* [HIVE-7343](https://issues.apache.org/jira/browse/HIVE-7343) | *Major* | **Update committer list**

Committed Gopal's version of the patch.  Thanks Gopal.


---

* [HIVE-7342](https://issues.apache.org/jira/browse/HIVE-7342) | *Major* | **support hiveserver2,metastore specific config files**

Adds support for server specific config files. 

HiveMetastore server reads hive-site.xml as well as hivemetastore-site.xml configuration files that are available in the $HIVE\_CONF\_DIR or in the classpath. If metastore is being used in embedded mode (ie hive.metastore.uris is not set or empty) in hive commandline or hiveserver2, the hivemetastore-site.xml gets loaded by the parent process as well. 
The value of hive.metastore.uris is examined to determine this, and the value should be set appropriately in hive-site.xml .
Certain metastore configuration parameters like hive.metastore.sasl.enabled, hive.metastore.kerberos.principal, hive.metastore.execute.setugi, hive.metastore.thrift.framed.transport.enabled are used by the metastore client as well as server. For such common parameters it is better to set the values in hive-site.xml, that will help in keeping them consistent.

HiveServer2 reads hive-site.xml as well as hiveserver2-site.xml that are available in the $HIVE\_CONF\_DIR or in the classpath. 
If hiveserver2 is using metastore in embedded mode, hivemetastore-site.xml also is loaded.

The order of precedence of the config files is as follows (later one has higher precedence) -
hive-site.xml -> hivemetastore-site.xml -> hiveserver2-site.xml -> '-hiveconf' commandline parameters


---

* [HIVE-7325](https://issues.apache.org/jira/browse/HIVE-7325) | *Major* | **Support non-constant expressions for ARRAY/MAP type indices.**

Supports negative and non-constant expressions for ARRAY/MAP type indices.


---

* [HIVE-7289](https://issues.apache.org/jira/browse/HIVE-7289) | *Major* | **revert HIVE-6469**

Remove documentation, if any, for HIVE-6469, as its change has been reverted.


---

* [HIVE-7271](https://issues.apache.org/jira/browse/HIVE-7271) | *Major* | **Speed up unit tests**

hive.exec.submit.local.task.via.child

Determines whether local tasks (typically mapjoin hashtable generation phase) runs in separate JVM ("true", recommended) or not. Avoids the overhead of spawning new JVM, but can lead to out-of-memory issues.


---

* [HIVE-7236](https://issues.apache.org/jira/browse/HIVE-7236) | *Minor* | **Tez progress monitor should indicate running/failed tasks**

Log Tez running/failed tasks in TezJobMonitor


---

* [HIVE-7232](https://issues.apache.org/jira/browse/HIVE-7232) | *Major* | **VectorReduceSink is emitting incorrect JOIN keys**

VectorReduceSink is emitting incorrect JOIN keys (Navis, via Gopal V)


---

* [HIVE-7231](https://issues.apache.org/jira/browse/HIVE-7231) | *Major* | **Improve ORC padding**

HIVE-7231 : Improve ORC padding (Prasanth J, reviewed by Gopal V)


---

* [HIVE-7209](https://issues.apache.org/jira/browse/HIVE-7209) | *Major* | **allow metastore authorization api calls to be restricted to certain invokers**

With this change hive.security.metastore.authorization.manager configuration parameter allows you to specify more than one authorization manager class (comma separated).

This patch introduces a new authorization manager for use under this configuration - org.apache.hadoop.hive.ql.security.authorization.MetaStoreAuthzAPIAuthorizerEmbedOnly. It will disallow any of the authorization api calls to be invoked in a remote metastore.
HiveServer2 can be configured to use embedded metastore, and that will allow it to invoke metastore authorization api. Hive cli and any other remote metastore users would be denied authorization when they try to make authorization api calls. This allows restricting the authorization api use to privileged HiveServer2 process.


---

* [HIVE-7204](https://issues.apache.org/jira/browse/HIVE-7204) | *Minor* | **Use NULL vertex location hint for Prewarm DAG vertices**

Use NULL VertexLocationHint for prewarm DAG vertexes.


---

* [HIVE-7165](https://issues.apache.org/jira/browse/HIVE-7165) | *Major* | **Fix hive-default.xml.template errors & omissions**

Fix errors and omissions in hive-default.xml.template file.


---

* [HIVE-7156](https://issues.apache.org/jira/browse/HIVE-7156) | *Blocker* | **Group-By operator stat-annotation only uses distinct approx to generate rollups**

Updated the removal of config in
https://cwiki.apache.org/confluence/display/Hive/Configuration+Properties#ConfigurationProperties-hive.stats.map.parallelism
https://cwiki.apache.org/confluence/display/Hive/Configuration+Properties#ConfigurationProperties-Tez


---

* [HIVE-7147](https://issues.apache.org/jira/browse/HIVE-7147) | *Minor* | **ORC PPD should handle CHAR/VARCHAR types**

ORC PPD should recognize CHAR/VARCHAR index entries


---

* [HIVE-7144](https://issues.apache.org/jira/browse/HIVE-7144) | *Major* | **GC pressure during ORC StringDictionary writes**

Use Text writables directly in ORC dictionaries to avoid String allocations.


---

* [HIVE-7137](https://issues.apache.org/jira/browse/HIVE-7137) | *Minor* | **Add progressable to writer interfaces so they could report progress while different operations are in progress**

This patch has been rebased to current state of hive 0.13 branch (0.13.1)


---

* [HIVE-7105](https://issues.apache.org/jira/browse/HIVE-7105) | *Major* | **Enable ReduceRecordProcessor to generate VectorizedRowBatches**

Tez vectorized shuffle record reader


---

* [HIVE-7100](https://issues.apache.org/jira/browse/HIVE-7100) | *Major* | **Users of hive should be able to specify skipTrash when dropping tables.**

Add PURGE option to DROP TABLE to skip moving table data to the trash


---

* [HIVE-7068](https://issues.apache.org/jira/browse/HIVE-7068) | *Major* | **Integrate AccumuloStorageHandler**

Introduces accumulo-handler


---

* [HIVE-7051](https://issues.apache.org/jira/browse/HIVE-7051) | *Major* | **Display partition level column stats in DESCRIBE FORMATTED PARTITION**

Added "Display column statistics" section to https://cwiki.apache.org/confluence/display/Hive/LanguageManual+DDL#LanguageManualDDL-Describe


---

* [HIVE-7050](https://issues.apache.org/jira/browse/HIVE-7050) | *Major* | **Display table level column stats in DESCRIBE FORMATTED TABLE**

Added "Display column statistics" section to https://cwiki.apache.org/confluence/display/Hive/LanguageManual+DDL#LanguageManualDDL-Describe


---

* [HIVE-6972](https://issues.apache.org/jira/browse/HIVE-6972) | *Major* | **jdbc HTTP configuration options should be part of sessionConf part of connection string**

Check jira description.


---

* [HIVE-6806](https://issues.apache.org/jira/browse/HIVE-6806) | *Minor* | **CREATE TABLE should support STORED AS AVRO**

Add support to infer Avro schema from Hive table schema. Avro-backed tables can simply be created by using "STORED AS AVRO" in DDL statement. AvroSerDe takes care of creating appropriate Avro schema from Hive table schema, a big win in terms of Avro usability in Hive.


---

* [HIVE-6694](https://issues.apache.org/jira/browse/HIVE-6694) | *Major* | **Beeline should provide a way to execute shell command as Hive CLI does**

Please doc the new feature.


---

* [HIVE-6586](https://issues.apache.org/jira/browse/HIVE-6586) | *Blocker* | **Update parameters in HiveConf.java after commit HIVE-6037**

Update the parameter descriptions in HiveConf.java.


---

* [HIVE-6584](https://issues.apache.org/jira/browse/HIVE-6584) | *Major* | **Add HiveHBaseTableSnapshotInputFormat**

Hive can now execute queries against HBase table snapshots. This feature is available for any table defined using the HBaseStorageHandler. It requires at least HBase 0.98.3.

To query against a snapshot instead of the online table, specify the snapshot name via hive.hbase.snapshot.name. The snapshot will be restored into a unique directory under /tmp. This location can be overridden by setting a path via hive.hbase.snapshot.restoredir.


---

* [HIVE-6570](https://issues.apache.org/jira/browse/HIVE-6570) | *Major* | **Hive variable substitution does not work with the "source" command**

This patch adds Hive variable substitution support to the "source" command.  For example, you will now be able to use a statement such as:
source ${hivevar:test-dir}/test.q;


---

* [HIVE-6561](https://issues.apache.org/jira/browse/HIVE-6561) | *Major* | **Beeline should accept -i option to Initializing a SQL file**

Document the new feature.


---

* [HIVE-6473](https://issues.apache.org/jira/browse/HIVE-6473) | *Major* | **Allow writing HFiles via HBaseStorageHandler table**

Allows direct creation of HFiles and location for them as part of HBaseStorageHandler write if the following properties are specified in the HQL:

set hive.hbase.generatehfiles=true;
set hfile.family.path=/tmp/columnfamily\_name;

hfile.family.path can also be set as a table property, HQL value takes precedence.


---

* [HIVE-6455](https://issues.apache.org/jira/browse/HIVE-6455) | *Major* | **Scalable dynamic partitioning and bucketing optimization**

Added the new config to https://cwiki.apache.org/confluence/display/Hive/Configuration+Properties


---

* [HIVE-6432](https://issues.apache.org/jira/browse/HIVE-6432) | *Major* | **Remove deprecated methods in HCatalog**

Removes all org.apache.hcatalog.* components, removes all functions and methods that were deprecated on and before hive-0.12.

Warning note : especially removes HBaseHCatStorageHandler altogether.


---

* [HIVE-6411](https://issues.apache.org/jira/browse/HIVE-6411) | *Minor* | **Support more generic way of using composite key for HBaseHandler**

The new feature needs to be documented at Hive-HBase integration page.


---

* [HIVE-6252](https://issues.apache.org/jira/browse/HIVE-6252) | *Major* | **sql std auth - support 'with admin option' in revoke role metastore api**

Adds support for "ADMIN OPTION FOR" in revoke role.
It lets you revoke the ADMIN OPTION of a user on a role. The user remains a member of that role.
eg -
revoke admin option for src\_role\_wadmin from user user2;


---

* [HIVE-6093](https://issues.apache.org/jira/browse/HIVE-6093) | *Minor* | **table creation should fail when user does not have permissions on db**

One cannot create table (whether or not they provide a LOCATION) if they do not have WRITE permission on the database directory.


---

* [HIVE-5823](https://issues.apache.org/jira/browse/HIVE-5823) | *Major* | **Support for DECIMAL primitive type in AvroSerDe**

The feature may need to be properly documented on Hive avro support.


---

* [HIVE-5607](https://issues.apache.org/jira/browse/HIVE-5607) | *Minor* | **Hive fails to parse the "%" (mod) sign after brackets.**

From 0.10.0 to 0.13.0, the following syntax for order by is allowed (though the doc doesn't specify):

select * from table order by (expr1, exp2);

From 0.14, the above syntax is illegal. Instead, the following should be used:

select * from table order by expr1, exp2;


---

* [HIVE-3635](https://issues.apache.org/jira/browse/HIVE-3635) | *Major* | ** allow 't', 'T', '1', 'f', 'F', and '0' to be allowable true/false values for the boolean hive type**

New configuration, hive.lazysimple.extended\_boolean\_literal, needs to be documented.


---

* [HIVE-2974](https://issues.apache.org/jira/browse/HIVE-2974) | *Major* | **Add online docs for from\_utc\_timestamp() and to\_utc\_timestamp()**

patch available for this


---

* [HIVE-2390](https://issues.apache.org/jira/browse/HIVE-2390) | *Major* | **Add UNIONTYPE serialization support to LazyBinarySerDe**

Adds UnionType support in LazyBinarySerde



