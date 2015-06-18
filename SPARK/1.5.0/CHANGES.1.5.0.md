
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
# Changelog

## Release 1.5.0 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-8129](https://issues.apache.org/jira/browse/SPARK-8129) | Securely pass auth secrets to executors in standalone cluster mode |  Minor | Deploy, Spark Core | Kan Zhang | Kan Zhang |
| [SPARK-7639](https://issues.apache.org/jira/browse/SPARK-7639) | Add Python API for Statistics.kernelDensity |  Major | MLlib, PySpark | Yanbo Liang | Manoj Kumar |
| [SPARK-7547](https://issues.apache.org/jira/browse/SPARK-7547) | Example code for ElasticNet |  Major | ML | Joseph K. Bradley | DB Tsai |
| [SPARK-7440](https://issues.apache.org/jira/browse/SPARK-7440) | Remove physical Distinct operator in favor of Aggregate |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-7387](https://issues.apache.org/jira/browse/SPARK-7387) | CrossValidator example code in Python |  Minor | ML, PySpark | Xiangrui Meng | Ram Sriharsha |
| [SPARK-7199](https://issues.apache.org/jira/browse/SPARK-7199) | Add date and timestamp support to UnsafeRow |  Major | SQL | Josh Rosen |  |
| [SPARK-7186](https://issues.apache.org/jira/browse/SPARK-7186) | Decouple internal Row from external Row |  Blocker | SQL | Reynold Xin | Davies Liu |
| [SPARK-6964](https://issues.apache.org/jira/browse/SPARK-6964) | Support Cancellation in the Thrift Server |  Critical | SQL | Michael Armbrust | Dong Wang |
| [SPARK-6820](https://issues.apache.org/jira/browse/SPARK-6820) | Convert NAs to null type in SparkR DataFrames |  Critical | SparkR | Shivaram Venkataraman | Qian Huang |
| [SPARK-6390](https://issues.apache.org/jira/browse/SPARK-6390) | Add MatrixUDT in PySpark |  Major | MLlib, PySpark | Xiangrui Meng | Manoj Kumar |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-8397](https://issues.apache.org/jira/browse/SPARK-8397) | Allow custom configuration for TestHive |  Minor | SQL | Punya Biswal |  |
| [SPARK-8395](https://issues.apache.org/jira/browse/SPARK-8395) | spark-submit documentation is incorrect |  Minor | Documentation | Dev Lakhani | Sean Owen |
| [SPARK-8387](https://issues.apache.org/jira/browse/SPARK-8387) | [SPARK][Web-UI] Only show 4096 bytes content for executor log instead all |  Minor | Web UI | SuYan | SuYan |
| [SPARK-8349](https://issues.apache.org/jira/browse/SPARK-8349) | Use expression constructors (rather than apply) in FunctionRegistry |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8346](https://issues.apache.org/jira/browse/SPARK-8346) | Use InternalRow instread of catalyst.InternalRow |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-8343](https://issues.apache.org/jira/browse/SPARK-8343) | Improve the Spark Streaming Guides |  Minor | Documentation, Streaming | Mike Dusenberry | Mike Dusenberry |
| [SPARK-8319](https://issues.apache.org/jira/browse/SPARK-8319) | Update logic related to key ordering in shuffle dependencies |  Major | Shuffle, SQL | Josh Rosen | Josh Rosen |
| [SPARK-8317](https://issues.apache.org/jira/browse/SPARK-8317) | Do not push sort into shuffle in Exchange operator |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-8316](https://issues.apache.org/jira/browse/SPARK-8316) | Upgrade Maven to 3.3.3 |  Minor | Build | Nicholas Chammas | Nicholas Chammas |
| [SPARK-8314](https://issues.apache.org/jira/browse/SPARK-8314) | improvement in performance of MLUtils.appendBias |  Major | MLlib | Roger Menezes |  |
| [SPARK-8286](https://issues.apache.org/jira/browse/SPARK-8286) | Rewrite UTF8String in Java and move it into unsafe package. |  Minor | Spark Core, SQL | Reynold Xin | Reynold Xin |
| [SPARK-8282](https://issues.apache.org/jira/browse/SPARK-8282) | Make number of threads used in RBackend configurable |  Major | SparkR | Hossein Falaki | Hossein Falaki |
| [SPARK-8189](https://issues.apache.org/jira/browse/SPARK-8189) | Use 100ns precision for TimestampType |  Major | SQL | Reynold Xin | Davies Liu |
| [SPARK-8164](https://issues.apache.org/jira/browse/SPARK-8164) | transformExpressions should support nested expression sequence |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-8158](https://issues.apache.org/jira/browse/SPARK-8158) | HiveShim improvement |  Major | SQL | Adrian Wang | Adrian Wang |
| [SPARK-8154](https://issues.apache.org/jira/browse/SPARK-8154) | Remove Term/Code type aliases in code generation |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8149](https://issues.apache.org/jira/browse/SPARK-8149) | Break ExpressionEvaluationSuite down to multiple files |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8141](https://issues.apache.org/jira/browse/SPARK-8141) | Precompute datatypes for partition columns and reuse it |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-8140](https://issues.apache.org/jira/browse/SPARK-8140) | Remove empty model check in StreamingLinearAlgorithm |  Trivial | MLlib, Streaming | Manoj Kumar | Manoj Kumar |
| [SPARK-8126](https://issues.apache.org/jira/browse/SPARK-8126) | Use temp directory under build dir for unit tests |  Minor | Build | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-8117](https://issues.apache.org/jira/browse/SPARK-8117) | Push codegen into Expression |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-8106](https://issues.apache.org/jira/browse/SPARK-8106) | Set derby.system.durability=test in order to speed up Hive compatibility tests |  Major | Build, SQL, Tests | Josh Rosen | Josh Rosen |
| [SPARK-8101](https://issues.apache.org/jira/browse/SPARK-8101) | Upgrade netty to avoid memory leak accord to netty #3837 issues |  Minor | Spark Core | SuYan | Sean Owen |
| [SPARK-8084](https://issues.apache.org/jira/browse/SPARK-8084) | SparkR install script should fail with error if any packages required are not found |  Major | Build, SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-8077](https://issues.apache.org/jira/browse/SPARK-8077) | Optimisation of TreeNode for large number of children |  Minor | SQL | Mick Davies |  |
| [SPARK-8059](https://issues.apache.org/jira/browse/SPARK-8059) | Reduce latency between executor requests and RM heartbeat |  Minor | YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-8054](https://issues.apache.org/jira/browse/SPARK-8054) | Java compatibility fixes for MLlib 1.4 |  Major | MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-8053](https://issues.apache.org/jira/browse/SPARK-8053) | ElementwiseProduct scalingVec param name should match between ml,mllib |  Minor | MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-8001](https://issues.apache.org/jira/browse/SPARK-8001) | Make AsynchronousListenerBus.waitUntilEmpty throw TimeoutException if timeout |  Minor | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7984](https://issues.apache.org/jira/browse/SPARK-7984) | do type coercion for key and when expressions in CaseKeyWhen |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-7983](https://issues.apache.org/jira/browse/SPARK-7983) | Add require for one-based indices in loadLibSVMFile |  Minor | MLlib | yuhao yang | yuhao yang |
| [SPARK-7969](https://issues.apache.org/jira/browse/SPARK-7969) | Drop method on Dataframes should handle Column |  Minor | PySpark, SQL | Olivier Girardot | Mike Dusenberry |
| [SPARK-7945](https://issues.apache.org/jira/browse/SPARK-7945) | Do trim to values of properties |  Minor | Spark Core | Tao Wang | Tao Wang |
| [SPARK-7916](https://issues.apache.org/jira/browse/SPARK-7916) | MLlib Python doc parity check for classification and regression. |  Major | Documentation, MLlib, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-7913](https://issues.apache.org/jira/browse/SPARK-7913) | Increase the maximum capacity of PartitionedPairBuffer, PartitionedSerializedPairBuffer and AppendOnlyMap |  Minor | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7910](https://issues.apache.org/jira/browse/SPARK-7910) | Expose partitioner information in JavaRDD |  Minor | Java API | holdenk | holdenk |
| [SPARK-7887](https://issues.apache.org/jira/browse/SPARK-7887) | Remove EvaluatedType from SQL Expression |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-7886](https://issues.apache.org/jira/browse/SPARK-7886) | Add built-in expressions to FunctionRegistry |  Blocker | SQL | Reynold Xin | Reynold Xin |
| [SPARK-7878](https://issues.apache.org/jira/browse/SPARK-7878) | Rename Stage.jobId to Stage.earliestJobId |  Minor | Scheduler | Kay Ousterhout | Kay Ousterhout |
| [SPARK-7855](https://issues.apache.org/jira/browse/SPARK-7855) | Move hash-style shuffle code out of ExternalSorter and into own file |  Major | Shuffle | Josh Rosen | Josh Rosen |
| [SPARK-7826](https://issues.apache.org/jira/browse/SPARK-7826) | Suppress extra calling getCacheLocs. |  Major | Scheduler, Spark Core | Takuya Ueshin | Takuya Ueshin |
| [SPARK-7824](https://issues.apache.org/jira/browse/SPARK-7824) | Collapsing operator reordering and constant folding into a single batch to push down the single side. |  Major | SQL | Zhongshuai Pei | Zhongshuai Pei |
| [SPARK-7801](https://issues.apache.org/jira/browse/SPARK-7801) | Upgrade master versions to Spark 1.5.0 |  Major | Build | Patrick Wendell | Patrick Wendell |
| [SPARK-7795](https://issues.apache.org/jira/browse/SPARK-7795) | Speed up task serialization in standalone mode |  Major | Spark Core | Akshat Aranya | Akshat Aranya |
| [SPARK-7705](https://issues.apache.org/jira/browse/SPARK-7705) | Cleanup of .sparkStaging directory fails if application is killed |  Minor | YARN | Wilfred Spiegelenburg | Weizhong |
| [SPARK-7699](https://issues.apache.org/jira/browse/SPARK-7699) | Dynamic allocation: initial executors may be canceled before first job |  Major | Spark Core | meiyoula | Saisai Shao |
| [SPARK-7691](https://issues.apache.org/jira/browse/SPARK-7691) | Use type-specific row accessor functions in CatalystTypeConverters' toScala functions |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-7663](https://issues.apache.org/jira/browse/SPARK-7663) | [MLLIB] feature.Word2Vec throws empty iterator error when the vocabulary size is zero |  Minor | ML, MLlib | Xusen Yin | Xusen Yin |
| [SPARK-7657](https://issues.apache.org/jira/browse/SPARK-7657) | [YARN] Show driver link in Spark UI |  Minor | YARN | Hari Shreedharan | Hari Shreedharan |
| [SPARK-7637](https://issues.apache.org/jira/browse/SPARK-7637) | StructType.merge slow with large nenormalised tables O(N2) |  Minor | SQL | Rowan Chattaway | Rowan Chattaway |
| [SPARK-7562](https://issues.apache.org/jira/browse/SPARK-7562) | Improve error reporting for expression data type mismatch |  Major | SQL | Reynold Xin | Wenchen Fan |
| [SPARK-7533](https://issues.apache.org/jira/browse/SPARK-7533) | Decrease spacing between AM-RM heartbeats. |  Major | YARN | Sandy Ryza | Zoltán Zvara |
| [SPARK-7524](https://issues.apache.org/jira/browse/SPARK-7524) | add configs for keytab and principal, move originals to internal |  Major | YARN | Tao Wang | Tao Wang |
| [SPARK-7444](https://issues.apache.org/jira/browse/SPARK-7444) | Eliminate noisy css warn/error logs for UISeleniumSuite |  Minor | Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7389](https://issues.apache.org/jira/browse/SPARK-7389) | Tachyon integration improvement |  Major | Block Manager | shimingfei | shimingfei |
| [SPARK-7357](https://issues.apache.org/jira/browse/SPARK-7357) | Improving HBaseTest example |  Minor | Examples | Jihong MA | Jihong MA |
| [SPARK-7261](https://issues.apache.org/jira/browse/SPARK-7261) | Change default log level to WARN in the REPL |  Blocker | Spark Shell | Patrick Wendell | Shixiong Zhu |
| [SPARK-7184](https://issues.apache.org/jira/browse/SPARK-7184) | Investigate turning codegen on by default |  Major | SQL | Reynold Xin | Davies Liu |
| [SPARK-7161](https://issues.apache.org/jira/browse/SPARK-7161) | Provide REST api to download event logs from History Server |  Minor | Spark Core | Hari Shreedharan | Hari Shreedharan |
| [SPARK-7042](https://issues.apache.org/jira/browse/SPARK-7042) | Spark version of akka-actor\_2.11 is not compatible with the official akka-actor\_2.11 2.3.x |  Minor | Spark Core | Konstantin Shaposhnikov | Konstantin Shaposhnikov |
| [SPARK-7020](https://issues.apache.org/jira/browse/SPARK-7020) | Restrict module testing based on commit contents |  Critical | Build, Project Infra | Brennon York | Brennon York |
| [SPARK-6782](https://issues.apache.org/jira/browse/SPARK-6782) | add sbt-revolver plugin to sbt build |  Minor | Build | Imran Rashid | Imran Rashid |
| [SPARK-6583](https://issues.apache.org/jira/browse/SPARK-6583) | Support aggregated function in order by |  Major | SQL | Yadong Qi | Yadong Qi |
| [SPARK-6566](https://issues.apache.org/jira/browse/SPARK-6566) | Update Spark to use the latest version of Parquet libraries |  Major | SQL | Konstantin Shaposhnikov | Yash Datta |
| [SPARK-6470](https://issues.apache.org/jira/browse/SPARK-6470) | Allow Spark apps to put YARN node labels in their requests |  Major | YARN | Sandy Ryza | Sandy Ryza |
| [SPARK-6324](https://issues.apache.org/jira/browse/SPARK-6324) | Clean up usage code in command-line scripts |  Minor | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-6164](https://issues.apache.org/jira/browse/SPARK-6164) | CrossValidatorModel should keep stats from fitting |  Minor | ML | Joseph K. Bradley | Leah McGuire |
| [SPARK-5090](https://issues.apache.org/jira/browse/SPARK-5090) | The improvement of python converter for hbase |  Major | Examples | Gen TANG | Gen TANG |
| [SPARK-2774](https://issues.apache.org/jira/browse/SPARK-2774) | Set preferred locations for reduce tasks |  Major | Spark Core | Shivaram Venkataraman | Shivaram Venkataraman |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-8373](https://issues.apache.org/jira/browse/SPARK-8373) | When an RDD has no partition, Python sum will throw "Can not reduce() empty RDD" |  Minor | PySpark | Shixiong Zhu | Shixiong Zhu |
| [SPARK-8372](https://issues.apache.org/jira/browse/SPARK-8372) | History server shows incorrect information for application not started |  Minor | Deploy, Web UI | Carson Wang | Carson Wang |
| [SPARK-8367](https://issues.apache.org/jira/browse/SPARK-8367) | ReliableKafka will loss data when `spark.streaming.blockInterval` was 0 |  Major | Streaming | SaintBacchus | SaintBacchus |
| [SPARK-8358](https://issues.apache.org/jira/browse/SPARK-8358) | DataFrame explode with alias and * fails |  Blocker | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-8354](https://issues.apache.org/jira/browse/SPARK-8354) | Fix off-by-factor-of-8 error when allocating scratch space in UnsafeFixedWidthAggregationMap |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-8350](https://issues.apache.org/jira/browse/SPARK-8350) | R unit tests output should be logged to "unit-tests.log" |  Minor | R | Andrew Or | Andrew Or |
| [SPARK-8342](https://issues.apache.org/jira/browse/SPARK-8342) | Decimal Math beyond ~2^112 is broken |  Major | SQL | Rene Treffer | Liang-Chi Hsieh |
| [SPARK-8336](https://issues.apache.org/jira/browse/SPARK-8336) | Fix NullPointerException with functions.rand() |  Major | SQL | Ted Yu | Ted Yu |
| [SPARK-8329](https://issues.apache.org/jira/browse/SPARK-8329) | DataSource options parser no longer accepts '\_' |  Blocker | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-8322](https://issues.apache.org/jira/browse/SPARK-8322) | EC2 script not fully updated for 1.4.0 release |  Major | EC2 | Mark Smith | Mark Smith |
| [SPARK-8310](https://issues.apache.org/jira/browse/SPARK-8310) | Spark EC2 branch in 1.4 is wrong |  Critical | EC2 | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-8309](https://issues.apache.org/jira/browse/SPARK-8309) | OpenHashMap doesn't work with more than 12M items |  Critical | Spark Core | Vyacheslav Baranov | Vyacheslav Baranov |
| [SPARK-8306](https://issues.apache.org/jira/browse/SPARK-8306) | AddJar command needs to set the new class loader to the HiveConf inside executionHive.state. |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-8305](https://issues.apache.org/jira/browse/SPARK-8305) | Improve codegen |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-8290](https://issues.apache.org/jira/browse/SPARK-8290) | spark class command builder need read SPARK\_JAVA\_OPTS and SPARK\_DRIVER\_MEMORY properly |  Minor | Spark Core | Tao Wang | Tao Wang |
| [SPARK-8289](https://issues.apache.org/jira/browse/SPARK-8289) | Provide a specific stack size with all Java implementations to prevent stack overflows with certain tests |  Major | Tests | Adam Roberts | Adam Roberts |
| [SPARK-8285](https://issues.apache.org/jira/browse/SPARK-8285) | CombineSum should be calculated as unlimited decimal first |  Trivial | SQL | Navis | Navis |
| [SPARK-8200](https://issues.apache.org/jira/browse/SPARK-8200) | Exception in StreamingLinearAlgorithm on Stream with Empty RDD. |  Minor | MLlib, Streaming | Paavo Parkkinen | Paavo Parkkinen |
| [SPARK-8162](https://issues.apache.org/jira/browse/SPARK-8162) | Run spark-shell cause NullPointerException |  Blocker | Build, Spark Shell | Weizhong | Andrew Or |
| [SPARK-8161](https://issues.apache.org/jira/browse/SPARK-8161) | externalBlockStoreInitialized is never set to be true |  Major | Block Manager | shimingfei | shimingfei |
| [SPARK-8156](https://issues.apache.org/jira/browse/SPARK-8156) | Respect current database when creating datasource tables |  Major | SQL | baishuo | baishuo |
| [SPARK-8136](https://issues.apache.org/jira/browse/SPARK-8136) | AM link download test can be flaky |  Major | Tests, YARN | Hari Shreedharan | Hari Shreedharan |
| [SPARK-8116](https://issues.apache.org/jira/browse/SPARK-8116) | sc.range() doesn't match python range() |  Minor | PySpark | Ted Blackman | Ted Blackman |
| [SPARK-8112](https://issues.apache.org/jira/browse/SPARK-8112) | Received block event count through the StreamingListener can be negative |  Minor | Streaming | Tathagata Das | Shixiong Zhu |
| [SPARK-8099](https://issues.apache.org/jira/browse/SPARK-8099) | In yarn-cluster mode, "--executor-cores" can't be setted into SparkConf |  Major | YARN | meiyoula | meiyoula |
| [SPARK-8098](https://issues.apache.org/jira/browse/SPARK-8098) | Show correct length of bytes on log page |  Minor | Web UI | Carson Wang | Carson Wang |
| [SPARK-8088](https://issues.apache.org/jira/browse/SPARK-8088) | ExecutionAllocationManager spamming INFO logs about "Lowering target number of executors" |  Major | Spark Core | Ryan Williams | Ryan Williams |
| [SPARK-8085](https://issues.apache.org/jira/browse/SPARK-8085) | Pass in user-specified schema in read.df |  Major | SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-8083](https://issues.apache.org/jira/browse/SPARK-8083) | Fix return to drivers link in Mesos driver page |  Major | Mesos, Web UI | Timothy Chen | Timothy Chen |
| [SPARK-8079](https://issues.apache.org/jira/browse/SPARK-8079) | NPE when HadoopFsRelation.prepareForWriteJob throws exception |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-8063](https://issues.apache.org/jira/browse/SPARK-8063) | Spark master URL conflict between MASTER env variable and --master command line option |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-8052](https://issues.apache.org/jira/browse/SPARK-8052) | Hive on Spark: CAST string AS BIGINT produces wrong value |  Major | . | Andrey Kurochkin | Liang-Chi Hsieh |
| [SPARK-8051](https://issues.apache.org/jira/browse/SPARK-8051) | StringIndexerModel (and other models) shouldn't complain if the input column is missing. |  Major | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-8043](https://issues.apache.org/jira/browse/SPARK-8043) | update NaiveBayes and SVM examples in doc |  Minor | MLlib | yuhao yang | yuhao yang |
| [SPARK-8032](https://issues.apache.org/jira/browse/SPARK-8032) | Make NumPy version checking in mllib/\_\_init\_\_.py |  Major | MLlib, PySpark | Manoj Kumar | Manoj Kumar |
| [SPARK-8010](https://issues.apache.org/jira/browse/SPARK-8010) | Implict promote Numeric type to String type in HiveTypeCoercion |  Major | SQL | Li Sheng |  |
| [SPARK-8004](https://issues.apache.org/jira/browse/SPARK-8004) | Spark does not enclose column names when fetchting from jdbc sources |  Major | SQL | Rene Treffer | Liang-Chi Hsieh |
| [SPARK-7964](https://issues.apache.org/jira/browse/SPARK-7964) | The BooleanCasts rule in HiveTypeCoercion is useless |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-7956](https://issues.apache.org/jira/browse/SPARK-7956) | Use Janino to compile SQL expression |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-7955](https://issues.apache.org/jira/browse/SPARK-7955) | Dynamic allocation: longer timeout for executors with cached blocks |  Major | Spark Core | Hari Shreedharan | Hari Shreedharan |
| [SPARK-7952](https://issues.apache.org/jira/browse/SPARK-7952) | equality check between boolean type and numeric type is broken. |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-7939](https://issues.apache.org/jira/browse/SPARK-7939) | Make URL partition recognition return String by default for all partition column types and values |  Major | SQL | Jianshi Huang | Liang-Chi Hsieh |
| [SPARK-7915](https://issues.apache.org/jira/browse/SPARK-7915) | Support specifying the column list for target table in CTAS |  Major | SQL | Cheng Hao | Cheng Hao |
| [SPARK-7863](https://issues.apache.org/jira/browse/SPARK-7863) | SimpleDateParam should not use SimpleDateFormat in multiple threads because SimpleDateFormat is not thread-safe |  Minor | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7862](https://issues.apache.org/jira/browse/SPARK-7862) | Query would hang when the using script has error output in SparkSQL |  Major | SQL | zhichao-li | zhichao-li |
| [SPARK-7846](https://issues.apache.org/jira/browse/SPARK-7846) | Use different way to pass spark.yarn.keytab and spark.yarn.principal in different modes |  Major | YARN | Tao Wang | Tao Wang |
| [SPARK-7811](https://issues.apache.org/jira/browse/SPARK-7811) | Fix typo on slf4j configuration on metrics.properties.template |  Trivial | Spark Core | Judy Nash | Judy Nash |
| [SPARK-7792](https://issues.apache.org/jira/browse/SPARK-7792) | HiveContext registerTempTable not thread safe |  Major | SQL | Yana Kadiyska | Navis |
| [SPARK-7775](https://issues.apache.org/jira/browse/SPARK-7775) | YARN AM tried to sleep negative milliseconds |  Critical | YARN | Andrew Or | Andrew Or |
| [SPARK-7717](https://issues.apache.org/jira/browse/SPARK-7717) | Spark Standalone Web UI showing incorrect total memory, workers and cores |  Minor | Web UI | Swaranga Sarma | zhichao-li |
| [SPARK-7635](https://issues.apache.org/jira/browse/SPARK-7635) | SparkContextSchedulerCreationSuite tests may fail due to unrecognized UnsatisfiedLinkError message. |  Minor | Spark Core | Matthew Brandyberry | Tim Ellison |
| [SPARK-7527](https://issues.apache.org/jira/browse/SPARK-7527) | Wrong detection of REPL mode in ClosureCleaner |  Minor | Spark Core | Oleksii Kostyliev | Shixiong Zhu |
| [SPARK-7515](https://issues.apache.org/jira/browse/SPARK-7515) | Update documentation for PySpark on YARN with cluster mode |  Minor | Documentation | Kousuke Saruta | Kousuke Saruta |
| [SPARK-7067](https://issues.apache.org/jira/browse/SPARK-7067) | Can't resolve nested column in ORDER BY |  Major | SQL | Wenchen Fan |  |
| [SPARK-7063](https://issues.apache.org/jira/browse/SPARK-7063) | Update lz4 for Java 7 to avoid: when lz4 compression is used, it causes core dump |  Minor | Spark Core | Jenny MA | Jenny MA |
| [SPARK-6973](https://issues.apache.org/jira/browse/SPARK-6973) | The total stages on the allJobsPage is wrong |  Minor | Web UI | meiyoula | meiyoula |
| [SPARK-6444](https://issues.apache.org/jira/browse/SPARK-6444) | SQL functions (either built-in or UDF) should check for data types of their arguments |  Major | SQL | Cheng Lian | Wenchen Fan |
| [SPARK-6419](https://issues.apache.org/jira/browse/SPARK-6419) | GenerateOrdering does not support BinaryType and complex types. |  Major | SQL | Yin Huai | Davies Liu |
| [SPARK-6411](https://issues.apache.org/jira/browse/SPARK-6411) | PySpark DataFrames can't be created if any datetimes have timezones |  Major | PySpark, SQL | Harry Brundage | Davies Liu |
| [SPARK-6246](https://issues.apache.org/jira/browse/SPARK-6246) | spark-ec2 can't handle clusters with \> 100 nodes |  Minor | EC2 | Nicholas Chammas | Alex Slusarenko |
| [SPARK-5479](https://issues.apache.org/jira/browse/SPARK-5479) | PySpark on yarn mode need to support non-local python files |  Major | PySpark, YARN | Lianhui Wang | Marcelo Vanzin |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-7989](https://issues.apache.org/jira/browse/SPARK-7989) | Fix flaky tests in ExternalShuffleServiceSuite and SparkListenerWithClusterSuite |  Major | Spark Core, Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7854](https://issues.apache.org/jira/browse/SPARK-7854) | refine Kryo configuration limits test |  Minor | Spark Core, Tests | Zhang, Liye | Zhang, Liye |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-8362](https://issues.apache.org/jira/browse/SPARK-8362) | Add unit tests for +, -, *, /, % |  Blocker | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8347](https://issues.apache.org/jira/browse/SPARK-8347) | Add unit tests for abs |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8330](https://issues.apache.org/jira/browse/SPARK-8330) | DAG visualization: trim whitespace from input |  Major | Web UI | Andrew Or | Andrew Or |
| [SPARK-8251](https://issues.apache.org/jira/browse/SPARK-8251) | string function: alias upper / ucase |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8250](https://issues.apache.org/jira/browse/SPARK-8250) | string function: alias lower/lcase |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8248](https://issues.apache.org/jira/browse/SPARK-8248) | string function: length |  Major | SQL | Reynold Xin | Cheng Hao |
| [SPARK-8229](https://issues.apache.org/jira/browse/SPARK-8229) | conditional function: isnotnull |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8228](https://issues.apache.org/jira/browse/SPARK-8228) | conditional function: isnull |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8225](https://issues.apache.org/jira/browse/SPARK-8225) | math function: alias sign / signum |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8222](https://issues.apache.org/jira/browse/SPARK-8222) | math function: alias power / pow |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8220](https://issues.apache.org/jira/browse/SPARK-8220) | math function: positive |  Major | SQL | Reynold Xin | zhichao-li |
| [SPARK-8219](https://issues.apache.org/jira/browse/SPARK-8219) | math function: negative |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8217](https://issues.apache.org/jira/browse/SPARK-8217) | math function: log2 |  Major | SQL | Reynold Xin | Adrian Wang |
| [SPARK-8216](https://issues.apache.org/jira/browse/SPARK-8216) | math function: rename log -\> ln |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8215](https://issues.apache.org/jira/browse/SPARK-8215) | math function: pi |  Major | SQL | Reynold Xin | Adrian Wang |
| [SPARK-8212](https://issues.apache.org/jira/browse/SPARK-8212) | math function: e |  Major | SQL | Reynold Xin | Adrian Wang |
| [SPARK-8211](https://issues.apache.org/jira/browse/SPARK-8211) | math function: radians |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8210](https://issues.apache.org/jira/browse/SPARK-8210) | math function: degrees |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8208](https://issues.apache.org/jira/browse/SPARK-8208) | math function: ceiling |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8205](https://issues.apache.org/jira/browse/SPARK-8205) | conditional function: nvl |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8201](https://issues.apache.org/jira/browse/SPARK-8201) | conditional function: if |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8148](https://issues.apache.org/jira/browse/SPARK-8148) | Do not use FloatType in partition column inference |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8146](https://issues.apache.org/jira/browse/SPARK-8146) | DataFrame Python API: Alias replace in DataFrameNaFunctions |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8118](https://issues.apache.org/jira/browse/SPARK-8118) | Turn off noisy log output produced by Parquet 1.7.0 |  Minor | SQL | Cheng Lian | Cheng Lian |
| [SPARK-8074](https://issues.apache.org/jira/browse/SPARK-8074) | Parquet should throw AnalysisException during setup for data type/name related failures |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8065](https://issues.apache.org/jira/browse/SPARK-8065) | Add support for connecting to Hive 0.14 metastore |  Major | SQL | Reynold Xin | Marcelo Vanzin |
| [SPARK-7996](https://issues.apache.org/jira/browse/SPARK-7996) | Deprecate the developer api SparkEnv.actorSystem |  Major | Spark Core | Shixiong Zhu | Ilya Ganelin |
| [SPARK-7993](https://issues.apache.org/jira/browse/SPARK-7993) | Improve DataFrame.show() output |  Blocker | SQL | Reynold Xin | Akhil Thatipamula |
| [SPARK-7991](https://issues.apache.org/jira/browse/SPARK-7991) | Python DataFrame: support passing a list into describe |  Major | SQL | Reynold Xin | Amey Chaugule |
| [SPARK-7990](https://issues.apache.org/jira/browse/SPARK-7990) | Add methods to facilitate equi-join on multiple join keys |  Major | SQL | Reynold Xin | Liang-Chi Hsieh |
| [SPARK-7986](https://issues.apache.org/jira/browse/SPARK-7986) | Refactor scalastyle-config.xml to divide it into 3 sections |  Major | Build | Reynold Xin | Reynold Xin |
| [SPARK-7980](https://issues.apache.org/jira/browse/SPARK-7980) | Support SQLContext.range(end) |  Major | SQL | Reynold Xin | Animesh Baranawal |
| [SPARK-7743](https://issues.apache.org/jira/browse/SPARK-7743) | Upgrade Parquet to 1.7 |  Major | SQL | Thomas Omans | Thomas Omans |
| [SPARK-7558](https://issues.apache.org/jira/browse/SPARK-7558) | Log test name when starting and finishing each test |  Major | Tests | Patrick Wendell | Andrew Or |
| [SPARK-7158](https://issues.apache.org/jira/browse/SPARK-7158) | collect and take return different results |  Blocker | SQL | Reynold Xin | Cheng Hao |
| [SPARK-7017](https://issues.apache.org/jira/browse/SPARK-7017) | Refactor dev/run-tests into Python |  Major | Build, Project Infra | Brennon York | Brennon York |
| [SPARK-6909](https://issues.apache.org/jira/browse/SPARK-6909) | Remove Hive Shim code |  Critical | SQL | Michael Armbrust | Cheolsoo Park |
| [SPARK-5451](https://issues.apache.org/jira/browse/SPARK-5451) | And predicates are not properly pushed down |  Critical | SQL | Cheng Lian | Thomas Omans |
| [SPARK-4258](https://issues.apache.org/jira/browse/SPARK-4258) | NPE with new Parquet Filters |  Critical | SQL | Michael Armbrust | Thomas Omans |
| [SPARK-3850](https://issues.apache.org/jira/browse/SPARK-3850) | Scala style: disallow trailing spaces |  Minor | Project Infra | Nicholas Chammas | Reynold Xin |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-8274](https://issues.apache.org/jira/browse/SPARK-8274) | Fix wrong URLs in MLlib Frequent Pattern Mining Documentation |  Trivial | Documentation, MLlib | Favio Vázquez | Favio Vázquez |
| [SPARK-8145](https://issues.apache.org/jira/browse/SPARK-8145) | Trigger a double click on the span to show full job description |  Major | Web UI | q79969786 | q79969786 |
| [SPARK-7666](https://issues.apache.org/jira/browse/SPARK-7666) | MLlib Python doc parity check |  Major | MLlib, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-7733](https://issues.apache.org/jira/browse/SPARK-7733) | Update build, code to use Java 7 for 1.5.0+ |  Minor | Build, Deploy, Spark Core | Sean Owen | Sean Owen |


