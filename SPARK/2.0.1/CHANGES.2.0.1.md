
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

## Release 2.0.1 - 2016-10-03



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-16664](https://issues.apache.org/jira/browse/SPARK-16664) | Spark 1.6.2 - Persist call on Data frames with more than 200 columns is wiping out the data. |  Blocker | Spark Core | Satish Kolli | Wesley Tang |
| [SPARK-16751](https://issues.apache.org/jira/browse/SPARK-16751) | Upgrade derby to 10.12.1.1 from 10.11.1.1 |  Major | Build | Adam Roberts | Adam Roberts |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-16956](https://issues.apache.org/jira/browse/SPARK-16956) | Make ApplicationState.MAX\_NUM\_RETRY configurable |  Major | Deploy | Josh Rosen | Josh Rosen |
| [SPARK-17069](https://issues.apache.org/jira/browse/SPARK-17069) | Expose spark.range() as table-valued function in SQL |  Minor | SQL | Eric Liang | Eric Liang |
| [SPARK-17150](https://issues.apache.org/jira/browse/SPARK-17150) | Support SQL generation for inline tables |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-17456](https://issues.apache.org/jira/browse/SPARK-17456) | Utility for parsing Spark versions |  Minor | Spark Core | Joseph K. Bradley | Joseph K. Bradley |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-16568](https://issues.apache.org/jira/browse/SPARK-16568) | update sql programing guide refreshTable API |  Major | Documentation, SQL | Weichen Xu | Weichen Xu |
| [SPARK-15923](https://issues.apache.org/jira/browse/SPARK-15923) | Spark Application rest api returns "no such app: \<appId\>" |  Minor | . | Yesha Vora | Weiqing Yang |
| [SPARK-16650](https://issues.apache.org/jira/browse/SPARK-16650) | Improve documentation of spark.task.maxFailures |  Minor | Documentation | Thomas Graves | Thomas Graves |
| [SPARK-16651](https://issues.apache.org/jira/browse/SPARK-16651) | Document no exception using DataFrame.withColumnRenamed when existing column doesn't exist |  Minor | Documentation, PySpark | Tom Phillips | Dongjoon Hyun |
| [SPARK-16663](https://issues.apache.org/jira/browse/SPARK-16663) | desc table should be consistent between data source and hive serde tables |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-15703](https://issues.apache.org/jira/browse/SPARK-15703) | Make ListenerBus event queue size configurable |  Minor | Scheduler, Web UI | Thomas Graves | Dhruve Ashar |
| [SPARK-16764](https://issues.apache.org/jira/browse/SPARK-16764) | Recommend disabling vectorized parquet reader on OutOfMemoryError |  Major | . | Sameer Agarwal | Sameer Agarwal |
| [SPARK-16772](https://issues.apache.org/jira/browse/SPARK-16772) | Correct API doc references to PySpark classes + formatting fixes |  Trivial | Documentation, PySpark | Nicholas Chammas | Nicholas Chammas |
| [SPARK-16812](https://issues.apache.org/jira/browse/SPARK-16812) | Open up SparkILoop.getAddedJars |  Major | Spark Shell | Reynold Xin | Reynold Xin |
| [SPARK-16813](https://issues.apache.org/jira/browse/SPARK-16813) | Remove private[sql] and private[spark] from catalyst package |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-16805](https://issues.apache.org/jira/browse/SPARK-16805) | Log timezone when query result does not match |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-16796](https://issues.apache.org/jira/browse/SPARK-16796) | Visible passwords on Spark environment page |  Trivial | Web UI | Artur Sukhenko | Artur Sukhenko |
| [SPARK-16875](https://issues.apache.org/jira/browse/SPARK-16875) | Add args checking for DataSet randomSplit and sample |  Minor | SQL | zhengruifeng | zhengruifeng |
| [SPARK-16877](https://issues.apache.org/jira/browse/SPARK-16877) | Add a rule for preventing use Java's Override annotation |  Minor | Build | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-16932](https://issues.apache.org/jira/browse/SPARK-16932) | Programming-guide Accumulator section should be more clear w.r.t new API |  Trivial | Documentation | Bryan Cutler | Bryan Cutler |
| [SPARK-16870](https://issues.apache.org/jira/browse/SPARK-16870) | add "spark.sql.broadcastTimeout" into docs/sql-programming-guide.md to help people to how to fix this timeout error when it happenned |  Trivial | Documentation | Liang Ke | Liang Ke |
| [SPARK-16964](https://issues.apache.org/jira/browse/SPARK-16964) | Remove private[sql] and private[spark] from sql.execution package |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-16324](https://issues.apache.org/jira/browse/SPARK-16324) | regexp\_extract should doc that it returns empty string when match fails |  Minor | PySpark, SQL | Max Moroz | Sean Owen |
| [SPARK-15639](https://issues.apache.org/jira/browse/SPARK-15639) | Try to push down filter at RowGroups level for parquet reader |  Blocker | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-12370](https://issues.apache.org/jira/browse/SPARK-12370) | Documentation should link to examples from its own release version |  Minor | Documentation | Brian London | Jagadeesan A S |
| [SPARK-17023](https://issues.apache.org/jira/browse/SPARK-17023) | Update Kafka connetor to use Kafka 0.10.0.1 |  Trivial | Build | Luciano Resende | Luciano Resende |
| [SPARK-17084](https://issues.apache.org/jira/browse/SPARK-17084) | Rename ParserUtils.assert to validate |  Minor | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-16947](https://issues.apache.org/jira/browse/SPARK-16947) | Support type coercion and foldable expression for inline tables |  Major | SQL | Herman van Hovell | Peter Lee |
| [SPARK-16320](https://issues.apache.org/jira/browse/SPARK-16320) | Document G1 heap region's effect on spark 2.0 vs 1.6 |  Minor | Documentation, SQL | Maciej Bryński | Sean Owen |
| [SPARK-13286](https://issues.apache.org/jira/browse/SPARK-13286) | JDBC driver doesn't report full exception |  Minor | SQL | Adrian Bridgett | Davies Liu |
| [SPARK-17186](https://issues.apache.org/jira/browse/SPARK-17186) | remove catalog table type INDEX |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-16216](https://issues.apache.org/jira/browse/SPARK-16216) | CSV data source does not write date and timestamp correctly |  Blocker | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-17193](https://issues.apache.org/jira/browse/SPARK-17193) | HadoopRDD NPE at DEBUG log level when getLocationInfo == null |  Trivial | Spark Core | Sean Owen | Sean Owen |
| [SPARK-17231](https://issues.apache.org/jira/browse/SPARK-17231) | Avoid building debug or trace log messages unless the respective log level is enabled |  Minor | Spark Core | Michael Allman | Michael Allman |
| [SPARK-17246](https://issues.apache.org/jira/browse/SPARK-17246) | Support BigDecimal literal parsing |  Minor | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-17063](https://issues.apache.org/jira/browse/SPARK-17063) | MSCK REPAIR TABLE is super slow with Hive metastore |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-17301](https://issues.apache.org/jira/browse/SPARK-17301) | Remove unused classTag field from AtomicType base class |  Minor | SQL | Josh Rosen | Josh Rosen |
| [SPARK-17316](https://issues.apache.org/jira/browse/SPARK-17316) | Don't block StandaloneSchedulerBackend.executorRemoved |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-16935](https://issues.apache.org/jira/browse/SPARK-16935) | Verification of Function-related ExternalCatalog APIs |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-17347](https://issues.apache.org/jira/browse/SPARK-17347) | Encoder in Dataset example has incorrect type |  Trivial | Examples | Nan Zhu | Nan Zhu |
| [SPARK-17279](https://issues.apache.org/jira/browse/SPARK-17279) | better error message for exceptions during ScalaUDF execution |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-17378](https://issues.apache.org/jira/browse/SPARK-17378) | Upgrade snappy-java to 1.1.2.6 |  Trivial | Build | Adam Roberts | Adam Roberts |
| [SPARK-17486](https://issues.apache.org/jira/browse/SPARK-17486) | Remove unused TaskMetricsUIData.updatedBlockStatuses field |  Major | Web UI | Josh Rosen | Josh Rosen |
| [SPARK-17483](https://issues.apache.org/jira/browse/SPARK-17483) | Minor refactoring and cleanup in BlockManager block status reporting and block removal |  Major | Block Manager | Josh Rosen | Josh Rosen |
| [SPARK-17480](https://issues.apache.org/jira/browse/SPARK-17480) | CompressibleColumnBuilder inefficiently call gatherCompressibilityStats |  Minor | SQL | Ergin Seyfe | Ergin Seyfe |
| [SPARK-17445](https://issues.apache.org/jira/browse/SPARK-17445) | Reference an ASF page as the main place to find third-party packages |  Minor | . | Matei Zaharia | Sean Owen |
| [SPARK-17484](https://issues.apache.org/jira/browse/SPARK-17484) | Race condition when cancelling a job during a cache write can lead to block fetch failures |  Major | Block Manager | Josh Rosen | Josh Rosen |
| [SPARK-17297](https://issues.apache.org/jira/browse/SPARK-17297) | Clarify window/slide duration as absolute time, not relative to a calendar |  Trivial | Documentation | Pete Baker | Sean Owen |
| [SPARK-17558](https://issues.apache.org/jira/browse/SPARK-17558) | Bump Hadoop 2.7 version from 2.7.2 to 2.7.3 |  Trivial | Build | Reynold Xin | Steve Loughran |
| [SPARK-17569](https://issues.apache.org/jira/browse/SPARK-17569) | Don't recheck existence of files when generating File Relation resolution in StructuredStreaming |  Major | . | Burak Yavuz | Burak Yavuz |
| [SPARK-17577](https://issues.apache.org/jira/browse/SPARK-17577) | SparkR support add files to Spark job and get by executors |  Major | SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-17609](https://issues.apache.org/jira/browse/SPARK-17609) | SessionCatalog.tableExists should not check temp view |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-17421](https://issues.apache.org/jira/browse/SPARK-17421) | Document warnings about "MaxPermSize" parameter when building with Maven and Java 8 |  Trivial | Build | Frederick Reiss | Frederick Reiss |
| [SPARK-17485](https://issues.apache.org/jira/browse/SPARK-17485) | Failed remote cached block reads can lead to whole job failure |  Critical | Block Manager | Josh Rosen | Josh Rosen |
| [SPARK-17638](https://issues.apache.org/jira/browse/SPARK-17638) | Stop JVM StreamingContext when the Python process is dead |  Minor | DStreams | Shixiong Zhu | Shixiong Zhu |
| [SPARK-16240](https://issues.apache.org/jira/browse/SPARK-16240) | model loading backward compatibility for ml.clustering.LDA |  Major | . | yuhao yang | Gayathri Murali |
| [SPARK-17640](https://issues.apache.org/jira/browse/SPARK-17640) | Avoid using -1 as the default batchId for FileStreamSource.FileEntry |  Minor | SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-17651](https://issues.apache.org/jira/browse/SPARK-17651) | Automate Spark version update for documentations |  Major | Build, Documentation | Reynold Xin | Shivaram Venkataraman |
| [SPARK-10835](https://issues.apache.org/jira/browse/SPARK-10835) | Word2Vec should accept non-null string array, in addition to existing null string array |  Minor | ML | Sumit Chawla | yuhao yang |
| [SPARK-17649](https://issues.apache.org/jira/browse/SPARK-17649) | Log how many Spark events got dropped in LiveListenerBus |  Minor | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-16865](https://issues.apache.org/jira/browse/SPARK-16865) | A file-based end-to-end SQL query suite |  Major | SQL | Peter Lee | Peter Lee |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-14204](https://issues.apache.org/jira/browse/SPARK-14204) | [SQL] Failure to register URL-derived JDBC driver on executors in cluster mode |  Major | SQL | Kevin McHale | Kevin McHale |
| [SPARK-16440](https://issues.apache.org/jira/browse/SPARK-16440) | Undeleted broadcast variables in Word2Vec causing OoM for long runs |  Major | MLlib | Anthony Truchet | Anthony Truchet |
| [SPARK-10683](https://issues.apache.org/jira/browse/SPARK-10683) | Source code missing for SparkR test JAR |  Minor | SparkR | Terry Moschou | Shivaram Venkataraman |
| [SPARK-16632](https://issues.apache.org/jira/browse/SPARK-16632) | Vectorized parquet reader fails to read certain fields from Hive tables |  Major | SQL | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-16613](https://issues.apache.org/jira/browse/SPARK-16613) | RDD.pipe returns values for empty partitions |  Major | . | Alex Krasnyansky | Sean Owen |
| [SPARK-16634](https://issues.apache.org/jira/browse/SPARK-16634) | GenericArrayData can't be loaded in certain JVMs |  Minor | SQL | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-16644](https://issues.apache.org/jira/browse/SPARK-16644) | constraints propagation may fail the query |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-16656](https://issues.apache.org/jira/browse/SPARK-16656) | CreateTableAsSelectSuite is flaky |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-16699](https://issues.apache.org/jira/browse/SPARK-16699) | Fix performance bug in hash aggregate on long string keys |  Major | Spark Core | Qifan Pu | Qifan Pu |
| [SPARK-16648](https://issues.apache.org/jira/browse/SPARK-16648) | LAST\_VALUE(FALSE) OVER () throws IndexOutOfBoundsException |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-16698](https://issues.apache.org/jira/browse/SPARK-16698) | json parsing regression - "." in keys |  Major | SQL | TobiasP | Hyukjin Kwon |
| [SPARK-16703](https://issues.apache.org/jira/browse/SPARK-16703) | Extra space in WindowSpecDefinition SQL representation |  Minor | SQL | Cheng Lian | Cheng Lian |
| [SPARK-16715](https://issues.apache.org/jira/browse/SPARK-16715) | Fix a potential ExprId conflict for SubexpressionEliminationSuite."Semantic equals and hash" |  Major | Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-16672](https://issues.apache.org/jira/browse/SPARK-16672) | SQLBuilder should not raise exceptions on EXISTS queries |  Minor | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-16724](https://issues.apache.org/jira/browse/SPARK-16724) | Expose DefinedByConstructorParams |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-16633](https://issues.apache.org/jira/browse/SPARK-16633) | lag/lead using constant input values does not return the default value when the offset row does not exist |  Critical | SQL | Yin Huai | Yin Huai |
| [SPARK-16642](https://issues.apache.org/jira/browse/SPARK-16642) | ResolveWindowFrame should not be triggered on UnresolvedFunctions. |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-16721](https://issues.apache.org/jira/browse/SPARK-16721) | Lead/lag needs to respect nulls |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-16686](https://issues.apache.org/jira/browse/SPARK-16686) | Dataset.sample with seed: result seems to depend on downstream usage |  Major | SQL | Joseph K. Bradley | Liang-Chi Hsieh |
| [SPARK-16729](https://issues.apache.org/jira/browse/SPARK-16729) | Spark should throw analysis exception for invalid casts to date type |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-16730](https://issues.apache.org/jira/browse/SPARK-16730) | Spark 2.0 breaks various Hive cast functions |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-16639](https://issues.apache.org/jira/browse/SPARK-16639) | query fails if having condition contains grouping column |  Major | SQL | Wenchen Fan | Liang-Chi Hsieh |
| [SPARK-16740](https://issues.apache.org/jira/browse/SPARK-16740) | joins.LongToUnsafeRowMap crashes with NegativeArraySizeException |  Major | PySpark, Spark Core, SQL | Sylvain Zimmer | Sylvain Zimmer |
| [SPARK-16750](https://issues.apache.org/jira/browse/SPARK-16750) | ML GaussianMixture training failed due to feature column type mistake |  Major | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-16748](https://issues.apache.org/jira/browse/SPARK-16748) | Errors thrown by UDFs cause TreeNodeException when the query has an ORDER BY clause |  Major | SQL | Yin Huai | Tathagata Das |
| [SPARK-16818](https://issues.apache.org/jira/browse/SPARK-16818) | Exchange reuse incorrectly reuses scans over different sets of partitions |  Critical | SQL | Eric Liang | Eric Liang |
| [SPARK-16791](https://issues.apache.org/jira/browse/SPARK-16791) | casting structs fails on Timestamp fields (interpreted mode only) |  Minor | SQL | Eyal Farago | Eyal Farago |
| [SPARK-15869](https://issues.apache.org/jira/browse/SPARK-15869) | HTTP 500 and NPE on streaming batch details page |  Major | DStreams, Web UI | Maciej Bryński | Shixiong Zhu |
| [SPARK-16850](https://issues.apache.org/jira/browse/SPARK-16850) | Improve error message for greatest/least |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-16558](https://issues.apache.org/jira/browse/SPARK-16558) | examples/mllib/LDAExample should use MLVector instead of MLlib Vector |  Minor | Examples, MLlib | Xusen Yin | Xusen Yin |
| [SPARK-16837](https://issues.apache.org/jira/browse/SPARK-16837) | TimeWindow incorrectly drops slideDuration in constructors |  Major | SQL | Tom Magrino | Tom Magrino |
| [SPARK-16062](https://issues.apache.org/jira/browse/SPARK-16062) | PySpark SQL python-only UDTs don't work well |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-15989](https://issues.apache.org/jira/browse/SPARK-15989) | PySpark SQL python-only UDTs don't support nested types |  Major | PySpark, SQL | Vladimir Feinberg | Liang-Chi Hsieh |
| [SPARK-16836](https://issues.apache.org/jira/browse/SPARK-16836) | Hive date/time function error |  Minor | SQL | Jesse Lord | Herman van Hovell |
| [SPARK-16787](https://issues.apache.org/jira/browse/SPARK-16787) | SparkContext.addFile() should not fail if called twice with the same file |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-16831](https://issues.apache.org/jira/browse/SPARK-16831) | PySpark CrossValidator reports incorrect avgMetrics |  Major | ML, PySpark | Max Moroz | Max Moroz |
| [SPARK-16714](https://issues.apache.org/jira/browse/SPARK-16714) | Fail to create a decimal arrays with literals having different inferred precessions and scales |  Major | . | Yin Huai | Wenchen Fan |
| [SPARK-16646](https://issues.apache.org/jira/browse/SPARK-16646) | LEAST doesn't accept numeric arguments with different data types |  Major | SQL | Cheng Lian | Wenchen Fan |
| [SPARK-16770](https://issues.apache.org/jira/browse/SPARK-16770) | Spark shell not usable with german keyboard due to JLine version |  Minor | Spark Shell | Stefan Schulze | Stefan Schulze |
| [SPARK-16873](https://issues.apache.org/jira/browse/SPARK-16873) | force spill NPE |  Major | Spark Core | sharkd tu | sharkd tu |
| [SPARK-16802](https://issues.apache.org/jira/browse/SPARK-16802) | joins.LongToUnsafeRowMap crashes with ArrayIndexOutOfBoundsException |  Critical | SQL | Sylvain Zimmer | Davies Liu |
| [SPARK-16880](https://issues.apache.org/jira/browse/SPARK-16880) | Improve ANN training, add training data persist if needed |  Minor | ML, MLlib | Weichen Xu | Weichen Xu |
| [SPARK-16907](https://issues.apache.org/jira/browse/SPARK-16907) | Parquet table reading performance regression when vectorized record reader is not used |  Major | SQL | Sean Zhong | Sean Zhong |
| [SPARK-16901](https://issues.apache.org/jira/browse/SPARK-16901) | Hive settings in hive-site.xml may be overridden by Hive's default values |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-16925](https://issues.apache.org/jira/browse/SPARK-16925) | Spark tasks which cause JVM to exit with a zero exit code may cause app to hang in Standalone mode |  Critical | Deploy | Josh Rosen | Josh Rosen |
| [SPARK-16409](https://issues.apache.org/jira/browse/SPARK-16409) | regexp\_extract with optional groups causes NPE |  Major | Spark Core | Max Moroz | Sean Owen |
| [SPARK-16457](https://issues.apache.org/jira/browse/SPARK-16457) | Wrong messages when CTAS with a Partition By clause |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-16936](https://issues.apache.org/jira/browse/SPARK-16936) | Case Sensitivity Support for Refresh Temp Table |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-16586](https://issues.apache.org/jira/browse/SPARK-16586) | spark-class crash with "[: too many arguments" instead of displaying the correct error message |  Minor | . | Xiang Gao | Marcelo Vanzin |
| [SPARK-16953](https://issues.apache.org/jira/browse/SPARK-16953) | Make requestTotalExecutors public to be consistent with requestExecutors/killExecutors |  Major | Spark Core | Tathagata Das | Tathagata Das |
| [SPARK-16563](https://issues.apache.org/jira/browse/SPARK-16563) | Repeat calling Spark SQL thrift server fetchResults return empty for ExecuteStatement operation |  Minor | SQL | Gu Huiqin Alice | Gu Huiqin Alice |
| [SPARK-16610](https://issues.apache.org/jira/browse/SPARK-16610) | When writing ORC files, orc.compress should not be overridden if users do not set "compression" in the options |  Major | SQL | Yin Huai | Hyukjin Kwon |
| [SPARK-16950](https://issues.apache.org/jira/browse/SPARK-16950) | fromOffsets parameter in Kafka's Direct Streams does not work in python3 |  Major | PySpark | Mariusz Strzelecki | Mariusz Strzelecki |
| [SPARK-16905](https://issues.apache.org/jira/browse/SPARK-16905) | Support SQL DDL: MSCK REPAIR TABLE |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-16959](https://issues.apache.org/jira/browse/SPARK-16959) | Table Comment in the CatalogTable returned from HiveMetastore is Always Empty |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-16522](https://issues.apache.org/jira/browse/SPARK-16522) | [MESOS] Spark application throws exception on exit |  Major | Mesos | Sun Rui | Sun Rui |
| [SPARK-15899](https://issues.apache.org/jira/browse/SPARK-15899) | file scheme should be used correctly |  Major | Spark Core | Kazuaki Ishizaki | Alexander Ulanov |
| [SPARK-17010](https://issues.apache.org/jira/browse/SPARK-17010) | [MINOR]Wrong description in memory management document |  Trivial | Documentation | Tao Wang | Tao Wang |
| [SPARK-17016](https://issues.apache.org/jira/browse/SPARK-17016) | group-by/order-by ordinal should throw AnalysisException instead of UnresolvedException |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-17022](https://issues.apache.org/jira/browse/SPARK-17022) | Potential deadlock in driver handling message |  Critical | YARN | Tao Wang | Tao Wang |
| [SPARK-17013](https://issues.apache.org/jira/browse/SPARK-17013) | negative numeric literal parsing |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-16975](https://issues.apache.org/jira/browse/SPARK-16975) | Spark-2.0.0 unable to infer schema for parquet data written by Spark-1.6.2 |  Major | Input/Output | immerrr again | Dongjoon Hyun |
| [SPARK-16955](https://issues.apache.org/jira/browse/SPARK-16955) | Using ordinals in ORDER BY causes an analysis error when the query has a GROUP BY clause using ordinals |  Major | SQL | Yin Huai | Peter Lee |
| [SPARK-16966](https://issues.apache.org/jira/browse/SPARK-16966) | App Name is a randomUUID even when "spark.app.name" exists |  Major | Spark Core | Weiqing Yang | Sean Owen |
| [SPARK-17027](https://issues.apache.org/jira/browse/SPARK-17027) | PolynomialExpansion.choose is prone to integer overflow |  Minor | ML | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-16321](https://issues.apache.org/jira/browse/SPARK-16321) | [Spark 2.0] Performance regression when reading parquet and using PPD and non-vectorized reader |  Critical | SQL | Maciej Bryński | Liang-Chi Hsieh |
| [SPARK-16700](https://issues.apache.org/jira/browse/SPARK-16700) | StructType doesn't accept Python dicts anymore |  Major | PySpark | Sylvain Zimmer | Davies Liu |
| [SPARK-17065](https://issues.apache.org/jira/browse/SPARK-17065) | Improve the error message when encountering an incompatible DataSourceRegister |  Major | SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-17038](https://issues.apache.org/jira/browse/SPARK-17038) | StreamingSource reports metrics for lastCompletedBatch instead of lastReceivedBatch |  Minor | DStreams | Oz Ben-Ami | Xin Ren |
| [SPARK-16995](https://issues.apache.org/jira/browse/SPARK-16995) | TreeNodeException when flat mapping RelationalGroupedDataset created from DataFrame containing a column created with lit/expr |  Major | SQL | Cédric Perriard | Liang-Chi Hsieh |
| [SPARK-17117](https://issues.apache.org/jira/browse/SPARK-17117) | 'SELECT 1 / NULL\` throws AnalysisException, while 'SELECT 1 \* NULL\` works |  Major | SQL | Josh Rosen | Peter Lee |
| [SPARK-16961](https://issues.apache.org/jira/browse/SPARK-16961) | Utils.randomizeInPlace does not shuffle arrays uniformly |  Minor | Spark Core | Nicholas | Nicholas |
| [SPARK-16994](https://issues.apache.org/jira/browse/SPARK-16994) | Filter and limit are illegally permuted. |  Major | SQL | TobiasP | Reynold Xin |
| [SPARK-11227](https://issues.apache.org/jira/browse/SPARK-11227) | Spark1.5+ HDFS HA mode throw java.net.UnknownHostException: nameservice1 |  Major | Spark Core | Yuri Saito | Kousuke Saruta |
| [SPARK-15382](https://issues.apache.org/jira/browse/SPARK-15382) | monotonicallyIncreasingId doesn't work when data is upsampled |  Major | SQL | Mateusz Buśkiewicz | Takeshi Yamamuro |
| [SPARK-17113](https://issues.apache.org/jira/browse/SPARK-17113) | Job failure due to Executor OOM in offheap mode |  Major | Spark Core | Sital Kedia | Sital Kedia |
| [SPARK-17158](https://issues.apache.org/jira/browse/SPARK-17158) | Improve error message for numeric literal parsing |  Minor | SQL | Srinath | Srinath |
| [SPARK-17104](https://issues.apache.org/jira/browse/SPARK-17104) | LogicalRelation.newInstance should follow the semantics of MultiInstanceRelation |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-17124](https://issues.apache.org/jira/browse/SPARK-17124) | RelationalGroupedDataset.agg should be order preserving and allow duplicate column names |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-12666](https://issues.apache.org/jira/browse/SPARK-12666) | spark-shell --packages cannot load artifacts which are publishLocal'd by SBT |  Major | Spark Submit | Josh Rosen | Bryan Cutler |
| [SPARK-17098](https://issues.apache.org/jira/browse/SPARK-17098) | "SELECT COUNT(NULL) OVER ()" throws UnsupportedOperationException during analysis |  Major | SQL | Josh Rosen | Dongjoon Hyun |
| [SPARK-15285](https://issues.apache.org/jira/browse/SPARK-15285) | Generated SpecificSafeProjection.apply method grows beyond 64 KB |  Major | SQL | Konstantin Shaposhnikov | Kazuaki Ishizaki |
| [SPARK-17115](https://issues.apache.org/jira/browse/SPARK-17115) | Improve the performance of UnsafeProjection for wide table |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-17162](https://issues.apache.org/jira/browse/SPARK-17162) | Range does not support SQL generation |  Minor | SQL | Eric Liang | Eric Liang |
| [SPARK-16550](https://issues.apache.org/jira/browse/SPARK-16550) | Caching data with replication doesn't replicate data |  Major | Block Manager, Spark Core | Shubham Chopra | Eric Liang |
| [SPARK-17182](https://issues.apache.org/jira/browse/SPARK-17182) | CollectList and CollectSet should be marked as non-deterministic |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-17194](https://issues.apache.org/jira/browse/SPARK-17194) | When emitting SQL for string literals Spark should use single quotes, not double |  Minor | SQL | Josh Rosen | Josh Rosen |
| [SPARK-17086](https://issues.apache.org/jira/browse/SPARK-17086) | QuantileDiscretizer throws InvalidArgumentException (parameter splits given invalid value) on valid data |  Major | ML | Barry Becker | Vincent |
| [SPARK-16781](https://issues.apache.org/jira/browse/SPARK-16781) | java launched by PySpark as gateway may not be the same java used in the spark environment |  Major | PySpark | Michael Berman | Sean Owen |
| [SPARK-15083](https://issues.apache.org/jira/browse/SPARK-15083) | History Server would OOM due to unlimited TaskUIData in some stages |  Major | Web UI | Zheng Tan | Alex Bozarth |
| [SPARK-17228](https://issues.apache.org/jira/browse/SPARK-17228) | Not infer/propagate non-deterministic constraints |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-17093](https://issues.apache.org/jira/browse/SPARK-17093) | Roundtrip encoding of array\<struct\<\>\> fields is wrong when whole-stage codegen is disabled |  Blocker | SQL | Josh Rosen | Liwei Lin(Inactive) |
| [SPARK-17061](https://issues.apache.org/jira/browse/SPARK-17061) | Incorrect results returned following a join of two datasets and a map step where total number of columns \>100 |  Critical | Spark Core | Jamie Hutton | Liwei Lin(Inactive) |
| [SPARK-16991](https://issues.apache.org/jira/browse/SPARK-16991) | Full outer join followed by inner join produces wrong results |  Critical | SQL | Jonas Jarutis | Xiao Li |
| [SPARK-17099](https://issues.apache.org/jira/browse/SPARK-17099) | Incorrect result when HAVING clause is added to group by query |  Blocker | SQL | Josh Rosen | Xiao Li |
| [SPARK-17120](https://issues.apache.org/jira/browse/SPARK-17120) | Analyzer incorrectly optimizes plan to empty LocalRelation |  Blocker | SQL | Josh Rosen | Xiao Li |
| [SPARK-17167](https://issues.apache.org/jira/browse/SPARK-17167) | Issue Exceptions when Analyze Table on In-Memory Cataloged Tables |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-17205](https://issues.apache.org/jira/browse/SPARK-17205) | Literal.sql does not properly convert NaN and Infinity literals |  Minor | SQL | Josh Rosen | Josh Rosen |
| [SPARK-17252](https://issues.apache.org/jira/browse/SPARK-17252) | Performing arithmetic in VALUES can lead to ClassCastException / MatchErrors during query parsing |  Major | SQL | Josh Rosen | Sami Jaktholm |
| [SPARK-17244](https://issues.apache.org/jira/browse/SPARK-17244) | Joins should not pushdown non-deterministic conditions |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-17216](https://issues.apache.org/jira/browse/SPARK-17216) | Even timeline for a stage doesn't core 100% of the bar timeline bar in chrome |  Major | Web UI | Robert Kruszewski | Robert Kruszewski |
| [SPARK-17264](https://issues.apache.org/jira/browse/SPARK-17264) | DataStreamWriter should document that it only supports Parquet for now |  Trivial | Documentation, Input/Output | Bill Reed | Sean Owen |
| [SPARK-17243](https://issues.apache.org/jira/browse/SPARK-17243) | Spark 2.0 history server summary page gets stuck at "loading history summary" with 10K+ application history |  Major | Web UI | Gang Wu | Alex Bozarth |
| [SPARK-17180](https://issues.apache.org/jira/browse/SPARK-17180) | Unable to Alter the Temporary View Using ALTER VIEW command |  Major | SQL | Xiao Li | Wenchen Fan |
| [SPARK-17309](https://issues.apache.org/jira/browse/SPARK-17309) | ALTER VIEW should throw exception if view not exist |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-17323](https://issues.apache.org/jira/browse/SPARK-17323) | ALTER VIEW AS should keep the previous table properties, comment, create\_time, etc. |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-17353](https://issues.apache.org/jira/browse/SPARK-17353) | CREATE TABLE LIKE statements when Source is a VIEW |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-16943](https://issues.apache.org/jira/browse/SPARK-16943) | CREATE TABLE LIKE generates a non-empty table when source is a data source table |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-16942](https://issues.apache.org/jira/browse/SPARK-16942) | CREATE TABLE LIKE generates External table when source table is an External Hive Serde table |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-16533](https://issues.apache.org/jira/browse/SPARK-16533) | Spark application not handling preemption messages |  Major | EC2, Input/Output, Optimizer, Scheduler, Spark Submit, YARN | Lucas Winkelmann | Angus Gerry |
| [SPARK-16926](https://issues.apache.org/jira/browse/SPARK-16926) | Partition columns are present in columns metadata for partition but not table |  Major | SQL | Brian Cho | Brian Cho |
| [SPARK-17355](https://issues.apache.org/jira/browse/SPARK-17355) | Work around exception thrown by HiveResultSetMetaData.isSigned |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-17342](https://issues.apache.org/jira/browse/SPARK-17342) | Style of event timeline is broken |  Major | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-16883](https://issues.apache.org/jira/browse/SPARK-16883) | SQL decimal type is not properly cast to number when collecting SparkDataFrame |  Major | SparkR | Hossein Falaki | Miao Wang |
| [SPARK-17352](https://issues.apache.org/jira/browse/SPARK-17352) | Executor computing time can be negative-number because of calculation error |  Minor | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-17261](https://issues.apache.org/jira/browse/SPARK-17261) | Using HiveContext after re-creating SparkContext in Spark 2.0 throws "Java.lang.illegalStateException: Cannot call methods on a stopped sparkContext" |  Major | PySpark | Rahul Jain | Jeff Zhang |
| [SPARK-17376](https://issues.apache.org/jira/browse/SPARK-17376) | Spark version should be available in R |  Minor | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-16711](https://issues.apache.org/jira/browse/SPARK-16711) | YarnShuffleService doesn't re-init properly on YARN rolling upgrade |  Major | Shuffle, YARN | Thomas Graves | Thomas Graves |
| [SPARK-17230](https://issues.apache.org/jira/browse/SPARK-17230) | Writing decimal to csv will result empty string if the decimal exceeds (20, 18) |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-16334](https://issues.apache.org/jira/browse/SPARK-16334) | SQL query on parquet table java.lang.ArrayIndexOutOfBoundsException |  Critical | SQL | Egor Pahomov | Sameer Agarwal |
| [SPARK-17335](https://issues.apache.org/jira/browse/SPARK-17335) | Creating Hive table from Spark data |  Major | SQL | Michal Kielbowicz | Herman van Hovell |
| [SPARK-17391](https://issues.apache.org/jira/browse/SPARK-17391) | Fix Two Test Failures After Backport |  Blocker | SQL | Xiao Li | Xiao Li |
| [SPARK-17358](https://issues.apache.org/jira/browse/SPARK-17358) | Cached table(parquet/orc) should be shard between beelines |  Major | SQL | Yadong Qi | Yadong Qi |
| [SPARK-17369](https://issues.apache.org/jira/browse/SPARK-17369) | MetastoreRelation toJSON throws exception |  Minor | SQL | Sean Zhong | Sean Zhong |
| [SPARK-17356](https://issues.apache.org/jira/browse/SPARK-17356) | A large Metadata filed in Alias can cause OOM when calling TreeNode.toJSON |  Major | SQL | Sean Zhong | Sean Zhong |
| [SPARK-16922](https://issues.apache.org/jira/browse/SPARK-16922) | Query with Broadcast Hash join fails due to executor OOM in Spark 2.0 |  Major | Shuffle | Sital Kedia | Davies Liu |
| [SPARK-17211](https://issues.apache.org/jira/browse/SPARK-17211) | Broadcast join produces incorrect results when compressed Oops differs between driver, executor |  Major | PySpark | Jarno Seppanen | Davies Liu |
| [SPARK-17299](https://issues.apache.org/jira/browse/SPARK-17299) | TRIM/LTRIM/RTRIM strips characters other than spaces |  Minor | Documentation, SQL | Jeremy Beard | Sandeep Singh |
| [SPARK-17110](https://issues.apache.org/jira/browse/SPARK-17110) | Pyspark with locality ANY throw java.io.StreamCorruptedException |  Critical | PySpark | Tomer Kaftan | Josh Rosen |
| [SPARK-17296](https://issues.apache.org/jira/browse/SPARK-17296) | Spark SQL: cross join + two joins = BUG |  Major | SQL | Furcy Pin | Herman van Hovell |
| [SPARK-16785](https://issues.apache.org/jira/browse/SPARK-16785) | dapply doesn't return array or raw columns |  Minor | SparkR | Clark Fitzgerald | Clark Fitzgerald |
| [SPARK-17339](https://issues.apache.org/jira/browse/SPARK-17339) | Fix SparkR tests on Windows |  Major | SparkR, Tests | Shivaram Venkataraman | Hyukjin Kwon |
| [SPARK-17370](https://issues.apache.org/jira/browse/SPARK-17370) | Shuffle service files not invalidated when a slave is lost |  Major | Spark Core | Eric Liang | Eric Liang |
| [SPARK-17442](https://issues.apache.org/jira/browse/SPARK-17442) | Additional arguments in write.df are not passed to data source |  Blocker | SparkR | Hossein Falaki | Felix Cheung |
| [SPARK-17354](https://issues.apache.org/jira/browse/SPARK-17354) | java.lang.ClassCastException: java.lang.Integer cannot be cast to java.sql.Date |  Minor | SQL | Amit Baghel | Hyukjin Kwon |
| [SPARK-17396](https://issues.apache.org/jira/browse/SPARK-17396) | Threads number keep increasing when query on external CSV partitioned table |  Major | Spark Core | pin\_zhang | Ryan Blue |
| [SPARK-17439](https://issues.apache.org/jira/browse/SPARK-17439) | QuantilesSummaries returns the wrong result after compression |  Major | . | Tim Hunter | Tim Hunter |
| [SPARK-17306](https://issues.apache.org/jira/browse/SPARK-17306) | QuantileSummaries doesn't compress |  Major | SQL | Sean Zhong | Sean Owen |
| [SPARK-17336](https://issues.apache.org/jira/browse/SPARK-17336) | Repeated calls sbin/spark-config.sh file Causes ${PYTHONPATH} Value duplicate |  Minor | PySpark | anxu | Bryan Cutler |
| [SPARK-17503](https://issues.apache.org/jira/browse/SPARK-17503) | Memory leak in Memory store when unable to cache the whole RDD in memory |  Major | Spark Core | Sean Zhong | Sean Zhong |
| [SPARK-14818](https://issues.apache.org/jira/browse/SPARK-14818) | Move sketch and mllibLocal out from mima exclusion |  Blocker | Build | Yin Huai | Josh Rosen |
| [SPARK-17474](https://issues.apache.org/jira/browse/SPARK-17474) | Python UDF does not work between Sort and Limit |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-17515](https://issues.apache.org/jira/browse/SPARK-17515) | CollectLimit.execute() should perform per-partition limits |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-17531](https://issues.apache.org/jira/browse/SPARK-17531) | Don't initialize Hive Listeners for the Execution Client |  Major | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-17525](https://issues.apache.org/jira/browse/SPARK-17525) | SparkContext.clearFiles() still present in the PySpark bindings though the underlying Scala method was removed in Spark 2.0 |  Trivial | PySpark | Sami Jaktholm | Sami Jaktholm |
| [SPARK-17514](https://issues.apache.org/jira/browse/SPARK-17514) | df.take(1) and df.limit(1).collect() perform differently in Python |  Major | PySpark, SQL | Josh Rosen | Josh Rosen |
| [SPARK-17511](https://issues.apache.org/jira/browse/SPARK-17511) | Dynamic allocation race condition: Containers getting marked failed while releasing |  Major | YARN | Kishor Patil | Kishor Patil |
| [SPARK-17465](https://issues.apache.org/jira/browse/SPARK-17465) | Inappropriate memory management in \`org.apache.spark.storage.MemoryStore\` may lead to memory leak |  Major | Spark Core | Xing Shi | Xing Shi |
| [SPARK-17521](https://issues.apache.org/jira/browse/SPARK-17521) | Error when I use sparkContext.makeRDD(Seq()) |  Trivial | Spark Core | Jianfei Wang | Jianfei Wang |
| [SPARK-17547](https://issues.apache.org/jira/browse/SPARK-17547) | Temporary shuffle data files may be leaked following exception in write |  Major | Shuffle | Josh Rosen | Josh Rosen |
| [SPARK-17114](https://issues.apache.org/jira/browse/SPARK-17114) | Adding a 'GROUP BY 1' where first column is literal results in wrong answer |  Major | SQL | Josh Rosen | Herman van Hovell |
| [SPARK-17364](https://issues.apache.org/jira/browse/SPARK-17364) | Can not query hive table starting with number |  Major | SQL | Egor Pahomov | Sean Zhong |
| [SPARK-17567](https://issues.apache.org/jira/browse/SPARK-17567) | Broken link to Spark paper |  Trivial | Documentation | Ondrej Galbavy | Xin Ren |
| [SPARK-17548](https://issues.apache.org/jira/browse/SPARK-17548) | Word2VecModel.findSynonyms can spuriously reject the best match when invoked with a vector |  Minor | MLlib | William Benton | William Benton |
| [SPARK-17491](https://issues.apache.org/jira/browse/SPARK-17491) | MemoryStore.putIteratorAsBytes() may silently lose values when KryoSerializer is used |  Blocker | Block Manager | Josh Rosen | Josh Rosen |
| [SPARK-17541](https://issues.apache.org/jira/browse/SPARK-17541) | fix some DDL bugs about table management when same-name temp view exists |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-17546](https://issues.apache.org/jira/browse/SPARK-17546) | start-\* scripts should use hostname -f |  Minor | . | Kevin Burton | Sean Owen |
| [SPARK-16462](https://issues.apache.org/jira/browse/SPARK-16462) | Spark 2.0 CSV does not cast null values to certain data types properly |  Major | SQL | Liwei Lin(Inactive) | Liwei Lin(Inactive) |
| [SPARK-16460](https://issues.apache.org/jira/browse/SPARK-16460) | Spark 2.0 CSV ignores NULL value in Date format |  Minor | SQL | Marcel Boldt | Liwei Lin(Inactive) |
| [SPARK-17571](https://issues.apache.org/jira/browse/SPARK-17571) | AssertOnQuery.condition should be consistent in requiring Boolean return type |  Major | Structured Streaming | Peter Lee | Peter Lee |
| [SPARK-17438](https://issues.apache.org/jira/browse/SPARK-17438) | Master UI should show the correct core limit when \`ApplicationInfo.executorLimit\` is set |  Major | Web UI | Shixiong Zhu | Shixiong Zhu |
| [SPARK-16439](https://issues.apache.org/jira/browse/SPARK-16439) | Incorrect information in SQL Query details |  Minor | SQL, Web UI | Maciej Bryński | Davies Liu |
| [SPARK-17100](https://issues.apache.org/jira/browse/SPARK-17100) | pyspark filter on a udf column after join gives java.lang.UnsupportedOperationException |  Major | PySpark | Tim Sell | Davies Liu |
| [SPARK-17160](https://issues.apache.org/jira/browse/SPARK-17160) | GetExternalRowField does not properly escape field names, causing generated code not to compile |  Critical | SQL | Josh Rosen | Josh Rosen |
| [SPARK-17502](https://issues.apache.org/jira/browse/SPARK-17502) | Multiple Bugs in DDL Statements on Temporary Views |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-17051](https://issues.apache.org/jira/browse/SPARK-17051) | we should use hadoopConf in InsertIntoHiveTable |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-17545](https://issues.apache.org/jira/browse/SPARK-17545) | Spark SQL Catalyst doesn't handle ISO 8601 date without colon in offset |  Major | SQL | Nathan Beyer | Hyukjin Kwon |
| [SPARK-17617](https://issues.apache.org/jira/browse/SPARK-17617) | Remainder(%) expression.eval returns incorrect result |  Major | SQL | Sean Zhong | Sean Zhong |
| [SPARK-17599](https://issues.apache.org/jira/browse/SPARK-17599) | Folder deletion after globbing may fail StructuredStreaming jobs |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-17418](https://issues.apache.org/jira/browse/SPARK-17418) | Spark release must NOT distribute Kinesis related assembly artifact |  Blocker | Build, DStreams | Luciano Resende | Josh Rosen |
| [SPARK-17627](https://issues.apache.org/jira/browse/SPARK-17627) | Streaming Providers should be labeled Experimental |  Blocker | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-17494](https://issues.apache.org/jira/browse/SPARK-17494) | Floor/ceil of decimal returns wrong result if it's in compact format |  Major | SQL | Gokhan Civan | Davies Liu |
| [SPARK-14209](https://issues.apache.org/jira/browse/SPARK-14209) | Application failure during preemption. |  Major | Block Manager | Miles Crawford | Josh Rosen |
| [SPARK-17613](https://issues.apache.org/jira/browse/SPARK-17613) | PartitioningAwareFileCatalog.allFiles doesn't handle URI specified path at parent |  Major | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-17616](https://issues.apache.org/jira/browse/SPARK-17616) | Getting "java.lang.RuntimeException: Distinct columns cannot exist in Aggregate " |  Minor | SQL | Egor Pahomov | Herman van Hovell |
| [SPARK-17210](https://issues.apache.org/jira/browse/SPARK-17210) | sparkr.zip is not distributed to executors when run sparkr in RStudio |  Major | SparkR | Jeff Zhang | Jeff Zhang |
| [SPARK-17650](https://issues.apache.org/jira/browse/SPARK-17650) | Adding a malformed URL to sc.addJar and/or sc.addFile bricks Executors |  Major | Spark Core | Burak Yavuz | Burak Yavuz |
| [SPARK-17652](https://issues.apache.org/jira/browse/SPARK-17652) | Fix confusing exception message while reserving capacity |  Minor | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-17618](https://issues.apache.org/jira/browse/SPARK-17618) | Dataframe except returns incorrect results when combined with coalesce |  Blocker | SQL | Graeme Edwards | Josh Rosen |
| [SPARK-17056](https://issues.apache.org/jira/browse/SPARK-17056) | Fix a wrong assert in MemoryStore |  Minor | Block Manager | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-17666](https://issues.apache.org/jira/browse/SPARK-17666) | take() or isEmpty() on dataset leaks s3a connections |  Blocker | SQL | Igor Berman | Josh Rosen |
| [SPARK-17673](https://issues.apache.org/jira/browse/SPARK-17673) | Reused Exchange Aggregations Produce Incorrect Results |  Blocker | SQL | Russell Spitzer | Eric Liang |
| [SPARK-17641](https://issues.apache.org/jira/browse/SPARK-17641) | collect\_set should ignore null values |  Major | SQL | Xiangrui Meng | Xiangrui Meng |
| [SPARK-17644](https://issues.apache.org/jira/browse/SPARK-17644) | The failed stage never resubmitted due to abort stage in another thread |  Major | Scheduler, Spark Core | Fei Wang | Fei Wang |
| [SPARK-17672](https://issues.apache.org/jira/browse/SPARK-17672) | Spark 2.0 history server web Ui takes too long for a single application |  Major | Web UI | Gang Wu | Gang Wu |
| [SPARK-17512](https://issues.apache.org/jira/browse/SPARK-17512) | Specifying remote files for Python based Spark jobs in Yarn cluster mode not working |  Major | PySpark, Spark Submit, YARN | Udit Mehrotra | Saisai Shao |
| [SPARK-17752](https://issues.apache.org/jira/browse/SPARK-17752) | Spark returns incorrect result when 'collect()'ing a cached Dataset with many columns |  Critical | SparkR | Kevin Ushey | Shivaram Venkataraman |
| [SPARK-15390](https://issues.apache.org/jira/browse/SPARK-15390) | Memory management issue in complex DataFrame join and filter |  Major | SQL | Joseph K. Bradley | Davies Liu |
| [SPARK-17809](https://issues.apache.org/jira/browse/SPARK-17809) | scala.MatchError: BooleanType when casting a struct |  Major | . | Niek Bartholomeus | Josh Rosen |
| [SPARK-17463](https://issues.apache.org/jira/browse/SPARK-17463) | Serialization of accumulators in heartbeats is not thread-safe |  Critical | Spark Core | Josh Rosen | Shixiong Zhu |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-16690](https://issues.apache.org/jira/browse/SPARK-16690) | rename SQLTestUtils.withTempTable to withTempView |  Major | Tests | Wenchen Fan | Wenchen Fan |
| [SPARK-16722](https://issues.apache.org/jira/browse/SPARK-16722) | Fix a StreamingContext leak in StreamingContextSuite when eventually fails |  Major | Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-17102](https://issues.apache.org/jira/browse/SPARK-17102) | bypass UserDefinedGenerator for json format check |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-17326](https://issues.apache.org/jira/browse/SPARK-17326) | Tests with HiveContext in SparkR being skipped always |  Major | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-17318](https://issues.apache.org/jira/browse/SPARK-17318) | Fix flaky test: o.a.s.repl.ReplSuite replicating blocks of object with class defined in repl |  Major | . | Shixiong Zhu | Shixiong Zhu |
| [SPARK-17589](https://issues.apache.org/jira/browse/SPARK-17589) | Fix test case \`create external table\` |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-17473](https://issues.apache.org/jira/browse/SPARK-17473) | jdbc docker tests are failing with java.lang.AbstractMethodError: |  Major | SQL | Suresh Thalamati | Suresh Thalamati |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-16510](https://issues.apache.org/jira/browse/SPARK-16510) | Move SparkR test JAR into Spark, include its source code |  Major | SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-16287](https://issues.apache.org/jira/browse/SPARK-16287) | Implement str\_to\_map SQL function |  Major | SQL | Reynold Xin | Sandeep Singh |
| [SPARK-16380](https://issues.apache.org/jira/browse/SPARK-16380) | Update SQL examples and programming guide for Python language binding |  Major | Documentation, Examples | Cheng Lian | Miao Wang |
| [SPARK-16621](https://issues.apache.org/jira/browse/SPARK-16621) | Generate stable SQLs in SQLBuilder |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-15232](https://issues.apache.org/jira/browse/SPARK-15232) | Add subquery SQL building tests to LogicalPlanToSQLSuite |  Minor | SQL | Herman van Hovell | Dongjoon Hyun |
| [SPARK-16800](https://issues.apache.org/jira/browse/SPARK-16800) | Fix Java Examples that throw exception |  Minor | Examples, ML | Bryan Cutler | Bryan Cutler |
| [SPARK-16778](https://issues.apache.org/jira/browse/SPARK-16778) | Fix use of deprecated SQLContext constructor |  Trivial | SQL | holdenk | holdenk |
| [SPARK-16776](https://issues.apache.org/jira/browse/SPARK-16776) | Fix Kafka deprecation warnings |  Minor | DStreams | holdenk | Hyukjin Kwon |
| [SPARK-16774](https://issues.apache.org/jira/browse/SPARK-16774) | Fix use of deprecated TimeStamp constructor (also providing incorrect results) |  Minor | SQL | holdenk | holdenk |
| [SPARK-16734](https://issues.apache.org/jira/browse/SPARK-16734) | Make sure examples in all language bindings are consistent |  Minor | Examples, SQL | Cheng Lian | Cheng Lian |
| [SPARK-16735](https://issues.apache.org/jira/browse/SPARK-16735) | Fail to create a map contains decimal type with literals having different inferred precessions and scales |  Major | . | Liang Ke | Wenchen Fan |
| [SPARK-16312](https://issues.apache.org/jira/browse/SPARK-16312) | Docs for Kafka 0.10 consumer integration |  Major | DStreams | Cody Koeninger | Cody Koeninger |
| [SPARK-16866](https://issues.apache.org/jira/browse/SPARK-16866) | Basic infrastructure for file-based SQL end-to-end tests |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-16579](https://issues.apache.org/jira/browse/SPARK-16579) | Add a spark install function |  Major | SparkR | Shivaram Venkataraman | Junyang Qian |
| [SPARK-17008](https://issues.apache.org/jira/browse/SPARK-17008) | Normalize query results using sorting |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-17009](https://issues.apache.org/jira/browse/SPARK-17009) | Use a new SparkSession for each test case |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-17007](https://issues.apache.org/jira/browse/SPARK-17007) | Move test data files into a test-data folder |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-17011](https://issues.apache.org/jira/browse/SPARK-17011) | Support testing exceptions in queries |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-17015](https://issues.apache.org/jira/browse/SPARK-17015) | group-by-ordinal and order-by-ordinal test cases |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-17018](https://issues.apache.org/jira/browse/SPARK-17018) | literals.sql for testing literal parsing |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-16519](https://issues.apache.org/jira/browse/SPARK-16519) | Handle SparkR RDD generics that create warnings in R CMD check |  Major | SparkR | Shivaram Venkataraman | Felix Cheung |
| [SPARK-17096](https://issues.apache.org/jira/browse/SPARK-17096) | Fix StreamingQueryListener to return message and stacktrace of actual exception |  Minor | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-16391](https://issues.apache.org/jira/browse/SPARK-16391) | KeyValueGroupedDataset.reduceGroups should support partial aggregation |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-17149](https://issues.apache.org/jira/browse/SPARK-17149) | array.sql for testing array related functions |  Major | SQL | Peter Lee | Peter Lee |
| [SPARK-17042](https://issues.apache.org/jira/browse/SPARK-17042) | Repl-defined classes cannot be replicated |  Major | Block Manager, Spark Core | Eric Liang | Eric Liang |
| [SPARK-16577](https://issues.apache.org/jira/browse/SPARK-16577) | Add check-cran script to Jenkins |  Major | SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-16508](https://issues.apache.org/jira/browse/SPARK-16508) | Fix documentation warnings found by R CMD check |  Major | SparkR | Shivaram Venkataraman | Junyang Qian |
| [SPARK-17165](https://issues.apache.org/jira/browse/SPARK-17165) | FileStreamSource should not track the list of seen files indefinitely |  Major | Structured Streaming | Reynold Xin | Peter Lee |
| [SPARK-17235](https://issues.apache.org/jira/browse/SPARK-17235) | MetadataLog should support purging old logs |  Major | Structured Streaming | Peter Lee | Peter Lee |
| [SPARK-17270](https://issues.apache.org/jira/browse/SPARK-17270) | Move object optimization rules into its own file |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-17269](https://issues.apache.org/jira/browse/SPARK-17269) | Move finish analysis stage into its own file |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-17274](https://issues.apache.org/jira/browse/SPARK-17274) | Move join optimizer rules into a separate file |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-16581](https://issues.apache.org/jira/browse/SPARK-16581) | Making JVM backend calling functions public |  Major | SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-17372](https://issues.apache.org/jira/browse/SPARK-17372) | Running a file stream on a directory with partitioned subdirs throw NotSerializableException/StackOverflowError |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-17586](https://issues.apache.org/jira/browse/SPARK-17586) | Use Static member not via instance reference |  Trivial | Build | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-17513](https://issues.apache.org/jira/browse/SPARK-17513) | StreamExecution should discard unneeded metadata |  Major | Structured Streaming | Frederick Reiss | Frederick Reiss |
| [SPARK-15698](https://issues.apache.org/jira/browse/SPARK-15698) | Ability to remove old metadata for structure streaming MetadataLog |  Major | Structured Streaming | Saisai Shao | Saisai Shao |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-16761](https://issues.apache.org/jira/browse/SPARK-16761) | Fix doc link in docs/ml-guide.md |  Trivial | MLlib | Dapeng Sun | Dapeng Sun |
| [SPARK-16911](https://issues.apache.org/jira/browse/SPARK-16911) | Remove migrating to a Spark 1.x version in programming guide documentation |  Minor | Documentation | Shivansh | Shivansh |
| [SPARK-17089](https://issues.apache.org/jira/browse/SPARK-17089) | Remove link of api doc for mapReduceTriplets because its removed from api. |  Trivial | Documentation | sandeep purohit | sandeep purohit |
| [SPARK-17085](https://issues.apache.org/jira/browse/SPARK-17085) | Documentation and actual code differs - Unsupported Operations |  Minor | Structured Streaming | Samritti | Jagadeesan A S |
| [SPARK-17242](https://issues.apache.org/jira/browse/SPARK-17242) | Update links of external dstream projects |  Major | Documentation | Shixiong Zhu | Shixiong Zhu |
| [SPARK-17561](https://issues.apache.org/jira/browse/SPARK-17561) | DataFrameWriter documentation formatting problems |  Trivial | SQL | Aseem Bansal | Sean Owen |
| [SPARK-17575](https://issues.apache.org/jira/browse/SPARK-17575) | Make correction in configuration documentation table tags |  Trivial | Documentation | sandeep purohit | sandeep purohit |
| [SPARK-16295](https://issues.apache.org/jira/browse/SPARK-16295) | Extract SQL programming guide example snippets from source files instead of hard code them |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-17794](https://issues.apache.org/jira/browse/SPARK-17794) | 2.0.1 not in maven central repo? |  Major | . | Harrison Kiang | Reynold Xin |


