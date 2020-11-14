
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
# Apache Spark Changelog

## Release 2.4.6 - 2020-06-05



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-31582](https://issues.apache.org/jira/browse/SPARK-31582) | Being able to not populate Hadoop classpath |  Major | Spark Core, YARN | DB Tsai | DB Tsai |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-25595](https://issues.apache.org/jira/browse/SPARK-25595) | Ignore corrupt Avro file if flag IGNORE\_CORRUPT\_FILES enabled |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-25102](https://issues.apache.org/jira/browse/SPARK-25102) | Write Spark version to ORC/Parquet file metadata |  Major | SQL | Zoltan Ivanfi | Dongjoon Hyun |
| [SPARK-26908](https://issues.apache.org/jira/browse/SPARK-26908) | Fix toMillis |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-27262](https://issues.apache.org/jira/browse/SPARK-27262) | Add explicit UTF-8 Encoding to DESCRIPTION |  Trivial | R | Dongjoon Hyun | Michael Chirico |
| [SPARK-30944](https://issues.apache.org/jira/browse/SPARK-30944) | Use latest URL for Google Cloud Storage mirror of Maven Central |  Major | Build | Josh Rosen | Josh Rosen |
| [SPARK-31327](https://issues.apache.org/jira/browse/SPARK-31327) | write spark version to avro file metadata |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31449](https://issues.apache.org/jira/browse/SPARK-31449) | Investigate the difference between JDK and Spark's time zone offset calculation |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31787](https://issues.apache.org/jira/browse/SPARK-31787) | Fix Minikube.getIfNewMinikubeStatus to understand 1.5+ |  Minor | Kubernetes, Tests | Dongjoon Hyun | Marcelo Masiero Vanzin |
| [SPARK-31839](https://issues.apache.org/jira/browse/SPARK-31839) | delete  duplicate code |  Minor | Tests | philipse | philipse |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-26095](https://issues.apache.org/jira/browse/SPARK-26095) | make-distribution.sh is hanging in jenkins |  Critical | Build | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-26293](https://issues.apache.org/jira/browse/SPARK-26293) | Cast exception when having python udf in subquery |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-29295](https://issues.apache.org/jira/browse/SPARK-29295) | Duplicate result when dropping partition of an external table and then overwriting |  Major | SQL | feiwang | L. C. Hsieh |
| [SPARK-25694](https://issues.apache.org/jira/browse/SPARK-25694) | URL.setURLStreamHandlerFactory causing incompatible HttpURLConnection issue |  Minor | Spark Core, SQL | Bo Yang | Zhou Jiang |
| [SPARK-30199](https://issues.apache.org/jira/browse/SPARK-30199) | Recover spark.ui.port and spark.blockManager.port from checkpoint |  Major | DStreams | Dongjoon Hyun | Aaruna Godthi |
| [SPARK-30759](https://issues.apache.org/jira/browse/SPARK-30759) | The cache in StringRegexExpression is not initialized for foldable patterns |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-30797](https://issues.apache.org/jira/browse/SPARK-30797) | Set tradition user/group/other permission to ACL entries when setting up ACLs in truncate table |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-30826](https://issues.apache.org/jira/browse/SPARK-30826) | LIKE returns wrong result from external table using parquet |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-30823](https://issues.apache.org/jira/browse/SPARK-30823) | %PYTHONPATH% not set in python/docs/make2.bat, resulting in failed/wrong documentation builds |  Minor | Documentation, PySpark, Windows | David Toneian | David Toneian |
| [SPARK-30793](https://issues.apache.org/jira/browse/SPARK-30793) | Wrong truncations of timestamps before the epoch to minutes and seconds |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-30857](https://issues.apache.org/jira/browse/SPARK-30857) | Wrong truncations of timestamps before the epoch to hours and days |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-30811](https://issues.apache.org/jira/browse/SPARK-30811) | CTE that refers to non-existent table with same name causes StackOverflowError |  Major | SQL | Herman van Hövell | Herman van Hövell |
| [SPARK-30763](https://issues.apache.org/jira/browse/SPARK-30763) | Fix java.lang.IndexOutOfBoundsException No group 1 for regexp\_extract |  Major | SQL | jiaan.geng | jiaan.geng |
| [SPARK-30731](https://issues.apache.org/jira/browse/SPARK-30731) | Update deprecated Mkdocs option |  Trivial | Documentation | Nicholas Chammas | Nicholas Chammas |
| [SPARK-30968](https://issues.apache.org/jira/browse/SPARK-30968) | Upgrade aws-java-sdk-sts to 1.11.655 |  Minor | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-30970](https://issues.apache.org/jira/browse/SPARK-30970) | Fix NPE in resolving k8s master url |  Minor | Kubernetes, Spark Core | Kent Yao | Kent Yao |
| [SPARK-29419](https://issues.apache.org/jira/browse/SPARK-29419) | Seq.toDS / spark.createDataset(Seq) is not thread-safe |  Blocker | SQL | Josh Rosen | Josh Rosen |
| [SPARK-30813](https://issues.apache.org/jira/browse/SPARK-30813) | Matrices.sprand mistakes in comments |  Trivial | ML | Xiaochang Wu | Xiaochang Wu |
| [SPARK-30993](https://issues.apache.org/jira/browse/SPARK-30993) | GenerateUnsafeRowJoiner corrupts the value if the datatype is UDF and its sql type has fixed length |  Major | SQL | Jungtaek Lim | Jungtaek Lim |
| [SPARK-31003](https://issues.apache.org/jira/browse/SPARK-31003) | Fix incorrect use of assume() in tests |  Major | Tests | Josh Rosen | Josh Rosen |
| [SPARK-30998](https://issues.apache.org/jira/browse/SPARK-30998) | ClassCastException when a generator having nested inner generators |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-30941](https://issues.apache.org/jira/browse/SPARK-30941) | PySpark Row can be instantiated with duplicate field names |  Major | PySpark | David Roher | Hyukjin Kwon |
| [SPARK-31095](https://issues.apache.org/jira/browse/SPARK-31095) | Upgrade netty-all to 4.1.47.Final |  Major | Build | Vishwas Vijaya Kumar | Dongjoon Hyun |
| [SPARK-31130](https://issues.apache.org/jira/browse/SPARK-31130) | Use the same version of \`commons-io\` in SBT |  Minor | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-31163](https://issues.apache.org/jira/browse/SPARK-31163) | acl/permission should handle non-existed path when truncating table |  Major | SQL | wuyi | wuyi |
| [SPARK-31164](https://issues.apache.org/jira/browse/SPARK-31164) | Inconsistent rdd and output partitioning for bucket table when output doesn't contain all bucket columns |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-31101](https://issues.apache.org/jira/browse/SPARK-31101) | Upgrade Janino to 3.0.16 |  Major | Build | Jungtaek Lim | Jungtaek Lim |
| [SPARK-30494](https://issues.apache.org/jira/browse/SPARK-30494) | Duplicates cached RDD when create or replace an existing view |  Major | SQL | Lantao Jin | Lantao Jin |
| [SPARK-31186](https://issues.apache.org/jira/browse/SPARK-31186) | toPandas fails on simple query (collect() works) |  Minor | PySpark | Michael Chirico | L. C. Hsieh |
| [SPARK-31261](https://issues.apache.org/jira/browse/SPARK-31261) | Avoid npe when reading bad csv input with \`columnNameCorruptRecord\` specified |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-31293](https://issues.apache.org/jira/browse/SPARK-31293) | Fix wrong examples and help messages for Kinesis integration |  Minor | Documentation, DStreams | Kengo Seki | Kengo Seki |
| [SPARK-31312](https://issues.apache.org/jira/browse/SPARK-31312) | Transforming Hive simple UDF (using JAR) expression may incur CNFE in later evaluation |  Major | SQL | Jungtaek Lim | Jungtaek Lim |
| [SPARK-31231](https://issues.apache.org/jira/browse/SPARK-31231) | Support setuptools 46.1.0+ in PySpark packaging |  Blocker | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-31382](https://issues.apache.org/jira/browse/SPARK-31382) | Show a better error message for different python and pip installation mistake |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-31422](https://issues.apache.org/jira/browse/SPARK-31422) | Fix NPE when BlockManagerSource is used after BlockManagerMaster stops |  Major | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-31420](https://issues.apache.org/jira/browse/SPARK-31420) | Infinite timeline redraw in job details page |  Major | Web UI | Gengliang Wang | Kousuke Saruta |
| [SPARK-31256](https://issues.apache.org/jira/browse/SPARK-31256) | Dropna doesn't work for struct columns |  Major | PySpark | Michael Souder | Terry Kim |
| [SPARK-31234](https://issues.apache.org/jira/browse/SPARK-31234) | ResetCommand should not wipe out all configs |  Blocker | SQL | Kent Yao | Kent Yao |
| [SPARK-31503](https://issues.apache.org/jira/browse/SPARK-31503) | fix the SQL string of the TRIM functions |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31544](https://issues.apache.org/jira/browse/SPARK-31544) | Backport SPARK-30199       Recover \`spark.(ui\|blockManager).port\` from checkpoint |  Major | DStreams | Holden Karau | Dongjoon Hyun |
| [SPARK-31532](https://issues.apache.org/jira/browse/SPARK-31532) | SparkSessionBuilder shoud not propagate static sql configurations to the existing active/default SparkSession |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-31552](https://issues.apache.org/jira/browse/SPARK-31552) | Fix potential ClassCastException in ScalaReflection arrayClassFor |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-31563](https://issues.apache.org/jira/browse/SPARK-31563) | Failure of InSet.sql for UTF8String collection |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31485](https://issues.apache.org/jira/browse/SPARK-31485) | Barrier stage can hang if only partial tasks launched |  Major | Spark Core | wuyi | wuyi |
| [SPARK-31589](https://issues.apache.org/jira/browse/SPARK-31589) | Use \`r-lib/actions/setup-r\` in GitHub Action |  Major | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-31519](https://issues.apache.org/jira/browse/SPARK-31519) | Cast in having aggregate expressions returns the wrong result |  Blocker | SQL | Yuanjian Li | Yuanjian Li |
| [SPARK-31601](https://issues.apache.org/jira/browse/SPARK-31601) | Fix spark.kubernetes.executor.podNamePrefix to work |  Major | Kubernetes, Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-31500](https://issues.apache.org/jira/browse/SPARK-31500) | collect\_set() of BinaryType returns duplicate elements |  Major | SQL | Eric Wasserman | Pablo Langa Blanco |
| [SPARK-31590](https://issues.apache.org/jira/browse/SPARK-31590) | Metadata-only queries should not include subquery in partition filters |  Trivial | SQL | dzcxzl | dzcxzl |
| [SPARK-31653](https://issues.apache.org/jira/browse/SPARK-31653) | setuptools needs to be installed before anything else |  Blocker | Build | Holden Karau | Holden Karau |
| [SPARK-31655](https://issues.apache.org/jira/browse/SPARK-31655) | Upgrade snappy to version 1.1.7.5 |  Minor | Build | angerszhu | angerszhu |
| [SPARK-27497](https://issues.apache.org/jira/browse/SPARK-27497) | Spark wipes out bucket spec in metastore when updating table stats |  Major | SQL | Bruce Robbins |  |
| [SPARK-31456](https://issues.apache.org/jira/browse/SPARK-31456) | If shutdownhook is added with priority Integer.MIN\_VALUE, it's supposed to be called the last, but it gets called before other positive priority shutdownhook |  Major | Spark Core | Xiaolei Liu | Oleg Kuznetsov |
| [SPARK-31671](https://issues.apache.org/jira/browse/SPARK-31671) | Wrong error message in VectorAssembler  when column lengths can not be inferred |  Minor | ML | YijieFan | YijieFan |
| [SPARK-31691](https://issues.apache.org/jira/browse/SPARK-31691) | release-build.sh should ignore a fallback output from \`build/mvn\` |  Major | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-31632](https://issues.apache.org/jira/browse/SPARK-31632) | The ApplicationInfo in KVStore may be accessed before it's prepared |  Minor | Spark Core, Web UI | Xingcan Cui | Xingcan Cui |
| [SPARK-31692](https://issues.apache.org/jira/browse/SPARK-31692) | Hadoop confs passed via spark config are not set in URLStream Handler Factory |  Major | SQL | Karuppayya | Karuppayya |
| [SPARK-31676](https://issues.apache.org/jira/browse/SPARK-31676) | QuantileDiscretizer raise error parameter splits given invalid value (splits array includes -0.0 and 0.0) |  Major | ML | Weichen Xu | Weichen Xu |
| [SPARK-31713](https://issues.apache.org/jira/browse/SPARK-31713) | Make test-dependencies.sh detect version string correctly |  Major | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-31716](https://issues.apache.org/jira/browse/SPARK-31716) | Use a fallback version in HiveExternalCatalogVersionsSuite |  Major | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-31663](https://issues.apache.org/jira/browse/SPARK-31663) | Grouping sets with having clause returns the wrong result |  Major | SQL | Yuanjian Li | Yuanjian Li |
| [SPARK-31740](https://issues.apache.org/jira/browse/SPARK-31740) | Use github URL instead of a broken link |  Minor | Kubernetes, Tests | William Hyun | William Hyun |
| [SPARK-31399](https://issues.apache.org/jira/browse/SPARK-31399) | Closure cleaner broken in Scala 2.12 |  Blocker | Spark Core | Wenchen Fan | Kris Mok |
| [SPARK-31819](https://issues.apache.org/jira/browse/SPARK-31819) | Add a workaround for Java 8u251+/K8s 1.17 and update integration test cases |  Blocker | Documentation, Kubernetes, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-31541](https://issues.apache.org/jira/browse/SPARK-31541) | Backport SPARK-26095       Disable parallelization in make-distibution.sh. (Avoid build hanging) |  Major | Build | Holden Karau | Marcelo Masiero Vanzin |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-30733](https://issues.apache.org/jira/browse/SPARK-30733) | Fix SparkR tests per testthat and R version upgrade |  Critical | SparkR, SQL | Hyukjin Kwon |  |
| [SPARK-30737](https://issues.apache.org/jira/browse/SPARK-30737) | Reenable to generate Rd files |  Major | SparkR | Hyukjin Kwon |  |
| [SPARK-31712](https://issues.apache.org/jira/browse/SPARK-31712) | Check casting timestamps to byte/short/int/long before 1970-01-01 |  Major | SQL | Maxim Gekk | Maxim Gekk |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-31144](https://issues.apache.org/jira/browse/SPARK-31144) | Wrap java.lang.Error with an exception for QueryExecutionListener.onFailure |  Major | SQL | Shixiong Zhu | Shixiong Zhu |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-30834](https://issues.apache.org/jira/browse/SPARK-30834) | Add note for recommended versions of Pandas and PyArrow for 2.4.x |  Major | Documentation, PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-30907](https://issues.apache.org/jira/browse/SPARK-30907) | Revise the doc of spark.ui.retainedTasks |  Major | Documentation | Gengliang Wang | Gengliang Wang |
| [SPARK-31306](https://issues.apache.org/jira/browse/SPARK-31306) | rand() function documentation suggests an inclusive upper bound of 1.0 |  Major | PySpark, R, Spark Core | Ben | Ben |
| [SPARK-31568](https://issues.apache.org/jira/browse/SPARK-31568) | R: gapply documentation could be clearer about what the func argument is |  Minor | R | Michael Chirico | Michael Chirico |


