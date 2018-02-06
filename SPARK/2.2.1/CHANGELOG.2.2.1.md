
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

## Release 2.2.1 - 2017-12-01



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-21339](https://issues.apache.org/jira/browse/SPARK-21339) | spark-shell --packages option does not add jars to classpath on windows |  Major | Spark Shell, Windows | Goran Blankendal | Devaraj K |
| [SPARK-21915](https://issues.apache.org/jira/browse/SPARK-21915) | Model 1 and Model 2 ParamMaps Missing |  Minor | ML, PySpark | Mark Tabladillo |  |
| [SPARK-22471](https://issues.apache.org/jira/browse/SPARK-22471) | SQLListener consumes much memory causing OutOfMemoryError |  Major | SQL, Web UI | Arseniy Tashoyan | Arseniy Tashoyan |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-19606](https://issues.apache.org/jira/browse/SPARK-19606) | Support constraints in spark-dispatcher |  Major | Mesos | Philipp Hoffmann | paul mackles |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-21267](https://issues.apache.org/jira/browse/SPARK-21267) | Improvements to the Structured Streaming programming guide |  Major | Documentation, Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-21321](https://issues.apache.org/jira/browse/SPARK-21321) | Spark very verbose on shutdown confusing users |  Minor | Spark Core | Jong Yoon Lee | Jong Yoon Lee |
| [SPARK-21243](https://issues.apache.org/jira/browse/SPARK-21243) | Limit the number of maps in a single shuffle fetch |  Minor | Spark Core | Dhruve Ashar | Dhruve Ashar |
| [SPARK-21477](https://issues.apache.org/jira/browse/SPARK-21477) | Mark LocalTableScanExec's input data transient |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-21434](https://issues.apache.org/jira/browse/SPARK-21434) | Add PySpark pip documentation |  Minor | Documentation, PySpark | holdenk | holdenk |
| [SPARK-21538](https://issues.apache.org/jira/browse/SPARK-21538) | Attribute resolution inconsistency in Dataset API |  Major | SQL | Adrian Ionescu | Anton Okolnychyi |
| [SPARK-21901](https://issues.apache.org/jira/browse/SPARK-21901) | Define toString for StateOperatorProgress |  Trivial | Structured Streaming | Jacek Laskowski | Jacek Laskowski |
| [SPARK-22043](https://issues.apache.org/jira/browse/SPARK-22043) | Python profile, show\_profiles() and dump\_profiles(), should throw an error with a better message |  Trivial | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-22072](https://issues.apache.org/jira/browse/SPARK-22072) | Allow the same shell params to be used for all of the different steps in release-build |  Major | Build | holdenk | holdenk |
| [SPARK-22120](https://issues.apache.org/jira/browse/SPARK-22120) | TestHiveSparkSession.reset() should clean out Hive warehouse directory |  Minor | Tests | Gregory Owen | Gregory Owen |
| [SPARK-22138](https://issues.apache.org/jira/browse/SPARK-22138) | Allow retry during release-build |  Minor | Build | holdenk | holdenk |
| [SPARK-22217](https://issues.apache.org/jira/browse/SPARK-22217) | ParquetFileFormat to support arbitrary OutputCommitters |  Minor | SQL | Steve Loughran | Steve Loughran |
| [SPARK-22315](https://issues.apache.org/jira/browse/SPARK-22315) | Check for version match between R package and JVM |  Major | SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-22294](https://issues.apache.org/jira/browse/SPARK-22294) | Reset spark.driver.bindAddress when starting a Checkpoint |  Major | Deploy, Spark Core | Santiago Saavedra | Santiago Saavedra |
| [SPARK-21667](https://issues.apache.org/jira/browse/SPARK-21667) | ConsoleSink should not fail streaming query with checkpointLocation option |  Minor | Structured Streaming | Jacek Laskowski | Rekha Joshi |
| [SPARK-18136](https://issues.apache.org/jira/browse/SPARK-18136) | Make PySpark pip install works on windows |  Major | PySpark | holdenk | Jakub Nowacki |
| [SPARK-19878](https://issues.apache.org/jira/browse/SPARK-19878) | Add hive configuration when initialize hive serde in InsertIntoHiveTable.scala |  Major | SQL | jianjin qin | Vinod KC |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-16605](https://issues.apache.org/jira/browse/SPARK-16605) | Spark2.0 cannot "select" data from a table stored as an orc file which has been created by hive while hive or spark1.6 supports |  Major | SQL | marymwu |  |
| [SPARK-19106](https://issues.apache.org/jira/browse/SPARK-19106) | Styling for the configuration docs is broken |  Trivial | Documentation | Nicholas Chammas | Sean Owen |
| [SPARK-21170](https://issues.apache.org/jira/browse/SPARK-21170) | Utils.tryWithSafeFinallyAndFailureCallbacks throws IllegalArgumentException: Self-suppression not permitted |  Minor | Spark Core | Devaraj K | Devaraj K |
| [SPARK-20256](https://issues.apache.org/jira/browse/SPARK-20256) | Fail to start SparkContext/SparkSession with Hive support enabled when user does not have read/write privilege to Hive metastore warehouse dir |  Critical | SQL | Xin Wu | Dongjoon Hyun |
| [SPARK-21300](https://issues.apache.org/jira/browse/SPARK-21300) | ExternalMapToCatalyst should null-check map key prior to converting to internal value. |  Minor | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-21312](https://issues.apache.org/jira/browse/SPARK-21312) | UnsafeRow writeToStream has incorrect offsetInByteArray calculation for non-zero offset |  Major | SQL | Sumedh Wale | Sumedh Wale |
| [SPARK-21228](https://issues.apache.org/jira/browse/SPARK-21228) | InSet incorrect handling of structs |  Major | SQL | Bogdan Raducanu | Bogdan Raducanu |
| [SPARK-21345](https://issues.apache.org/jira/browse/SPARK-21345) | SparkSessionBuilderSuite should clean up stopped sessions |  Major | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-20342](https://issues.apache.org/jira/browse/SPARK-20342) | DAGScheduler sends SparkListenerTaskEnd before updating task's accumulators |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-21343](https://issues.apache.org/jira/browse/SPARK-21343) | Refine the document for spark.reducer.maxReqSizeShuffleToMem |  Major | Spark Core | jin xing | jin xing |
| [SPARK-21219](https://issues.apache.org/jira/browse/SPARK-21219) | Task retry occurs on same executor due to race condition with blacklisting |  Minor | Scheduler | Eric Vandenberg | Eric Vandenberg |
| [SPARK-21342](https://issues.apache.org/jira/browse/SPARK-21342) | Fix DownloadCallback to work well with RetryingBlockFetcher |  Major | Spark Core | jin xing | jin xing |
| [SPARK-21272](https://issues.apache.org/jira/browse/SPARK-21272) | SortMergeJoin LeftAnti does not update numOutputRows |  Trivial | SQL | Juliusz Sompolski | Juliusz Sompolski |
| [SPARK-21369](https://issues.apache.org/jira/browse/SPARK-21369) | Don't use Scala classes in external shuffle service |  Major | Shuffle, YARN | Shixiong Zhu | Shixiong Zhu |
| [SPARK-21376](https://issues.apache.org/jira/browse/SPARK-21376) | Token is not renewed in yarn client process in cluster mode |  Minor | YARN | Yesha Vora | Saisai Shao |
| [SPARK-21344](https://issues.apache.org/jira/browse/SPARK-21344) | BinaryType comparison does signed byte array comparison |  Major | SQL | Shubham Chopra | Kazuaki Ishizaki |
| [SPARK-21445](https://issues.apache.org/jira/browse/SPARK-21445) | NotSerializableException thrown by UTF8String.IntWrapper |  Major | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-21332](https://issues.apache.org/jira/browse/SPARK-21332) | Incorrect result type inferred for some decimal expressions |  Major | SQL | Alexander Shkapsky | Anton Okolnychyi |
| [SPARK-21457](https://issues.apache.org/jira/browse/SPARK-21457) | ExternalCatalog.listPartitions should correctly handle partition values with dot |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-21414](https://issues.apache.org/jira/browse/SPARK-21414) | Buffer in SlidingWindowFunctionFrame could be big though window is small |  Major | SQL | jin xing | jin xing |
| [SPARK-21441](https://issues.apache.org/jira/browse/SPARK-21441) | Incorrect Codegen in SortMergeJoinExec results failures in some cases |  Major | SQL | Feng Zhu | Feng Zhu |
| [SPARK-21446](https://issues.apache.org/jira/browse/SPARK-21446) | [SQL] JDBC Postgres fetchsize parameter ignored again |  Major | SQL | Albert Jang | Albert Jang |
| [SPARK-21333](https://issues.apache.org/jira/browse/SPARK-21333) | joinWith documents and analysis allow invalid join types |  Minor | Documentation | Corey Woodfield | Corey Woodfield |
| [SPARK-20904](https://issues.apache.org/jira/browse/SPARK-20904) | Task failures during shutdown cause problems with preempted executors |  Major | Spark Core, YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-21383](https://issues.apache.org/jira/browse/SPARK-21383) | YARN can allocate too many executors |  Major | YARN | Thomas Graves | DjvuLee |
| [SPARK-21447](https://issues.apache.org/jira/browse/SPARK-21447) | Spark history server fails to render compressed inprogress history file in some cases. |  Minor | Web UI | Eric Vandenberg | Eric Vandenberg |
| [SPARK-21494](https://issues.apache.org/jira/browse/SPARK-21494) | Spark 2.2.0 AES encryption not working with External shuffle |  Major | Block Manager, Shuffle | Udit Mehrotra | Marcelo Vanzin |
| [SPARK-21306](https://issues.apache.org/jira/browse/SPARK-21306) | OneVsRest Conceals Columns That May Be Relevant To Underlying Classifier |  Critical | ML | Cathal Garvey | Yan Facai (颜发才) |
| [SPARK-21508](https://issues.apache.org/jira/browse/SPARK-21508) | Documentation on 'Spark Streaming Custom Receivers' has error in example code |  Minor | Documentation | Remis Haroon | Remis Haroon |
| [SPARK-21555](https://issues.apache.org/jira/browse/SPARK-21555) | GROUP BY don't work with expressions with NVL and nested objects |  Major | SQL | Vitaly Gerasimov | Liang-Chi Hsieh |
| [SPARK-21522](https://issues.apache.org/jira/browse/SPARK-21522) | Flaky test: LauncherServerSuite.testStreamFiltering |  Minor | Tests | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-21593](https://issues.apache.org/jira/browse/SPARK-21593) | Fix broken configuration page |  Minor | Documentation | Artur Sukhenko | Sean Owen |
| [SPARK-12717](https://issues.apache.org/jira/browse/SPARK-12717) | pyspark broadcast fails when using multiple threads |  Critical | PySpark | Edward Walker | Bryan Cutler |
| [SPARK-21597](https://issues.apache.org/jira/browse/SPARK-21597) | Avg event time calculated in progress may be wrong |  Minor | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-21546](https://issues.apache.org/jira/browse/SPARK-21546) | dropDuplicates with watermark yields RuntimeException due to binding failure |  Major | Structured Streaming | Jacek Laskowski | Shixiong Zhu |
| [SPARK-21254](https://issues.apache.org/jira/browse/SPARK-21254) | History UI: Taking over 1 minute for initial page display |  Minor | Web UI | Dmitry Parfenchik | Dmitry Parfenchik |
| [SPARK-21330](https://issues.apache.org/jira/browse/SPARK-21330) | Bad partitioning does not allow to read a JDBC table with extreme values on the partition column |  Major | SQL | Stefano Parmesan | Andrew Ray |
| [SPARK-21374](https://issues.apache.org/jira/browse/SPARK-21374) | Reading globbed paths from S3 into DF doesn't work if filesystem caching is disabled |  Major | Spark Core | Andrey Taptunov | Andrey Taptunov |
| [SPARK-21588](https://issues.apache.org/jira/browse/SPARK-21588) | SQLContext.getConf(key, null) should return null, but it throws NPE |  Minor | SQL | Burak Yavuz | Vinod KC |
| [SPARK-21621](https://issues.apache.org/jira/browse/SPARK-21621) | Reset numRecordsWritten after DiskBlockObjectWriter.commitAndGet called |  Major | Spark Core | Xianyang Liu | Xianyang Liu |
| [SPARK-21647](https://issues.apache.org/jira/browse/SPARK-21647) | SortMergeJoin failed when using CROSS |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-21565](https://issues.apache.org/jira/browse/SPARK-21565) | aggregate query fails with watermark on eventTime but works with watermark on timestamp column generated by current\_timestamp |  Major | Structured Streaming | Amit Assudani | Jose Torres |
| [SPARK-21648](https://issues.apache.org/jira/browse/SPARK-21648) | Confusing assert failure in JDBC source when users misspell the option \`partitionColumn\` |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-21580](https://issues.apache.org/jira/browse/SPARK-21580) | A bug with  \`Group by ordinal\` |  Major | SQL | liuxian | liuxian |
| [SPARK-21503](https://issues.apache.org/jira/browse/SPARK-21503) | Spark UI shows incorrect task status for a killed Executor Process |  Minor | Spark Core | Parth Gandhi | Parth Gandhi |
| [SPARK-21523](https://issues.apache.org/jira/browse/SPARK-21523) | Fix bug of strong wolfe linesearch \`init\` parameter lose effectiveness |  Critical | MLlib | Weichen Xu | Weichen Xu |
| [SPARK-21596](https://issues.apache.org/jira/browse/SPARK-21596) | Audit the places calling HDFSMetadataLog.get |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-21551](https://issues.apache.org/jira/browse/SPARK-21551) | pyspark's collect fails when getaddrinfo is too slow |  Critical | PySpark | peay | peay |
| [SPARK-21595](https://issues.apache.org/jira/browse/SPARK-21595) | introduction of spark.sql.windowExec.buffer.spill.threshold in spark 2.2 breaks existing workflow |  Minor | Documentation, PySpark | Stephan Reiling | Tejas Patil |
| [SPARK-21563](https://issues.apache.org/jira/browse/SPARK-21563) | Race condition when serializing TaskDescriptions and adding jars |  Major | Scheduler, Spark Core | Andrew Ash | Andrew Ash |
| [SPARK-21696](https://issues.apache.org/jira/browse/SPARK-21696) | State Store can't handle corrupted snapshots |  Critical | Structured Streaming | Alexander Bessonov |  |
| [SPARK-21721](https://issues.apache.org/jira/browse/SPARK-21721) | Memory leak in org.apache.spark.sql.hive.execution.InsertIntoHiveTable |  Critical | SQL | yzheng616 | Liang-Chi Hsieh |
| [SPARK-21723](https://issues.apache.org/jira/browse/SPARK-21723) | Can't write LibSVM - key not found: numFeatures |  Major | Input/Output, ML | Jan Vršovský | Jan Vršovský |
| [SPARK-21656](https://issues.apache.org/jira/browse/SPARK-21656) | spark dynamic allocation should not idle timeout executors when there are enough tasks to run on them |  Major | Spark Core | Jong Yoon Lee | Jong Yoon Lee |
| [SPARK-21739](https://issues.apache.org/jira/browse/SPARK-21739) | timestamp partition would fail in v2.2.0 |  Critical | SQL | wangzhihao | Feng Zhu |
| [SPARK-21793](https://issues.apache.org/jira/browse/SPARK-21793) | Correct validateAndTransformSchema in GaussianMixture and AFTSurvivalRegression |  Minor | MLlib | Cedric Pelvet | Cedric Pelvet |
| [SPARK-21617](https://issues.apache.org/jira/browse/SPARK-21617) | ALTER TABLE...ADD COLUMNS broken in Hive 2.1 for DS tables |  Major | SQL | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-21805](https://issues.apache.org/jira/browse/SPARK-21805) | disable R vignettes code on Windows |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-21826](https://issues.apache.org/jira/browse/SPARK-21826) | outer broadcast hash join should not throw NPE |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-21681](https://issues.apache.org/jira/browse/SPARK-21681) | MLOR do not work correctly when featureStd contains zero |  Major | ML | Weichen Xu | Weichen Xu |
| [SPARK-21714](https://issues.apache.org/jira/browse/SPARK-21714) | SparkSubmit in Yarn Client mode downloads remote files and then reuploads them again |  Critical | Spark Submit | Thomas Graves | Saisai Shao |
| [SPARK-21818](https://issues.apache.org/jira/browse/SPARK-21818) | MultivariateOnlineSummarizer.variance generate negative result |  Major | ML, MLlib | Weichen Xu | Weichen Xu |
| [SPARK-21798](https://issues.apache.org/jira/browse/SPARK-21798) | No config to replace deprecated SPARK\_CLASSPATH config for launching daemons like History Server |  Minor | Spark Core | Sanket Reddy | Parth Gandhi |
| [SPARK-21834](https://issues.apache.org/jira/browse/SPARK-21834) | Incorrect executor request in case of dynamic allocation |  Major | Scheduler | Sital Kedia | Sital Kedia |
| [SPARK-21418](https://issues.apache.org/jira/browse/SPARK-21418) | NoSuchElementException: None.get in DataSourceScanExec with sun.io.serialization.extendedDebugInfo=true |  Minor | SQL | Daniel Darabos | Sean Owen |
| [SPARK-21924](https://issues.apache.org/jira/browse/SPARK-21924) | Bug in Structured Streaming Documentation |  Trivial | Documentation | Riccardo Corbella | Riccardo Corbella |
| [SPARK-21890](https://issues.apache.org/jira/browse/SPARK-21890) | ObtainCredentials does not pass creds to addDelegationTokens |  Major | Spark Core | Sanket Reddy | Sanket Reddy |
| [SPARK-21950](https://issues.apache.org/jira/browse/SPARK-21950) | pyspark.sql.tests.SQLTests2 should stop SparkContext. |  Major | PySpark, SQL, Tests | Takuya Ueshin | Takuya Ueshin |
| [SPARK-21946](https://issues.apache.org/jira/browse/SPARK-21946) | Flaky test: InMemoryCatalogedDDLSuite.\`alter table: rename cached table\` |  Minor | Tests | Dongjoon Hyun | Kazuaki Ishizaki |
| [SPARK-21954](https://issues.apache.org/jira/browse/SPARK-21954) | JacksonUtils should verify MapType's value type instead of key type |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-20098](https://issues.apache.org/jira/browse/SPARK-20098) | DataType's typeName method returns with 'StructF' in case of StructField |  Major | PySpark | Peter Szalai | Peter Szalai |
| [SPARK-18608](https://issues.apache.org/jira/browse/SPARK-18608) | Spark ML algorithms that check RDD cache level for internal caching double-cache data |  Major | ML | Nick Pentreath | zhengruifeng |
| [SPARK-21980](https://issues.apache.org/jira/browse/SPARK-21980) | References in grouping functions should be indexed with resolver |  Major | SQL | Feng Zhu | Feng Zhu |
| [SPARK-21985](https://issues.apache.org/jira/browse/SPARK-21985) | PySpark PairDeserializer is broken for double-zipped RDDs |  Major | PySpark | Stuart Berg | Andrew Ray |
| [SPARK-21953](https://issues.apache.org/jira/browse/SPARK-21953) | Show both memory and disk bytes spilled if either is present |  Minor | Web UI | Andrew Ash | Andrew Ash |
| [SPARK-22052](https://issues.apache.org/jira/browse/SPARK-22052) | Incorrect Metric assigned in MetricsReporter.scala |  Minor | Input/Output, Structured Streaming | Jason Taaffe | Jason Taaffe |
| [SPARK-22076](https://issues.apache.org/jira/browse/SPARK-22076) | Expand.projections should not be a Stream |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-21384](https://issues.apache.org/jira/browse/SPARK-21384) | Spark 2.2 + YARN without spark.yarn.jars / spark.yarn.archive fails |  Major | YARN | holdenk | Devaraj K |
| [SPARK-21928](https://issues.apache.org/jira/browse/SPARK-21928) | ClassNotFoundException for custom Kryo registrator class during serde in netty threads |  Major | Spark Core | John Brock | Imran Rashid |
| [SPARK-22094](https://issues.apache.org/jira/browse/SPARK-22094) | processAllAvailable should not block forever when a query is stopped |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-22071](https://issues.apache.org/jira/browse/SPARK-22071) | Improve release build scripts to check correct JAVA version is being used for build |  Major | Build | holdenk | holdenk |
| [SPARK-22092](https://issues.apache.org/jira/browse/SPARK-22092) | Reallocation in OffHeapColumnVector.reserveInternal corrupts array data |  Major | SQL | Ala Luszczak | Ala Luszczak |
| [SPARK-22109](https://issues.apache.org/jira/browse/SPARK-22109) | Reading tables partitioned by columns that look like timestamps has inconsistent schema inference |  Minor | SQL | Imran Rashid | Hyukjin Kwon |
| [SPARK-22107](https://issues.apache.org/jira/browse/SPARK-22107) | "as" should be "alias" in python quick start documentation |  Trivial | Documentation | John O'Leary | John O'Leary |
| [SPARK-22083](https://issues.apache.org/jira/browse/SPARK-22083) | When dropping multiple blocks to disk, Spark should release all locks on a failure |  Major | Block Manager, Spark Core | Imran Rashid | Imran Rashid |
| [SPARK-22141](https://issues.apache.org/jira/browse/SPARK-22141) | Propagate empty relation before checking Cartesian products |  Critical | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-22143](https://issues.apache.org/jira/browse/SPARK-22143) | OffHeapColumnVector may leak memory |  Major | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-22135](https://issues.apache.org/jira/browse/SPARK-22135) | metrics in spark-dispatcher not being registered properly |  Minor | Deploy, Mesos | paul mackles | paul mackles |
| [SPARK-22146](https://issues.apache.org/jira/browse/SPARK-22146) | FileNotFoundException while reading ORC files containing '%' |  Major | SQL | Marco Gaido | Marco Gaido |
| [SPARK-22129](https://issues.apache.org/jira/browse/SPARK-22129) | Spark release scripts ignore the GPG\_KEY and always sign with your default key |  Blocker | Build | holdenk | holdenk |
| [SPARK-22167](https://issues.apache.org/jira/browse/SPARK-22167) | Spark Packaging w/R distro issues |  Blocker | Build, SparkR | holdenk | holdenk |
| [SPARK-22158](https://issues.apache.org/jira/browse/SPARK-22158) | convertMetastore should not ignore table properties |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-20466](https://issues.apache.org/jira/browse/SPARK-20466) | HadoopRDD#addLocalConfiguration throws NPE |  Minor | YARN | liyunzhang | Sahil Takiar |
| [SPARK-22206](https://issues.apache.org/jira/browse/SPARK-22206) | gapply in R can't work on empty grouping columns |  Major | SparkR, SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-21549](https://issues.apache.org/jira/browse/SPARK-21549) | Spark fails to complete job correctly in case of OutputFormat which do not write into hdfs |  Major | Spark Core | Sergey Zhemzhitsky | Sergey Zhemzhitsky |
| [SPARK-22178](https://issues.apache.org/jira/browse/SPARK-22178) | Refresh Table does not refresh the underlying tables of the persistent view |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-22218](https://issues.apache.org/jira/browse/SPARK-22218) | spark shuffle services fails to update secret on application re-attempts |  Blocker | Shuffle, YARN | Thomas Graves | Thomas Graves |
| [SPARK-21907](https://issues.apache.org/jira/browse/SPARK-21907) | NullPointerException in UnsafeExternalSorter.spill() |  Major | Spark Core | Juliusz Sompolski | Eyal Farago |
| [SPARK-22252](https://issues.apache.org/jira/browse/SPARK-22252) | FileFormatWriter should respect the input query schema |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-14387](https://issues.apache.org/jira/browse/SPARK-14387) | Enable Hive-1.x ORC compatibility with spark.sql.hive.convertMetastoreOrc |  Major | SQL | Rajesh Balamohan | Dongjoon Hyun |
| [SPARK-16628](https://issues.apache.org/jira/browse/SPARK-16628) | OrcConversions should not convert an ORC table represented by MetastoreRelation to HadoopFsRelation if metastore schema does not match schema stored in ORC files |  Major | SQL | Yin Huai | Dongjoon Hyun |
| [SPARK-18355](https://issues.apache.org/jira/browse/SPARK-18355) | Spark SQL fails to read data from a ORC hive table that has a new column added to it |  Major | SQL | Sandeep Nemuri | Dongjoon Hyun |
| [SPARK-22273](https://issues.apache.org/jira/browse/SPARK-22273) | Fix key/value schema field names in HashMapGenerators. |  Minor | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-22223](https://issues.apache.org/jira/browse/SPARK-22223) | ObjectHashAggregate introduces unnecessary shuffle |  Major | Optimizer | Michele Costantino Soccio | Liang-Chi Hsieh |
| [SPARK-22249](https://issues.apache.org/jira/browse/SPARK-22249) | UnsupportedOperationException: empty.reduceLeft when caching a dataframe |  Major | SQL | Andreas Maier | Marco Gaido |
| [SPARK-22271](https://issues.apache.org/jira/browse/SPARK-22271) | Describe results in "null" for the value of "mean" of a numeric variable |  Minor | SQL | Shafique Jamal | Huaxin Gao |
| [SPARK-22319](https://issues.apache.org/jira/browse/SPARK-22319) | SparkSubmit calls getFileStatus before calling loginUserFromKeytab |  Major | Deploy, Spark Core | Steven Rand | Steven Rand |
| [SPARK-21991](https://issues.apache.org/jira/browse/SPARK-21991) | [LAUNCHER] LauncherServer acceptConnections thread sometime dies if machine has very high load |  Minor | Spark Submit | Andrea Zito | Andrea Zito |
| [SPARK-22227](https://issues.apache.org/jira/browse/SPARK-22227) | DiskBlockManager.getAllBlocks could fail if called during shuffle |  Minor | Block Manager | Sergei Lebedev | Sergei Lebedev |
| [SPARK-22332](https://issues.apache.org/jira/browse/SPARK-22332) | NaiveBayes unit test occasionly fail |  Minor | ML | Weichen Xu | Weichen Xu |
| [SPARK-17902](https://issues.apache.org/jira/browse/SPARK-17902) | collect() ignores stringsAsFactors |  Major | SparkR | Hossein Falaki | Hyukjin Kwon |
| [SPARK-22328](https://issues.apache.org/jira/browse/SPARK-22328) | ClosureCleaner misses referenced superclass fields, gives them null values |  Major | Spark Core | Ryan Williams | Liang-Chi Hsieh |
| [SPARK-22356](https://issues.apache.org/jira/browse/SPARK-22356) | data source table should support overlapped columns between data and partition schema |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-22355](https://issues.apache.org/jira/browse/SPARK-22355) | Dataset.collect is not threadsafe |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-22333](https://issues.apache.org/jira/browse/SPARK-22333) | ColumnReference should get higher priority than timeFunctionCall(CURRENT\_DATE, CURRENT\_TIMESTAMP) |  Major | SQL | Feng Zhu | Feng Zhu |
| [SPARK-22291](https://issues.apache.org/jira/browse/SPARK-22291) | Postgresql UUID[] to Cassandra: Conversion Error |  Major | SQL | Fabio J. Walter | Jen-Ming Chung |
| [SPARK-22306](https://issues.apache.org/jira/browse/SPARK-22306) | INFER\_AND\_SAVE overwrites important metadata in Parquet Metastore table |  Critical | SQL | David Malinge | Wenchen Fan |
| [SPARK-22243](https://issues.apache.org/jira/browse/SPARK-22243) | streaming job failed to restart from checkpoint |  Major | DStreams | StephenZou | StephenZou |
| [SPARK-22211](https://issues.apache.org/jira/browse/SPARK-22211) | LimitPushDown optimization for FullOuterJoin generates wrong results |  Major | SQL | Benyi Wang | Henry Robinson |
| [SPARK-22429](https://issues.apache.org/jira/browse/SPARK-22429) | Streaming checkpointing code does not retry after failure due to NullPointerException |  Minor | DStreams | Tristan Stevens | Tristan Stevens |
| [SPARK-22417](https://issues.apache.org/jira/browse/SPARK-22417) | createDataFrame from a pandas.DataFrame reads datetime64 values as longs |  Major | PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-22464](https://issues.apache.org/jira/browse/SPARK-22464) | \<=\> is not supported by Hive metastore partition predicate pushdown |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-22327](https://issues.apache.org/jira/browse/SPARK-22327) | R CRAN check fails on non-latest branches |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-22281](https://issues.apache.org/jira/browse/SPARK-22281) | Handle R method breaking signature changes |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-22442](https://issues.apache.org/jira/browse/SPARK-22442) | Schema generated by Product Encoder doesn't match case class field name when using non-standard characters |  Major | SQL | Mikel San Vicente | Liang-Chi Hsieh |
| [SPARK-22403](https://issues.apache.org/jira/browse/SPARK-22403) | StructuredKafkaWordCount example fails in YARN cluster mode |  Major | Structured Streaming | Wing Yew Poon | Wing Yew Poon |
| [SPARK-22287](https://issues.apache.org/jira/browse/SPARK-22287) | SPARK\_DAEMON\_MEMORY not honored by MesosClusterDispatcher |  Minor | Mesos | paul mackles | paul mackles |
| [SPARK-22472](https://issues.apache.org/jira/browse/SPARK-22472) | Datasets generate random values for null primitive types |  Major | SQL | Vladislav Kuzemchik | Wenchen Fan |
| [SPARK-22344](https://issues.apache.org/jira/browse/SPARK-22344) | Prevent R CMD check from using /tmp |  Major | SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-22284](https://issues.apache.org/jira/browse/SPARK-22284) | Code of class \\"org.apache.spark.sql.catalyst.expressions.GeneratedClass$SpecificUnsafeProjection\\" grows beyond 64 KB |  Major | Optimizer, PySpark, SQL | Ben | Kazuaki Ishizaki |
| [SPARK-19644](https://issues.apache.org/jira/browse/SPARK-19644) | Memory leak in Spark Streaming (Encoder/Scala Reflection) |  Major | DStreams, SQL, Structured Streaming | Deenbandhu Agarwal | Shixiong Zhu |
| [SPARK-22488](https://issues.apache.org/jira/browse/SPARK-22488) | The view resolution in the SparkSession internal table() API |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-22377](https://issues.apache.org/jira/browse/SPARK-22377) | Maven nightly snapshot jenkins jobs are broken on multiple workers due to lsof |  Major | Build | Xin Lu | Hyukjin Kwon |
| [SPARK-22511](https://issues.apache.org/jira/browse/SPARK-22511) | Update maven central repo address |  Major | Build | Felix Cheung | Sean Owen |
| [SPARK-22469](https://issues.apache.org/jira/browse/SPARK-22469) | Accuracy problem in comparison with string and numeric |  Major | SQL | Lijia Liu | Lijia Liu |
| [SPARK-22535](https://issues.apache.org/jira/browse/SPARK-22535) | PythonRunner.MonitorThread should give the task a little time to finish before killing the python worker |  Major | PySpark | Shixiong Zhu | Shixiong Zhu |
| [SPARK-22479](https://issues.apache.org/jira/browse/SPARK-22479) | SaveIntoDataSourceCommand logs jdbc credentials |  Major | SQL | Onur Satici | Onur Satici |
| [SPARK-22540](https://issues.apache.org/jira/browse/SPARK-22540) | HighlyCompressedMapStatus's avgSize is incorrect |  Major | Spark Core | yucai | yucai |
| [SPARK-22538](https://issues.apache.org/jira/browse/SPARK-22538) | SQLTransformer.transform(inputDataFrame) uncaches inputDataFrame |  Major | ML, PySpark, SQL, Web UI | V Luong | Liang-Chi Hsieh |
| [SPARK-22544](https://issues.apache.org/jira/browse/SPARK-22544) | FileStreamSource should use its own hadoop conf to call globPathIfNecessary |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-22548](https://issues.apache.org/jira/browse/SPARK-22548) | Incorrect nested AND expression pushed down to JDBC data source |  Major | SQL | Jia Li | Jia Li |
| [SPARK-17920](https://issues.apache.org/jira/browse/SPARK-17920) | HiveWriterContainer passes null configuration to serde.initialize, causing NullPointerException in AvroSerde when using avro.schema.url |  Minor | SQL | James Norvell | Vinod KC |
| [SPARK-19580](https://issues.apache.org/jira/browse/SPARK-19580) | Support for avro.schema.url while writing to hive table |  Critical | SQL | Mateusz Boryn | Vinod KC |
| [SPARK-22495](https://issues.apache.org/jira/browse/SPARK-22495) | Fix setup of SPARK\_HOME variable on Windows |  Minor | PySpark, Windows | Hyukjin Kwon | Jakub Nowacki |
| [SPARK-22591](https://issues.apache.org/jira/browse/SPARK-22591) | GenerateOrdering shouldn't change ctx.INPUT\_ROW |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-22755](https://issues.apache.org/jira/browse/SPARK-22755) | Expression (946-885)\*1.0/946 \< 0.1 and (946-885)\*1.000/946 \< 0.1 return different results |  Major | SQL | Kevin Zhang |  |
| [SPARK-22406](https://issues.apache.org/jira/browse/SPARK-22406) | pyspark version tag is wrong on PyPi |  Minor | PySpark | Kerrick Staley | holdenk |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-21128](https://issues.apache.org/jira/browse/SPARK-21128) | Running R tests multiple times failed due to pre-exiting "spark-warehouse" / "metastore\_db" |  Minor | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-21464](https://issues.apache.org/jira/browse/SPARK-21464) | Minimize deprecation warnings caused by ProcessingTime class |  Minor | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-21663](https://issues.apache.org/jira/browse/SPARK-21663) | MapOutputTrackerSuite case test("remote fetch below max RPC message size") should call stop |  Minor | Tests | wangjiaochun | wangjiaochun |
| [SPARK-21936](https://issues.apache.org/jira/browse/SPARK-21936) | backward compatibility test framework for HiveExternalCatalog |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-22140](https://issues.apache.org/jira/browse/SPARK-22140) | Add a test suite for TPCDS queries |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-22161](https://issues.apache.org/jira/browse/SPARK-22161) | Add Impala-modified TPC-DS queries |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-21693](https://issues.apache.org/jira/browse/SPARK-21693) | AppVeyor tests reach the time limit, 1.5 hours, sometimes in SparkR tests |  Major | Build, SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-22595](https://issues.apache.org/jira/browse/SPARK-22595) | flaky test: CastSuite.SPARK-22500: cast for struct should not generate codes beyond 64KB |  Major | SQL | Wenchen Fan | Kazuaki Ishizaki |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-21083](https://issues.apache.org/jira/browse/SPARK-21083) | Store zero size and row count after analyzing empty table |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-21720](https://issues.apache.org/jira/browse/SPARK-21720) | Filter predicate with many conditions throw stackoverflow error |  Major | SQL | srinivasan | Kazuaki Ishizaki |
| [SPARK-22499](https://issues.apache.org/jira/browse/SPARK-22499) | 64KB JVM bytecode limit problem with least and greatest |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-22494](https://issues.apache.org/jira/browse/SPARK-22494) | Coalesce and AtLeastNNonNulls can cause 64KB JVM bytecode limit exception |  Major | SQL | Marco Gaido | Marco Gaido |
| [SPARK-22501](https://issues.apache.org/jira/browse/SPARK-22501) | 64KB JVM bytecode limit problem with in |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-22498](https://issues.apache.org/jira/browse/SPARK-22498) | 64KB JVM bytecode limit problem with concat |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-22549](https://issues.apache.org/jira/browse/SPARK-22549) | 64KB JVM bytecode limit problem with concat\_ws |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-22508](https://issues.apache.org/jira/browse/SPARK-22508) | 64KB JVM bytecode limit problem with GenerateUnsafeRowJoiner.create() |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-22550](https://issues.apache.org/jira/browse/SPARK-22550) | 64KB JVM bytecode limit problem with elt |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-22500](https://issues.apache.org/jira/browse/SPARK-22500) | 64KB JVM bytecode limit problem with cast |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-21069](https://issues.apache.org/jira/browse/SPARK-21069) | Add rate source to programming guide |  Major | Documentation, Structured Streaming | Shixiong Zhu | Prashant Sharma |
| [SPARK-21925](https://issues.apache.org/jira/browse/SPARK-21925) | Update trigger interval documentation in docs with behavior change in Spark 2.2 |  Major | Documentation, Structured Streaming | Burak Yavuz |  |
| [SPARK-21976](https://issues.apache.org/jira/browse/SPARK-21976) | Fix wrong doc about Mean Absolute Error |  Minor | Documentation, MLlib | Favio Vázquez | Favio Vázquez |
| [SPARK-22490](https://issues.apache.org/jira/browse/SPARK-22490) | PySpark doc has misleading string for SparkSession.builder |  Minor | PySpark | Xiao Li | Dongjoon Hyun |
| [SPARK-22627](https://issues.apache.org/jira/browse/SPARK-22627) | Fix formatting of headers in configuration.html page |  Minor | Documentation | Andreas Maier | Felix Cheung |
| [SPARK-21366](https://issues.apache.org/jira/browse/SPARK-21366) | Add sql test for window functions |  Minor | SQL | Jiang Xingbo | Jiang Xingbo |
| [SPARK-21699](https://issues.apache.org/jira/browse/SPARK-21699) | Remove unused getTableOption in ExternalCatalog |  Major | SQL | Reynold Xin | Reynold Xin |


