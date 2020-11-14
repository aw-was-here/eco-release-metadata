
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

## Release 3.0.1 - 2020-09-03



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-30775](https://issues.apache.org/jira/browse/SPARK-30775) | Improve DOC for executor metrics |  Minor | Documentation | Luca Canali | Luca Canali |
| [SPARK-31230](https://issues.apache.org/jira/browse/SPARK-31230) | use statement plans in DataFrameWriter(V2) |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31889](https://issues.apache.org/jira/browse/SPARK-31889) | Docker release script does not allocate enough memory to reliably publish |  Critical | Build | Holden Karau | Holden Karau |
| [SPARK-31778](https://issues.apache.org/jira/browse/SPARK-31778) | Support cross-building docker images |  Major | Build | Holden Karau | Holden Karau |
| [SPARK-31934](https://issues.apache.org/jira/browse/SPARK-31934) | Don't print out extra info from the docker image tool if passed --help |  Trivial | Build | Holden Karau | Holden Karau |
| [SPARK-31954](https://issues.apache.org/jira/browse/SPARK-31954) | delete duplicate test cases in hivequerysuite |  Minor | SQL, Tests | philipse | philipse |
| [SPARK-31979](https://issues.apache.org/jira/browse/SPARK-31979) | release script should not fail when remove non-existing files |  Major | Project Infra | Wenchen Fan | Wenchen Fan |
| [SPARK-32011](https://issues.apache.org/jira/browse/SPARK-32011) | Remove warnings about pin-thread modes and guide collectWithJobGroups for now |  Major | PySpark, Spark Core | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32073](https://issues.apache.org/jira/browse/SPARK-32073) | Drop R \< 3.5 support |  Major | R | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32075](https://issues.apache.org/jira/browse/SPARK-32075) | Fix a few issues in parameters table |  Trivial | Documentation | Zuo Dao | Zuo Dao |
| [SPARK-32080](https://issues.apache.org/jira/browse/SPARK-32080) | Simplify ArrowColumnVector ListArray accessor |  Trivial | SQL | Bryan Cutler | Bryan Cutler |
| [SPARK-31998](https://issues.apache.org/jira/browse/SPARK-31998) | Change package references for ArrowBuf |  Major | SQL | Liya Fan | Bryan Cutler |
| [SPARK-32089](https://issues.apache.org/jira/browse/SPARK-32089) | Upgrade R version to 4.0.2 in the release DockerFile |  Major | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32127](https://issues.apache.org/jira/browse/SPARK-32127) | Check rules for MERGE INTO should use MergeAction.condition other than MergeAction.children |  Major | SQL | Xianyin Xin | Xianyin Xin |
| [SPARK-32162](https://issues.apache.org/jira/browse/SPARK-32162) | Improve Pandas Grouped Map with Window test output |  Minor | PySpark, Tests | Bryan Cutler | Bryan Cutler |
| [SPARK-32193](https://issues.apache.org/jira/browse/SPARK-32193) | update  docs on regexp function |  Minor | SQL | philipse | philipse |
| [SPARK-32310](https://issues.apache.org/jira/browse/SPARK-32310) | ML params default value parity |  Major | ML, PySpark | Huaxin Gao | Huaxin Gao |
| [SPARK-32353](https://issues.apache.org/jira/browse/SPARK-32353) | Update docker/spark-test and clean up unused stuff |  Minor | Tests | William Hyun | William Hyun |
| [SPARK-32366](https://issues.apache.org/jira/browse/SPARK-32366) | Fix doc link of datetime pattern in 3.0 migration guide |  Major | Documentation | Gengliang Wang | Gengliang Wang |
| [SPARK-32428](https://issues.apache.org/jira/browse/SPARK-32428) | [EXAMPLES] Make BinaryClassificationMetricsExample consistently print the metrics on driver's stdout |  Trivial | Examples | Itsuki Toyota | Itsuki Toyota |
| [SPARK-31753](https://issues.apache.org/jira/browse/SPARK-31753) | Add missing keywords in the SQL documents |  Minor | Documentation, SQL | Takeshi Yamamuro | philipse |
| [SPARK-32397](https://issues.apache.org/jira/browse/SPARK-32397) | Snapshot artifacts can have differing timestamps, making it hard to consume |  Minor | Build | Holden Karau | Holden Karau |
| [SPARK-32478](https://issues.apache.org/jira/browse/SPARK-32478) | Error message to show the schema mismatch in gapply with Arrow vectorization |  Major | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32083](https://issues.apache.org/jira/browse/SPARK-32083) | Unnecessary tasks are launched when input is empty with AQE |  Minor | SQL | Manu Zhang | Wenchen Fan |
| [SPARK-32543](https://issues.apache.org/jira/browse/SPARK-32543) | Remove arrow::as\_tibble usage in SparkR |  Trivial | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32560](https://issues.apache.org/jira/browse/SPARK-32560) | improve exception message |  Minor | SQL | philipse | philipse |
| [SPARK-32564](https://issues.apache.org/jira/browse/SPARK-32564) |  Inject data statistics to simulate plan generation on actual TPCDS data |  Major | SQL, Tests | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-32456](https://issues.apache.org/jira/browse/SPARK-32456) | Check the Distinct by assuming it as Aggregate for Structured Streaming |  Major | Structured Streaming | Yuanjian Li | Yuanjian Li |
| [SPARK-32586](https://issues.apache.org/jira/browse/SPARK-32586) | Fix NumberFormatException error message when ansi is enabled |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-32610](https://issues.apache.org/jira/browse/SPARK-32610) | Fix the link to metrics.dropwizard.io in monitoring.md to refer the proper version |  Minor | Documentation | Kousuke Saruta | Kousuke Saruta |
| [SPARK-28863](https://issues.apache.org/jira/browse/SPARK-28863) | Add an AlreadyPlanned logical node that skips query planning |  Major | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-32676](https://issues.apache.org/jira/browse/SPARK-32676) | Fix double caching in KMeans/BiKMeans |  Major | ML | zhengruifeng | zhengruifeng |
| [SPARK-32701](https://issues.apache.org/jira/browse/SPARK-32701) | mapreduce.fileoutputcommitter.algorithm.version default depends on runtime environment |  Minor | docs, Documentation | Waleed Fateem | Waleed Fateem |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-31584](https://issues.apache.org/jira/browse/SPARK-31584) | NullPointerException when parsing event log with InMemoryStore |  Minor | Web UI | Baohe Zhang | Baohe Zhang |
| [SPARK-31923](https://issues.apache.org/jira/browse/SPARK-31923) | Event log cannot be generated when some internal accumulators use unexpected types |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-31220](https://issues.apache.org/jira/browse/SPARK-31220) | repartition obeys spark.sql.adaptive.coalescePartitions.initialPartitionNum when spark.sql.adaptive.enabled |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-31921](https://issues.apache.org/jira/browse/SPARK-31921) | Wrong warning of "WARN Master: App app-xxx requires more resource than any of Workers could have." |  Major | Spark Core | wuyi | wuyi |
| [SPARK-31941](https://issues.apache.org/jira/browse/SPARK-31941) | Handling the exception in SparkUI for getSparkUser method |  Minor | Spark Core | Saurabh Chawla | Saurabh Chawla |
| [SPARK-31956](https://issues.apache.org/jira/browse/SPARK-31956) | Do not fail if there is no ambiguous self join |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31915](https://issues.apache.org/jira/browse/SPARK-31915) | Resolve the grouping column properly per the case sensitivity in grouped and cogrouped pandas UDFs |  Major | PySpark, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-31958](https://issues.apache.org/jira/browse/SPARK-31958) | normalize special floating numbers in subquery |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-31935](https://issues.apache.org/jira/browse/SPARK-31935) | Hadoop file system config should be effective in data source options |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-31916](https://issues.apache.org/jira/browse/SPARK-31916) | StringConcat can overflow \`length\`, leads to StringIndexOutOfBoundsException |  Major | SQL | Jeffrey Stokes | Dilip Biswal |
| [SPARK-31967](https://issues.apache.org/jira/browse/SPARK-31967) | Loading jobs UI page takes 40 seconds |  Blocker | Web UI | Gengliang Wang | Gengliang Wang |
| [SPARK-31968](https://issues.apache.org/jira/browse/SPARK-31968) | write.partitionBy() creates duplicate subdirectories when user provides duplicate columns |  Major | SQL | Xuzhou Qin | JinxinTang |
| [SPARK-31983](https://issues.apache.org/jira/browse/SPARK-31983) | Tables of structured streaming tab show wrong result for duration column |  Major | SQL, Web UI | Rakesh Raushan | Rakesh Raushan |
| [SPARK-31990](https://issues.apache.org/jira/browse/SPARK-31990) | Streaming's state store compatibility is broken |  Blocker | Structured Streaming | Xiao Li | Takeshi Yamamuro |
| [SPARK-31959](https://issues.apache.org/jira/browse/SPARK-31959) | Test failure "RebaseDateTimeSuite.optimization of micros rebasing - Gregorian to Julian" |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31994](https://issues.apache.org/jira/browse/SPARK-31994) | Docker image should use \`https\` urls for only mirrors that support it(SSL) |  Minor | Kubernetes | Prashant Sharma | Prashant Sharma |
| [SPARK-31986](https://issues.apache.org/jira/browse/SPARK-31986) | Test failure RebaseDateTimeSuite."optimization of micros rebasing - Julian to Gregorian" |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31997](https://issues.apache.org/jira/browse/SPARK-31997) | Should drop test\_udtf table when SingleSessionSuite completed |  Minor | Tests | Yang Jie | Yang Jie |
| [SPARK-32000](https://issues.apache.org/jira/browse/SPARK-32000) | Fix the flaky testcase for partially launched task in barrier-mode. |  Minor | Spark Core, Tests | Kousuke Saruta | wuyi |
| [SPARK-31980](https://issues.apache.org/jira/browse/SPARK-31980) | Spark sequence() fails if start and end of range are identical dates |  Minor | SQL | Dave DeCaprio | JinxinTang |
| [SPARK-32021](https://issues.apache.org/jira/browse/SPARK-32021) | make\_interval does not accept seconds \>100 |  Major | SQL | Juliusz Sompolski | Maxim Gekk |
| [SPARK-32034](https://issues.apache.org/jira/browse/SPARK-32034) | Port HIVE-14817: Shutdown the SessionManager timeoutChecker thread properly upon shutdown |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-32038](https://issues.apache.org/jira/browse/SPARK-32038) | Regression in handling NaN values in COUNT(DISTINCT) |  Blocker | SQL | Mithun Radhakrishnan | L. C. Hsieh |
| [SPARK-31918](https://issues.apache.org/jira/browse/SPARK-31918) | SparkR CRAN check gives a warning with R 4.0.0 on OSX |  Blocker | SparkR | Shivaram Venkataraman | Hyukjin Kwon |
| [SPARK-32028](https://issues.apache.org/jira/browse/SPARK-32028) | App id link in history summary page point to wrong application attempt |  Minor | Web UI | Zhen Li | Zhen Li |
| [SPARK-32098](https://issues.apache.org/jira/browse/SPARK-32098) | Use iloc for positional slicing instead of direct slicing in createDataFrame with Arrow |  Critical | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32115](https://issues.apache.org/jira/browse/SPARK-32115) | Incorrect results for SUBSTRING when overflow |  Blocker | SQL | Yuanjian Li | Yuanjian Li |
| [SPARK-32124](https://issues.apache.org/jira/browse/SPARK-32124) | [SHS] Failed to parse FetchFailed TaskEndReason from event log produce by Spark 2.4 |  Minor | Spark Core | Zhongwei Zhu | Zhongwei Zhu |
| [SPARK-32126](https://issues.apache.org/jira/browse/SPARK-32126) | Scope Session.active in IncrementalExecution |  Major | Structured Streaming | Dongjoon Hyun | Yuanjian Li |
| [SPARK-32068](https://issues.apache.org/jira/browse/SPARK-32068) | Spark 3 UI task launch time show in error time zone |  Major | Web UI | Smith Cruise | JinxinTang |
| [SPARK-32131](https://issues.apache.org/jira/browse/SPARK-32131) | Fix AnalysisException messages at UNION/INTERSECT/EXCEPT/MINUS operations |  Minor | SQL | philipse | philipse |
| [SPARK-32095](https://issues.apache.org/jira/browse/SPARK-32095) | [DataSource V2] Documentation on SupportsReportStatistics Outdated? |  Minor | SQL | Micah Kornfield | Micah Kornfield |
| [SPARK-32130](https://issues.apache.org/jira/browse/SPARK-32130) | Spark 3.0 json load performance is unacceptable in comparison of Spark 2.4 |  Critical | Input/Output | Sanjeev Mishra | Maxim Gekk |
| [SPARK-32136](https://issues.apache.org/jira/browse/SPARK-32136) | Spark producing incorrect groupBy results when key is a struct with nullable properties |  Blocker | SQL | Jason Moore | L. C. Hsieh |
| [SPARK-32121](https://issues.apache.org/jira/browse/SPARK-32121) | ExternalShuffleBlockResolverSuite failed on Windows |  Minor | Tests | Cheng Pan | Cheng Pan |
| [SPARK-32167](https://issues.apache.org/jira/browse/SPARK-32167) | nullability of GetArrayStructFields is incorrect |  Blocker | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-32163](https://issues.apache.org/jira/browse/SPARK-32163) | Nested pruning should still work for nested column extractors of attributes with cosmetic variations |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-32057](https://issues.apache.org/jira/browse/SPARK-32057) | SparkExecuteStatementOperation does not set CANCELED state correctly |  Major | SQL | Ali Smesseim | Ali Smesseim |
| [SPARK-32214](https://issues.apache.org/jira/browse/SPARK-32214) | The type conversion function generated in makeFromJava for "other"  type uses a wrong variable. |  Minor | SQL | Kousuke Saruta | Kousuke Saruta |
| [SPARK-32024](https://issues.apache.org/jira/browse/SPARK-32024) | Disk usage tracker went negative in HistoryServerDiskManager |  Minor | Web UI | Zhen Li | Zhen Li |
| [SPARK-32168](https://issues.apache.org/jira/browse/SPARK-32168) | DSv2 SQL overwrite incorrectly uses static plan with hidden partitions |  Blocker | SQL | Ryan Blue | Ryan Blue |
| [SPARK-32160](https://issues.apache.org/jira/browse/SPARK-32160) | Executors should not be able to create SparkContext. |  Major | Spark Core | Takuya Ueshin | Takuya Ueshin |
| [SPARK-32148](https://issues.apache.org/jira/browse/SPARK-32148) | LEFT JOIN generating non-deterministic and unexpected result (regression in Spark 3.0) |  Blocker | SQL, Structured Streaming | Michael | Jungtaek Lim |
| [SPARK-32159](https://issues.apache.org/jira/browse/SPARK-32159) | New udaf(Aggregator) has an integration bug with UnresolvedMapObjects serialization |  Major | SQL | Erik Erlandson | Erik Erlandson |
| [SPARK-32035](https://issues.apache.org/jira/browse/SPARK-32035) | Inconsistent AWS environment variables in documentation |  Minor | Documentation | Ondrej Kokes | Richard Joerger |
| [SPARK-32256](https://issues.apache.org/jira/browse/SPARK-32256) | Hive may fail to detect Hadoop version when using isolated classloader |  Blocker | SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-32220](https://issues.apache.org/jira/browse/SPARK-32220) | Cartesian Product Hint cause data error |  Blocker | SQL | angerszhu | angerszhu |
| [SPARK-32251](https://issues.apache.org/jira/browse/SPARK-32251) | fix SQL keyword document |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-32238](https://issues.apache.org/jira/browse/SPARK-32238) | Use Utils.getSimpleName to avoid hitting Malformed class name in ScalaUDF |  Minor | SQL | wuyi | wuyi |
| [SPARK-32232](https://issues.apache.org/jira/browse/SPARK-32232) | IllegalArgumentException: MultilayerPerceptronClassifier\_... parameter solver given invalid value auto |  Major | ML | steven taylor | Huaxin Gao |
| [SPARK-32234](https://issues.apache.org/jira/browse/SPARK-32234) | Spark sql commands are failing on select Queries for the  orc tables |  Blocker | SQL | Saurabh Chawla | Saurabh Chawla |
| [SPARK-32344](https://issues.apache.org/jira/browse/SPARK-32344) | Unevaluable expr is set to FIRST/LAST ignoreNullsExpr in distinct aggregates |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-32368](https://issues.apache.org/jira/browse/SPARK-32368) | Options in PartitioningAwareFileIndex should respect case insensitivity |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32365](https://issues.apache.org/jira/browse/SPARK-32365) | Fix java.lang.IndexOutOfBoundsException: No group -1 |  Major | SQL | jiaan.geng | jiaan.geng |
| [SPARK-32362](https://issues.apache.org/jira/browse/SPARK-32362) | AdaptiveQueryExecSuite misses verifying AE results |  Major | SQL | Lantao Jin | Lantao Jin |
| [SPARK-32377](https://issues.apache.org/jira/browse/SPARK-32377) | CaseInsensitiveMap should be deterministic for addition |  Major | SQL | Girish A Pandit | Dongjoon Hyun |
| [SPARK-32003](https://issues.apache.org/jira/browse/SPARK-32003) | Shuffle files for lost executor are not unregistered if fetch failure occurs after executor is lost |  Major | Scheduler | Wing Yew Poon | Wing Yew Poon |
| [SPARK-32364](https://issues.apache.org/jira/browse/SPARK-32364) | Use CaseInsensitiveMap for DataFrameReader/Writer options |  Major | SQL | Girish A Pandit | Dongjoon Hyun |
| [SPARK-32280](https://issues.apache.org/jira/browse/SPARK-32280) | AnalysisException thrown when query contains several JOINs |  Major | PySpark | David Lindelöf | wuyi |
| [SPARK-32372](https://issues.apache.org/jira/browse/SPARK-32372) | "Resolved attribute(s) XXX missing" after dudup conflict references |  Major | SQL | wuyi | wuyi |
| [SPARK-32237](https://issues.apache.org/jira/browse/SPARK-32237) | Cannot resolve column when put hint in the views of common table expression |  Major | SQL | Kernel Force | Lantao Jin |
| [SPARK-32430](https://issues.apache.org/jira/browse/SPARK-32430) | Allow plugins to inject rules into AQE query stage preparation |  Major | SQL | Thomas Graves | Andy Grove |
| [SPARK-32451](https://issues.apache.org/jira/browse/SPARK-32451) | Support Apache Arrow 1.0.0 in SparkR |  Major | R, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32283](https://issues.apache.org/jira/browse/SPARK-32283) | Multiple Kryo registrators can't be used anymore |  Minor | Spark Core | Lorenz Bühmann | Lantao Jin |
| [SPARK-32175](https://issues.apache.org/jira/browse/SPARK-32175) | Fix the order between initialization for ExecutorPlugin and starting heartbeat thread |  Major | Spark Core | Kousuke Saruta | Kousuke Saruta |
| [SPARK-32332](https://issues.apache.org/jira/browse/SPARK-32332) | AQE doesn't adequately allow for Columnar Processing extension |  Major | SQL | Thomas Graves | Wenchen Fan |
| [SPARK-32227](https://issues.apache.org/jira/browse/SPARK-32227) | Bug in load-spark-env.cmd  with Spark 3.0.0 |  Major | Spark Shell | Ihor Bobak | Ihor Bobak |
| [SPARK-32509](https://issues.apache.org/jira/browse/SPARK-32509) | Unused DPP Filter causes issue in canonicalization and prevents reuse exchange |  Major | SQL | Prakhar Jain | Prakhar Jain |
| [SPARK-32529](https://issues.apache.org/jira/browse/SPARK-32529) | Spark 3.0 History Server May Never Finish One Round Log Dir Scan |  Major | Spark Core | Yan Xiaole | Yan Xiaole |
| [SPARK-32518](https://issues.apache.org/jira/browse/SPARK-32518) | CoarseGrainedSchedulerBackend.maxNumConcurrentTasks should consider all kinds of resources |  Major | Spark Core | wuyi | wuyi |
| [SPARK-32546](https://issues.apache.org/jira/browse/SPARK-32546) | SHOW VIEWS fails with MetaException ... ClassNotFoundException |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-32551](https://issues.apache.org/jira/browse/SPARK-32551) | Ambiguous self join error in non self join with window |  Major | Spark Core | kanika dhuria |  |
| [SPARK-32538](https://issues.apache.org/jira/browse/SPARK-32538) | Use local time zone for the timestamp logged in unit-tests.log |  Minor | Tests | Kousuke Saruta | Kousuke Saruta |
| [SPARK-32556](https://issues.apache.org/jira/browse/SPARK-32556) | Fix release script to uri encode the user provided passwords. |  Major | Build, Project Infra | Prashant Sharma | Prashant Sharma |
| [SPARK-32559](https://issues.apache.org/jira/browse/SPARK-32559) | Fix the trim logic in UTF8String.toInt/toLong did't handle Chinese characters correctly |  Major | SQL | EdisonWang | EdisonWang |
| [SPARK-32576](https://issues.apache.org/jira/browse/SPARK-32576) | Support PostgreSQL \`bpchar\` type and array of char type |  Minor | SQL | Jakub Korzeniowski | Jakub Korzeniowski |
| [SPARK-32580](https://issues.apache.org/jira/browse/SPARK-32580) | Issue accessing a column values after 'explode' function |  Major | SQL | Ayrat Sadreev |  |
| [SPARK-32594](https://issues.apache.org/jira/browse/SPARK-32594) | Insert wrong dates to Hive tables |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31703](https://issues.apache.org/jira/browse/SPARK-31703) | Changes made by SPARK-26985 break reading parquet files correctly in BigEndian architectures (AIX + LinuxPPC64) |  Blocker | Spark Core | Michail Giannakopoulos | Tin Hang To |
| [SPARK-32625](https://issues.apache.org/jira/browse/SPARK-32625) | Log error message when falling back to interpreter mode |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-32652](https://issues.apache.org/jira/browse/SPARK-32652) | ObjectSerializerPruning fails for RowEncoder |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-32624](https://issues.apache.org/jira/browse/SPARK-32624) | Replace getClass.getName with getClass.getCanonicalName in CodegenContext.addReferenceObj |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-32621](https://issues.apache.org/jira/browse/SPARK-32621) | "path" option is added again to input paths during infer() |  Minor | SQL | Terry Kim | Terry Kim |
| [SPARK-32658](https://issues.apache.org/jira/browse/SPARK-32658) | Partition length number overflow in \`PartitionWriterStream\` |  Blocker | Spark Core | Xingbo Jiang | Xingbo Jiang |
| [SPARK-32663](https://issues.apache.org/jira/browse/SPARK-32663) | TransportClient getting closed when there are outstanding requests to the server |  Major | Shuffle | Chandni Singh | Attila Zsolt Piros |
| [SPARK-32672](https://issues.apache.org/jira/browse/SPARK-32672) | Data corruption in some cached compressed boolean columns |  Blocker | SQL | Robert Joseph Evans | Robert Joseph Evans |
| [SPARK-32092](https://issues.apache.org/jira/browse/SPARK-32092) | CrossvalidatorModel does not save all submodels (it saves only 3) |  Major | ML, PySpark | An De Rijdt | Zirui Xu |
| [SPARK-32588](https://issues.apache.org/jira/browse/SPARK-32588) | SizeEstimator class not always properly initialized in tests. |  Minor | Tests | Michael Munday | Michael Munday |
| [SPARK-32646](https://issues.apache.org/jira/browse/SPARK-32646) | ORC predicate pushdown should work with case-insensitive analysis |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-32683](https://issues.apache.org/jira/browse/SPARK-32683) | Datetime Pattern F not working as expected |  Major | SQL | Daeho Ro | Kent Yao |
| [SPARK-32614](https://issues.apache.org/jira/browse/SPARK-32614) | Support for treating the line as valid record if it starts with \\u0000 or null character, or starts with any character mentioned as comment |  Minor | Spark Core, SQL | Chandan Ray | Sean R. Owen |
| [SPARK-32620](https://issues.apache.org/jira/browse/SPARK-32620) | Reset the numPartitions metric when DPP is enabled |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-32659](https://issues.apache.org/jira/browse/SPARK-32659) | Fix the data issue of inserted DPP on non-atomic type |  Major | SQL | Yuming Wang | Yuming Wang |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-31932](https://issues.apache.org/jira/browse/SPARK-31932) | Add date/timestamp benchmarks for toHiveString |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-31950](https://issues.apache.org/jira/browse/SPARK-31950) | Extract SQL keywords from the generated parser class in TableIdentifierParserSuite |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-31926](https://issues.apache.org/jira/browse/SPARK-31926) | Fix concurrency issue for ThriftCLIService to getPortNumber |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-31992](https://issues.apache.org/jira/browse/SPARK-31992) | Benchmark the EXCEPTION rebase mode |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-32020](https://issues.apache.org/jira/browse/SPARK-32020) | Refactor the logic to compute SPARK\_HOME into a common place. |  Minor | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-32142](https://issues.apache.org/jira/browse/SPARK-32142) | Keep the original tests and codes to avoid potential conflicts in dev in ParquetFilterSuite and ParquetIOSuite |  Major | SQL, Tests | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32301](https://issues.apache.org/jira/browse/SPARK-32301) | Add a test case for toPandas to work with empty partitioned Spark DataFrame |  Minor | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32318](https://issues.apache.org/jira/browse/SPARK-32318) | Add a test case to EliminateSortsSuite for protecting ORDER BY in DISTRIBUTE BY |  Minor | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32363](https://issues.apache.org/jira/browse/SPARK-32363) | Flaky pip installation test in Jenkins |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32506](https://issues.apache.org/jira/browse/SPARK-32506) | flaky test: pyspark.mllib.tests.test\_streaming\_algorithms.StreamingLinearRegressionWithTests |  Major | MLlib | Wenchen Fan | Huaxin Gao |
| [SPARK-32528](https://issues.apache.org/jira/browse/SPARK-32528) | The analyze method should make sure the plan is analyzed |  Minor | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-32393](https://issues.apache.org/jira/browse/SPARK-32393) | Add tests for all the character types in PostgresIntegrationSuite |  Minor | SQL | Jakub Korzeniowski | Takeshi Yamamuro |
| [SPARK-32599](https://issues.apache.org/jira/browse/SPARK-32599) | Check the TEXTFILE file format in HiveSerDeReadWriteSuite |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-32622](https://issues.apache.org/jira/browse/SPARK-32622) | Add case-sensitivity test for ORC predicate pushdown |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-32647](https://issues.apache.org/jira/browse/SPARK-32647) | Report SparkR test results with JUnit reporter |  Major | SparkR | Hyukjin Kwon | Hyukjin Kwon |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-31939](https://issues.apache.org/jira/browse/SPARK-31939) | Fix Parsing day of year when year field pattern is missing |  Minor | SQL | Kent Yao | Kent Yao |
| [SPARK-26905](https://issues.apache.org/jira/browse/SPARK-26905) | Revisit reserved/non-reserved keywords based on the ANSI SQL standard |  Major | SQL | Xiao Li | Takeshi Yamamuro |
| [SPARK-32171](https://issues.apache.org/jira/browse/SPARK-32171) | change file locations for use db and refresh table |  Trivial | Documentation, SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-32367](https://issues.apache.org/jira/browse/SPARK-32367) | Fix typo of parameter in KubernetesTestComponents |  Trivial | Kubernetes | merrily01 | merrily01 |
| [SPARK-32287](https://issues.apache.org/jira/browse/SPARK-32287) | Flaky Test: ExecutorAllocationManagerSuite.add executors default profile |  Major | Spark Core, Tests | wuyi | Thomas Graves |
| [SPARK-32448](https://issues.apache.org/jira/browse/SPARK-32448) | Fix mismatched versions in test artifacts |  Minor | Kubernetes, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32424](https://issues.apache.org/jira/browse/SPARK-32424) | Fix silent data change for timestamp parsing if overflow happens |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-32250](https://issues.apache.org/jira/browse/SPARK-32250) | Reenable MasterSuite's "Master should avoid dead loop while launching executor failed in Worker" |  Major | Spark Core, Tests | Hyukjin Kwon | wuyi |
| [SPARK-32608](https://issues.apache.org/jira/browse/SPARK-32608) | Script Transform DELIMIT  value should be formatted |  Major | SQL | angerszhu | angerszhu |
| [SPARK-32249](https://issues.apache.org/jira/browse/SPARK-32249) | Run Github Actions builds in other branches as well |  Major | Project Infra | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32695](https://issues.apache.org/jira/browse/SPARK-32695) | Add 'build' and 'project/build.properties' into cache key of SBT and Zinc |  Major | Project Infra | Hyukjin Kwon | Hyukjin Kwon |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-31940](https://issues.apache.org/jira/browse/SPARK-31940) | Document the default JVM time zone in to/fromJavaDate and legacy date formatters |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-32078](https://issues.apache.org/jira/browse/SPARK-32078) | Add a redirect to sql-ref from sql-reference |  Major | Documentation | Xiao Li | Xiao Li |
| [SPARK-32099](https://issues.apache.org/jira/browse/SPARK-32099) | Remove broken link in cloud integration documentation |  Minor | Documentation | Guy Khazma | Guy Khazma |
| [SPARK-32339](https://issues.apache.org/jira/browse/SPARK-32339) | Improve MLlib BLAS native acceleration docs |  Major | ML | Xiaochang Wu | Xiaochang Wu |
| [SPARK-32409](https://issues.apache.org/jira/browse/SPARK-32409) | Document the dependency between spark.metrics.staticSources.enabled and JVMSource registration |  Minor | Spark Core | Luca Canali | Luca Canali |
| [SPARK-32674](https://issues.apache.org/jira/browse/SPARK-32674) | Add suggestion for parallel directory listing in tuning doc |  Minor | Documentation | Chao Sun | Chao Sun |


