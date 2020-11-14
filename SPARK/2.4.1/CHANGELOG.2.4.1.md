
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

## Release 2.4.1 - 2018-04-01



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-25635](https://issues.apache.org/jira/browse/SPARK-25635) | Support selective direct encoding in native ORC write |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-26118](https://issues.apache.org/jira/browse/SPARK-26118) | Make Jetty's requestHeaderSize configurable in Spark |  Major | Web UI | Attila Zsolt Piros | Attila Zsolt Piros |
| [SPARK-26605](https://issues.apache.org/jira/browse/SPARK-26605) | New executors failing with expired tokens in client mode |  Major | Spark Core, YARN | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-26910](https://issues.apache.org/jira/browse/SPARK-26910) | Re-release SparkR to CRAN |  Major | SparkR | Michael Chirico | Felix Cheung |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-25023](https://issues.apache.org/jira/browse/SPARK-25023) | Clarify Spark security documentation |  Minor | Documentation | Thomas Graves | Thomas Graves |
| [SPARK-25904](https://issues.apache.org/jira/browse/SPARK-25904) | Avoid allocating arrays too large for JVMs |  Major | Spark Core | Imran Rashid | Imran Rashid |
| [SPARK-25778](https://issues.apache.org/jira/browse/SPARK-25778) | WriteAheadLogBackedBlockRDD in YARN Cluster Mode Fails due lack of access to tmpDir from $PWD to HDFS |  Major | Spark Core, Structured Streaming, YARN | Greg Senia | Greg Senia |
| [SPARK-26316](https://issues.apache.org/jira/browse/SPARK-26316) | Because of the perf degradation in TPC-DS, we currently partial revert SPARK-21052：Add hash map metrics to join, |  Major | SQL | Ke Jia | Ke Jia |
| [SPARK-26409](https://issues.apache.org/jira/browse/SPARK-26409) | SQLConf should be serializable in test sessions |  Major | SQL, Tests | Gengliang Wang | Gengliang Wang |
| [SPARK-26392](https://issues.apache.org/jira/browse/SPARK-26392) | Cancel pending allocate requests by taking locality preference into account |  Minor | Spark Core, YARN | wuyi | wuyi |
| [SPARK-26604](https://issues.apache.org/jira/browse/SPARK-26604) | Register channel for stream request |  Minor | Spark Core | L. C. Hsieh | L. C. Hsieh |
| [SPARK-26633](https://issues.apache.org/jira/browse/SPARK-26633) | Add ExecutorClassLoader.getResourceAsStream |  Major | Spark Shell | Kris Mok | Kris Mok |
| [SPARK-26266](https://issues.apache.org/jira/browse/SPARK-26266) | Update to Scala 2.12.8 |  Minor | Build | Sean R. Owen | Sean R. Owen |
| [SPARK-27046](https://issues.apache.org/jira/browse/SPARK-27046) | Remove SPARK-19185 related references from documentation since its resolved |  Trivial | Documentation, DStreams | Gabor Somogyi | Gabor Somogyi |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-24553](https://issues.apache.org/jira/browse/SPARK-24553) | Job UI redirect causing http 302 error |  Minor | Web UI | Steven Kallman | Steven Kallman |
| [SPARK-25767](https://issues.apache.org/jira/browse/SPARK-25767) | Error reported in Spark logs when using the org.apache.spark:spark-sql\_2.11:2.3.2 Java library |  Major | SQL | Thomas Brugiere | Peter Toth |
| [SPARK-25837](https://issues.apache.org/jira/browse/SPARK-25837) | Web UI does not respect spark.ui.retainedJobs in some instances |  Minor | Web UI | Patrick Brown | Patrick Brown |
| [SPARK-25918](https://issues.apache.org/jira/browse/SPARK-25918) | LOAD DATA LOCAL INPATH should handle a relative path |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-25909](https://issues.apache.org/jira/browse/SPARK-25909) | Error in documentation: number of cluster managers |  Trivial | Documentation | James Lamb | James Lamb |
| [SPARK-25827](https://issues.apache.org/jira/browse/SPARK-25827) | Replicating a block \> 2gb with encryption fails |  Major | Spark Core | Imran Rashid | Imran Rashid |
| [SPARK-25930](https://issues.apache.org/jira/browse/SPARK-25930) | Fix scala version string detection when maven-help-plugin is not pre-installed |  Minor | Kubernetes, Spark Core | Stavros Kontopoulos | Stavros Kontopoulos |
| [SPARK-25906](https://issues.apache.org/jira/browse/SPARK-25906) | spark-shell cannot handle \`-i\` option correctly |  Major | Spark Shell, SQL | Dongjoon Hyun | Hyukjin Kwon |
| [SPARK-22148](https://issues.apache.org/jira/browse/SPARK-22148) | TaskSetManager.abortIfCompletelyBlacklisted should not abort when all current executors are blacklisted but dynamic allocation is enabled |  Major | Scheduler, Spark Core | Juan Rodríguez Hortalá | Dhruve Ashar |
| [SPARK-25866](https://issues.apache.org/jira/browse/SPARK-25866) | Update KMeans formatVersion |  Minor | MLlib | Marco Gaido | Marco Gaido |
| [SPARK-25988](https://issues.apache.org/jira/browse/SPARK-25988) | Keep names unchanged when deduplicating the column names in Analyzer |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-25979](https://issues.apache.org/jira/browse/SPARK-25979) | Window function: allow parentheses around window reference |  Minor | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-25921](https://issues.apache.org/jira/browse/SPARK-25921) | Python worker reuse causes Barrier tasks to run without BarrierTaskContext |  Critical | PySpark, Spark Core | Bago Amirbekian | Yuanjian Li |
| [SPARK-26057](https://issues.apache.org/jira/browse/SPARK-26057) | Table joining is broken in Spark 2.4 |  Major | SQL | Pavel Parkhomenko | Marco Gaido |
| [SPARK-26011](https://issues.apache.org/jira/browse/SPARK-26011) | pyspark app with "spark.jars.packages" config does not work |  Major | Spark Submit | shanyu zhao | shanyu zhao |
| [SPARK-25934](https://issues.apache.org/jira/browse/SPARK-25934) | Mesos: SPARK\_CONF\_DIR should not be propogated by spark submit |  Major | Mesos | Matt Molek | Matt Molek |
| [SPARK-26092](https://issues.apache.org/jira/browse/SPARK-26092) | Use CheckpointFileManager to write the streaming metadata file |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-26079](https://issues.apache.org/jira/browse/SPARK-26079) | Flaky test: StreamingQueryListenersConfSuite |  Minor | SQL, Tests | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-26084](https://issues.apache.org/jira/browse/SPARK-26084) | AggregateExpression.references fails on unresolved expression trees |  Major | SQL | Simeon Simeonov | Simeon Simeonov |
| [SPARK-26109](https://issues.apache.org/jira/browse/SPARK-26109) | Duration in the task summary metrics table and the task table are different |  Minor | Spark Core, Web UI | shahid | shahid |
| [SPARK-25786](https://issues.apache.org/jira/browse/SPARK-25786) | If the ByteBuffer.hasArray is false , it will throw UnsupportedOperationException for Kryo |  Minor | Spark Core | liuxian | liuxian |
| [SPARK-25451](https://issues.apache.org/jira/browse/SPARK-25451) | Stages page doesn't show the right number of the total tasks |  Major | Web UI | zuotingbing | shahid |
| [SPARK-26100](https://issues.apache.org/jira/browse/SPARK-26100) | [History server ]Jobs table and Aggregate metrics table are showing lesser number of tasks |  Major | Spark Core, Web UI | ABHISHEK KUMAR GUPTA | shahid |
| [SPARK-26114](https://issues.apache.org/jira/browse/SPARK-26114) | Memory leak of PartitionedPairBuffer when coalescing after repartitionAndSortWithinPartitions |  Major | Spark Core | Sergey Zhemzhitsky | Sergey Zhemzhitsky |
| [SPARK-26147](https://issues.apache.org/jira/browse/SPARK-26147) | Python UDFs in join condition fail even when using columns from only one side of join |  Major | PySpark | Ala Luszczak | Wenchen Fan |
| [SPARK-26137](https://issues.apache.org/jira/browse/SPARK-26137) | Linux file separator is hard coded in DependencyUtils used in deploy process |  Major | Deploy | Mark Pavey | Mark Pavey |
| [SPARK-26211](https://issues.apache.org/jira/browse/SPARK-26211) | Fix InSet for binary, and struct and array with null. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-26186](https://issues.apache.org/jira/browse/SPARK-26186) | In progress applications with last updated time is lesser than the cleaning interval are getting removed during cleaning logs |  Major | Spark Core | shahid | shahid |
| [SPARK-26184](https://issues.apache.org/jira/browse/SPARK-26184) | Last updated time is not getting updated in the History Server UI |  Major | Spark Core, Web UI | ABHISHEK KUMAR GUPTA | shahid |
| [SPARK-26188](https://issues.apache.org/jira/browse/SPARK-26188) | Spark 2.4.0 Partitioning behavior breaks backwards compatibility |  Critical | SQL | Damien Doucet-Girard | Gengliang Wang |
| [SPARK-26201](https://issues.apache.org/jira/browse/SPARK-26201) | python broadcast.value on driver fails with disk encryption enabled |  Major | PySpark | Thomas Graves | Sanket Chintapalli |
| [SPARK-26219](https://issues.apache.org/jira/browse/SPARK-26219) | Executor summary is not getting updated for failure jobs in history server UI |  Major | Spark Core | shahid | shahid |
| [SPARK-26080](https://issues.apache.org/jira/browse/SPARK-26080) | Unable to run worker.py on Windows |  Blocker | PySpark | Hayden Jeune | Hyukjin Kwon |
| [SPARK-26198](https://issues.apache.org/jira/browse/SPARK-26198) | Metadata serialize null values throw NPE |  Minor | SQL | Yuming Wang | Yuming Wang |
| [SPARK-26181](https://issues.apache.org/jira/browse/SPARK-26181) | the \`hasMinMaxStats\` method of \`ColumnStatsMap\` is not correct |  Major | SQL | Adrian Wang | Adrian Wang |
| [SPARK-26256](https://issues.apache.org/jira/browse/SPARK-26256) | Add proper labels when deleting pods |  Major | Kubernetes, Spark Core | Stavros Kontopoulos | Stavros Kontopoulos |
| [SPARK-26233](https://issues.apache.org/jira/browse/SPARK-26233) | Incorrect decimal value with java beans and first/last/max... functions |  Blocker | SQL | Miquel Canes | Marco Gaido |
| [SPARK-26119](https://issues.apache.org/jira/browse/SPARK-26119) | Task metrics summary in the stage page should contain only successful tasks metrics |  Major | Spark Core, Web UI | ABHISHEK KUMAR GUPTA | shahid |
| [SPARK-26307](https://issues.apache.org/jira/browse/SPARK-26307) | Fix CTAS when INSERT a partitioned table using Hive serde |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-26265](https://issues.apache.org/jira/browse/SPARK-26265) | deadlock between TaskMemoryManager and BytesToBytesMap$MapIterator |  Major | Spark Core | qian han | L. C. Hsieh |
| [SPARK-26355](https://issues.apache.org/jira/browse/SPARK-26355) | Add a workaround for PyArrow 0.11. |  Major | PySpark, SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-26370](https://issues.apache.org/jira/browse/SPARK-26370) | Fix resolution of higher-order function for the same identifier. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-26315](https://issues.apache.org/jira/browse/SPARK-26315) | auto cast threshold from Integer to Float in approxSimilarityJoin of BucketedRandomProjectionLSHModel |  Minor | MLlib, PySpark | Song Ci | Song Ci |
| [SPARK-26078](https://issues.apache.org/jira/browse/SPARK-26078) | WHERE .. IN fails to filter rows when used in combination with UNION |  Blocker | SQL | Arttu Voutilainen | Marco Gaido |
| [SPARK-26352](https://issues.apache.org/jira/browse/SPARK-26352) | Join reordering should not change the order of output attributes |  Major | SQL | Kris Mok | Kris Mok |
| [SPARK-26382](https://issues.apache.org/jira/browse/SPARK-26382) | prefix sorter should handle -0.0 |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-26394](https://issues.apache.org/jira/browse/SPARK-26394) | Annotation error for Utils.timeStringAsMs |  Trivial | Documentation, Spark Core | Jackey Lee | Jackey Lee |
| [SPARK-26366](https://issues.apache.org/jira/browse/SPARK-26366) | Except with transform regression |  Major | Spark Core, SQL | Dan Osipov | Marco Gaido |
| [SPARK-24687](https://issues.apache.org/jira/browse/SPARK-24687) | When NoClassDefError thrown during task serialization will cause job hang |  Major | Spark Core | zhoukang | zhoukang |
| [SPARK-26422](https://issues.apache.org/jira/browse/SPARK-26422) | Unable to disable Hive support in SparkR when Hadoop version is unsupported |  Major | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-26269](https://issues.apache.org/jira/browse/SPARK-26269) | YarnAllocator should have same blacklist behaviour with YARN to maxmize use of cluster resource |  Minor | Spark Core, YARN | wuyi | wuyi |
| [SPARK-26427](https://issues.apache.org/jira/browse/SPARK-26427) | Upgrade Apache ORC to 1.5.4 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-26426](https://issues.apache.org/jira/browse/SPARK-26426) | ExpressionInfo related unit tests fail in Windows |  Major | SQL | Wang Yanlin | Wang Yanlin |
| [SPARK-26444](https://issues.apache.org/jira/browse/SPARK-26444) | Stage color doesn't change with it's status |  Minor | Web UI | Chenxiao Mao | Chenxiao Mao |
| [SPARK-26496](https://issues.apache.org/jira/browse/SPARK-26496) | Avoid to use Random.nextString in StreamingInnerJoinSuite |  Minor | Structured Streaming, Tests | Bruce Robbins | Hyukjin Kwon |
| [SPARK-23458](https://issues.apache.org/jira/browse/SPARK-23458) |  Flaky test: OrcQuerySuite |  Major | SQL, Tests | Marco Gaido | Dongjoon Hyun |
| [SPARK-26019](https://issues.apache.org/jira/browse/SPARK-26019) | pyspark/accumulators.py: "TypeError: object of type 'NoneType' has no len()" in authenticate\_and\_accum\_updates() |  Major | PySpark | Ruslan Dautkhanov | Imran Rashid |
| [SPARK-26501](https://issues.apache.org/jira/browse/SPARK-26501) | Unexpected overriden of exitFn in SparkSubmitSuite |  Minor | Deploy, Spark Core | liupengcheng | liupengcheng |
| [SPARK-26545](https://issues.apache.org/jira/browse/SPARK-26545) | Fix typo in EqualNullSafe's truth table comment |  Trivial | SQL | Kris Mok | Kris Mok |
| [SPARK-26537](https://issues.apache.org/jira/browse/SPARK-26537) | update the release scripts to point to gitbox |  Major | Build | Shane Knapp | Shane Knapp |
| [SPARK-26554](https://issues.apache.org/jira/browse/SPARK-26554) | Update \`release-util.sh\` to avoid GitBox fake 200 headers |  Blocker | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-26559](https://issues.apache.org/jira/browse/SPARK-26559) | ML image can't work with numpy versions prior to 1.9 |  Major | ML, PySpark | L. C. Hsieh | L. C. Hsieh |
| [SPARK-26267](https://issues.apache.org/jira/browse/SPARK-26267) | Kafka source may reprocess data |  Blocker | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-26571](https://issues.apache.org/jira/browse/SPARK-26571) | Update Hive Serde mapping with canonical name of Parquet and Orc FileFormat |  Minor | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-26583](https://issues.apache.org/jira/browse/SPARK-26583) | Add \`paranamer\` dependency to \`core\` module |  Major | Build, Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-26576](https://issues.apache.org/jira/browse/SPARK-26576) | Broadcast hint not applied to partitioned table |  Major | SQL | John Zhuge | John Zhuge |
| [SPARK-26551](https://issues.apache.org/jira/browse/SPARK-26551) | Selecting one complex field and having is null predicate on another complex field can cause error |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-26586](https://issues.apache.org/jira/browse/SPARK-26586) | Streaming queries should have isolated SparkSessions and confs |  Major | SQL, Structured Streaming | Mukul Murthy | Mukul Murthy |
| [SPARK-26538](https://issues.apache.org/jira/browse/SPARK-26538) | Postgres numeric array support |  Minor | SQL | Oleksii Shkarupin | Oleksii Shkarupin |
| [SPARK-26615](https://issues.apache.org/jira/browse/SPARK-26615) | Fixing transport server/client resource leaks in the core unittests |  Major | Spark Core | Attila Zsolt Piros | Attila Zsolt Piros |
| [SPARK-25992](https://issues.apache.org/jira/browse/SPARK-25992) | Accumulators giving KeyError in pyspark |  Major | PySpark | Abdeali Kothari |  |
| [SPARK-26629](https://issues.apache.org/jira/browse/SPARK-26629) | Error with multiple file stream in a query + restart on a batch that has no data for one file stream |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-26638](https://issues.apache.org/jira/browse/SPARK-26638) | Pyspark vector classes always return error for unary negation |  Major | ML, PySpark | Sean R. Owen | Sean R. Owen |
| [SPARK-26351](https://issues.apache.org/jira/browse/SPARK-26351) | Documented formula of precision at k does not match the actual code |  Minor | Documentation, MLlib | Pablo J. Villacorta | shahid |
| [SPARK-26665](https://issues.apache.org/jira/browse/SPARK-26665) | BlockTransferService.fetchBlockSync may hang forever |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-26228](https://issues.apache.org/jira/browse/SPARK-26228) | OOM issue encountered when computing Gramian matrix |  Major | MLlib | Chen Lin | Sean R. Owen |
| [SPARK-26682](https://issues.apache.org/jira/browse/SPARK-26682) | Task attempt ID collision causes lost data |  Blocker | SQL | Ryan Blue | Ryan Blue |
| [SPARK-26680](https://issues.apache.org/jira/browse/SPARK-26680) | StackOverflowError if Stream passed to groupBy |  Major | SQL | Bruce Robbins | Bruce Robbins |
| [SPARK-26709](https://issues.apache.org/jira/browse/SPARK-26709) | OptimizeMetadataOnlyQuery does not correctly handle the files with zero record |  Blocker | SQL | Xiao Li | Gengliang Wang |
| [SPARK-26379](https://issues.apache.org/jira/browse/SPARK-26379) | Use dummy TimeZoneId for CurrentTimestamp to avoid UnresolvedException in CurrentBatchTimestamp |  Major | Structured Streaming | Kailash Gupta | Jungtaek Lim |
| [SPARK-26708](https://issues.apache.org/jira/browse/SPARK-26708) | Incorrect result caused by inconsistency between a SQL cache's cached RDD and its physical plan |  Blocker | SQL | Xiao Li | Wei Xue |
| [SPARK-26718](https://issues.apache.org/jira/browse/SPARK-26718) | Fixed integer overflow in SS kafka rateLimit calculation |  Major | Structured Streaming | Ryne Yang | Ryne Yang |
| [SPARK-26732](https://issues.apache.org/jira/browse/SPARK-26732) | Flaky test: SparkContextInfoSuite.getRDDStorageInfo only reports on RDDs that actually persist data |  Major | Tests | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-26745](https://issues.apache.org/jira/browse/SPARK-26745) | Non-parsing Dataset.count() optimization causes inconsistent results for JSON inputs with empty lines |  Blocker | SQL | Branden Smith | Hyukjin Kwon |
| [SPARK-26726](https://issues.apache.org/jira/browse/SPARK-26726) |   Synchronize the amount of memory used by the broadcast variable to the UI display |  Major | Spark Core | hantiantian | hantiantian |
| [SPARK-26757](https://issues.apache.org/jira/browse/SPARK-26757) | GraphX EdgeRDDImpl and VertexRDDImpl \`count\` method cannot handle empty RDDs |  Minor | GraphX | Huon Wilson | Huon Wilson |
| [SPARK-26806](https://issues.apache.org/jira/browse/SPARK-26806) | EventTimeStats.merge doesn't handle "zero.merge(zero)" correctly |  Major | Structured Streaming | Cheng Lian | Shixiong Zhu |
| [SPARK-26677](https://issues.apache.org/jira/browse/SPARK-26677) | Incorrect results of not(eqNullSafe) when data read from Parquet file |  Blocker | SQL | Michal Kapalka | Ryan Blue |
| [SPARK-26751](https://issues.apache.org/jira/browse/SPARK-26751) | HiveSessionImpl might have memory leak since Operation do not close properly |  Minor | SQL | zhoukang | zhoukang |
| [SPARK-26758](https://issues.apache.org/jira/browse/SPARK-26758) | Idle Executors are not getting killed after spark.dynamicAllocation.executorIdleTimeout value |  Major | Spark Core, YARN | ABHISHEK KUMAR GUPTA | Sandeep Katta |
| [SPARK-26734](https://issues.apache.org/jira/browse/SPARK-26734) | StackOverflowError on WAL serialization caused by large receivedBlockQueue |  Major | Block Manager, DStreams, Spark Core | Ross M. Lodge | Ross M. Lodge |
| [SPARK-26082](https://issues.apache.org/jira/browse/SPARK-26082) | Misnaming of spark.mesos.fetch(er)Cache.enable in MesosClusterScheduler |  Major | Mesos | Martin Loncaric | Martin Loncaric |
| [SPARK-26740](https://issues.apache.org/jira/browse/SPARK-26740) | Statistics for date and timestamp columns depend on system time zone |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-26873](https://issues.apache.org/jira/browse/SPARK-26873) | FileFormatWriter creates inconsistent MR job IDs |  Blocker | SQL | Ryan Blue | Ryan Blue |
| [SPARK-26572](https://issues.apache.org/jira/browse/SPARK-26572) | Join on distinct column with monotonically\_increasing\_id produces wrong output |  Major | SQL | Sören Reichardt | Peter Toth |
| [SPARK-25922](https://issues.apache.org/jira/browse/SPARK-25922) | [K8] Spark Driver/Executor "spark-app-selector" label mismatch |  Major | Kubernetes, Spark Core | Anmol Khurana | Wang, Xinglong |
| [SPARK-26864](https://issues.apache.org/jira/browse/SPARK-26864) | Query may return incorrect result when python udf is used as a join condition and the udf uses attributes from both legs of left semi join. |  Major | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-26859](https://issues.apache.org/jira/browse/SPARK-26859) | Fix field writer index bug in non-vectorized ORC deserializer |  Major | SQL | Ivan Vergiliev | Ivan Vergiliev |
| [SPARK-26950](https://issues.apache.org/jira/browse/SPARK-26950) | Make RandomDataGenerator use Float.NaN or Double.NaN for all NaN values |  Major | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-26048](https://issues.apache.org/jira/browse/SPARK-26048) | Flume connector for Spark 2.4 does not exist in Maven repository |  Major | Deploy | Aki Tanaka | Marcelo Masiero Vanzin |
| [SPARK-24669](https://issues.apache.org/jira/browse/SPARK-24669) | Managed table was not cleared of path after drop database cascade |  Major | SQL | Dong Jiang | Udbhav Agrawal |
| [SPARK-27065](https://issues.apache.org/jira/browse/SPARK-27065) | avoid more than one active task set managers for a stage |  Major | Scheduler, Spark Core | Wenchen Fan | Wenchen Fan |
| [SPARK-27019](https://issues.apache.org/jira/browse/SPARK-27019) | Spark UI's SQL tab shows inconsistent values |  Major | SQL, Web UI | peay | shahid |
| [SPARK-27078](https://issues.apache.org/jira/browse/SPARK-27078) | Read Hive materialized view throw MatchError |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-25863](https://issues.apache.org/jira/browse/SPARK-25863) | java.lang.UnsupportedOperationException: empty.max at org.apache.spark.sql.catalyst.expressions.codegen.CodeGenerator$.updateAndGetCompilationStats(CodeGenerator.scala:1475) |  Major | Optimizer, Spark Core | Ruslan Dautkhanov | Takeshi Yamamuro |
| [SPARK-27080](https://issues.apache.org/jira/browse/SPARK-27080) | Read parquet file with merging metastore schema should compare schema field in uniform case. |  Major | SQL | BoMeng |  |
| [SPARK-27111](https://issues.apache.org/jira/browse/SPARK-27111) | A continuous query may fail with InterruptedException when kafka consumer temporally 0 partitions temporally |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-27097](https://issues.apache.org/jira/browse/SPARK-27097) | Avoid embedding platform-dependent offsets literally in whole-stage generated code |  Critical | SQL | Xiao Li | Kris Mok |
| [SPARK-26990](https://issues.apache.org/jira/browse/SPARK-26990) | Difference in handling of mixed-case partition column names after SPARK-26188 |  Major | SQL | Bruce Robbins | Gengliang Wang |
| [SPARK-26927](https://issues.apache.org/jira/browse/SPARK-26927) | Race condition may cause dynamic allocation not working |  Major | Spark Core | liupengcheng | liupengcheng |
| [SPARK-27165](https://issues.apache.org/jira/browse/SPARK-27165) | Upgrade Apache ORC to 1.5.5 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-27107](https://issues.apache.org/jira/browse/SPARK-27107) | Spark SQL Job failing because of Kryo buffer overflow with ORC |  Major | SQL | Dhruve Ashar | Dongjoon Hyun |
| [SPARK-27134](https://issues.apache.org/jira/browse/SPARK-27134) | array\_distinct function does not work correctly with columns containing array of array |  Major | SQL | Mike Trenaman | Dilip Biswal |
| [SPARK-27112](https://issues.apache.org/jira/browse/SPARK-27112) | Spark Scheduler encounters two independent Deadlocks when trying to kill executors either due to dynamic allocation or blacklisting |  Major | Scheduler, Spark Core | Parth Gandhi | Parth Gandhi |
| [SPARK-27178](https://issues.apache.org/jira/browse/SPARK-27178) | k8s test failing due to missing nss library in dockerfile |  Major | Build, jenkins, Kubernetes, Spark Core | Shane Knapp | Shane Knapp |
| [SPARK-27094](https://issues.apache.org/jira/browse/SPARK-27094) | Thread interrupt being swallowed while launching executors in YarnAllocator |  Minor | Spark Core, YARN | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-27160](https://issues.apache.org/jira/browse/SPARK-27160) | Incorrect Literal Casting of DecimalType in OrcFilters |  Major | SQL | Darcy Shen | Darcy Shen |
| [SPARK-26606](https://issues.apache.org/jira/browse/SPARK-26606) | parameters passed in extraJavaOptions are not being picked up |  Major | Spark Submit | Ravindra | Jungtaek Lim |
| [SPARK-27198](https://issues.apache.org/jira/browse/SPARK-27198) | Heartbeat interval mismatch in driver and executor |  Major | Spark Core | Ajith S | Ajith S |
| [SPARK-25250](https://issues.apache.org/jira/browse/SPARK-25250) | Race condition with tasks running when new attempt for same stage is created leads to other task in the next attempt running on the same partition id retry multiple times |  Major | Scheduler, Spark Core | Parth Gandhi | Parth Gandhi |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-25899](https://issues.apache.org/jira/browse/SPARK-25899) | Flaky test: CoarseGrainedSchedulerBackendSuite.compute max number of concurrent tasks can be launched |  Major | Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-26029](https://issues.apache.org/jira/browse/SPARK-26029) | Bump previousSparkVersion in MimaBuild.scala to be 2.3.0 |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-26042](https://issues.apache.org/jira/browse/SPARK-26042) | KafkaContinuousSourceTopicDeletionSuite may hang forever |  Major | Structured Streaming, Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-26069](https://issues.apache.org/jira/browse/SPARK-26069) | Flaky test: RpcIntegrationSuite.sendRpcWithStreamFailures |  Major | Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-26120](https://issues.apache.org/jira/browse/SPARK-26120) | Fix a streaming query leak in Structured Streaming R tests |  Minor | SparkR, Structured Streaming, Tests | Shixiong Zhu | Shixiong Zhu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-25883](https://issues.apache.org/jira/browse/SPARK-25883) | Override method \`prettyName\` in \`from\_avro\`/\`to\_avro\` |  Minor | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-26010](https://issues.apache.org/jira/browse/SPARK-26010) | SparkR vignette fails on CRAN on Java 11 |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-26327](https://issues.apache.org/jira/browse/SPARK-26327) | Metrics in FileSourceScanExec not update correctly while relation.partitionSchema is set |  Major | SQL | Yuanjian Li | Yuanjian Li |
| [SPARK-26402](https://issues.apache.org/jira/browse/SPARK-26402) | Accessing nested fields with different cases in case insensitive mode |  Major | SQL | DB Tsai | DB Tsai |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-25933](https://issues.apache.org/jira/browse/SPARK-25933) | Fix pstats reference for spark.python.profile.dump in configuration.md |  Trivial | Documentation | Alex Hagerman | Alex Hagerman |
| [SPARK-26207](https://issues.apache.org/jira/browse/SPARK-26207) | add PowerIterationClustering  (PIC) doc in 2.4 branch |  Minor | Documentation, ML | Huaxin Gao | Huaxin Gao |
| [SPARK-26932](https://issues.apache.org/jira/browse/SPARK-26932) | Add a warning for Hive 2.1.1 ORC reader issue |  Minor | Documentation | Bo Hai | Bo Hai |
| [SPARK-26742](https://issues.apache.org/jira/browse/SPARK-26742) | Bump Kubernetes Client Version to 4.1.2 |  Major | Kubernetes, Spark Core | Steve Davids | Jiaxin Shan |
| [SPARK-26607](https://issues.apache.org/jira/browse/SPARK-26607) | Remove Spark 2.2.x testing from HiveExternalCatalogVersionsSuite |  Minor | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-26897](https://issues.apache.org/jira/browse/SPARK-26897) | Update Spark 2.3.x testing from HiveExternalCatalogVersionsSuite |  Minor | SQL, Tests | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-27274](https://issues.apache.org/jira/browse/SPARK-27274) | Refer to Scala 2.12 in docs; deprecate Scala 2.11 support in 2.4.1 |  Minor | Documentation, Spark Core | Sean R. Owen | Sean R. Owen |


