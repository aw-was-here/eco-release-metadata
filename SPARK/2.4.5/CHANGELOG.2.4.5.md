
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

## Release 2.4.5 - 2020-02-05



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-29055](https://issues.apache.org/jira/browse/SPARK-29055) | Spark UI storage memory increasing overtime |  Major | Block Manager, Spark Core | George Papa | Jungtaek Lim |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-26003](https://issues.apache.org/jira/browse/SPARK-26003) | Improve performance in SQLAppStatusListener |  Trivial | SQL | Marco Gaido | Marco Gaido |
| [SPARK-27122](https://issues.apache.org/jira/browse/SPARK-27122) | YARN test failures in Java 9+ |  Major | Spark Core, YARN | Sean R. Owen | Ajith S |
| [SPARK-27460](https://issues.apache.org/jira/browse/SPARK-27460) | Running slowest test suites in their own forked JVMs for higher parallelism |  Critical | Tests | Xiao Li | Gengliang Wang |
| [SPARK-29011](https://issues.apache.org/jira/browse/SPARK-29011) | Upgrade netty-all to 4.1.39-Final |  Trivial | Build | Nicholas Marion | Nicholas Marion |
| [SPARK-29075](https://issues.apache.org/jira/browse/SPARK-29075) | Add enforcer rule to ban duplicated pom dependency |  Minor | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29087](https://issues.apache.org/jira/browse/SPARK-29087) | Use DelegatingServletContextHandler to avoid CCE |  Major | DStreams, Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29159](https://issues.apache.org/jira/browse/SPARK-29159) | Increase ReservedCodeCacheSize to 1G |  Minor | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29165](https://issues.apache.org/jira/browse/SPARK-29165) | Set log level of log generated code as ERROR in case of compile error on generated code in UT |  Minor | SQL, Tests | Jungtaek Lim | Jungtaek Lim |
| [SPARK-19147](https://issues.apache.org/jira/browse/SPARK-19147) | Gracefully handle error in task after executor is stopped |  Minor | Spark Core | cen yuhai | Colin Ma |
| [SPARK-28678](https://issues.apache.org/jira/browse/SPARK-28678) | Specify that start index is 1-based in docstring of pyspark.sql.functions.slice |  Trivial | Documentation | Sivam Pasupathipillai | Ting Yang |
| [SPARK-29247](https://issues.apache.org/jira/browse/SPARK-29247) | HiveClientImpl may be log sensitive information |  Major | SQL | Yuming Wang | angerszhu |
| [SPARK-28938](https://issues.apache.org/jira/browse/SPARK-28938) | Move to supported OpenJDK docker image for Kubernetes |  Minor | Kubernetes, Spark Core | Rodney Aaron Stainback | L. C. Hsieh |
| [SPARK-29410](https://issues.apache.org/jira/browse/SPARK-29410) | Update Commons BeanUtils to 1.9.4 |  Minor | Spark Core | Peter Toth | Peter Toth |
| [SPARK-29677](https://issues.apache.org/jira/browse/SPARK-29677) | Upgrade Kinesis Client |  Minor | DStreams | Eric S Meisel | Eric S Meisel |
| [SPARK-29820](https://issues.apache.org/jira/browse/SPARK-29820) | Use GitHub Action Cache for \`./.m2/repository\` |  Minor | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29964](https://issues.apache.org/jira/browse/SPARK-29964) | lintr github action failed due to buggy GnuPG |  Major | Build | L. C. Hsieh | L. C. Hsieh |
| [SPARK-25392](https://issues.apache.org/jira/browse/SPARK-25392) | [Spark Job History]Inconsistent behaviour for pool details in spark web UI and history server page |  Minor | Spark Core | ABHISHEK KUMAR GUPTA | shahid |
| [SPARK-30318](https://issues.apache.org/jira/browse/SPARK-30318) | Bump jetty to 9.3.27.v20190418 |  Minor | Spark Core | Sandeep Katta | Sandeep Katta |
| [SPARK-30339](https://issues.apache.org/jira/browse/SPARK-30339) | Avoid to fail twice in function lookup |  Minor | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-30410](https://issues.apache.org/jira/browse/SPARK-30410) | Calculating size of table having large number of partitions causes flooding logs |  Trivial | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-30601](https://issues.apache.org/jira/browse/SPARK-30601) | Add a Google Maven Central as a primary repository |  Major | Build | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-30630](https://issues.apache.org/jira/browse/SPARK-30630) | Deprecate numTrees in GBT at 2.4.5 and remove it at 3.0.0 |  Minor | ML | Huaxin Gao | Huaxin Gao |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-25753](https://issues.apache.org/jira/browse/SPARK-25753) | binaryFiles broken for small files |  Minor | Input/Output | liuxian | liuxian |
| [SPARK-25277](https://issues.apache.org/jira/browse/SPARK-25277) | YARN applicationMaster metrics should not register static and JVM metrics |  Minor | Spark Core, YARN | Luca Canali | Luca Canali |
| [SPARK-26499](https://issues.apache.org/jira/browse/SPARK-26499) | JdbcUtils.makeGetter does not handle ByteType |  Major | SQL | Thomas D'Silva | Thomas D'Silva |
| [SPARK-26713](https://issues.apache.org/jira/browse/SPARK-26713) | PipedRDD may holds stdin writer and stdout read threads even if the task is finished |  Major | Spark Core | Xianjin YE | Xianjin YE |
| [SPARK-26985](https://issues.apache.org/jira/browse/SPARK-26985) | Test "access only some column of the all of columns " fails on big endian |  Major | SQL | Anuja Jakhade | ketan kunde |
| [SPARK-28749](https://issues.apache.org/jira/browse/SPARK-28749) | Fix PySpark tests not to require kafka-0-8 in branch-2.4 |  Minor | PySpark, Tests | Matthew Foley | Matthew Foley |
| [SPARK-28778](https://issues.apache.org/jira/browse/SPARK-28778) | Shuffle jobs fail due to incorrect advertised address when running in virtual network |  Major | Mesos | Anton Kirillov | Anton Kirillov |
| [SPARK-28709](https://issues.apache.org/jira/browse/SPARK-28709) | Memory leaks after stopping of StreamingContext |  Minor | DStreams | Nikita Gorbachevski | Nikita Gorbachevski |
| [SPARK-23519](https://issues.apache.org/jira/browse/SPARK-23519) | Create View Commands Fails with  The view output (col1,col1) contains duplicate column name |  Major | SQL | Franck Tago | hemanth meka |
| [SPARK-28903](https://issues.apache.org/jira/browse/SPARK-28903) | Fix AWS JDK version conflict that breaks Pyspark Kinesis tests |  Major | Structured Streaming | Sean R. Owen | Sean R. Owen |
| [SPARK-28921](https://issues.apache.org/jira/browse/SPARK-28921) | Spark jobs failing on latest versions of Kubernetes (1.15.3, 1.14.6, 1,13.10, 1.12.10, 1.11.10) |  Major | Kubernetes, Spark Core | Paul Schweigert | Andy Grove |
| [SPARK-22955](https://issues.apache.org/jira/browse/SPARK-22955) | Error generating jobs when Stopping JobGenerator gracefully |  Major | DStreams | zzsmdfj | Nikita Gorbachevski |
| [SPARK-28963](https://issues.apache.org/jira/browse/SPARK-28963) | Fall back to archive.apache.org to download Maven if mirrors don't have requested version |  Minor | Build | Sean R. Owen | Sean R. Owen |
| [SPARK-28912](https://issues.apache.org/jira/browse/SPARK-28912) | MatchError exception in CheckpointWriteHandler |  Minor | Spark Core | Aleksandr Kashkirov | Aleksandr Kashkirov |
| [SPARK-28939](https://issues.apache.org/jira/browse/SPARK-28939) | SQL configuration are not always propagated |  Major | SQL | Marco Gaido | Marco Gaido |
| [SPARK-28906](https://issues.apache.org/jira/browse/SPARK-28906) | \`bin/spark-submit --version\` shows incorrect info |  Minor | Project Infra | Marcelo Masiero Vanzin | Kazuaki Ishizaki |
| [SPARK-26989](https://issues.apache.org/jira/browse/SPARK-26989) | Flaky test:DAGSchedulerSuite.Barrier task failures from the same stage attempt don't trigger multiple stage retries |  Major | Spark Core, Tests | Marcelo Masiero Vanzin | Jungtaek Lim |
| [SPARK-24663](https://issues.apache.org/jira/browse/SPARK-24663) | Flaky test: StreamingContextSuite "stop slow receiver gracefully" |  Minor | Tests | Marcelo Masiero Vanzin | Jungtaek Lim |
| [SPARK-29045](https://issues.apache.org/jira/browse/SPARK-29045) | Test failed due to table already exists in SQLMetricsSuite |  Minor | SQL, Tests | Lantao Jin | Lantao Jin |
| [SPARK-29042](https://issues.apache.org/jira/browse/SPARK-29042) | Sampling-based RDD with unordered input should be INDETERMINATE |  Major | Spark Core | L. C. Hsieh | L. C. Hsieh |
| [SPARK-29046](https://issues.apache.org/jira/browse/SPARK-29046) | Possible NPE on SQLConf.get when SparkContext is stopping in another thread |  Minor | SQL | Jungtaek Lim | Jungtaek Lim |
| [SPARK-29101](https://issues.apache.org/jira/browse/SPARK-29101) | CSV datasource returns incorrect .count() from file with malformed records |  Minor | SQL | Stuart White | Sandeep Katta |
| [SPARK-29053](https://issues.apache.org/jira/browse/SPARK-29053) | Sort does not work on some columns |  Minor | Web UI | jobit mathew | Aman Omer |
| [SPARK-28599](https://issues.apache.org/jira/browse/SPARK-28599) | Fix \`Execution Time\` and \`Duration\` column sorting for ThriftServerSessionPage |  Minor | SQL, Web UI | Yuming Wang | Yuming Wang |
| [SPARK-29177](https://issues.apache.org/jira/browse/SPARK-29177) | Zombie tasks prevents executor from releasing when task exceeds maxResultSize |  Major | Spark Core | Adrian Wang | Adrian Wang |
| [SPARK-25903](https://issues.apache.org/jira/browse/SPARK-25903) | Flaky test: BarrierTaskContextSuite.throw exception on barrier() call timeout |  Major | Tests | Marcelo Masiero Vanzin | L. C. Hsieh |
| [SPARK-29229](https://issues.apache.org/jira/browse/SPARK-29229) | Change the additional remote repository in IsolatedClientLoader to google minor |  Major | SQL | Yuanjian Li | Yuanjian Li |
| [SPARK-29213](https://issues.apache.org/jira/browse/SPARK-29213) | Make it consistent when get notnull output and generate null checks in FilterExec |  Major | SQL | Wang Shuo | Wang Shuo |
| [SPARK-29240](https://issues.apache.org/jira/browse/SPARK-29240) | PySpark 2.4 about sql function 'element\_at' param 'extraction' |  Trivial | PySpark | Simon Reon | Hyukjin Kwon |
| [SPARK-29244](https://issues.apache.org/jira/browse/SPARK-29244) | ArrayIndexOutOfBoundsException on TaskCompletionListener during releasing of memory blocks |  Major | Spark Core | Viacheslav Tradunsky | L. C. Hsieh |
| [SPARK-28917](https://issues.apache.org/jira/browse/SPARK-28917) | Jobs can hang because of race of RDD.dependencies |  Major | Scheduler, Spark Core | Imran Rashid | Imran Rashid |
| [SPARK-27812](https://issues.apache.org/jira/browse/SPARK-27812) | kubernetes client import non-daemon thread which block jvm exit. |  Major | Kubernetes, Spark Core | Henry Yu | Igor Calabria |
| [SPARK-29494](https://issues.apache.org/jira/browse/SPARK-29494) | ArrayOutOfBoundsException when converting from string to timestamp |  Minor | SQL | Rahul Shivu Mahadev | Rahul Shivu Mahadev |
| [SPARK-29498](https://issues.apache.org/jira/browse/SPARK-29498) | CatalogTable to HiveTable should not change the table's ownership |  Major | SQL | Kent Yao | Yuming Wang |
| [SPARK-21492](https://issues.apache.org/jira/browse/SPARK-21492) | Memory leak in SortMergeJoin |  Major | SQL | Zhan Zhang | Yuanjian Li |
| [SPARK-29556](https://issues.apache.org/jira/browse/SPARK-29556) | Avoid including path in error response from REST submission server |  Minor | Spark Core | Sean R. Owen | Sean R. Owen |
| [SPARK-29560](https://issues.apache.org/jira/browse/SPARK-29560) | Add typesafe bintray repo for sbt-mima-plugin |  Blocker | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29578](https://issues.apache.org/jira/browse/SPARK-29578) | JDK 1.8.0\_232 timezone updates cause "Kwajalein" test failures again |  Minor | Tests | Sean R. Owen | Sean R. Owen |
| [SPARK-21287](https://issues.apache.org/jira/browse/SPARK-21287) | Cannot use Int.MIN\_VALUE as Spark SQL fetchsize |  Major | SQL | Maciej Bryński | Hu Fuwang |
| [SPARK-29637](https://issues.apache.org/jira/browse/SPARK-29637) | SHS Endpoint /applications/\<app\_id\>/jobs/ doesn't include description |  Minor | Spark Core | Gabor Somogyi | Gabor Somogyi |
| [SPARK-29647](https://issues.apache.org/jira/browse/SPARK-29647) | Use Python 3.7 in GitHub Action to recover lint-python |  Minor | PySpark, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29604](https://issues.apache.org/jira/browse/SPARK-29604) | SessionState is initialized with isolated classloader for Hive if spark.sql.hive.metastore.jars is being set |  Major | SQL | Jungtaek Lim | Jungtaek Lim |
| [SPARK-29666](https://issues.apache.org/jira/browse/SPARK-29666) | Release script fail to publish release under dry run mode |  Major | Build | Xingbo Jiang | Xingbo Jiang |
| [SPARK-29651](https://issues.apache.org/jira/browse/SPARK-29651) | Incorrect parsing of interval seconds fraction |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-24152](https://issues.apache.org/jira/browse/SPARK-24152) | SparkR CRAN feasibility check server problem |  Critical | SparkR, Tests | Dongjoon Hyun | L. C. Hsieh |
| [SPARK-29743](https://issues.apache.org/jira/browse/SPARK-29743) | sample should set needCopyResult to true if its child is |  Blocker | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-29796](https://issues.apache.org/jira/browse/SPARK-29796) | HiveExternalCatalogVersionsSuite\` should ignore preview release |  Blocker | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29781](https://issues.apache.org/jira/browse/SPARK-29781) | Override SBT Jackson-databind dependency like Maven |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29850](https://issues.apache.org/jira/browse/SPARK-29850) | sort-merge-join an empty table should not memory leak |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-29875](https://issues.apache.org/jira/browse/SPARK-29875) | Avoid to use deprecated pyarrow.open\_stream API in Spark 2.4.x |  Minor | PySpark, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-29682](https://issues.apache.org/jira/browse/SPARK-29682) | Failure when resolving conflicting references in Join: |  Major | SQL | sandeshyapuram | Terry Kim |
| [SPARK-29904](https://issues.apache.org/jira/browse/SPARK-29904) | Parse timestamps in microsecond precision by JSON/CSV datasources |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-29932](https://issues.apache.org/jira/browse/SPARK-29932) | lint-r should do non-zero exit in case of errors |  Minor | SparkR, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-27558](https://issues.apache.org/jira/browse/SPARK-27558) | NPE in TaskCompletionListener due to Spark OOM in UnsafeExternalSorter causing tasks to hang |  Major | Spark Core | Alessandro Bellina | Artsiom Yudovin |
| [SPARK-29918](https://issues.apache.org/jira/browse/SPARK-29918) | RecordBinaryComparator should check endianness when compared by long |  Minor | SQL | EdisonWang | EdisonWang |
| [SPARK-29949](https://issues.apache.org/jira/browse/SPARK-29949) | JSON/CSV formats timestamps incorrectly |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-29758](https://issues.apache.org/jira/browse/SPARK-29758) | json\_tuple truncates fields |  Major | SQL | Stanislav | Maxim Gekk |
| [SPARK-29971](https://issues.apache.org/jira/browse/SPARK-29971) | Multiple possible buffer leaks in TransportFrameDecoder and TransportCipher |  Major | Spark Core | Norman Maurer | Norman Maurer |
| [SPARK-29970](https://issues.apache.org/jira/browse/SPARK-29970) | open/close state is not preserved for Timelineview |  Minor | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-29890](https://issues.apache.org/jira/browse/SPARK-29890) | Unable to fill na with 0 with duplicate columns |  Major | Spark Shell | sandeshyapuram | Terry Kim |
| [SPARK-30030](https://issues.apache.org/jira/browse/SPARK-30030) | Use RegexChecker instead of TokenChecker to check \`org.apache.commons.lang.\` |  Major | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-30065](https://issues.apache.org/jira/browse/SPARK-30065) | Unable to drop na with duplicate columns |  Major | SQL | Terry Kim | Terry Kim |
| [SPARK-30050](https://issues.apache.org/jira/browse/SPARK-30050) | analyze table and rename table should not erase the bucketing metadata at hive side |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-30082](https://issues.apache.org/jira/browse/SPARK-30082) | Zeros are being treated as NaNs |  Major | SQL | John Ayad | John Ayad |
| [SPARK-30129](https://issues.apache.org/jira/browse/SPARK-30129) | New auth engine does not keep client ID in TransportClient after auth |  Major | Spark Core | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-24666](https://issues.apache.org/jira/browse/SPARK-24666) | Word2Vec generate infinity vectors when numIterations are large |  Critical | ML, MLlib | Yu Zhong | L. C. Hsieh |
| [SPARK-30198](https://issues.apache.org/jira/browse/SPARK-30198) | BytesToBytesMap does not grow internal long array as expected |  Major | Spark Core | L. C. Hsieh | L. C. Hsieh |
| [SPARK-30238](https://issues.apache.org/jira/browse/SPARK-30238) | hive partition pruning can only support string and integral types |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-30263](https://issues.apache.org/jira/browse/SPARK-30263) | Don't log values of ignored non-Spark properties |  Minor | Spark Core | Sean R. Owen | Sean R. Owen |
| [SPARK-30274](https://issues.apache.org/jira/browse/SPARK-30274) | Avoid BytesToBytesMap lookup hang forever when holding keys reaching max capacity |  Major | Spark Core | L. C. Hsieh | L. C. Hsieh |
| [SPARK-29450](https://issues.apache.org/jira/browse/SPARK-29450) | [SS] In streaming aggregation, metric for output rows is not measured in append mode |  Minor | Structured Streaming | Jungtaek Lim | Jungtaek Lim |
| [SPARK-17398](https://issues.apache.org/jira/browse/SPARK-17398) | Failed to query on external JSon Partitioned table |  Major | SQL | pin\_zhang | Wing Yew Poon |
| [SPARK-30333](https://issues.apache.org/jira/browse/SPARK-30333) | Bump  jackson-databind to 2.6.7.3 |  Major | Spark Core | Sandeep Katta | Sandeep Katta |
| [SPARK-26560](https://issues.apache.org/jira/browse/SPARK-26560) | Repeating select on udf function throws analysis exception - function not registered |  Major | SQL | Haripriya | Jungtaek Lim |
| [SPARK-30285](https://issues.apache.org/jira/browse/SPARK-30285) | Fix deadlock between LiveListenerBus#stop and AsyncEventQueue#removeListenerOnError |  Major | Spark Core | Wang Shuo | Wang Shuo |
| [SPARK-30225](https://issues.apache.org/jira/browse/SPARK-30225) | "Stream is corrupted at" exception on reading disk-spilled data of a shuffle operation |  Major | Input/Output | Mala Chikka Kempanna | Marcelo Masiero Vanzin |
| [SPARK-30450](https://issues.apache.org/jira/browse/SPARK-30450) | Exclude .git folder for python linter |  Minor | Spark Core | Eric Chang | Eric Chang |
| [SPARK-30447](https://issues.apache.org/jira/browse/SPARK-30447) | Constant propagation nullability issue |  Major | SQL | Peter Toth | Peter Toth |
| [SPARK-30312](https://issues.apache.org/jira/browse/SPARK-30312) | Preserve path permission when truncate table |  Major | SQL | L. C. Hsieh | L. C. Hsieh |
| [SPARK-30489](https://issues.apache.org/jira/browse/SPARK-30489) | Make build delete pyspark.zip file properly |  Trivial | Build | Jeff Evans | Jeff Evans |
| [SPARK-30458](https://issues.apache.org/jira/browse/SPARK-30458) | The Executor Computing Time in Time Line of Stage Page is Wrong |  Minor | Web UI | SongXun | SongXun |
| [SPARK-30325](https://issues.apache.org/jira/browse/SPARK-30325) | markPartitionCompleted cause task status inconsistent |  Major | Spark Core | haiyangyu | haiyangyu |
| [SPARK-30246](https://issues.apache.org/jira/browse/SPARK-30246) | Spark on Yarn External Shuffle Service Memory Leak |  Major | Shuffle, Spark Core | huangweiyi | Henrique dos Santos Goulart |
| [SPARK-30310](https://issues.apache.org/jira/browse/SPARK-30310) | SparkUncaughtExceptionHandler halts running process unexpectedly |  Major | Spark Core | Tin Hang To | Tin Hang To |
| [SPARK-30572](https://issues.apache.org/jira/browse/SPARK-30572) | Add a fallback Maven repository |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-30553](https://issues.apache.org/jira/browse/SPARK-30553) | Fix structured-streaming java example error |  Trivial | Documentation | bettermouse | bettermouse |
| [SPARK-30556](https://issues.apache.org/jira/browse/SPARK-30556) | Copy sparkContext.localproperties to child thread inSubqueryExec.executionContext |  Major | SQL | Ajith S | Ajith S |
| [SPARK-30645](https://issues.apache.org/jira/browse/SPARK-30645) | collect() support Unicode charactes tests fails on Windows |  Major | SparkR, Tests | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-30633](https://issues.apache.org/jira/browse/SPARK-30633) | Codegen fails when xxHash seed is not an integer |  Major | SQL | Patrick Cording | Patrick Cording |
| [SPARK-23435](https://issues.apache.org/jira/browse/SPARK-23435) | R tests should support latest testthat |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-30512](https://issues.apache.org/jira/browse/SPARK-30512) | Use a dedicated boss event group loop in the netty pipeline for external shuffle service |  Major | Shuffle, Spark Core | Chandni Singh | Chandni Singh |
| [SPARK-30704](https://issues.apache.org/jira/browse/SPARK-30704) | Use jekyll-redirect-from 0.15.0 instead of the latest |  Blocker | Project Infra | Dongjoon Hyun | Dongjoon Hyun |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-29104](https://issues.apache.org/jira/browse/SPARK-29104) | Fix Flaky Test - PipedRDDSuite. stdin\_writer\_thread\_should\_be\_exited\_when\_task\_is\_finished |  Minor | Spark Core | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-23197](https://issues.apache.org/jira/browse/SPARK-23197) | Flaky test: spark.streaming.ReceiverSuite."receiver\_life\_cycle" |  Major | DStreams, Tests | Tathagata Das | Jungtaek Lim |
| [SPARK-29286](https://issues.apache.org/jira/browse/SPARK-29286) | UnicodeDecodeError raised when running python tests on arm instance |  Major | PySpark | huangtianhua | Hyukjin Kwon |
| [SPARK-30637](https://issues.apache.org/jira/browse/SPARK-30637) | upgrade testthat on jenkins workers to 2.0.0 |  Major | Build, jenkins, R | Shane Knapp | Shane Knapp |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-28683](https://issues.apache.org/jira/browse/SPARK-28683) | Upgrade Scala to 2.12.10 |  Major | Build | Yuming Wang | Yuming Wang |
| [SPARK-29203](https://issues.apache.org/jira/browse/SPARK-29203) | Reduce shuffle partitions in SQLQueryTestSuite |  Major | SQL, Tests | Yuming Wang | Yuming Wang |
| [SPARK-30269](https://issues.apache.org/jira/browse/SPARK-30269) | Should use old partition stats to decide whether to update stats when analyzing partition |  Major | SQL | Zhenhua Wang | Zhenhua Wang |
| [SPARK-29708](https://issues.apache.org/jira/browse/SPARK-29708) | Different answers in aggregates of duplicate grouping sets |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-28650](https://issues.apache.org/jira/browse/SPARK-28650) | Fix the guarantee of ForeachWriter |  Major | Structured Streaming | Shixiong Zhu | Jungtaek Lim |
| [SPARK-28977](https://issues.apache.org/jira/browse/SPARK-28977) | JDBC Dataframe Reader Doc Doesn't Match JDBC Data Source Page |  Minor | Documentation | Christopher Hoshino-Fish | Sean R. Owen |
| [SPARK-29367](https://issues.apache.org/jira/browse/SPARK-29367) | pandas udf not working with latest pyarrow release (0.15.0) |  Major | PySpark | Julien Peloton | Bryan Cutler |
| [SPARK-29790](https://issues.apache.org/jira/browse/SPARK-29790) | Add notes about port being required for Kubernetes API URL when set as master |  Minor | Kubernetes, Spark Core | Emil Sandstø | Emil Sandstø |
| [SPARK-30236](https://issues.apache.org/jira/browse/SPARK-30236) | Clarify date and time patterns supported by date\_format |  Major | Documentation | John Ayad | John Ayad |
| [SPARK-30478](https://issues.apache.org/jira/browse/SPARK-30478) | Fix memory package doc |  Minor | Documentation, Spark Core | SongXun | SongXun |
| [SPARK-28951](https://issues.apache.org/jira/browse/SPARK-28951) | Add release announce template |  Trivial | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29073](https://issues.apache.org/jira/browse/SPARK-29073) | Add GitHub Action to branch-2.4 for \`Scala-2.11 / Scala-2.12\` build |  Major | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-29201](https://issues.apache.org/jira/browse/SPARK-29201) | Add Hadoop 2.6 combination to GitHub Action |  Minor | Project Infra | Dongjoon Hyun |  |
| [SPARK-29445](https://issues.apache.org/jira/browse/SPARK-29445) | Bump netty-all from 4.1.39.Final to 4.1.42.Final |  Major | Spark Core | Fokko Driesprong | Fokko Driesprong |


