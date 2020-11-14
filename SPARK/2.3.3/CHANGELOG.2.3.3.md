
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

## Release 2.3.3 - 2019-02-15



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-26118](https://issues.apache.org/jira/browse/SPARK-26118) | Make Jetty's requestHeaderSize configurable in Spark |  Major | Web UI | Attila Zsolt Piros | Attila Zsolt Piros |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-25253](https://issues.apache.org/jira/browse/SPARK-25253) | Refactor pyspark connection & authentication |  Minor | PySpark | Imran Rashid | Imran Rashid |
| [SPARK-25754](https://issues.apache.org/jira/browse/SPARK-25754) | Change CDN for MathJax |  Trivial | Documentation | Gengliang Wang | Gengliang Wang |
| [SPARK-26316](https://issues.apache.org/jira/browse/SPARK-26316) | Because of the perf degradation in TPC-DS, we currently partial revert SPARK-21052：Add hash map metrics to join, |  Major | SQL | Ke Jia | Ke Jia |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-24677](https://issues.apache.org/jira/browse/SPARK-24677) | TaskSetManager not updating successfulTaskDurations for old stage attempts |  Critical | Spark Core | dzcxzl | dzcxzl |
| [SPARK-24755](https://issues.apache.org/jira/browse/SPARK-24755) | Executor loss can cause task to not be resubmitted |  Major | Spark Core | Mridul Muralidharan | Hieu Tri Huynh |
| [SPARK-25081](https://issues.apache.org/jira/browse/SPARK-25081) | Nested spill in ShuffleExternalSorter may access a released memory page |  Blocker | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-25425](https://issues.apache.org/jira/browse/SPARK-25425) | Extra options must overwrite sessions options |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-25471](https://issues.apache.org/jira/browse/SPARK-25471) | Fix tests for Python 3.6 with Pandas 0.23+ |  Major | PySpark, Tests | Bryan Cutler | Bryan Cutler |
| [SPARK-25450](https://issues.apache.org/jira/browse/SPARK-25450) | PushProjectThroughUnion rule uses the same exprId for project expressions in each Union child, causing mistakes in constant propagation |  Major | SQL | Wei Xue | Wei Xue |
| [SPARK-25502](https://issues.apache.org/jira/browse/SPARK-25502) | [Spark Job History] Empty Page when page number exceeds the reatinedTask size |  Minor | Web UI | ABHISHEK KUMAR GUPTA | shahid |
| [SPARK-25503](https://issues.apache.org/jira/browse/SPARK-25503) | [Spark Job History] Total task message in stage page is ambiguous |  Major | Web UI | ABHISHEK KUMAR GUPTA | shahid |
| [SPARK-25509](https://issues.apache.org/jira/browse/SPARK-25509) | SHS V2 cannot enabled in Windows, because POSIX permissions is not support. |  Major | Spark Core | Rong Tang | Rong Tang |
| [SPARK-25536](https://issues.apache.org/jira/browse/SPARK-25536) | executorSource.METRIC read wrong record in Executor.scala Line444 |  Major | Spark Core | ZhuoerXu | shahid |
| [SPARK-25533](https://issues.apache.org/jira/browse/SPARK-25533) | Inconsistent message for Completed Jobs in the  JobUI, when there are failed jobs, compared to spark2.2 |  Major | Web UI | shahid | shahid |
| [SPARK-25570](https://issues.apache.org/jira/browse/SPARK-25570) | Replace 2.3.1 with 2.3.2 in HiveExternalCatalogVersionsSuite |  Minor | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-25568](https://issues.apache.org/jira/browse/SPARK-25568) | Continue to update the remaining accumulators when failing to update one accumulator |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-25591](https://issues.apache.org/jira/browse/SPARK-25591) | PySpark Accumulators with multiple PythonUDFs |  Blocker | PySpark | Abdeali Kothari | L. C. Hsieh |
| [SPARK-25674](https://issues.apache.org/jira/browse/SPARK-25674) | If the records are incremented by more than 1 at a time,the number of bytes might rarely ever get updated |  Minor | SQL | liuxian | liuxian |
| [SPARK-25714](https://issues.apache.org/jira/browse/SPARK-25714) | Null Handling in the Optimizer rule BooleanSimplification |  Blocker | SQL | Xiao Li | Xiao Li |
| [SPARK-25726](https://issues.apache.org/jira/browse/SPARK-25726) | Flaky test: SaveIntoDataSourceCommandSuite.\`simpleString is redacted\` |  Minor | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-21402](https://issues.apache.org/jira/browse/SPARK-21402) | Fix java array of structs deserialization |  Major | SQL | Tom | Vladimir Kuriatkov |
| [SPARK-25768](https://issues.apache.org/jira/browse/SPARK-25768) | Constant argument expecting Hive UDAFs doesn't work |  Major | SQL | Peter Toth | Peter Toth |
| [SPARK-25795](https://issues.apache.org/jira/browse/SPARK-25795) | Fix CSV SparkR SQL Example |  Minor | Examples, R | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-25822](https://issues.apache.org/jira/browse/SPARK-25822) | Fix a race condition when releasing a Python worker |  Major | PySpark | Shixiong Zhu | Shixiong Zhu |
| [SPARK-25854](https://issues.apache.org/jira/browse/SPARK-25854) | mvn helper script always exits w/1, causing mvn builds to fail |  Critical | Build | Shane Knapp | Shane Knapp |
| [SPARK-25816](https://issues.apache.org/jira/browse/SPARK-25816) | Functions does not resolve Columns correctly |  Critical | SQL | Bowen Zhang | Peter Toth |
| [SPARK-25797](https://issues.apache.org/jira/browse/SPARK-25797) | Views created via 2.1 cannot be read via 2.2+ |  Major | SQL | Chenxiao Mao | Chenxiao Mao |
| [SPARK-25767](https://issues.apache.org/jira/browse/SPARK-25767) | Error reported in Spark logs when using the org.apache.spark:spark-sql\_2.11:2.3.2 Java library |  Major | SQL | Thomas Brugiere | Peter Toth |
| [SPARK-25837](https://issues.apache.org/jira/browse/SPARK-25837) | Web UI does not respect spark.ui.retainedJobs in some instances |  Minor | Web UI | Patrick Brown | Patrick Brown |
| [SPARK-26011](https://issues.apache.org/jira/browse/SPARK-26011) | pyspark app with "spark.jars.packages" config does not work |  Major | Spark Submit | shanyu zhao | shanyu zhao |
| [SPARK-25934](https://issues.apache.org/jira/browse/SPARK-25934) | Mesos: SPARK\_CONF\_DIR should not be propogated by spark submit |  Major | Mesos | Matt Molek | Matt Molek |
| [SPARK-26084](https://issues.apache.org/jira/browse/SPARK-26084) | AggregateExpression.references fails on unresolved expression trees |  Major | SQL | Simeon Simeonov | Simeon Simeonov |
| [SPARK-26109](https://issues.apache.org/jira/browse/SPARK-26109) | Duration in the task summary metrics table and the task table are different |  Minor | Spark Core, Web UI | shahid | shahid |
| [SPARK-25786](https://issues.apache.org/jira/browse/SPARK-25786) | If the ByteBuffer.hasArray is false , it will throw UnsupportedOperationException for Kryo |  Minor | Spark Core | liuxian | liuxian |
| [SPARK-26137](https://issues.apache.org/jira/browse/SPARK-26137) | Linux file separator is hard coded in DependencyUtils used in deploy process |  Major | Deploy | Mark Pavey | Mark Pavey |
| [SPARK-26211](https://issues.apache.org/jira/browse/SPARK-26211) | Fix InSet for binary, and struct and array with null. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-26201](https://issues.apache.org/jira/browse/SPARK-26201) | python broadcast.value on driver fails with disk encryption enabled |  Major | PySpark | Thomas Graves | Sanket Chintapalli |
| [SPARK-26198](https://issues.apache.org/jira/browse/SPARK-26198) | Metadata serialize null values throw NPE |  Minor | SQL | Yuming Wang | Yuming Wang |
| [SPARK-26233](https://issues.apache.org/jira/browse/SPARK-26233) | Incorrect decimal value with java beans and first/last/max... functions |  Blocker | SQL | Miquel Canes | Marco Gaido |
| [SPARK-26307](https://issues.apache.org/jira/browse/SPARK-26307) | Fix CTAS when INSERT a partitioned table using Hive serde |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-26315](https://issues.apache.org/jira/browse/SPARK-26315) | auto cast threshold from Integer to Float in approxSimilarityJoin of BucketedRandomProjectionLSHModel |  Minor | MLlib, PySpark | Song Ci | Song Ci |
| [SPARK-26078](https://issues.apache.org/jira/browse/SPARK-26078) | WHERE .. IN fails to filter rows when used in combination with UNION |  Blocker | SQL | Arttu Voutilainen | Marco Gaido |
| [SPARK-26352](https://issues.apache.org/jira/browse/SPARK-26352) | Join reordering should not change the order of output attributes |  Major | SQL | Kris Mok | Kris Mok |
| [SPARK-26394](https://issues.apache.org/jira/browse/SPARK-26394) | Annotation error for Utils.timeStringAsMs |  Trivial | Documentation, Spark Core | Jackey Lee | Jackey Lee |
| [SPARK-26366](https://issues.apache.org/jira/browse/SPARK-26366) | Except with transform regression |  Major | Spark Core, SQL | Dan Osipov | Marco Gaido |
| [SPARK-24687](https://issues.apache.org/jira/browse/SPARK-24687) | When NoClassDefError thrown during task serialization will cause job hang |  Major | Spark Core | zhoukang | zhoukang |
| [SPARK-26422](https://issues.apache.org/jira/browse/SPARK-26422) | Unable to disable Hive support in SparkR when Hadoop version is unsupported |  Major | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-26444](https://issues.apache.org/jira/browse/SPARK-26444) | Stage color doesn't change with it's status |  Minor | Web UI | Chenxiao Mao | Chenxiao Mao |
| [SPARK-26496](https://issues.apache.org/jira/browse/SPARK-26496) | Avoid to use Random.nextString in StreamingInnerJoinSuite |  Minor | Structured Streaming, Tests | Bruce Robbins | Hyukjin Kwon |
| [SPARK-26019](https://issues.apache.org/jira/browse/SPARK-26019) | pyspark/accumulators.py: "TypeError: object of type 'NoneType' has no len()" in authenticate\_and\_accum\_updates() |  Major | PySpark | Ruslan Dautkhanov | Imran Rashid |
| [SPARK-26545](https://issues.apache.org/jira/browse/SPARK-26545) | Fix typo in EqualNullSafe's truth table comment |  Trivial | SQL | Kris Mok | Kris Mok |
| [SPARK-26537](https://issues.apache.org/jira/browse/SPARK-26537) | update the release scripts to point to gitbox |  Major | Build | Shane Knapp | Shane Knapp |
| [SPARK-26553](https://issues.apache.org/jira/browse/SPARK-26553) | NameError: global name '\_exception\_message' is not defined |  Major | PySpark | Dror Birkman |  |
| [SPARK-26538](https://issues.apache.org/jira/browse/SPARK-26538) | Postgres numeric array support |  Minor | SQL | Oleksii Shkarupin | Oleksii Shkarupin |
| [SPARK-26638](https://issues.apache.org/jira/browse/SPARK-26638) | Pyspark vector classes always return error for unary negation |  Major | ML, PySpark | Sean R. Owen | Sean R. Owen |
| [SPARK-26351](https://issues.apache.org/jira/browse/SPARK-26351) | Documented formula of precision at k does not match the actual code |  Minor | Documentation, MLlib | Pablo J. Villacorta | shahid |
| [SPARK-26665](https://issues.apache.org/jira/browse/SPARK-26665) | BlockTransferService.fetchBlockSync may hang forever |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-26228](https://issues.apache.org/jira/browse/SPARK-26228) | OOM issue encountered when computing Gramian matrix |  Major | MLlib | Chen Lin | Sean R. Owen |
| [SPARK-26682](https://issues.apache.org/jira/browse/SPARK-26682) | Task attempt ID collision causes lost data |  Blocker | SQL | Ryan Blue | Ryan Blue |
| [SPARK-26680](https://issues.apache.org/jira/browse/SPARK-26680) | StackOverflowError if Stream passed to groupBy |  Major | SQL | Bruce Robbins | Bruce Robbins |
| [SPARK-26709](https://issues.apache.org/jira/browse/SPARK-26709) | OptimizeMetadataOnlyQuery does not correctly handle the files with zero record |  Blocker | SQL | Xiao Li | Gengliang Wang |
| [SPARK-26379](https://issues.apache.org/jira/browse/SPARK-26379) | Use dummy TimeZoneId for CurrentTimestamp to avoid UnresolvedException in CurrentBatchTimestamp |  Major | Structured Streaming | Kailash Gupta | Jungtaek Lim |
| [SPARK-26718](https://issues.apache.org/jira/browse/SPARK-26718) | Fixed integer overflow in SS kafka rateLimit calculation |  Major | Structured Streaming | Ryne Yang | Ryne Yang |
| [SPARK-26732](https://issues.apache.org/jira/browse/SPARK-26732) | Flaky test: SparkContextInfoSuite.getRDDStorageInfo only reports on RDDs that actually persist data |  Major | Tests | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-26726](https://issues.apache.org/jira/browse/SPARK-26726) |   Synchronize the amount of memory used by the broadcast variable to the UI display |  Major | Spark Core | hantiantian | hantiantian |
| [SPARK-26757](https://issues.apache.org/jira/browse/SPARK-26757) | GraphX EdgeRDDImpl and VertexRDDImpl \`count\` method cannot handle empty RDDs |  Minor | GraphX | Huon Wilson | Huon Wilson |
| [SPARK-26806](https://issues.apache.org/jira/browse/SPARK-26806) | EventTimeStats.merge doesn't handle "zero.merge(zero)" correctly |  Major | Structured Streaming | Cheng Lian | Shixiong Zhu |
| [SPARK-26751](https://issues.apache.org/jira/browse/SPARK-26751) | HiveSessionImpl might have memory leak since Operation do not close properly |  Minor | SQL | zhoukang | zhoukang |
| [SPARK-26272](https://issues.apache.org/jira/browse/SPARK-26272) | Please delete old releases from mirroring system |  Major | Deploy, Documentation, Web UI | Sebb |  |
| [SPARK-26274](https://issues.apache.org/jira/browse/SPARK-26274) | Download page must link to https://www.apache.org/dist/spark for current releases |  Minor | Documentation | Sebb | Sean R. Owen |
| [SPARK-28626](https://issues.apache.org/jira/browse/SPARK-28626) | Spark leaves unencrypted data on local disk, even with encryption turned on (CVE-2019-10099) |  Major | Security | Imran Rashid |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-26120](https://issues.apache.org/jira/browse/SPARK-26120) | Fix a streaming query leak in Structured Streaming R tests |  Minor | SparkR, Structured Streaming, Tests | Shixiong Zhu | Shixiong Zhu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-25572](https://issues.apache.org/jira/browse/SPARK-25572) | SparkR tests failed on CRAN on Java 10 |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-26010](https://issues.apache.org/jira/browse/SPARK-26010) | SparkR vignette fails on CRAN on Java 11 |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-26327](https://issues.apache.org/jira/browse/SPARK-26327) | Metrics in FileSourceScanExec not update correctly while relation.partitionSchema is set |  Major | SQL | Yuanjian Li | Yuanjian Li |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-25583](https://issues.apache.org/jira/browse/SPARK-25583) | Add newly added History server related configurations in the documentation |  Minor | Spark Core | shahid | shahid |
| [SPARK-25933](https://issues.apache.org/jira/browse/SPARK-25933) | Fix pstats reference for spark.python.profile.dump in configuration.md |  Trivial | Documentation | Alex Hagerman | Alex Hagerman |
| [SPARK-26607](https://issues.apache.org/jira/browse/SPARK-26607) | Remove Spark 2.2.x testing from HiveExternalCatalogVersionsSuite |  Minor | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |


