
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

## Release 2.0.0 - Unreleased (as of 2015-12-16)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-12016](https://issues.apache.org/jira/browse/SPARK-12016) | word2vec load model can't use findSynonyms to get words |  Major | PySpark | yuangang.liu |  |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-11774](https://issues.apache.org/jira/browse/SPARK-11774) | Implement "struct", "encode","decode" in SparkR |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-11713](https://issues.apache.org/jira/browse/SPARK-11713) | Initial RDD for updateStateByKey for pyspark |  Major | PySpark | David Watson |  |
| [SPARK-11206](https://issues.apache.org/jira/browse/SPARK-11206) | Support SQL UI on the history server |  Major | SQL, Web UI | Carson Wang | Carson Wang |
| [SPARK-9516](https://issues.apache.org/jira/browse/SPARK-9516) | Improve Thread Dump page |  Minor | Web UI | Nan Zhu | Nan Zhu |
| [SPARK-6990](https://issues.apache.org/jira/browse/SPARK-6990) | Add Java linting script |  Minor | Project Infra | Josh Rosen | Dmitry Erastov |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-12332](https://issues.apache.org/jira/browse/SPARK-12332) | Typo in ResetSystemProperties.scala's comments |  Trivial | Tests | holdenk | holdenk |
| [SPARK-12315](https://issues.apache.org/jira/browse/SPARK-12315) | isnotnull operator not pushed down for JDBC datasource. |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-12314](https://issues.apache.org/jira/browse/SPARK-12314) | isnull operator not pushed down for JDBC datasource. |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-12304](https://issues.apache.org/jira/browse/SPARK-12304) | Make Spark Streaming web UI display more friendly Receiver graphs |  Minor | Streaming | Liwei Lin |  |
| [SPARK-12288](https://issues.apache.org/jira/browse/SPARK-12288) | Support UnsafeRow in Coalesce/Except/Intersect |  Major | SQL | Davies Liu |  |
| [SPARK-12273](https://issues.apache.org/jira/browse/SPARK-12273) | Spark Streaming Web UI does not list Receivers in order |  Minor | Streaming, Web UI | Liwei Lin |  |
| [SPARK-12249](https://issues.apache.org/jira/browse/SPARK-12249) | JDBC non-equality comparison operator not pushed down. |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-12241](https://issues.apache.org/jira/browse/SPARK-12241) | Improve failure reporting in Yarn client obtainTokenForHBase() |  Minor | YARN | Steve Loughran | Steve Loughran |
| [SPARK-12228](https://issues.apache.org/jira/browse/SPARK-12228) | Use in-memory for execution hive's derby metastore |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-12213](https://issues.apache.org/jira/browse/SPARK-12213) | Query with only one distinct should not having on expand |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-12166](https://issues.apache.org/jira/browse/SPARK-12166) | Unset hadoop related environment in testing |  Minor | Tests | Jeff Zhang | Jeff Zhang |
| [SPARK-12130](https://issues.apache.org/jira/browse/SPARK-12130) | Replace shuffleManagerClass with shortShuffleMgrNames in ExternalShuffleBlockResolver |  Major | Shuffle, YARN | Lianhui Wang | Lianhui Wang |
| [SPARK-12115](https://issues.apache.org/jira/browse/SPARK-12115) | Change numPartitions() in RDD to be "getNumPartitions" to be consistent with pyspark/scala |  Major | SparkR | Sun Rui | Yanbo Liang |
| [SPARK-12105](https://issues.apache.org/jira/browse/SPARK-12105) | Add a DataFrame.show() with argument for output PrintStream |  Minor | SQL | Dean Wampler | Jean-Baptiste Onofré |
| [SPARK-12103](https://issues.apache.org/jira/browse/SPARK-12103) | Clarify documentation of KafkaUtils createStream with multiple topics |  Minor | Documentation, Streaming | Dan Dutrow | Cody Koeninger |
| [SPARK-12096](https://issues.apache.org/jira/browse/SPARK-12096) | remove the old constraint in word2vec |  Trivial | MLlib | yuhao yang | yuhao yang |
| [SPARK-12080](https://issues.apache.org/jira/browse/SPARK-12080) | Kryo - Support multiple user registrators |  Minor | Spark Core | Rotem Shaul | Rotem Shaul |
| [SPARK-12074](https://issues.apache.org/jira/browse/SPARK-12074) | Avoid memory copy involving ByteBuffer.wrap(ByteArrayOutputStream.toByteArray) |  Major | Spark Core | Ted Yu | Ted Yu |
| [SPARK-12060](https://issues.apache.org/jira/browse/SPARK-12060) | Avoid memory copy in JavaSerializerInstance.serialize |  Critical | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-12044](https://issues.apache.org/jira/browse/SPARK-12044) | Fix usage of isnan, isNaN |  Major | SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-12032](https://issues.apache.org/jira/browse/SPARK-12032) | Filter can't be pushed down to correct Join because of bad order of Join |  Critical | SQL | Davies Liu | Davies Liu |
| [SPARK-11988](https://issues.apache.org/jira/browse/SPARK-11988) | Update JPMML to 1.2.7 |  Minor | ML, MLlib | Sean Owen | Sean Owen |
| [SPARK-11983](https://issues.apache.org/jira/browse/SPARK-11983) | remove all unused codegen fallback traits |  Minor | SQL | Adrian Wang | Adrian Wang |
| [SPARK-11982](https://issues.apache.org/jira/browse/SPARK-11982) | Improve performance of CartesianProduct |  Minor | SQL | Davies Liu | Davies Liu |
| [SPARK-11929](https://issues.apache.org/jira/browse/SPARK-11929) | spark-shell log level customization is lost if user provides a log4j.properties file |  Minor | Spark Core, Spark Shell | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-11903](https://issues.apache.org/jira/browse/SPARK-11903) | Deprecate make-distribution.sh --skip-java-test |  Minor | Build | Nicholas Chammas | Nicholas Chammas |
| [SPARK-11898](https://issues.apache.org/jira/browse/SPARK-11898) | Use broadcast for the global tables in Word2Vec |  Major | MLlib | yuhao yang | yuhao yang |
| [SPARK-11884](https://issues.apache.org/jira/browse/SPARK-11884) | Drop multiple columns in the DataFrame API |  Minor | Spark Core | Ted Yu |  |
| [SPARK-11824](https://issues.apache.org/jira/browse/SPARK-11824) | WebUI throws console error for descriptions with 'bad' HTML |  Minor | SQL, Web UI | Andy Robb | Sean Owen |
| [SPARK-11717](https://issues.apache.org/jira/browse/SPARK-11717) | Ignore R session and history files from git |  Trivial | SparkR | Kai Sasaki | Kai Sasaki |
| [SPARK-11692](https://issues.apache.org/jira/browse/SPARK-11692) | Support for Parquet logical types, JSON and BSON (embedded types) |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-11592](https://issues.apache.org/jira/browse/SPARK-11592) | flush spark-sql command line history to history file |  Major | SQL | Adrian Wang |  |
| [SPARK-11530](https://issues.apache.org/jira/browse/SPARK-11530) | Return eigenvalues with PCA model |  Minor | ML, MLlib | Christos Iraklis Tsatsoulis | Sean Owen |
| [SPARK-11439](https://issues.apache.org/jira/browse/SPARK-11439) | Optimization of creating sparse feature without dense one |  Minor | ML | Kai Sasaki | Nakul Jindal |
| [SPARK-11155](https://issues.apache.org/jira/browse/SPARK-11155) | Stage summary json should include stage duration |  Minor | Web UI | Imran Rashid | Xin Ren |
| [SPARK-11044](https://issues.apache.org/jira/browse/SPARK-11044) | Parquet writer version fixed as version1 |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-10991](https://issues.apache.org/jira/browse/SPARK-10991) | LogisticRegressionTrainingSummary should dynamically add prediction col if there is no prediction col set |  Minor | ML | holdenk |  |
| [SPARK-10477](https://issues.apache.org/jira/browse/SPARK-10477) | using DSL in ColumnPruningSuite to improve readablity |  Trivial | SQL, Tests | Wenchen Fan | Wenchen Fan |
| [SPARK-10299](https://issues.apache.org/jira/browse/SPARK-10299) | word2vec should allow users to specify the window size |  Minor | MLlib | holdenk | holdenk |
| [SPARK-10123](https://issues.apache.org/jira/browse/SPARK-10123) | Cannot set "--deploy-mode" in default configuration |  Minor | Spark Core | Marcelo Vanzin | Saisai Shao |
| [SPARK-4117](https://issues.apache.org/jira/browse/SPARK-4117) | Spark on Yarn handle AM being told command from RM |  Major | YARN | Thomas Graves | Devaraj K |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-12298](https://issues.apache.org/jira/browse/SPARK-12298) | Infinite loop in DataFrame.sortWithinPartitions(String, String\*) |  Major | SQL | Ankur Dave | Ankur Dave |
| [SPARK-12275](https://issues.apache.org/jira/browse/SPARK-12275) | No plan for BroadcastHint in some condition |  Major | SQL | yucai | yucai |
| [SPARK-12271](https://issues.apache.org/jira/browse/SPARK-12271) | Improve error message for Dataset.as[] when the schema is incompatible. |  Major | SQL | Nong Li | Apache Spark |
| [SPARK-12222](https://issues.apache.org/jira/browse/SPARK-12222) | deserialize RoaringBitmap using Kryo serializer throw Buffer underflow exception |  Major | Spark Core | Fei Wang | Fei Wang |
| [SPARK-12158](https://issues.apache.org/jira/browse/SPARK-12158) | [R] [SQL] Fix 'sample' functions that break R unit test cases |  Critical | SparkR, SQL | Xiao Li | Xiao Li |
| [SPARK-12142](https://issues.apache.org/jira/browse/SPARK-12142) | Can't request executor when container allocator is not ready |  Major | Spark Core | meiyoula | meiyoula |
| [SPARK-12136](https://issues.apache.org/jira/browse/SPARK-12136) | rddToFileName does not properly handle prefix and suffix parameters |  Minor | Streaming | Brian Webb | Bo Meng |
| [SPARK-12132](https://issues.apache.org/jira/browse/SPARK-12132) | Cltr-C should clear current line in pyspark shell |  Major | PySpark | Davies Liu | Davies Liu |
| [SPARK-12131](https://issues.apache.org/jira/browse/SPARK-12131) | Cannot create ExpressionEncoder for Array[T] where T is a nested class |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-12112](https://issues.apache.org/jira/browse/SPARK-12112) | Upgrade to SBT 0.13.9 |  Major | Build | Josh Rosen | Josh Rosen |
| [SPARK-12109](https://issues.apache.org/jira/browse/SPARK-12109) | Expressions's simpleString should delegate to its toString |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-12107](https://issues.apache.org/jira/browse/SPARK-12107) | Update spark-ec2 versions |  Minor | EC2 | Nicholas Chammas | Nicholas Chammas |
| [SPARK-12104](https://issues.apache.org/jira/browse/SPARK-12104) | collect() does not handle multiple columns with same name |  Critical | SparkR | Hossein Falaki | Sun Rui |
| [SPARK-12090](https://issues.apache.org/jira/browse/SPARK-12090) | Coalesce does not consider shuffle in PySpark |  Major | . | Davies Liu | Davies Liu |
| [SPARK-12088](https://issues.apache.org/jira/browse/SPARK-12088) | check connection.isClose before connection.getAutoCommit in JDBCRDD.close |  Minor | SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-12084](https://issues.apache.org/jira/browse/SPARK-12084) | Fix codes that uses ByteBuffer.array incorrectly |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-12082](https://issues.apache.org/jira/browse/SPARK-12082) | NettyBlockTransferSecuritySuite "security mismatch auth off on client" test is flaky |  Major | Tests | Josh Rosen | Josh Rosen |
| [SPARK-12062](https://issues.apache.org/jira/browse/SPARK-12062) | Master rebuilding historical SparkUI should be asynchronous |  Major | Deploy | Andrew Or | Bryan Cutler |
| [SPARK-12048](https://issues.apache.org/jira/browse/SPARK-12048) | JDBCRDD calls close() twice - SQLite then throws an exception |  Minor | SQL | R. H. | R. H. |
| [SPARK-12031](https://issues.apache.org/jira/browse/SPARK-12031) | Integer overflow when do sampling. |  Major | Spark Core | uncleGen | uncleGen |
| [SPARK-12028](https://issues.apache.org/jira/browse/SPARK-12028) | [SQL] get\_json\_object is unable to return a correct result for null literals |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-12019](https://issues.apache.org/jira/browse/SPARK-12019) | SparkR.init does not support character vector for sparkJars and sparkPackages |  Minor | R, SparkR | liushiqi9 | Felix Cheung |
| [SPARK-12003](https://issues.apache.org/jira/browse/SPARK-12003) | Expanded star  should use field name as column name |  Major | . | Davies Liu | Davies Liu |
| [SPARK-12001](https://issues.apache.org/jira/browse/SPARK-12001) | StreamingContext cannot be completely stopped if the stop() call is interrupted |  Major | Streaming | Josh Rosen | Josh Rosen |
| [SPARK-11994](https://issues.apache.org/jira/browse/SPARK-11994) | Word2VecModel load and save cause SparkException when model is bigger than spark.kryoserializer.buffer.max |  Major | MLlib | Antonio Murgia | Antonio Murgia |
| [SPARK-11991](https://issues.apache.org/jira/browse/SPARK-11991) | spark\_ec2.py does not perform sanity checks on hostnames |  Major | EC2 | Jeremy Derr | Jeremy Derr |
| [SPARK-11969](https://issues.apache.org/jira/browse/SPARK-11969) | SQL UI does not work with PySpark |  Critical | SQL | Davies Liu | Davies Liu |
| [SPARK-11956](https://issues.apache.org/jira/browse/SPARK-11956) | Test failures potentially related to SPARK-11140 |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-11832](https://issues.apache.org/jira/browse/SPARK-11832) | Spark shell does not work from sbt with scala 2.11 |  Minor | Spark Shell | Jakob Odersky | Jakob Odersky |
| [SPARK-11762](https://issues.apache.org/jira/browse/SPARK-11762) | TransportResponseHandler should consider open streams when counting outstanding requests |  Minor | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-11715](https://issues.apache.org/jira/browse/SPARK-11715) | R support corr for Column Aggregration |  Minor | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-11511](https://issues.apache.org/jira/browse/SPARK-11511) | Creating an InputDStream but not using it throws NPE |  Major | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-11500](https://issues.apache.org/jira/browse/SPARK-11500) | Not deterministic order of columns when using merging schemas. |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-11497](https://issues.apache.org/jira/browse/SPARK-11497) | PySpark RowMatrix Constructor Has Type Erasure Issue |  Minor | MLlib, PySpark | Mike Dusenberry | Mike Dusenberry |
| [SPARK-11218](https://issues.apache.org/jira/browse/SPARK-11218) | `./sbin/start-slave.sh --help` should print out the help message |  Minor | Deploy | Jacek Laskowski | Charles Yeh |
| [SPARK-11193](https://issues.apache.org/jira/browse/SPARK-11193) | Spark 1.5+ Kinesis Streaming - ClassCastException when starting KinesisReceiver |  Major | Streaming | Phil Kallos |  |
| [SPARK-11043](https://issues.apache.org/jira/browse/SPARK-11043) | Hive Thrift Server will log warn "Couldn't find log associated with operation handle" |  Major | SQL | SaintBacchus | SaintBacchus |
| [SPARK-10582](https://issues.apache.org/jira/browse/SPARK-10582) | using dynamic-executor-allocation, if AM failed. the new AM will be started. But the new AM does not allocate executors to dirver |  Major | Spark Core | KaiXinXIaoLei | Saisai Shao |
| [SPARK-10116](https://issues.apache.org/jira/browse/SPARK-10116) | XORShiftRandom should generate uniform seeds |  Minor | Spark Core | Imran Rashid | Imran Rashid |
| [SPARK-9886](https://issues.apache.org/jira/browse/SPARK-9886) | Validate usages of Runtime.getRuntime.addShutdownHook |  Minor | Spark Core | Michel Lemay | Naveen Kumar Minchu |
| [SPARK-9026](https://issues.apache.org/jira/browse/SPARK-9026) | SimpleFutureAction.onComplete should not tie up a separate thread for each callback |  Major | Spark Core | Josh Rosen | Richard W. Eggert II |
| [SPARK-4514](https://issues.apache.org/jira/browse/SPARK-4514) | SparkContext localProperties does not inherit property updates across thread reuse |  Critical | Spark Core | Erik Erlandson | Richard W. Eggert II |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-12236](https://issues.apache.org/jira/browse/SPARK-12236) | JDBC filter tests all pass if filters are not really pushed down |  Major | SQL | Hyukjin Kwon |  |
| [SPARK-11694](https://issues.apache.org/jira/browse/SPARK-11694) | Parquet logical types are not being tested properly |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-11676](https://issues.apache.org/jira/browse/SPARK-11676) | Parquet filter tests all pass if filters are not really pushed down |  Critical | SQL | Hyukjin Kwon |  |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-12274](https://issues.apache.org/jira/browse/SPARK-12274) | WrapOption should not have type constraint for child |  Major | SQL | Wenchen Fan | Apache Spark |
| [SPARK-12252](https://issues.apache.org/jira/browse/SPARK-12252) | refactor MapObjects to make it less hacky |  Major | SQL | Wenchen Fan |  |
| [SPARK-12212](https://issues.apache.org/jira/browse/SPARK-12212) | Clarify the distinction between spark.mllib and spark.ml |  Major | Documentation | Timothy Hunter | Timothy Hunter |
| [SPARK-12199](https://issues.apache.org/jira/browse/SPARK-12199) | Follow-up: Refine example code in ml-features.md |  Major | Documentation | Xusen Yin | Xusen Yin |
| [SPARK-12152](https://issues.apache.org/jira/browse/SPARK-12152) | Speed up Scalastyle by only running one SBT command instead of four |  Major | Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-12146](https://issues.apache.org/jira/browse/SPARK-12146) | SparkR jsonFile should support multiple input files |  Major | SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-11978](https://issues.apache.org/jira/browse/SPARK-11978) | Move dataset\_example.py to examples/ml and rename to dataframe\_example.py |  Minor | ML, MLlib, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-11964](https://issues.apache.org/jira/browse/SPARK-11964) | Create user guide section explaining export/import |  Major | Documentation, ML | Joseph K. Bradley | Bill Chambers |
| [SPARK-11605](https://issues.apache.org/jira/browse/SPARK-11605) | ML 1.6 QA: API: Java compatibility, docs |  Major | Documentation, Java API, ML, MLlib | Joseph K. Bradley | yuhao yang |
| [SPARK-11602](https://issues.apache.org/jira/browse/SPARK-11602) | ML 1.6 QA: API: New Scala APIs, docs |  Major | Documentation, ML, MLlib | Joseph K. Bradley | yuhao yang |
| [SPARK-11563](https://issues.apache.org/jira/browse/SPARK-11563) | Use RpcEnv to transfer generated classes in spark-shell |  Major | Spark Shell | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-11314](https://issues.apache.org/jira/browse/SPARK-11314) | Add service API and test service for Yarn Cluster schedulers |  Major | YARN | Steve Loughran | Steve Loughran |
| [SPARK-11140](https://issues.apache.org/jira/browse/SPARK-11140) | Replace file server in driver with RPC-based alternative |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-9972](https://issues.apache.org/jira/browse/SPARK-9972) | Add `struct`, `encode` and `decode` function in SparkR |  Major | SparkR | Yu Ishikawa | Sun Rui |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-12351](https://issues.apache.org/jira/browse/SPARK-12351) | Add documentation of submitting Mesos jobs with cluster mode |  Major | . | Timothy Chen | Timothy Chen |
| [SPARK-12217](https://issues.apache.org/jira/browse/SPARK-12217) | Document invalid handling for StringIndexer |  Minor | ML | Benjamin Fradet | Benjamin Fradet |
| [SPARK-12211](https://issues.apache.org/jira/browse/SPARK-12211) | Incorrect version number in graphx doc for migration from 1.1 |  Minor | Documentation, GraphX | Andrew Ray | Andrew Ray |
| [SPARK-12159](https://issues.apache.org/jira/browse/SPARK-12159) | Add user guide section for IndexToString transformer |  Minor | ML | Joseph K. Bradley | Benjamin Fradet |
| [SPARK-12093](https://issues.apache.org/jira/browse/SPARK-12093) | Fix the error of comment in DDLParser |  Trivial | Documentation | Yadong Qi | Yadong Qi |
| [SPARK-11476](https://issues.apache.org/jira/browse/SPARK-11476) | Incorrect function referred to in MLib Random data generation documentation |  Minor | Documentation | Jason Blochowiak | Sean Owen |


