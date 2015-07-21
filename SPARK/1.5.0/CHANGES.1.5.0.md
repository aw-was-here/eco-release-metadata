
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

## Release 1.5.0 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-9201](https://issues.apache.org/jira/browse/SPARK-9201) | Integrate MLlib with SparkR using RFormula |  Major | ML, SparkR | Eric Liang | Eric Liang |
| [SPARK-9178](https://issues.apache.org/jira/browse/SPARK-9178) | UTF8String empty string method |  Trivial | SQL | Tarek Auel | Tarek Auel |
| [SPARK-9143](https://issues.apache.org/jira/browse/SPARK-9143) | Add planner rule for automatically inserting Unsafe \<-\> Safe row format converters |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-9115](https://issues.apache.org/jira/browse/SPARK-9115) | date/time function: dayInYear |  Major | SQL | Tarek Auel | Tarek Auel |
| [SPARK-9023](https://issues.apache.org/jira/browse/SPARK-9023) | UnsafeExchange |  Major | SQL | Reynold Xin | Josh Rosen |
| [SPARK-9022](https://issues.apache.org/jira/browse/SPARK-9022) | UnsafeProject |  Major | SQL | Reynold Xin | Davies Liu |
| [SPARK-8996](https://issues.apache.org/jira/browse/SPARK-8996) | Add Python API for Kolmogorov-Smirnov Test |  Major | MLlib, PySpark | Xiangrui Meng | Manoj Kumar |
| [SPARK-8932](https://issues.apache.org/jira/browse/SPARK-8932) | Support copy in UnsafeRow as long as ObjectPool is not used |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-8807](https://issues.apache.org/jira/browse/SPARK-8807) | Add between operator in SparkR |  Major | SparkR | Yu Ishikawa | Liang-Chi Hsieh |
| [SPARK-8782](https://issues.apache.org/jira/browse/SPARK-8782) | GenerateOrdering fails for NullType (i.e. ORDER BY NULL crashes) |  Blocker | SQL | Josh Rosen | Josh Rosen |
| [SPARK-8777](https://issues.apache.org/jira/browse/SPARK-8777) | Add random data generation test utilities to Spark SQL |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-8774](https://issues.apache.org/jira/browse/SPARK-8774) | Add R model formula with basic support as a transformer |  Critical | ML, SparkR | Xiangrui Meng | Eric Liang |
| [SPARK-8711](https://issues.apache.org/jira/browse/SPARK-8711) | Add additional methods to JavaModel wrappers in trees |  Major | ML, PySpark | Manoj Kumar | Manoj Kumar |
| [SPARK-8706](https://issues.apache.org/jira/browse/SPARK-8706) | Implement Pylint / Prospector checks for PySpark |  Major | Project Infra, PySpark | Josh Rosen | Manoj Kumar |
| [SPARK-8704](https://issues.apache.org/jira/browse/SPARK-8704) | Add missing methods in StandardScaler (ML and PySpark) |  Major | ML, PySpark | Manoj Kumar | Manoj Kumar |
| [SPARK-8703](https://issues.apache.org/jira/browse/SPARK-8703) | Add CountVectorizer as a ml transformer to convert document to words count vector |  Major | ML | yuhao yang | yuhao yang |
| [SPARK-8600](https://issues.apache.org/jira/browse/SPARK-8600) | Naive Bayes API for spark.ml Pipelines |  Major | ML | Xiangrui Meng | Yanbo Liang |
| [SPARK-8598](https://issues.apache.org/jira/browse/SPARK-8598) | Implementation of 1-sample, two-sided, Kolmogorov Smirnov Test for RDDs |  Minor | MLlib | Jose Cambronero | Jose Cambronero |
| [SPARK-8579](https://issues.apache.org/jira/browse/SPARK-8579) | Support arbitrary object in UnsafeRow |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-8551](https://issues.apache.org/jira/browse/SPARK-8551) | Python example code for elastic net |  Minor | PySpark | Shuo Xiang | Shuo Xiang |
| [SPARK-8539](https://issues.apache.org/jira/browse/SPARK-8539) | LinearRegressionSummary class for storing LR training stats |  Major | ML | Joseph K. Bradley | Feynman Liang |
| [SPARK-8538](https://issues.apache.org/jira/browse/SPARK-8538) | LinearRegressionResults class for storing LR results on data |  Major | ML | Joseph K. Bradley | Feynman Liang |
| [SPARK-8479](https://issues.apache.org/jira/browse/SPARK-8479) | Add numNonzeros and numActives to linalg.Matrices |  Minor | MLlib | Manoj Kumar | Manoj Kumar |
| [SPARK-8471](https://issues.apache.org/jira/browse/SPARK-8471) | Implement Discrete Cosine Transform feature transformer |  Minor | ML | Feynman Liang | Feynman Liang |
| [SPARK-8456](https://issues.apache.org/jira/browse/SPARK-8456) | Python API for N-Gram Feature Transformer |  Trivial | ML | Feynman Liang | Feynman Liang |
| [SPARK-8455](https://issues.apache.org/jira/browse/SPARK-8455) | Implement N-Gram Feature Transformer |  Minor | ML | Feynman Liang | Feynman Liang |
| [SPARK-8446](https://issues.apache.org/jira/browse/SPARK-8446) | Add helper functions for testing physical SparkPlan operators |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-8431](https://issues.apache.org/jira/browse/SPARK-8431) | Add in operator to DataFrame Column in SparkR |  Major | SparkR, SQL | Yu Ishikawa | Yu Ishikawa |
| [SPARK-8348](https://issues.apache.org/jira/browse/SPARK-8348) | Add in operator to DataFrame Column |  Major | SparkR, SQL | Xiangrui Meng | Yu Ishikawa |
| [SPARK-8344](https://issues.apache.org/jira/browse/SPARK-8344) | Add internal metrics / logging for DAGScheduler to detect long pauses / blocking |  Major | Scheduler, Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-8302](https://issues.apache.org/jira/browse/SPARK-8302) | Support heterogeneous cluster nodes on YARN |  Major | YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-8129](https://issues.apache.org/jira/browse/SPARK-8129) | Securely pass auth secrets to executors in standalone cluster mode |  Minor | Deploy, Spark Core | Kan Zhang | Kan Zhang |
| [SPARK-8124](https://issues.apache.org/jira/browse/SPARK-8124) | Created more examples on SparkR DataFrames |  Minor | Examples, SparkR | Daniel Emaasit | Daniel Emaasit |
| [SPARK-8019](https://issues.apache.org/jira/browse/SPARK-8019) | [SparkR] Create worker R processes with a command other then Rscript |  Major | SparkR | Michael Sannella | Michael Sannella |
| [SPARK-7988](https://issues.apache.org/jira/browse/SPARK-7988) | Mechanism to control receiver scheduling |  Critical | Streaming | Nishkam Ravi | Nishkam Ravi |
| [SPARK-7879](https://issues.apache.org/jira/browse/SPARK-7879) | KMeans API for spark.ml Pipelines |  Critical | ML | Joseph K. Bradley | Yu Ishikawa |
| [SPARK-7639](https://issues.apache.org/jira/browse/SPARK-7639) | Add Python API for Statistics.kernelDensity |  Major | MLlib, PySpark | Yanbo Liang | Manoj Kumar |
| [SPARK-7605](https://issues.apache.org/jira/browse/SPARK-7605) | Python API for ElementwiseProduct |  Major | MLlib, PySpark | Yanbo Liang | Manoj Kumar |
| [SPARK-7604](https://issues.apache.org/jira/browse/SPARK-7604) | Python API for PCA and PCAModel |  Major | MLlib, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-7547](https://issues.apache.org/jira/browse/SPARK-7547) | Example code for ElasticNet |  Major | ML | Joseph K. Bradley | DB Tsai |
| [SPARK-7514](https://issues.apache.org/jira/browse/SPARK-7514) | Add MinMaxScaler to feature transformation |  Major | MLlib | yuhao yang | yuhao yang |
| [SPARK-7440](https://issues.apache.org/jira/browse/SPARK-7440) | Remove physical Distinct operator in favor of Aggregate |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-7422](https://issues.apache.org/jira/browse/SPARK-7422) | Add argmax to Vector, SparseVector |  Minor | MLlib | Joseph K. Bradley | George Dittmar |
| [SPARK-7387](https://issues.apache.org/jira/browse/SPARK-7387) | CrossValidator example code in Python |  Minor | ML, PySpark | Xiangrui Meng | Ram Sriharsha |
| [SPARK-7199](https://issues.apache.org/jira/browse/SPARK-7199) | Add date and timestamp support to UnsafeRow |  Major | SQL | Josh Rosen | Liang-Chi Hsieh |
| [SPARK-7186](https://issues.apache.org/jira/browse/SPARK-7186) | Decouple internal Row from external Row |  Blocker | SQL | Reynold Xin | Davies Liu |
| [SPARK-7079](https://issues.apache.org/jira/browse/SPARK-7079) | Cache-aware external sort |  Major | Shuffle, Spark Core | Reynold Xin | Josh Rosen |
| [SPARK-7078](https://issues.apache.org/jira/browse/SPARK-7078) | Cache-aware binary processing in-memory sort |  Major | Shuffle | Reynold Xin | Josh Rosen |
| [SPARK-6964](https://issues.apache.org/jira/browse/SPARK-6964) | Support Cancellation in the Thrift Server |  Critical | SQL | Michael Armbrust | Dong Wang |
| [SPARK-6833](https://issues.apache.org/jira/browse/SPARK-6833) | Extend `addPackage` so that any given R file can be sourced in the worker before functions are run. |  Minor | SparkR | Shivaram Venkataraman | Sun Rui |
| [SPARK-6820](https://issues.apache.org/jira/browse/SPARK-6820) | Convert NAs to null type in SparkR DataFrames |  Critical | SparkR | Shivaram Venkataraman | Qian Huang |
| [SPARK-6487](https://issues.apache.org/jira/browse/SPARK-6487) | Add sequential pattern mining algorithm PrefixSpan to Spark MLlib |  Critical | MLlib | Zhang JiaJin | Zhang JiaJin |
| [SPARK-6390](https://issues.apache.org/jira/browse/SPARK-6390) | Add MatrixUDT in PySpark |  Major | MLlib, PySpark | Xiangrui Meng | Manoj Kumar |
| [SPARK-5962](https://issues.apache.org/jira/browse/SPARK-5962) | [MLLIB] Python support for Power Iteration Clustering |  Major | MLlib | Stephen Boesch | Yanbo Liang |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-9185](https://issues.apache.org/jira/browse/SPARK-9185) | improve code gen for mutable states to support complex initialization |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-9179](https://issues.apache.org/jira/browse/SPARK-9179) | Allow committers to specify the primary author of the PR to be merged |  Minor | Build | Cheng Lian | Cheng Lian |
| [SPARK-9174](https://issues.apache.org/jira/browse/SPARK-9174) | Add documentation for all public SQLConfs |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-9142](https://issues.apache.org/jira/browse/SPARK-9142) | Removing unnecessary self types in Catalyst |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-9130](https://issues.apache.org/jira/browse/SPARK-9130) | throw exception when check equality between external and internal row |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-9128](https://issues.apache.org/jira/browse/SPARK-9128) | Get outerclasses and objects at the same time in ClosureCleaner |  Major | Spark Core | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-9118](https://issues.apache.org/jira/browse/SPARK-9118) | Implement integer array parameters for ml.param as IntArrayParam |  Minor | ML | Alexander Ulanov | Rekha Joshi |
| [SPARK-9113](https://issues.apache.org/jira/browse/SPARK-9113) | enable analysis check code for self join |  Trivial | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-9100](https://issues.apache.org/jira/browse/SPARK-9100) | DataFrame reader/writer shortcut methods for ORC |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-9094](https://issues.apache.org/jira/browse/SPARK-9094) | Increase io.dropwizard.metrics dependency to 3.1.2 |  Minor | Spark Core | Carl Anders Düvel | Carl Anders Düvel |
| [SPARK-9085](https://issues.apache.org/jira/browse/SPARK-9085) | Remove LeafNode, UnaryNode, BinaryNode from TreeNode |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-9062](https://issues.apache.org/jira/browse/SPARK-9062) | Change output type of Tokenizer to Array(String, true) |  Minor | ML | yuhao yang | yuhao yang |
| [SPARK-9036](https://issues.apache.org/jira/browse/SPARK-9036) | SparkListenerExecutorMetricsUpdate messages not included in JsonProtocol |  Minor | Spark Core | Ryan Williams |  |
| [SPARK-9029](https://issues.apache.org/jira/browse/SPARK-9029) | shortcut CaseKeyWhen if key is null |  Minor | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-9015](https://issues.apache.org/jira/browse/SPARK-9015) | Maven cleanup / Clean Project Import in scala-ide |  Minor | Build | Jan Prach | Jan Prach |
| [SPARK-9010](https://issues.apache.org/jira/browse/SPARK-9010) | Improve the Spark Configuration document about `spark.kryoserializer.buffer` |  Trivial | Documentation | StanZhai | StanZhai |
| [SPARK-8997](https://issues.apache.org/jira/browse/SPARK-8997) | Improve LocalPrefixSpan performance |  Major | MLlib | Xiangrui Meng | Feynman Liang |
| [SPARK-8995](https://issues.apache.org/jira/browse/SPARK-8995) | Cast date strings with date, date and time and just time information to DateType and TimestampTzpe |  Major | SQL | Tarek Auel | Tarek Auel |
| [SPARK-8994](https://issues.apache.org/jira/browse/SPARK-8994) | Tiny cleanups to Params, Pipeline |  Trivial | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-8991](https://issues.apache.org/jira/browse/SPARK-8991) | Update SharedParamsCodeGen's Generated Documentation |  Trivial | ML | Feynman Liang | Vinod KC |
| [SPARK-8970](https://issues.apache.org/jira/browse/SPARK-8970) | remove unnecessary abstraction for ExtractValue |  Trivial | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-8963](https://issues.apache.org/jira/browse/SPARK-8963) | Improve Linear Regression tests to use Vectors |  Trivial | . | holdenk | holdenk |
| [SPARK-8948](https://issues.apache.org/jira/browse/SPARK-8948) | Remove ExtractValueWithOrdinal abstract class |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8933](https://issues.apache.org/jira/browse/SPARK-8933) | Provide a --force flag to build/mvn that always uses downloaded maven |  Major | Build | Patrick Wendell | Brennon York |
| [SPARK-8931](https://issues.apache.org/jira/browse/SPARK-8931) | Fallback to interpret mode if failed to compile in codegen |  Critical | SQL | Davies Liu | Davies Liu |
| [SPARK-8914](https://issues.apache.org/jira/browse/SPARK-8914) | Remove RDDApi |  Minor | SQL | Kousuke Saruta | Kousuke Saruta |
| [SPARK-8913](https://issues.apache.org/jira/browse/SPARK-8913) | Follow-up on SPARK-8700. Cleanup the test |  Major | ML | DB Tsai | holdenk |
| [SPARK-8899](https://issues.apache.org/jira/browse/SPARK-8899) | remove duplicated equals method for Row |  Trivial | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-8893](https://issues.apache.org/jira/browse/SPARK-8893) | Require positive partition counts in RDD.repartition |  Trivial | Spark Core | Daniel Darabos | Daniel Darabos |
| [SPARK-8883](https://issues.apache.org/jira/browse/SPARK-8883) | Remove the class OverrideFunctionRegistry |  Minor | SQL | Cheng Hao | Cheng Hao |
| [SPARK-8880](https://issues.apache.org/jira/browse/SPARK-8880) | Fix confusing Stage.attemptId member variable |  Minor | Scheduler | Kay Ousterhout | Kay Ousterhout |
| [SPARK-8879](https://issues.apache.org/jira/browse/SPARK-8879) | Remove EmptyRow class |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8877](https://issues.apache.org/jira/browse/SPARK-8877) | Public API for association rule generation |  Minor | MLlib | Feynman Liang | Feynman Liang |
| [SPARK-8876](https://issues.apache.org/jira/browse/SPARK-8876) | Remove InternalRow type alias in expressions package |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8875](https://issues.apache.org/jira/browse/SPARK-8875) | Shuffle code cleanup: remove BlockStoreShuffleFetcher class |  Minor | Shuffle | Kay Ousterhout | Kay Ousterhout |
| [SPARK-8872](https://issues.apache.org/jira/browse/SPARK-8872) | Improve FPGrowthSuite with equivalent R code |  Minor | MLlib | Xiangrui Meng | Kashif Rasul |
| [SPARK-8866](https://issues.apache.org/jira/browse/SPARK-8866) | Use 1 microsecond (us) precision for TimestampType |  Major | SQL | Reynold Xin | Yijie Shen |
| [SPARK-8863](https://issues.apache.org/jira/browse/SPARK-8863) | 'spark\_ec2.py' doesn't check '~/.aws/credentials' even if boto can support '~/.aws/credentials' |  Minor | EC2 | Juhong Park | Juhong Park |
| [SPARK-8837](https://issues.apache.org/jira/browse/SPARK-8837) | support using keyword in column name |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-8823](https://issues.apache.org/jira/browse/SPARK-8823) | Optimizations for sparse vector products in pyspark.mllib.linalg |  Minor | MLlib, PySpark | Manoj Kumar | Manoj Kumar |
| [SPARK-8820](https://issues.apache.org/jira/browse/SPARK-8820) | Add a configuration to set the checkpoint directory for convenience. |  Minor | Streaming | SaintBacchus | SaintBacchus |
| [SPARK-8809](https://issues.apache.org/jira/browse/SPARK-8809) | Remove ConvertNaNs analyzer rule |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8792](https://issues.apache.org/jira/browse/SPARK-8792) | Add Python API for PCA transformer |  Major | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-8788](https://issues.apache.org/jira/browse/SPARK-8788) | Java unit test for PCA transformer |  Minor | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-8787](https://issues.apache.org/jira/browse/SPARK-8787) | Change the parameter  order of @deprecated in package object sql |  Trivial | SQL | Vinod KC | Vinod KC |
| [SPARK-8785](https://issues.apache.org/jira/browse/SPARK-8785) | Improve Parquet schema merging |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-8776](https://issues.apache.org/jira/browse/SPARK-8776) | Increase the default MaxPermSize |  Major | Spark Core | Yin Huai | Yin Huai |
| [SPARK-8771](https://issues.apache.org/jira/browse/SPARK-8771) | Actor system deprecation tag uses deprecated deprecation tag |  Trivial | . | holdenk | holdenk |
| [SPARK-8759](https://issues.apache.org/jira/browse/SPARK-8759) | add default eval to binary and unary expression according to default behavior of nullable |  Minor | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-8749](https://issues.apache.org/jira/browse/SPARK-8749) | Remove HiveTypeCoercion trait |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8748](https://issues.apache.org/jira/browse/SPARK-8748) | Move castability test out from Cast case class into Cast object |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8740](https://issues.apache.org/jira/browse/SPARK-8740) | Support GitHub OAuth tokens in dev/merge\_spark\_pr.py |  Minor | Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-8727](https://issues.apache.org/jira/browse/SPARK-8727) | Add missing python api |  Major | SQL | Tarek Auel | Tarek Auel |
| [SPARK-8723](https://issues.apache.org/jira/browse/SPARK-8723) | improve code gen for divide and remainder |  Minor | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-8718](https://issues.apache.org/jira/browse/SPARK-8718) | Improve EdgePartition2D for non perfect square number of partitions |  Minor | GraphX | Andrew Ray | Andrew Ray |
| [SPARK-8713](https://issues.apache.org/jira/browse/SPARK-8713) | Support codegen for not thread-safe expressions |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-8708](https://issues.apache.org/jira/browse/SPARK-8708) | MatrixFactorizationModel.predictAll() populates single partition only |  Major | MLlib | Antony Mayi | Liang-Chi Hsieh |
| [SPARK-8701](https://issues.apache.org/jira/browse/SPARK-8701) | Add input metadata to InputInfo and display it in the batch page |  Minor | Streaming, Web UI | Shixiong Zhu | Shixiong Zhu |
| [SPARK-8692](https://issues.apache.org/jira/browse/SPARK-8692) | re-order the case statements that handling catalyst data types |  Minor | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-8690](https://issues.apache.org/jira/browse/SPARK-8690) | Add a setting to disable SparkSQL parquet schema merge by using datasource API |  Minor | SQL | thegiive | thegiive |
| [SPARK-8686](https://issues.apache.org/jira/browse/SPARK-8686) | DataFrame should support `where` with expression represented by String |  Minor | SQL | Kousuke Saruta | Kousuke Saruta |
| [SPARK-8661](https://issues.apache.org/jira/browse/SPARK-8661) | Update comments that contain R statements in ml.LinearRegressionSuite |  Major | ML | Xiangrui Meng | somil deshmukh |
| [SPARK-8660](https://issues.apache.org/jira/browse/SPARK-8660) | Update comments that contain R statements in ml.logisticRegressionSuite |  Trivial | ML | Xiangrui Meng | somil deshmukh |
| [SPARK-8647](https://issues.apache.org/jira/browse/SPARK-8647) | Potential issues with the constant hashCode |  Minor | MLlib | Alok Singh | Alok Singh |
| [SPARK-8635](https://issues.apache.org/jira/browse/SPARK-8635) | improve performance of CatalystTypeConverters |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-8630](https://issues.apache.org/jira/browse/SPARK-8630) | Prevent from checkpointing QueueInputDStream |  Major | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-8620](https://issues.apache.org/jira/browse/SPARK-8620) | cleanup CodeGenContext |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-8610](https://issues.apache.org/jira/browse/SPARK-8610) | Separate Row and InternalRow (part 2) |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-8596](https://issues.apache.org/jira/browse/SPARK-8596) | Install and configure RStudio server on Spark EC2 |  Major | EC2, SparkR | Shivaram Venkataraman | Vincent Warmerdam |
| [SPARK-8590](https://issues.apache.org/jira/browse/SPARK-8590) | add code gen for ExtractValue |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-8589](https://issues.apache.org/jira/browse/SPARK-8589) | cleanup DateTimeUtils |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-8576](https://issues.apache.org/jira/browse/SPARK-8576) | Add spark-ec2 options to assign launched instances into IAM roles and to set instance-initiated shutdown behavior |  Minor | EC2 | Nicholas Chammas | Nicholas Chammas |
| [SPARK-8575](https://issues.apache.org/jira/browse/SPARK-8575) | Deprecate callUDF in favor of udf |  Minor | SQL | Benjamin Fradet | Benjamin Fradet |
| [SPARK-8570](https://issues.apache.org/jira/browse/SPARK-8570) | Improve MLlib Local Matrix Documentation. |  Minor | Documentation, MLlib | Mike Dusenberry | Mike Dusenberry |
| [SPARK-8567](https://issues.apache.org/jira/browse/SPARK-8567) | Flaky test: o.a.s.sql.hive.HiveSparkSubmitSuite --jars |  Critical | SQL, Tests | Yin Huai | Yin Huai |
| [SPARK-8559](https://issues.apache.org/jira/browse/SPARK-8559) | Support association rule generation in FPGrowth |  Major | MLlib | Guangwen Liu | Feynman Liang |
| [SPARK-8528](https://issues.apache.org/jira/browse/SPARK-8528) | Add applicationId to SparkContext object in pyspark |  Minor | PySpark | Vladimir Vladimirov | Vladimir Vladimirov |
| [SPARK-8511](https://issues.apache.org/jira/browse/SPARK-8511) | Modify ML Python tests to remove saved models |  Major | PySpark | Yu Ishikawa | Yu Ishikawa |
| [SPARK-8482](https://issues.apache.org/jira/browse/SPARK-8482) | Add M4 instances support |  Trivial | EC2 | Pradeep Chhetri | Pradeep Chhetri |
| [SPARK-8481](https://issues.apache.org/jira/browse/SPARK-8481) | GaussianMixtureModel predict accepting single vector |  Minor | MLlib | Dariusz Kobylarz | Dariusz Kobylarz |
| [SPARK-8478](https://issues.apache.org/jira/browse/SPARK-8478) | Harmonize UDF-related code to use uniformly UDF instead of Udf |  Minor | SQL | Benjamin Fradet | Benjamin Fradet |
| [SPARK-8475](https://issues.apache.org/jira/browse/SPARK-8475) | SparkSubmit with Ivy jars is very slow to load with no internet access |  Minor | Spark Submit | Nathan McCarthy | Burak Yavuz |
| [SPARK-8429](https://issues.apache.org/jira/browse/SPARK-8429) | Add ability to set additional tags |  Minor | EC2 | Stefano Parmesan | Stefano Parmesan |
| [SPARK-8397](https://issues.apache.org/jira/browse/SPARK-8397) | Allow custom configuration for TestHive |  Minor | SQL | Punya Biswal | Punya Biswal |
| [SPARK-8395](https://issues.apache.org/jira/browse/SPARK-8395) | spark-submit documentation is incorrect |  Minor | Documentation | Dev Lakhani | Sean Owen |
| [SPARK-8392](https://issues.apache.org/jira/browse/SPARK-8392) | RDDOperationGraph: getting cached nodes is slow |  Minor | Spark Core | meiyoula | meiyoula |
| [SPARK-8390](https://issues.apache.org/jira/browse/SPARK-8390) | Update DirectKafkaWordCount examples to show how offset ranges can be used |  Major | Streaming | Tathagata Das | Cody Koeninger |
| [SPARK-8387](https://issues.apache.org/jira/browse/SPARK-8387) | [SPARK][Web-UI] Only show 4096 bytes content for executor log instead all |  Minor | Web UI, YARN | SuYan | SuYan |
| [SPARK-8381](https://issues.apache.org/jira/browse/SPARK-8381) | reuse typeConvert when convert Seq[Row] to catalyst type |  Major | SQL | Lianhui Wang | Lianhui Wang |
| [SPARK-8378](https://issues.apache.org/jira/browse/SPARK-8378) | Add Spark Flume Python API |  Major | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-8349](https://issues.apache.org/jira/browse/SPARK-8349) | Use expression constructors (rather than apply) in FunctionRegistry |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8346](https://issues.apache.org/jira/browse/SPARK-8346) | Use InternalRow instread of catalyst.InternalRow |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-8343](https://issues.apache.org/jira/browse/SPARK-8343) | Improve the Spark Streaming Guides |  Minor | Documentation, Streaming | Mike Dusenberry | Mike Dusenberry |
| [SPARK-8319](https://issues.apache.org/jira/browse/SPARK-8319) | Update logic related to key ordering in shuffle dependencies |  Major | Shuffle, SQL | Josh Rosen | Josh Rosen |
| [SPARK-8317](https://issues.apache.org/jira/browse/SPARK-8317) | Do not push sort into shuffle in Exchange operator |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-8316](https://issues.apache.org/jira/browse/SPARK-8316) | Upgrade Maven to 3.3.3 |  Minor | Build | Nicholas Chammas | Nicholas Chammas |
| [SPARK-8314](https://issues.apache.org/jira/browse/SPARK-8314) | improvement in performance of MLUtils.appendBias |  Major | MLlib | Roger Menezes | Roger Menezes |
| [SPARK-8307](https://issues.apache.org/jira/browse/SPARK-8307) | Improve timestamp from parquet |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-8301](https://issues.apache.org/jira/browse/SPARK-8301) | Improve UTF8String substring/startsWith/endsWith/contains performance |  Critical | SQL | Reynold Xin | Tarek Auel |
| [SPARK-8286](https://issues.apache.org/jira/browse/SPARK-8286) | Rewrite UTF8String in Java and move it into unsafe package. |  Minor | Spark Core, SQL | Reynold Xin | Reynold Xin |
| [SPARK-8282](https://issues.apache.org/jira/browse/SPARK-8282) | Make number of threads used in RBackend configurable |  Major | SparkR | Hossein Falaki | Hossein Falaki |
| [SPARK-8265](https://issues.apache.org/jira/browse/SPARK-8265) | Add LinearDataGenerator to pyspark.mllib.utils |  Minor | MLlib, PySpark | Manoj Kumar | Manoj Kumar |
| [SPARK-8189](https://issues.apache.org/jira/browse/SPARK-8189) | Use 100ns precision for TimestampType |  Major | SQL | Reynold Xin | Davies Liu |
| [SPARK-8164](https://issues.apache.org/jira/browse/SPARK-8164) | transformExpressions should support nested expression sequence |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-8158](https://issues.apache.org/jira/browse/SPARK-8158) | HiveShim improvement |  Major | SQL | Adrian Wang | Adrian Wang |
| [SPARK-8154](https://issues.apache.org/jira/browse/SPARK-8154) | Remove Term/Code type aliases in code generation |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8149](https://issues.apache.org/jira/browse/SPARK-8149) | Break ExpressionEvaluationSuite down to multiple files |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8141](https://issues.apache.org/jira/browse/SPARK-8141) | Precompute datatypes for partition columns and reuse it |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-8140](https://issues.apache.org/jira/browse/SPARK-8140) | Remove empty model check in StreamingLinearAlgorithm |  Trivial | MLlib, Streaming | Manoj Kumar | Manoj Kumar |
| [SPARK-8139](https://issues.apache.org/jira/browse/SPARK-8139) | Documents data sources and Parquet output committer related options |  Minor | SQL | Cheng Lian | Cheng Lian |
| [SPARK-8138](https://issues.apache.org/jira/browse/SPARK-8138) | Error message for discovered conflicting partition columns is not intuitive |  Minor | SQL | Cheng Lian | Cheng Lian |
| [SPARK-8135](https://issues.apache.org/jira/browse/SPARK-8135) | Don't load defaults when reconstituting Hadoop Configurations |  Major | Spark Core | Sandy Ryza | Sandy Ryza |
| [SPARK-8127](https://issues.apache.org/jira/browse/SPARK-8127) | KafkaRDD optimize count() take() isEmpty() |  Minor | Streaming | Cody Koeninger | Cody Koeninger |
| [SPARK-8126](https://issues.apache.org/jira/browse/SPARK-8126) | Use temp directory under build dir for unit tests |  Minor | Build | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-8117](https://issues.apache.org/jira/browse/SPARK-8117) | Push codegen into Expression |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-8106](https://issues.apache.org/jira/browse/SPARK-8106) | Set derby.system.durability=test in order to speed up Hive compatibility tests |  Major | Build, SQL, Tests | Josh Rosen | Josh Rosen |
| [SPARK-8101](https://issues.apache.org/jira/browse/SPARK-8101) | Upgrade netty to avoid memory leak accord to netty #3837 issues |  Minor | Spark Core | SuYan | Sean Owen |
| [SPARK-8084](https://issues.apache.org/jira/browse/SPARK-8084) | SparkR install script should fail with error if any packages required are not found |  Major | Build, SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-8077](https://issues.apache.org/jira/browse/SPARK-8077) | Optimisation of TreeNode for large number of children |  Minor | SQL | Mick Davies | Mick Davies |
| [SPARK-8070](https://issues.apache.org/jira/browse/SPARK-8070) | Improve createDataFrame in Python |  Major | PySpark | Davies Liu | Davies Liu |
| [SPARK-8068](https://issues.apache.org/jira/browse/SPARK-8068) | Add confusionMatrix method at class MulticlassMetrics in pyspark/mllib |  Minor | PySpark | Ai He | Yanbo Liang |
| [SPARK-8059](https://issues.apache.org/jira/browse/SPARK-8059) | Reduce latency between executor requests and RM heartbeat |  Minor | YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-8054](https://issues.apache.org/jira/browse/SPARK-8054) | Java compatibility fixes for MLlib 1.4 |  Major | MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-8018](https://issues.apache.org/jira/browse/SPARK-8018) | KMeans should accept initial cluster centers as param |  Major | MLlib | Joseph K. Bradley | Meethu Mathew |
| [SPARK-8001](https://issues.apache.org/jira/browse/SPARK-8001) | Make AsynchronousListenerBus.waitUntilEmpty throw TimeoutException if timeout |  Minor | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7983](https://issues.apache.org/jira/browse/SPARK-7983) | Add require for one-based indices in loadLibSVMFile |  Minor | MLlib | yuhao yang | yuhao yang |
| [SPARK-7969](https://issues.apache.org/jira/browse/SPARK-7969) | Drop method on Dataframes should handle Column |  Minor | PySpark, SQL | Olivier Girardot | Mike Dusenberry |
| [SPARK-7961](https://issues.apache.org/jira/browse/SPARK-7961) | Redesign SQLConf for better error message reporting |  Critical | SQL | Reynold Xin | Shixiong Zhu |
| [SPARK-7945](https://issues.apache.org/jira/browse/SPARK-7945) | Do trim to values of properties |  Minor | Spark Core | Tao Wang | Tao Wang |
| [SPARK-7916](https://issues.apache.org/jira/browse/SPARK-7916) | MLlib Python doc parity check for classification and regression. |  Major | Documentation, MLlib, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-7913](https://issues.apache.org/jira/browse/SPARK-7913) | Increase the maximum capacity of PartitionedPairBuffer, PartitionedSerializedPairBuffer and AppendOnlyMap |  Minor | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7910](https://issues.apache.org/jira/browse/SPARK-7910) | Expose partitioner information in JavaRDD |  Minor | Java API | holdenk | holdenk |
| [SPARK-7887](https://issues.apache.org/jira/browse/SPARK-7887) | Remove EvaluatedType from SQL Expression |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-7886](https://issues.apache.org/jira/browse/SPARK-7886) | Add built-in expressions to FunctionRegistry |  Blocker | SQL | Reynold Xin | Reynold Xin |
| [SPARK-7884](https://issues.apache.org/jira/browse/SPARK-7884) | Move block deserialization from BlockStoreShuffleFetcher to ShuffleReader |  Major | Spark Core | Matt Massie | Matt Massie |
| [SPARK-7878](https://issues.apache.org/jira/browse/SPARK-7878) | Rename Stage.jobId to Stage.earliestJobId |  Minor | Scheduler | Kay Ousterhout | Kay Ousterhout |
| [SPARK-7855](https://issues.apache.org/jira/browse/SPARK-7855) | Move hash-style shuffle code out of ExternalSorter and into own file |  Major | Shuffle | Josh Rosen | Josh Rosen |
| [SPARK-7845](https://issues.apache.org/jira/browse/SPARK-7845) | Bump "Hadoop 1" tests to version 1.2.1 |  Critical | Tests | Patrick Wendell | Cheng Lian |
| [SPARK-7826](https://issues.apache.org/jira/browse/SPARK-7826) | Suppress extra calling getCacheLocs. |  Major | Scheduler, Spark Core | Takuya Ueshin | Takuya Ueshin |
| [SPARK-7824](https://issues.apache.org/jira/browse/SPARK-7824) | Collapsing operator reordering and constant folding into a single batch to push down the single side. |  Major | SQL | Zhongshuai Pei | Zhongshuai Pei |
| [SPARK-7810](https://issues.apache.org/jira/browse/SPARK-7810) | rdd.py "\_load\_from\_socket" cannot load data from jvm socket if ipv6 is used |  Major | PySpark | Ai He | Ai He |
| [SPARK-7801](https://issues.apache.org/jira/browse/SPARK-7801) | Upgrade master versions to Spark 1.5.0 |  Major | Build | Patrick Wendell | Patrick Wendell |
| [SPARK-7795](https://issues.apache.org/jira/browse/SPARK-7795) | Speed up task serialization in standalone mode |  Major | Spark Core | Akshat Aranya | Akshat Aranya |
| [SPARK-7739](https://issues.apache.org/jira/browse/SPARK-7739) | Improve ChiSqSelector example code in the user guide |  Minor | Documentation, MLlib | Xiangrui Meng | Seth Hendrickson |
| [SPARK-7714](https://issues.apache.org/jira/browse/SPARK-7714) | SparkR tests should use more specific expectations than expect\_true |  Major | SparkR | Josh Rosen | Sun Rui |
| [SPARK-7705](https://issues.apache.org/jira/browse/SPARK-7705) | Cleanup of .sparkStaging directory fails if application is killed |  Minor | YARN | Wilfred Spiegelenburg | Weizhong |
| [SPARK-7699](https://issues.apache.org/jira/browse/SPARK-7699) | Dynamic allocation: initial executors may be canceled before first job |  Major | Spark Core | meiyoula | Saisai Shao |
| [SPARK-7691](https://issues.apache.org/jira/browse/SPARK-7691) | Use type-specific row accessor functions in CatalystTypeConverters' toScala functions |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-7663](https://issues.apache.org/jira/browse/SPARK-7663) | [MLLIB] feature.Word2Vec throws empty iterator error when the vocabulary size is zero |  Minor | ML, MLlib | Xusen Yin | Xusen Yin |
| [SPARK-7657](https://issues.apache.org/jira/browse/SPARK-7657) | [YARN] Show driver link in Spark UI |  Minor | YARN | Hari Shreedharan | Hari Shreedharan |
| [SPARK-7637](https://issues.apache.org/jira/browse/SPARK-7637) | StructType.merge slow with large nenormalised tables O(N2) |  Minor | SQL | Rowan Chattaway | Rowan Chattaway |
| [SPARK-7533](https://issues.apache.org/jira/browse/SPARK-7533) | Decrease spacing between AM-RM heartbeats. |  Major | YARN | Sandy Ryza | Zoltán Zvara |
| [SPARK-7524](https://issues.apache.org/jira/browse/SPARK-7524) | add configs for keytab and principal, move originals to internal |  Major | YARN | Tao Wang | Tao Wang |
| [SPARK-7444](https://issues.apache.org/jira/browse/SPARK-7444) | Eliminate noisy css warn/error logs for UISeleniumSuite |  Minor | Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7426](https://issues.apache.org/jira/browse/SPARK-7426) | spark.ml AttributeFactory.fromStructField should allow other NumericTypes |  Minor | ML | Joseph K. Bradley | Mike Dusenberry |
| [SPARK-7389](https://issues.apache.org/jira/browse/SPARK-7389) | Tachyon integration improvement |  Major | Block Manager | shimingfei | shimingfei |
| [SPARK-7357](https://issues.apache.org/jira/browse/SPARK-7357) | Improving HBaseTest example |  Minor | Examples | Jihong MA | Jihong MA |
| [SPARK-7289](https://issues.apache.org/jira/browse/SPARK-7289) | Combine Limit and Sort to avoid total ordering |  Major | SQL | Fei Wang | Wenchen Fan |
| [SPARK-7261](https://issues.apache.org/jira/browse/SPARK-7261) | Change default log level to WARN in the REPL |  Blocker | Spark Shell | Patrick Wendell | Shixiong Zhu |
| [SPARK-7235](https://issues.apache.org/jira/browse/SPARK-7235) | Refactor the GroupingSet implementation |  Major | SQL | Cheng Hao | Cheng Hao |
| [SPARK-7184](https://issues.apache.org/jira/browse/SPARK-7184) | Investigate turning codegen on by default |  Major | SQL | Reynold Xin | Davies Liu |
| [SPARK-7171](https://issues.apache.org/jira/browse/SPARK-7171) | Allow for more flexible use of metric sources |  Minor | Spark Core | Jacek Lewandowski | Jacek Lewandowski |
| [SPARK-7169](https://issues.apache.org/jira/browse/SPARK-7169) | Allow to specify metrics configuration more flexibly |  Minor | Spark Core | Jacek Lewandowski | Marcelo Vanzin |
| [SPARK-7161](https://issues.apache.org/jira/browse/SPARK-7161) | Provide REST api to download event logs from History Server |  Minor | Spark Core | Hari Shreedharan | Hari Shreedharan |
| [SPARK-7137](https://issues.apache.org/jira/browse/SPARK-7137) | Add checkInputColumn back to Params and print more info |  Trivial | ML | Joseph K. Bradley | Rekha Joshi |
| [SPARK-7131](https://issues.apache.org/jira/browse/SPARK-7131) | Move tree,forest implementation from spark.mllib to spark.ml |  Major | ML, MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-7127](https://issues.apache.org/jira/browse/SPARK-7127) | Broadcast spark.ml tree ensemble models for predict |  Minor | ML | Joseph K. Bradley | Bryan Cutler |
| [SPARK-7042](https://issues.apache.org/jira/browse/SPARK-7042) | Spark version of akka-actor\_2.11 is not compatible with the official akka-actor\_2.11 2.3.x |  Minor | Spark Core | Konstantin Shaposhnikov | Konstantin Shaposhnikov |
| [SPARK-7020](https://issues.apache.org/jira/browse/SPARK-7020) | Restrict module testing based on commit contents |  Critical | Build, Project Infra | Brennon York | Brennon York |
| [SPARK-6980](https://issues.apache.org/jira/browse/SPARK-6980) | Akka timeout exceptions indicate which conf controls them |  Minor | Spark Core | Imran Rashid | Bryan Cutler |
| [SPARK-6941](https://issues.apache.org/jira/browse/SPARK-6941) | Provide a better error message to explain that tables created from RDDs are immutable |  Blocker | SQL | Yin Huai | Yijie Shen |
| [SPARK-6797](https://issues.apache.org/jira/browse/SPARK-6797) | Add support for YARN cluster mode |  Critical | SparkR | Shivaram Venkataraman | Sun Rui |
| [SPARK-6782](https://issues.apache.org/jira/browse/SPARK-6782) | add sbt-revolver plugin to sbt build |  Minor | Build | Imran Rashid | Imran Rashid |
| [SPARK-6749](https://issues.apache.org/jira/browse/SPARK-6749) | Make metastore client robust to underlying socket connection loss |  Critical | SQL | Yin Huai | Eric Liang |
| [SPARK-6707](https://issues.apache.org/jira/browse/SPARK-6707) | Mesos Scheduler should allow the user to specify constraints based on slave attributes |  Major | Mesos, Scheduler | Ankur Chauhan | Ankur Chauhan |
| [SPARK-6583](https://issues.apache.org/jira/browse/SPARK-6583) | Support aggregated function in order by |  Major | SQL | Yadong Qi | Yadong Qi |
| [SPARK-6566](https://issues.apache.org/jira/browse/SPARK-6566) | Update Spark to use the latest version of Parquet libraries |  Major | SQL | Konstantin Shaposhnikov | Yash Datta |
| [SPARK-6470](https://issues.apache.org/jira/browse/SPARK-6470) | Allow Spark apps to put YARN node labels in their requests |  Major | YARN | Sandy Ryza | Sandy Ryza |
| [SPARK-6324](https://issues.apache.org/jira/browse/SPARK-6324) | Clean up usage code in command-line scripts |  Minor | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-6287](https://issues.apache.org/jira/browse/SPARK-6287) | Add support for dynamic allocation in the Mesos coarse-grained scheduler |  Major | Mesos | Iulian Dragos | Iulian Dragos |
| [SPARK-6284](https://issues.apache.org/jira/browse/SPARK-6284) | Support framework authentication and role in Mesos framework |  Major | Mesos | Timothy Chen | Timothy Chen |
| [SPARK-6259](https://issues.apache.org/jira/browse/SPARK-6259) | Python API for LDA |  Major | MLlib, PySpark | Joseph K. Bradley | Yu Ishikawa |
| [SPARK-6164](https://issues.apache.org/jira/browse/SPARK-6164) | CrossValidatorModel should keep stats from fitting |  Minor | ML | Joseph K. Bradley | Leah McGuire |
| [SPARK-6154](https://issues.apache.org/jira/browse/SPARK-6154) | Support Kafka, JDBC in Scala 2.11 |  Major | Build | Jianshi Huang | Iulian Dragos |
| [SPARK-5768](https://issues.apache.org/jira/browse/SPARK-5768) | Spark UI Shows incorrect memory under Yarn |  Trivial | Web UI | Al M | Rekha Joshi |
| [SPARK-5482](https://issues.apache.org/jira/browse/SPARK-5482) | Allow individual test suites in python/run-tests |  Minor | PySpark | Katsunori Kanda | Josh Rosen |
| [SPARK-5423](https://issues.apache.org/jira/browse/SPARK-5423) | ExternalAppendOnlyMap won't delete temp spilled file if some exception happens during using it |  Major | Shuffle | Shixiong Zhu | Shixiong Zhu |
| [SPARK-5161](https://issues.apache.org/jira/browse/SPARK-5161) | Parallelize Python test execution |  Major | Project Infra | Nicholas Chammas | Josh Rosen |
| [SPARK-5090](https://issues.apache.org/jira/browse/SPARK-5090) | The improvement of python converter for hbase |  Major | Examples | Gen TANG | Gen TANG |
| [SPARK-5016](https://issues.apache.org/jira/browse/SPARK-5016) | GaussianMixtureEM should distribute matrix inverse for large numFeatures, k |  Major | MLlib | Joseph K. Bradley | Feynman Liang |
| [SPARK-4485](https://issues.apache.org/jira/browse/SPARK-4485) | Add broadcast outer join to  optimize left outer join and right outer join |  Critical | SQL | XiaoJing wang | Kai Zeng |
| [SPARK-4362](https://issues.apache.org/jira/browse/SPARK-4362) | Make prediction probability available in NaiveBayesModel |  Minor | MLlib | Jatinpreet Singh | Sean Owen |
| [SPARK-3382](https://issues.apache.org/jira/browse/SPARK-3382) | GradientDescent convergence tolerance |  Minor | MLlib | Joseph K. Bradley | Kai Sasaki |
| [SPARK-3071](https://issues.apache.org/jira/browse/SPARK-3071) | Increase default driver memory |  Major | Spark Core | Xiangrui Meng | Ilya Ganelin |
| [SPARK-2774](https://issues.apache.org/jira/browse/SPARK-2774) | Set preferred locations for reduce tasks |  Major | Spark Core | Shivaram Venkataraman | Shivaram Venkataraman |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-9206](https://issues.apache.org/jira/browse/SPARK-9206) | ClassCastException using HiveContext with GoogleHadoopFileSystem as fs.defaultFS |  Major | SQL | Dennis Huo |  |
| [SPARK-9193](https://issues.apache.org/jira/browse/SPARK-9193) | Avoid assigning tasks to executors under killing |  Major | Scheduler | Jie Huang | Jie Huang |
| [SPARK-9187](https://issues.apache.org/jira/browse/SPARK-9187) | Timeline view may show negative value for running tasks |  Minor | Web UI | Carson Wang | Carson Wang |
| [SPARK-9175](https://issues.apache.org/jira/browse/SPARK-9175) | BLAS.gemm fails to update matrix C when alpha==0 and beta!=1 |  Critical | MLlib | Meihua Wu | Meihua Wu |
| [SPARK-9138](https://issues.apache.org/jira/browse/SPARK-9138) | Vectors.dense() in Python should accept numbers directly |  Critical | MLlib | Davies Liu | Davies Liu |
| [SPARK-9136](https://issues.apache.org/jira/browse/SPARK-9136) | fix several bugs in DateTimeUtils.stringToTimestamp |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-9126](https://issues.apache.org/jira/browse/SPARK-9126) | StopwatchSuite shouldn't use Thread.sleep() |  Major | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-9117](https://issues.apache.org/jira/browse/SPARK-9117) | fix BooleanSimplification in case-insensitive |  Minor | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-9114](https://issues.apache.org/jira/browse/SPARK-9114) | The returned value is not converted into internal type in Python UDF |  Blocker | PySpark, SQL | Davies Liu | Davies Liu |
| [SPARK-9109](https://issues.apache.org/jira/browse/SPARK-9109) | Unpersist a graph object does not work properly |  Minor | GraphX | Tien-Dung LE | Tien-Dung LE |
| [SPARK-9101](https://issues.apache.org/jira/browse/SPARK-9101) | Can't use null in selectExpr |  Major | PySpark | Mateusz Buśkiewicz | Mateusz Buśkiewicz |
| [SPARK-9090](https://issues.apache.org/jira/browse/SPARK-9090) | Fix definition of residual in LinearRegressionSummary |  Trivial | ML | Feynman Liang | Feynman Liang |
| [SPARK-9070](https://issues.apache.org/jira/browse/SPARK-9070) | JavaDataFrameSuite teardown NPEs if setup failed |  Trivial | SQL, Tests | Steve Loughran | Steve Loughran |
| [SPARK-9050](https://issues.apache.org/jira/browse/SPARK-9050) | Remove out-of-date code in Exchange that was obsoleted by SPARK-8317 |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-9045](https://issues.apache.org/jira/browse/SPARK-9045) | Fix Scala 2.11 build break due in UnsafeExternalRowSorter |  Blocker | SQL | Josh Rosen | Josh Rosen |
| [SPARK-9031](https://issues.apache.org/jira/browse/SPARK-9031) | Merge BlockObjectWriter and DiskBlockObject writer to remove abstract class |  Major | Shuffle, Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-9021](https://issues.apache.org/jira/browse/SPARK-9021) |  Change RDD.aggregate() to do reduce(mapPartitions()) instead of mapPartitions.fold() |  Major | PySpark | Nicholas Hwang | Nicholas Hwang |
| [SPARK-9012](https://issues.apache.org/jira/browse/SPARK-9012) | Accumulators in the task table should be escaped |  Major | Web UI | Shixiong Zhu | Shixiong Zhu |
| [SPARK-9006](https://issues.apache.org/jira/browse/SPARK-9006) | TimestampType may loss a microsecond after a round trip in Python DataFrame |  Blocker | PySpark, SQL | Davies Liu | Davies Liu |
| [SPARK-9005](https://issues.apache.org/jira/browse/SPARK-9005) | RegressionMetrics computing incorrect explainedVariance |  Major | MLlib | Feynman Liang | Feynman Liang |
| [SPARK-9001](https://issues.apache.org/jira/browse/SPARK-9001) | sbt doc fails due to javadoc errors |  Minor | Documentation | Joseph E. Gonzalez | Joseph E. Gonzalez |
| [SPARK-8990](https://issues.apache.org/jira/browse/SPARK-8990) | DataFrameReader.parquet() ignores user specified data source options |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-8974](https://issues.apache.org/jira/browse/SPARK-8974) | There is a bug in dynamicAllocation. When there is no running tasks, the number of executor a long time without running tasks, the number of executor does not reduce to the value of "spark.dynamicAllocation.minExecutors". |  Minor | Spark Core | KaiXinXIaoLei | KaiXinXIaoLei |
| [SPARK-8972](https://issues.apache.org/jira/browse/SPARK-8972) | Incorrect result for rollup |  Critical | SQL | Cheng Hao | Cheng Hao |
| [SPARK-8961](https://issues.apache.org/jira/browse/SPARK-8961) | Makes BaseWriterContainer.outputWriterForRow accepts InternalRow instead of Row |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-8959](https://issues.apache.org/jira/browse/SPARK-8959) | Parquet-thrift and libthrift introduced as test dependencies in PR #7231 break Maven builds |  Blocker | SQL | Cheng Lian | Cheng Lian |
| [SPARK-8958](https://issues.apache.org/jira/browse/SPARK-8958) | Dynamic allocation: change cached executor timeout to infinity |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-8954](https://issues.apache.org/jira/browse/SPARK-8954) | Building Docker Images Fails in 1.4 branch |  Major | Build | Pradeep Bashyal | Yong Tang |
| [SPARK-8953](https://issues.apache.org/jira/browse/SPARK-8953) | SPARK\_EXECUTOR\_CORES is not read in SparkSubmit |  Trivial | Spark Submit | meiyoula | meiyoula |
| [SPARK-8950](https://issues.apache.org/jira/browse/SPARK-8950) | Correct the calculation of SchedulerDelayTime in StagePage |  Minor | Web UI | Carson Wang | Carson Wang |
| [SPARK-8940](https://issues.apache.org/jira/browse/SPARK-8940) | Don't overwrite given schema if it is not null for createDataFrame in SparkR |  Major | SparkR | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-8937](https://issues.apache.org/jira/browse/SPARK-8937) | A setting `spark.unsafe.exceptionOnMemoryLeak ` is missing in ScalaTest config. |  Minor | Tests | Kousuke Saruta | Kousuke Saruta |
| [SPARK-8928](https://issues.apache.org/jira/browse/SPARK-8928) | CatalystSchemaConverter doesn't stick to behavior of old versions of Spark SQL when dealing with LISTs |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-8911](https://issues.apache.org/jira/browse/SPARK-8911) | Local mode endless heartbeat warnings |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-8910](https://issues.apache.org/jira/browse/SPARK-8910) | MiMa test is flaky because it starts a SQLContext |  Critical | Tests | Andrew Or | Andrew Or |
| [SPARK-8909](https://issues.apache.org/jira/browse/SPARK-8909) | Nice to have all the examples in scala, java,python, R to be same in sql-programming-guide |  Trivial | Documentation | Alok Singh | Alok Singh |
| [SPARK-8908](https://issues.apache.org/jira/browse/SPARK-8908) | Calling distinct() with parentheses throws error in Scala DataFrame |  Minor | SQL | Cheolsoo Park | Cheolsoo Park |
| [SPARK-8902](https://issues.apache.org/jira/browse/SPARK-8902) | Hostname missing in spark-ec2 error message |  Trivial | EC2 | Daniel Darabos | Daniel Darabos |
| [SPARK-8900](https://issues.apache.org/jira/browse/SPARK-8900) | sparkPackages flag name is wrong in the documentation |  Major | SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-8894](https://issues.apache.org/jira/browse/SPARK-8894) | Example code errors in SparkR documentation |  Major | Documentation, SparkR | Sun Rui | Sun Rui |
| [SPARK-8868](https://issues.apache.org/jira/browse/SPARK-8868) | SqlSerializer2 can go into infinite loop when row consists only of NullType columns |  Minor | SQL | Josh Rosen | Yin Huai |
| [SPARK-8865](https://issues.apache.org/jira/browse/SPARK-8865) | Fix bug:  init SimpleConsumerConfig with kafka params |  Minor | Streaming | guowei | guowei |
| [SPARK-8852](https://issues.apache.org/jira/browse/SPARK-8852) | spark-streaming-flume-assembly packages too many dependencies |  Major | Streaming | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-8851](https://issues.apache.org/jira/browse/SPARK-8851) | in Yarn client mode, Client.scala does not login even when credentials are specified |  Major | YARN | Hari Shreedharan | Hari Shreedharan |
| [SPARK-8845](https://issues.apache.org/jira/browse/SPARK-8845) | ML use of Breeze optimization: use adjustedValue not value? |  Minor | ML | Joseph K. Bradley | DB Tsai |
| [SPARK-8841](https://issues.apache.org/jira/browse/SPARK-8841) | Fix partition pruning percentage log message |  Trivial | SQL | Steve Lindemann | Steve Lindemann |
| [SPARK-8840](https://issues.apache.org/jira/browse/SPARK-8840) | Float type coercion with hiveContext |  Major | SparkR | Evgeny SInelnikov | Liang-Chi Hsieh |
| [SPARK-8839](https://issues.apache.org/jira/browse/SPARK-8839) | Thrift Sever will throw `java.util.NoSuchElementException: key not found` exception when  many clients connect it |  Major | SQL | SaintBacchus | SaintBacchus |
| [SPARK-8821](https://issues.apache.org/jira/browse/SPARK-8821) | The ec2 script doesn't run on python 3 with an utf8 env |  Major | EC2 | Simon Hafner | Simon Hafner |
| [SPARK-8819](https://issues.apache.org/jira/browse/SPARK-8819) | Spark doesn't compile with maven 3.3.x |  Blocker | Build | Andrew Or | Andrew Or |
| [SPARK-8804](https://issues.apache.org/jira/browse/SPARK-8804) |  order of UTF8String is wrong if there is any non-ascii character in it |  Blocker | SQL | Davies Liu | Davies Liu |
| [SPARK-8803](https://issues.apache.org/jira/browse/SPARK-8803) | Crosstab element's can't contain null's and back ticks |  Major | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-8794](https://issues.apache.org/jira/browse/SPARK-8794) | Column pruning isn't applied beneath sample |  Major | SQL | Eron Wright | Liang-Chi Hsieh |
| [SPARK-8783](https://issues.apache.org/jira/browse/SPARK-8783) | CTAS with WITH clause does not work |  Minor | SQL | Keuntae Park | Keuntae Park |
| [SPARK-8781](https://issues.apache.org/jira/browse/SPARK-8781) | Published POMs are no longer effective POMs |  Blocker | Build | Konstantin Shaposhnikov | Andrew Or |
| [SPARK-8763](https://issues.apache.org/jira/browse/SPARK-8763) | executing run-tests.py with Python 2.6 fails with absence of subprocess.check\_output function |  Major | PySpark | Tomohiko K. | Tomohiko K. |
| [SPARK-8754](https://issues.apache.org/jira/browse/SPARK-8754) | YarnClientSchedulerBackend doesn't stop gracefully in failure conditions |  Minor | YARN | Devaraj K | Devaraj K |
| [SPARK-8750](https://issues.apache.org/jira/browse/SPARK-8750) | Remove the closure in functions.callUdf |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8747](https://issues.apache.org/jira/browse/SPARK-8747) | fix EqualNullSafe for binary type |  Minor | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-8746](https://issues.apache.org/jira/browse/SPARK-8746) | Need to update download link for Hive 0.13.1 jars (HiveComparisonTest) |  Trivial | SQL | Christian Kadner | Christian Kadner |
| [SPARK-8739](https://issues.apache.org/jira/browse/SPARK-8739) | Illegal character `\r` can be contained in StagePage. |  Major | Web UI, Windows | Kousuke Saruta | Kousuke Saruta |
| [SPARK-8738](https://issues.apache.org/jira/browse/SPARK-8738) | Generate better error message in Python for AnalysisException |  Major | . | Davies Liu | Davies Liu |
| [SPARK-8736](https://issues.apache.org/jira/browse/SPARK-8736) | GBTRegressionModel thresholds prediction but should not |  Critical | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-8710](https://issues.apache.org/jira/browse/SPARK-8710) | ScalaReflection.mirror should be a def |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-8709](https://issues.apache.org/jira/browse/SPARK-8709) | Exclude hadoop-client's mockito-all dependency to fix test compilation break for Hadoop 2 |  Major | . | Josh Rosen | Josh Rosen |
| [SPARK-8705](https://issues.apache.org/jira/browse/SPARK-8705) | Javascript error in the web console when `totalExecutionTime` of a task is 0 |  Major | Web UI | Shixiong Zhu | Shixiong Zhu |
| [SPARK-8688](https://issues.apache.org/jira/browse/SPARK-8688) | Hadoop Configuration has to disable client cache when writing or reading delegation tokens. |  Major | YARN | SaintBacchus | SaintBacchus |
| [SPARK-8687](https://issues.apache.org/jira/browse/SPARK-8687) | Spark on yarn-client mode can't send `spark.yarn.credentials.file` to executor. |  Major | YARN | SaintBacchus | SaintBacchus |
| [SPARK-8683](https://issues.apache.org/jira/browse/SPARK-8683) | Depend on mockito-core instead of mockito-all |  Major | Build | Josh Rosen | Josh Rosen |
| [SPARK-8680](https://issues.apache.org/jira/browse/SPARK-8680) | PropagateTypes is very slow when there are lots of columns |  Major | SQL | Davies Liu | Liang-Chi Hsieh |
| [SPARK-8678](https://issues.apache.org/jira/browse/SPARK-8678) | Default values in Pipeline API should be immutable |  Major | ML, PySpark | Manoj Kumar | Manoj Kumar |
| [SPARK-8675](https://issues.apache.org/jira/browse/SPARK-8675) | Executors created by LocalBackend won't get the same classpath as other executor backends |  Major | Spark Core | Min Zhou | Min Zhou |
| [SPARK-8669](https://issues.apache.org/jira/browse/SPARK-8669) | Parquet 1.7 files that store binary enums crash when inferring schema |  Major | SQL | Steven She | Steven She |
| [SPARK-8662](https://issues.apache.org/jira/browse/SPARK-8662) | [SparkR] SparkSQL tests fail in R 3.2 |  Major | R | Chris Freeman | Chris Freeman |
| [SPARK-8657](https://issues.apache.org/jira/browse/SPARK-8657) | Fail to upload conf archive to viewfs |  Minor | YARN | Tao Li | Tao Li |
| [SPARK-8656](https://issues.apache.org/jira/browse/SPARK-8656) | Spark Standalone master json API's worker number is not match web UI number |  Minor | Web UI | thegiive | thegiive |
| [SPARK-8652](https://issues.apache.org/jira/browse/SPARK-8652) | PySpark tests sometimes forget to check return status of doctest.testmod(), masking failing tests |  Blocker | PySpark, Tests | Josh Rosen | Josh Rosen |
| [SPARK-8650](https://issues.apache.org/jira/browse/SPARK-8650) | Use the user-specified app name priority in SparkSQLCLIDriver or HiveThriftServer2 |  Major | SQL | Yadong Qi | Yadong Qi |
| [SPARK-8649](https://issues.apache.org/jira/browse/SPARK-8649) | Mapr repository is not defined properly |  Trivial | Build | Ashok Kumar | Ashok Kumar |
| [SPARK-8646](https://issues.apache.org/jira/browse/SPARK-8646) | PySpark does not run on YARN if master not provided in command line |  Major | PySpark, YARN | Juliet Hougland | Lianhui Wang |
| [SPARK-8637](https://issues.apache.org/jira/browse/SPARK-8637) | Packages argument is wrong in sparkR.init |  Blocker | SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-8636](https://issues.apache.org/jira/browse/SPARK-8636) | CaseKeyWhen has incorrect NULL handling |  Major | SQL | Santiago M. Mola | Vinod KC |
| [SPARK-8628](https://issues.apache.org/jira/browse/SPARK-8628) | Race condition in AbstractSparkSQLParser.parse |  Critical | SQL | Santiago M. Mola | Vinod KC |
| [SPARK-8623](https://issues.apache.org/jira/browse/SPARK-8623) | Hadoop RDDs fail to properly serialize configuration |  Major | Spark Core | Bolke de Bruin | Sandy Ryza |
| [SPARK-8619](https://issues.apache.org/jira/browse/SPARK-8619) | Can't find the keytab file when recovering the streaming application. |  Major | Streaming | SaintBacchus | SaintBacchus |
| [SPARK-8607](https://issues.apache.org/jira/browse/SPARK-8607) | SparkR - Third party jars are not being added to classpath in SparkRBackend |  Critical | R | Chris Freeman | Chris Freeman |
| [SPARK-8606](https://issues.apache.org/jira/browse/SPARK-8606) | Exceptions in RDD.getPreferredLocations() and getPartitions() should not be able to crash DAGScheduler |  Critical | Scheduler | Josh Rosen | Josh Rosen |
| [SPARK-8604](https://issues.apache.org/jira/browse/SPARK-8604) | Parquet data source doesn't write summary file while doing appending |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-8593](https://issues.apache.org/jira/browse/SPARK-8593) | History Server doesn't show complete application when one attempt inprogress |  Major | YARN | Thomas Graves | Rekha Joshi |
| [SPARK-8592](https://issues.apache.org/jira/browse/SPARK-8592) | CoarseGrainedExecutorBackend: Cannot register with driver =\> NPE |  Minor | Scheduler, Spark Core | Sjoerd Mulder | Xu Chen |
| [SPARK-8584](https://issues.apache.org/jira/browse/SPARK-8584) | Better exception message if invalid checkpoint dir is specified |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-8581](https://issues.apache.org/jira/browse/SPARK-8581) | Simplify and clean up the checkpointing code |  Minor | Spark Core | Andrew Or | Andrew Or |
| [SPARK-8578](https://issues.apache.org/jira/browse/SPARK-8578) | Should ignore user defined output committer when appending data |  Major | SQL | Cheng Lian | Yin Huai |
| [SPARK-8572](https://issues.apache.org/jira/browse/SPARK-8572) | Type coercion for ScalaUDFs |  Critical | SQL | Yin Huai | Cheolsoo Park |
| [SPARK-8563](https://issues.apache.org/jira/browse/SPARK-8563) | Bug that IndexedRowMatrix.computeSVD() yields the U with wrong numCols |  Major | MLlib | 19 Lee | 19 Lee |
| [SPARK-8560](https://issues.apache.org/jira/browse/SPARK-8560) | Executors page displays negative active tasks |  Major | Spark Core, Web UI | meiyoula | meiyoula |
| [SPARK-8558](https://issues.apache.org/jira/browse/SPARK-8558) | Script /dev/run-tests fails when \_JAVA\_OPTIONS env var set |  Minor | Build, Tests | Oleksiy Dyagilev | Oleksiy Dyagilev |
| [SPARK-8554](https://issues.apache.org/jira/browse/SPARK-8554) | Add the SparkR document files to `.rat-excludes` for `./dev/check-license` |  Major | SparkR, Tests | Yu Ishikawa | Yu Ishikawa |
| [SPARK-8535](https://issues.apache.org/jira/browse/SPARK-8535) | PySpark : Can't create DataFrame from Pandas dataframe with no explicit column name |  Major | PySpark | Christophe Bourguignat | Yuri Saito |
| [SPARK-8532](https://issues.apache.org/jira/browse/SPARK-8532) | In Python's DataFrameWriter, save/saveAsTable/json/parquet/jdbc always override mode |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-8525](https://issues.apache.org/jira/browse/SPARK-8525) | Bug in Streaming k-means documentation |  Minor | Documentation, MLlib | Oleksiy Dyagilev | Oleksiy Dyagilev |
| [SPARK-8506](https://issues.apache.org/jira/browse/SPARK-8506) | SparkR does not provide an easy way to depend on Spark Packages when performing init from inside of R |  Minor | SparkR | holdenk | holdenk |
| [SPARK-8492](https://issues.apache.org/jira/browse/SPARK-8492) | Support BinaryType in UnsafeRow |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-8489](https://issues.apache.org/jira/browse/SPARK-8489) | Add regression tests for SPARK-8470 |  Critical | SQL, Tests | Andrew Or | Andrew Or |
| [SPARK-8483](https://issues.apache.org/jira/browse/SPARK-8483) | Remove commons-lang3 depedency from flume-sink |  Major | Streaming | Hari Shreedharan | Hari Shreedharan |
| [SPARK-8476](https://issues.apache.org/jira/browse/SPARK-8476) | Setters inc/decDiskBytesSpilled in TaskMetrics should also be private. |  Minor | Spark Core | Takuya Ueshin | Takuya Ueshin |
| [SPARK-8468](https://issues.apache.org/jira/browse/SPARK-8468) | Cross-validation with RegressionEvaluator prefers higher RMSE |  Blocker | ML | Chelsea Zhang | Liang-Chi Hsieh |
| [SPARK-8463](https://issues.apache.org/jira/browse/SPARK-8463) | No suitable driver found for write.jdbc |  Major | SQL | Matthew Jones | Liang-Chi Hsieh |
| [SPARK-8461](https://issues.apache.org/jira/browse/SPARK-8461) | ClassNotFoundException when code generation is enabled |  Blocker | SQL | Cheng Lian | Davies Liu |
| [SPARK-8452](https://issues.apache.org/jira/browse/SPARK-8452) | expose jobGroup API in SparkR |  Major | SparkR | Hossein Falaki | Hossein Falaki |
| [SPARK-8451](https://issues.apache.org/jira/browse/SPARK-8451) | SparkSubmitSuite never checks for process exit code |  Major | Spark Submit, Tests | Andrew Or | Andrew Or |
| [SPARK-8450](https://issues.apache.org/jira/browse/SPARK-8450) | PySpark write.parquet raises Unsupported datatype DecimalType() |  Major | PySpark, SQL | Peter Hoffmann | Davies Liu |
| [SPARK-8443](https://issues.apache.org/jira/browse/SPARK-8443) | GenerateMutableProjection Exceeds JVM Code Size Limits |  Major | SQL | Sen Fang | Sen Fang |
| [SPARK-8437](https://issues.apache.org/jira/browse/SPARK-8437) | Using directory path without wildcard for filename slow for large number of files with wholeTextFiles and binaryFiles |  Minor | Input/Output | Ewan Leith | Sean Owen |
| [SPARK-8432](https://issues.apache.org/jira/browse/SPARK-8432) | Fix hashCode and equals() of BinaryType in Row |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-8420](https://issues.apache.org/jira/browse/SPARK-8420) | Inconsistent behavior with Dataframe Timestamp between 1.3.1 and 1.4.0 |  Blocker | SQL | Justin Yip | Michael Armbrust |
| [SPARK-8410](https://issues.apache.org/jira/browse/SPARK-8410) | Hive VersionsSuite RuntimeException |  Minor | SQL | Josiah Samuel Sathiadass | Burak Yavuz |
| [SPARK-8406](https://issues.apache.org/jira/browse/SPARK-8406) | Race condition when writing Parquet files |  Blocker | SQL | Cheng Lian | Cheng Lian |
| [SPARK-8401](https://issues.apache.org/jira/browse/SPARK-8401) | Build system scala version selection script fails on Mac OS X |  Minor | Build | Michael Allman | Michael Allman |
| [SPARK-8399](https://issues.apache.org/jira/browse/SPARK-8399) | Overlap between histograms and axis' name in Spark Streaming UI |  Minor | Streaming, Web UI | Benjamin Fradet | Benjamin Fradet |
| [SPARK-8379](https://issues.apache.org/jira/browse/SPARK-8379) | LeaseExpiredException when using dynamic partition with speculative execution |  Major | SQL | jeanlyn | jeanlyn |
| [SPARK-8376](https://issues.apache.org/jira/browse/SPARK-8376) | Commons Lang 3 is one of the required JAR of Spark Flume Sink but is missing in the docs |  Minor | Documentation | Shixiong Zhu | Shixiong Zhu |
| [SPARK-8373](https://issues.apache.org/jira/browse/SPARK-8373) | When an RDD has no partition, Python sum will throw "Can not reduce() empty RDD" |  Minor | PySpark | Shixiong Zhu | Shixiong Zhu |
| [SPARK-8372](https://issues.apache.org/jira/browse/SPARK-8372) | History server shows incorrect information for application not started |  Minor | Deploy, Web UI | Carson Wang | Marcelo Vanzin |
| [SPARK-8368](https://issues.apache.org/jira/browse/SPARK-8368) | ClassNotFoundException in closure for map |  Blocker | SQL | CHEN Zhiwei | Yin Huai |
| [SPARK-8367](https://issues.apache.org/jira/browse/SPARK-8367) | ReliableKafka will loss data when `spark.streaming.blockInterval` was 0 |  Major | Streaming | SaintBacchus | SaintBacchus |
| [SPARK-8358](https://issues.apache.org/jira/browse/SPARK-8358) | DataFrame explode with alias and \* fails |  Blocker | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-8357](https://issues.apache.org/jira/browse/SPARK-8357) | Memory leakage on unsafe aggregation path with empty input |  Critical | SQL | Navis | Navis |
| [SPARK-8354](https://issues.apache.org/jira/browse/SPARK-8354) | Fix off-by-factor-of-8 error when allocating scratch space in UnsafeFixedWidthAggregationMap |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-8350](https://issues.apache.org/jira/browse/SPARK-8350) | R unit tests output should be logged to "unit-tests.log" |  Minor | R | Andrew Or | Andrew Or |
| [SPARK-8342](https://issues.apache.org/jira/browse/SPARK-8342) | Decimal Math beyond ~2^112 is broken |  Major | SQL | Rene Treffer | Liang-Chi Hsieh |
| [SPARK-8339](https://issues.apache.org/jira/browse/SPARK-8339) | Itertools islice requires an integer for the stop argument. |  Minor | PySpark | Kevin Conor | Kevin Conor |
| [SPARK-8336](https://issues.apache.org/jira/browse/SPARK-8336) | Fix NullPointerException with functions.rand() |  Major | SQL | Ted Yu | Ted Yu |
| [SPARK-8329](https://issues.apache.org/jira/browse/SPARK-8329) | DataSource options parser no longer accepts '\_' |  Blocker | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-8322](https://issues.apache.org/jira/browse/SPARK-8322) | EC2 script not fully updated for 1.4.0 release |  Major | EC2 | Mark Smith | Mark Smith |
| [SPARK-8310](https://issues.apache.org/jira/browse/SPARK-8310) | Spark EC2 branch in 1.4 is wrong |  Critical | EC2 | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-8309](https://issues.apache.org/jira/browse/SPARK-8309) | OpenHashMap doesn't work with more than 12M items |  Critical | Spark Core | Vyacheslav Baranov | Vyacheslav Baranov |
| [SPARK-8308](https://issues.apache.org/jira/browse/SPARK-8308) | add missing save load for python doc example and tune down MatrixFactorization iterations |  Minor | MLlib | yuhao yang | yuhao yang |
| [SPARK-8306](https://issues.apache.org/jira/browse/SPARK-8306) | AddJar command needs to set the new class loader to the HiveConf inside executionHive.state. |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-8305](https://issues.apache.org/jira/browse/SPARK-8305) | Improve codegen |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-8290](https://issues.apache.org/jira/browse/SPARK-8290) | spark class command builder need read SPARK\_JAVA\_OPTS and SPARK\_DRIVER\_MEMORY properly |  Minor | Spark Core | Tao Wang | Tao Wang |
| [SPARK-8289](https://issues.apache.org/jira/browse/SPARK-8289) | Provide a specific stack size with all Java implementations to prevent stack overflows with certain tests |  Major | Tests | Adam Roberts | Adam Roberts |
| [SPARK-8285](https://issues.apache.org/jira/browse/SPARK-8285) | CombineSum should be calculated as unlimited decimal first |  Trivial | SQL | Navis | Navis |
| [SPARK-8202](https://issues.apache.org/jira/browse/SPARK-8202) | PySpark: infinite loop during external sort |  Critical | PySpark | Davies Liu | Davies Liu |
| [SPARK-8200](https://issues.apache.org/jira/browse/SPARK-8200) | Exception in StreamingLinearAlgorithm on Stream with Empty RDD. |  Minor | MLlib, Streaming | Paavo Parkkinen | Paavo Parkkinen |
| [SPARK-8162](https://issues.apache.org/jira/browse/SPARK-8162) | Run spark-shell cause NullPointerException |  Blocker | Build, Spark Shell | Weizhong | Andrew Or |
| [SPARK-8161](https://issues.apache.org/jira/browse/SPARK-8161) | externalBlockStoreInitialized is never set to be true |  Major | Block Manager | shimingfei | shimingfei |
| [SPARK-8156](https://issues.apache.org/jira/browse/SPARK-8156) | Respect current database when creating datasource tables |  Major | SQL | baishuo | baishuo |
| [SPARK-8151](https://issues.apache.org/jira/browse/SPARK-8151) | Pipeline components should correctly implement copy |  Blocker | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-8150](https://issues.apache.org/jira/browse/SPARK-8150) | IDFModel must implement copy |  Major | ML | Joseph K. Bradley | Xiangrui Meng |
| [SPARK-8136](https://issues.apache.org/jira/browse/SPARK-8136) | AM link download test can be flaky |  Major | Tests, YARN | Hari Shreedharan | Hari Shreedharan |
| [SPARK-8123](https://issues.apache.org/jira/browse/SPARK-8123) | Bucketizer must implement copy |  Major | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-8116](https://issues.apache.org/jira/browse/SPARK-8116) | sc.range() doesn't match python range() |  Minor | PySpark | Ted Blackman | Ted Blackman |
| [SPARK-8112](https://issues.apache.org/jira/browse/SPARK-8112) | Received block event count through the StreamingListener can be negative |  Minor | Streaming | Tathagata Das | Shixiong Zhu |
| [SPARK-8104](https://issues.apache.org/jira/browse/SPARK-8104) | move the auto alias logic into Analyzer |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-8103](https://issues.apache.org/jira/browse/SPARK-8103) | DAGScheduler should not launch multiple concurrent attempts for one stage on fetch failures |  Major | Scheduler, Spark Core | Imran Rashid | Imran Rashid |
| [SPARK-8099](https://issues.apache.org/jira/browse/SPARK-8099) | In yarn-cluster mode, "--executor-cores" can't be setted into SparkConf |  Major | YARN | meiyoula | meiyoula |
| [SPARK-8098](https://issues.apache.org/jira/browse/SPARK-8098) | Show correct length of bytes on log page |  Minor | Web UI | Carson Wang | Carson Wang |
| [SPARK-8095](https://issues.apache.org/jira/browse/SPARK-8095) | Spark package dependencies not resolved when package is in local-ivy-cache |  Major | Spark Submit | Eron Wright | Burak Yavuz |
| [SPARK-8093](https://issues.apache.org/jira/browse/SPARK-8093) | Spark 1.4 branch's new JSON schema inference has changed the behavior of handling inner empty JSON object. |  Critical | SQL | Harish Butani | Nathan Howell |
| [SPARK-8091](https://issues.apache.org/jira/browse/SPARK-8091) | SerializationDebugger does not handle classes with writeObject method |  Major | Spark Core | Tathagata Das | Tathagata Das |
| [SPARK-8090](https://issues.apache.org/jira/browse/SPARK-8090) | SerializationDebugger does not handle classes with writeReplace correctly |  Major | Spark Core | Tathagata Das | Tathagata Das |
| [SPARK-8088](https://issues.apache.org/jira/browse/SPARK-8088) | ExecutionAllocationManager spamming INFO logs about "Lowering target number of executors" |  Major | Spark Core | Ryan Williams | Ryan Williams |
| [SPARK-8087](https://issues.apache.org/jira/browse/SPARK-8087) | PipelineModel.copy didn't copy the stages |  Blocker | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-8085](https://issues.apache.org/jira/browse/SPARK-8085) | Pass in user-specified schema in read.df |  Major | SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-8083](https://issues.apache.org/jira/browse/SPARK-8083) | Fix return to drivers link in Mesos driver page |  Major | Mesos, Web UI | Timothy Chen | Timothy Chen |
| [SPARK-8080](https://issues.apache.org/jira/browse/SPARK-8080) | Custom Receiver.store with Iterator type do not give correct count at Spark UI |  Minor | Streaming, Web UI | Dibyendu Bhattacharya | Dibyendu Bhattacharya |
| [SPARK-8079](https://issues.apache.org/jira/browse/SPARK-8079) | NPE when HadoopFsRelation.prepareForWriteJob throws exception |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-8063](https://issues.apache.org/jira/browse/SPARK-8063) | Spark master URL conflict between MASTER env variable and --master command line option |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-8052](https://issues.apache.org/jira/browse/SPARK-8052) | Hive on Spark: CAST string AS BIGINT produces wrong value |  Major | . | Andrey Kurochkin | Liang-Chi Hsieh |
| [SPARK-8051](https://issues.apache.org/jira/browse/SPARK-8051) | StringIndexerModel (and other models) shouldn't complain if the input column is missing. |  Major | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-8049](https://issues.apache.org/jira/browse/SPARK-8049) | OneVsRest's output includes a temp column |  Major | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-8043](https://issues.apache.org/jira/browse/SPARK-8043) | update NaiveBayes and SVM examples in doc |  Minor | MLlib | yuhao yang | yuhao yang |
| [SPARK-8032](https://issues.apache.org/jira/browse/SPARK-8032) | Make NumPy version checking in mllib/\_\_init\_\_.py |  Major | MLlib, PySpark | Manoj Kumar | Manoj Kumar |
| [SPARK-8031](https://issues.apache.org/jira/browse/SPARK-8031) | Version number written to Hive metastore is "0.13.1aa" instead of "0.13.1a" |  Trivial | SQL | Cheng Lian | Cheng Lian |
| [SPARK-8010](https://issues.apache.org/jira/browse/SPARK-8010) | Implict promote Numeric type to String type in HiveTypeCoercion |  Major | SQL | Li Sheng | Li Sheng |
| [SPARK-8004](https://issues.apache.org/jira/browse/SPARK-8004) | Spark does not enclose column names when fetchting from jdbc sources |  Major | SQL | Rene Treffer | Liang-Chi Hsieh |
| [SPARK-7964](https://issues.apache.org/jira/browse/SPARK-7964) | The BooleanCasts rule in HiveTypeCoercion is useless |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-7956](https://issues.apache.org/jira/browse/SPARK-7956) | Use Janino to compile SQL expression |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-7955](https://issues.apache.org/jira/browse/SPARK-7955) | Dynamic allocation: longer timeout for executors with cached blocks |  Major | Spark Core | Hari Shreedharan | Hari Shreedharan |
| [SPARK-7944](https://issues.apache.org/jira/browse/SPARK-7944) | Spark-Shell 2.11 1.4.0-RC-03 does not add jars to class path |  Critical | Spark Shell | Alexander Nakos | Iulian Dragos |
| [SPARK-7939](https://issues.apache.org/jira/browse/SPARK-7939) | Make URL partition recognition return String by default for all partition column types and values |  Major | SQL | Jianshi Huang | Liang-Chi Hsieh |
| [SPARK-7915](https://issues.apache.org/jira/browse/SPARK-7915) | Support specifying the column list for target table in CTAS |  Major | SQL | Cheng Hao | Cheng Hao |
| [SPARK-7902](https://issues.apache.org/jira/browse/SPARK-7902) | SQL UDF doesn't support UDT in PySpark |  Critical | PySpark, SQL | Xiangrui Meng | Davies Liu |
| [SPARK-7863](https://issues.apache.org/jira/browse/SPARK-7863) | SimpleDateParam should not use SimpleDateFormat in multiple threads because SimpleDateFormat is not thread-safe |  Minor | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7862](https://issues.apache.org/jira/browse/SPARK-7862) | Query would hang when the using script has error output in SparkSQL |  Major | SQL | zhichao-li | Cheng Hao |
| [SPARK-7859](https://issues.apache.org/jira/browse/SPARK-7859) | Collect\_SET behaves different under different version of JDK |  Major | SQL | Cheng Hao | Cheng Hao |
| [SPARK-7846](https://issues.apache.org/jira/browse/SPARK-7846) | Use different way to pass spark.yarn.keytab and spark.yarn.principal in different modes |  Major | YARN | Tao Wang | Tao Wang |
| [SPARK-7835](https://issues.apache.org/jira/browse/SPARK-7835) | Refactor HeartbeatReceiverSuite for coverage and clean up |  Major | Spark Core, Tests | Andrew Or | Andrew Or |
| [SPARK-7820](https://issues.apache.org/jira/browse/SPARK-7820) | Java8-tests suite compile error under SBT |  Critical | Build, Streaming | Saisai Shao | Saisai Shao |
| [SPARK-7811](https://issues.apache.org/jira/browse/SPARK-7811) | Fix typo on slf4j configuration on metrics.properties.template |  Trivial | Spark Core | Judy Nash | Judy Nash |
| [SPARK-7792](https://issues.apache.org/jira/browse/SPARK-7792) | HiveContext registerTempTable not thread safe |  Major | SQL | Yana Kadiyska | Navis |
| [SPARK-7781](https://issues.apache.org/jira/browse/SPARK-7781) | GradientBoostedTrees is missing maxBins parameter in pyspark |  Major | MLlib | Don Drake | holdenk |
| [SPARK-7775](https://issues.apache.org/jira/browse/SPARK-7775) | YARN AM tried to sleep negative milliseconds |  Critical | YARN | Andrew Or | Andrew Or |
| [SPARK-7735](https://issues.apache.org/jira/browse/SPARK-7735) | Raise Exception on non-zero exit from pyspark pipe commands |  Minor | PySpark | Scott Taylor | Scott Taylor |
| [SPARK-7717](https://issues.apache.org/jira/browse/SPARK-7717) | Spark Standalone Web UI showing incorrect total memory, workers and cores |  Minor | Web UI | Swaranga Sarma | zhichao-li |
| [SPARK-7635](https://issues.apache.org/jira/browse/SPARK-7635) | SparkContextSchedulerCreationSuite tests may fail due to unrecognized UnsatisfiedLinkError message. |  Minor | Spark Core | Matthew Brandyberry | Tim Ellison |
| [SPARK-7527](https://issues.apache.org/jira/browse/SPARK-7527) | Wrong detection of REPL mode in ClosureCleaner |  Minor | Spark Core | Oleksii Kostyliev | Shixiong Zhu |
| [SPARK-7515](https://issues.apache.org/jira/browse/SPARK-7515) | Update documentation for PySpark on YARN with cluster mode |  Minor | Documentation | Kousuke Saruta | Kousuke Saruta |
| [SPARK-7419](https://issues.apache.org/jira/browse/SPARK-7419) | Flaky test: o.a.s.streaming.CheckpointSuite |  Critical | Tests | Andrew Or | Shixiong Zhu |
| [SPARK-7287](https://issues.apache.org/jira/browse/SPARK-7287) | Flaky test: o.a.s.deploy.SparkSubmitSuite --packages |  Critical | Tests | Andrew Or | Yin Huai |
| [SPARK-7180](https://issues.apache.org/jira/browse/SPARK-7180) | SerializationDebugger fails with ArrayOutOfBoundsException |  Major | Spark Core | Andrew Or | Tathagata Das |
| [SPARK-7153](https://issues.apache.org/jira/browse/SPARK-7153) | support Long type ordinal in GetItem |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-7114](https://issues.apache.org/jira/browse/SPARK-7114) | parse error for DataFrame.filter after aggregate |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-7088](https://issues.apache.org/jira/browse/SPARK-7088) | [REGRESSION] Spark 1.3.1 breaks analysis of third-party logical plans |  Critical | SQL | Santiago M. Mola | Santiago M. Mola |
| [SPARK-7067](https://issues.apache.org/jira/browse/SPARK-7067) | Can't resolve nested column in ORDER BY |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-7063](https://issues.apache.org/jira/browse/SPARK-7063) | Update lz4 for Java 7 to avoid: when lz4 compression is used, it causes core dump |  Minor | Spark Core | Jenny MA | Jenny MA |
| [SPARK-7050](https://issues.apache.org/jira/browse/SPARK-7050) | Fix Python Kafka test assembly jar not found issue under Maven build |  Minor | Build | Saisai Shao | Saisai Shao |
| [SPARK-7026](https://issues.apache.org/jira/browse/SPARK-7026) | LeftSemiJoin can not work when it  has both equal condition and not equal condition. |  Major | SQL | Zhongshuai Pei | Adrian Wang |
| [SPARK-6973](https://issues.apache.org/jira/browse/SPARK-6973) | The total stages on the allJobsPage is wrong |  Minor | Web UI | meiyoula | meiyoula |
| [SPARK-6912](https://issues.apache.org/jira/browse/SPARK-6912) | Throw an AnalysisException when unsupported Java Map\<K,V\> types used in Hive UDF |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-6785](https://issues.apache.org/jira/browse/SPARK-6785) | DateUtils can not handle date before 1970/01/01 correctly |  Major | SQL | Davies Liu | Christian Kadner |
| [SPARK-6747](https://issues.apache.org/jira/browse/SPARK-6747) | Throw an AnalysisException when unsupported Java list types used in Hive UDF |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-6444](https://issues.apache.org/jira/browse/SPARK-6444) | SQL functions (either built-in or UDF) should check for data types of their arguments |  Major | SQL | Cheng Lian | Wenchen Fan |
| [SPARK-6419](https://issues.apache.org/jira/browse/SPARK-6419) | GenerateOrdering does not support BinaryType and complex types. |  Major | SQL | Yin Huai | Davies Liu |
| [SPARK-6411](https://issues.apache.org/jira/browse/SPARK-6411) | PySpark DataFrames can't be created if any datetimes have timezones |  Major | PySpark, SQL | Harry Brundage | Davies Liu |
| [SPARK-6304](https://issues.apache.org/jira/browse/SPARK-6304) | Checkpointing doesn't retain driver port |  Major | Streaming | Marius Soutier | Saisai Shao |
| [SPARK-6289](https://issues.apache.org/jira/browse/SPARK-6289) | PySpark doesn't maintain SQL date Types |  Major | PySpark, SQL | Michael Nazario | Davies Liu |
| [SPARK-6246](https://issues.apache.org/jira/browse/SPARK-6246) | spark-ec2 can't handle clusters with \> 100 nodes |  Minor | EC2 | Nicholas Chammas | Alex Slusarenko |
| [SPARK-6123](https://issues.apache.org/jira/browse/SPARK-6123) | Parquet reader should use the schema of every file to create converter |  Critical | SQL | Yin Huai | Cheng Lian |
| [SPARK-5707](https://issues.apache.org/jira/browse/SPARK-5707) | Enabling spark.sql.codegen throws ClassNotFound exception |  Blocker | SQL | Yi Yao | Ram Sriharsha |
| [SPARK-5681](https://issues.apache.org/jira/browse/SPARK-5681) | Calling graceful stop() immediately after start() on StreamingContext should not get stuck indefinitely |  Major | Streaming | Liang-Chi Hsieh | Shixiong Zhu |
| [SPARK-5523](https://issues.apache.org/jira/browse/SPARK-5523) | TaskMetrics and TaskInfo have innumerable copies of the hostname string |  Major | Spark Core, Streaming | Tathagata Das | Saisai Shao |
| [SPARK-5479](https://issues.apache.org/jira/browse/SPARK-5479) | PySpark on yarn mode need to support non-local python files |  Major | PySpark, YARN | Lianhui Wang | Marcelo Vanzin |
| [SPARK-4072](https://issues.apache.org/jira/browse/SPARK-4072) | Storage UI does not reflect memory usage by streaming blocks |  Critical | Streaming, Web UI | Tathagata Das | Shixiong Zhu |
| [SPARK-2645](https://issues.apache.org/jira/browse/SPARK-2645) | Spark driver calls System.exit(50) after calling SparkContext.stop() the second time |  Major | Spark Core | Vlad Komarov | Rekha Joshi |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-9204](https://issues.apache.org/jira/browse/SPARK-9204) | Add default params test to linear regression |  Trivial | ML | holdenk |  |
| [SPARK-8810](https://issues.apache.org/jira/browse/SPARK-8810) | Gaps in SQL UDF test coverage |  Major | SQL | Spiro Michaylov | Spiro Michaylov |
| [SPARK-8765](https://issues.apache.org/jira/browse/SPARK-8765) | Flaky PySpark PowerIterationClustering test |  Critical | MLlib, PySpark | Joseph K. Bradley | Yanbo Liang |
| [SPARK-8715](https://issues.apache.org/jira/browse/SPARK-8715) | ArrayOutOfBoundsException for DataFrameStatSuite.crosstab |  Major | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-8634](https://issues.apache.org/jira/browse/SPARK-8634) | Fix flaky test StreamingListenerSuite "receiver info reporting" |  Critical | Streaming, Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-8541](https://issues.apache.org/jira/browse/SPARK-8541) | sumApprox and meanApprox doctests are incorrect |  Minor | PySpark | Scott Taylor | Scott Taylor |
| [SPARK-8508](https://issues.apache.org/jira/browse/SPARK-8508) | Test case "SQLQuerySuite.test script transform for stderr" generates super long output |  Minor | SQL, Tests | Cheng Lian | Cheng Lian |
| [SPARK-7989](https://issues.apache.org/jira/browse/SPARK-7989) | Fix flaky tests in ExternalShuffleServiceSuite and SparkListenerWithClusterSuite |  Major | Spark Core, Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7854](https://issues.apache.org/jira/browse/SPARK-7854) | refine Kryo configuration limits test |  Minor | Spark Core, Tests | Zhang, Liye | Zhang, Liye |
| [SPARK-5562](https://issues.apache.org/jira/browse/SPARK-5562) | LDA should handle empty documents |  Minor | MLlib | Joseph K. Bradley | Alok Singh |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-9186](https://issues.apache.org/jira/browse/SPARK-9186) | make deterministic describing the tree rather than the expression |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-9177](https://issues.apache.org/jira/browse/SPARK-9177) | Reuse Calendar instance in WeekOfYear |  Major | SQL | Reynold Xin | Tarek Auel |
| [SPARK-9173](https://issues.apache.org/jira/browse/SPARK-9173) | UnionPushDown should also support Intersect and Except in addition to Union |  Major | SQL | Reynold Xin | Yijie Shen |
| [SPARK-9172](https://issues.apache.org/jira/browse/SPARK-9172) | DecimalPrecision should also support Intersect and Except in addition to Union |  Major | SQL | Reynold Xin | Liang-Chi Hsieh |
| [SPARK-9171](https://issues.apache.org/jira/browse/SPARK-9171) | add and improve tests for nondeterministic expressions |  Trivial | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-9169](https://issues.apache.org/jira/browse/SPARK-9169) | Improve unit test coverage for null expressions |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-9168](https://issues.apache.org/jira/browse/SPARK-9168) | Add nanvl expression |  Major | SQL | Reynold Xin | Yijie Shen |
| [SPARK-9167](https://issues.apache.org/jira/browse/SPARK-9167) | use UTC Calendar in `stringToDate` |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-9166](https://issues.apache.org/jira/browse/SPARK-9166) | Hide JVM stack trace for IllegalArgumentException in Python |  Major | SQL | Reynold Xin | Liang-Chi Hsieh |
| [SPARK-9164](https://issues.apache.org/jira/browse/SPARK-9164) | Implement code generation for Hex and Unhex |  Major | SQL | Reynold Xin | Tarek Auel |
| [SPARK-9161](https://issues.apache.org/jira/browse/SPARK-9161) | Implement code generation for FormatNumber |  Major | SQL | Reynold Xin | Tarek Auel |
| [SPARK-9160](https://issues.apache.org/jira/browse/SPARK-9160) | Implement code generation for Encode and Decode |  Major | SQL | Reynold Xin | Tarek Auel |
| [SPARK-9159](https://issues.apache.org/jira/browse/SPARK-9159) | Implement code generation for Ascii, Base64, and UnBase64 |  Major | SQL | Reynold Xin | Tarek Auel |
| [SPARK-9157](https://issues.apache.org/jira/browse/SPARK-9157) | Implement code generation for Substring |  Critical | SQL | Reynold Xin |  |
| [SPARK-9156](https://issues.apache.org/jira/browse/SPARK-9156) | Implement code generation for StringSplit |  Major | SQL | Reynold Xin | Tarek Auel |
| [SPARK-9155](https://issues.apache.org/jira/browse/SPARK-9155) | Implement code generation for StringSpace |  Major | SQL | Reynold Xin | Tarek Auel |
| [SPARK-9154](https://issues.apache.org/jira/browse/SPARK-9154) | Implement code generation for StringFormat |  Major | SQL | Reynold Xin | Tarek Auel |
| [SPARK-9153](https://issues.apache.org/jira/browse/SPARK-9153) | Implement code generation for StringLPad and StringRPad |  Major | SQL | Reynold Xin | Tarek Auel |
| [SPARK-9151](https://issues.apache.org/jira/browse/SPARK-9151) | Implement code generation for Abs |  Major | SQL | Reynold Xin | Liang-Chi Hsieh |
| [SPARK-9150](https://issues.apache.org/jira/browse/SPARK-9150) | Create CodegenFallback and Unevaluable trait |  Critical | SQL | Reynold Xin | Reynold Xin |
| [SPARK-9147](https://issues.apache.org/jira/browse/SPARK-9147) | UnsafeRow should canonicalize NaN values |  Major | SQL | Reynold Xin | Josh Rosen |
| [SPARK-9146](https://issues.apache.org/jira/browse/SPARK-9146) | NaN should be greater than all other values |  Critical | SQL | Reynold Xin | Josh Rosen |
| [SPARK-9145](https://issues.apache.org/jira/browse/SPARK-9145) | Equality test on NaN = NaN should return true |  Critical | SQL | Reynold Xin | Josh Rosen |
| [SPARK-9132](https://issues.apache.org/jira/browse/SPARK-9132) | Implement code gen for Conv |  Major | SQL | Reynold Xin | Tarek Auel |
| [SPARK-9102](https://issues.apache.org/jira/browse/SPARK-9102) | Improve project collapse with nondeterministic expressions |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-9093](https://issues.apache.org/jira/browse/SPARK-9093) | Fix single-quotes strings in SparkR |  Major | SparkR | Yu Ishikawa | Yu Ishikawa |
| [SPARK-9086](https://issues.apache.org/jira/browse/SPARK-9086) | Remove BinaryNode from TreeNode |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-9081](https://issues.apache.org/jira/browse/SPARK-9081) | fillna/dropna should also fill/drop NaN values in addition to null values |  Blocker | SQL | Reynold Xin |  |
| [SPARK-9080](https://issues.apache.org/jira/browse/SPARK-9080) | IsNaN expression |  Critical | SQL | Reynold Xin | Yijie Shen |
| [SPARK-9079](https://issues.apache.org/jira/browse/SPARK-9079) | Design NaN semantics |  Major | SQL | Reynold Xin | Michael Armbrust |
| [SPARK-9071](https://issues.apache.org/jira/browse/SPARK-9071) | MonotonicallyIncreasingID and SparkPartitionID should be marked as nondeterministic |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-9068](https://issues.apache.org/jira/browse/SPARK-9068) | refactor the implicit type cast code |  Minor | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-9061](https://issues.apache.org/jira/browse/SPARK-9061) | Fix and re-enable ignored tests in ExpressionTypeCheckingSuite |  Blocker | SQL | Reynold Xin | Wenchen Fan |
| [SPARK-9060](https://issues.apache.org/jira/browse/SPARK-9060) | Revert SPARK-8359, SPARK-8800, and SPARK-8677 |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-9055](https://issues.apache.org/jira/browse/SPARK-9055) | WidenTypes should also support Intersect and Except in addition to Union |  Major | SQL | Reynold Xin | Yijie Shen |
| [SPARK-9052](https://issues.apache.org/jira/browse/SPARK-9052) | Fix comments after curly braces |  Major | SparkR | Shivaram Venkataraman | Yu Ishikawa |
| [SPARK-9049](https://issues.apache.org/jira/browse/SPARK-9049) | UnsafeExchange operator |  Major | SQL | Reynold Xin | Josh Rosen |
| [SPARK-9048](https://issues.apache.org/jira/browse/SPARK-9048) | UnsafeSqlSerializer |  Major | SQL | Reynold Xin | Josh Rosen |
| [SPARK-9027](https://issues.apache.org/jira/browse/SPARK-9027) | Generalize predicate pushdown into the metastore |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-9020](https://issues.apache.org/jira/browse/SPARK-9020) | Support mutable state in code gen expressions |  Major | SQL | Reynold Xin | Wenchen Fan |
| [SPARK-9018](https://issues.apache.org/jira/browse/SPARK-9018) | Implement a generic Stopwatch utility for ML algorithms |  Major | ML, MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-8993](https://issues.apache.org/jira/browse/SPARK-8993) | More comprehensive type checking in expressions |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8969](https://issues.apache.org/jira/browse/SPARK-8969) | move type-check from BinaryArithmetic and BinaryComparison to BinaryOperator |  Trivial | SQL | Wenchen Fan | Reynold Xin |
| [SPARK-8962](https://issues.apache.org/jira/browse/SPARK-8962) | Disallow Class.forName |  Major | Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-8945](https://issues.apache.org/jira/browse/SPARK-8945) | Add and Subtract expression should support IntervalType |  Major | SQL | Reynold Xin | Liang-Chi Hsieh |
| [SPARK-8944](https://issues.apache.org/jira/browse/SPARK-8944) | Support casting between IntervalType and StringType |  Major | SQL | Reynold Xin | Wenchen Fan |
| [SPARK-8942](https://issues.apache.org/jira/browse/SPARK-8942) | use double not decimal when cast double and float to timestamp |  Minor | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-8938](https://issues.apache.org/jira/browse/SPARK-8938) | Implement toString for Interval data type |  Major | SQL | Reynold Xin | Wenchen Fan |
| [SPARK-8934](https://issues.apache.org/jira/browse/SPARK-8934) | cast from double/float to timestamp should not go through decimal |  Major | SQL | Reynold Xin | Wenchen Fan |
| [SPARK-8926](https://issues.apache.org/jira/browse/SPARK-8926) | Good errors for invalid input to ExpectsInput expressions |  Critical | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-8923](https://issues.apache.org/jira/browse/SPARK-8923) | Add @since tags to mllib.fpm |  Minor | Documentation, MLlib | Xiangrui Meng | Rahul Palamuttam |
| [SPARK-8915](https://issues.apache.org/jira/browse/SPARK-8915) | Add @since tags to mllib.classification |  Minor | Documentation, MLlib | Xiangrui Meng | Patrick Baier |
| [SPARK-8907](https://issues.apache.org/jira/browse/SPARK-8907) | Speed up path construction in DynamicPartitionWriterContainer.outputWriterForRow |  Major | SQL | Reynold Xin | Cheng Lian |
| [SPARK-8888](https://issues.apache.org/jira/browse/SPARK-8888) | Replace the hash map in DynamicPartitionWriterContainer.outputWriterForRow with java.util.HashMap |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8886](https://issues.apache.org/jira/browse/SPARK-8886) | Python style usually don't add space before/after the = in named parameters |  Trivial | Documentation | Tijo Thomas | Tijo Thomas |
| [SPARK-8878](https://issues.apache.org/jira/browse/SPARK-8878) | Improve unit test coverage for bitwise expressions |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8864](https://issues.apache.org/jira/browse/SPARK-8864) | Date/time function and data type design |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8859](https://issues.apache.org/jira/browse/SPARK-8859) | Report accumulator updates via heartbeats (internal accumulator only) |  Major | SQL | Reynold Xin | Shixiong Zhu |
| [SPARK-8857](https://issues.apache.org/jira/browse/SPARK-8857) | Make sure accumulator updates don't involve thread-local lookups |  Major | SQL | Reynold Xin | Shixiong Zhu |
| [SPARK-8831](https://issues.apache.org/jira/browse/SPARK-8831) | Support AbstractDataType in TypeCollection |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8830](https://issues.apache.org/jira/browse/SPARK-8830) | levenshtein directly on top of UTF8String |  Major | SQL | Reynold Xin | Tarek Auel |
| [SPARK-8822](https://issues.apache.org/jira/browse/SPARK-8822) | clean up type checking in math.scala |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8808](https://issues.apache.org/jira/browse/SPARK-8808) | Fix assignments in SparkR |  Major | SparkR | Yu Ishikawa | Sun Rui |
| [SPARK-8801](https://issues.apache.org/jira/browse/SPARK-8801) | Support TypeCollection in ExpectsInputTypes |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8797](https://issues.apache.org/jira/browse/SPARK-8797) | Sorting float/double column containing NaNs can lead to "Comparison method violates its general contract!" errors |  Critical | SQL | Josh Rosen | Josh Rosen |
| [SPARK-8784](https://issues.apache.org/jira/browse/SPARK-8784) | Add python API for hex/unhex |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-8773](https://issues.apache.org/jira/browse/SPARK-8773) | Throw type mismatch in check analysis for expressions with expected input types defined |  Major | SQL | Reynold Xin | Michael Armbrust |
| [SPARK-8772](https://issues.apache.org/jira/browse/SPARK-8772) | Implement implicit type cast for expressions that define expected input types |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8770](https://issues.apache.org/jira/browse/SPARK-8770) | BinaryOperator expression |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8766](https://issues.apache.org/jira/browse/SPARK-8766) | DataFrame Python API should work with column which has non-ascii character in it |  Major | PySpark | Davies Liu | Davies Liu |
| [SPARK-8758](https://issues.apache.org/jira/browse/SPARK-8758) | Add Python user guide for PowerIterationClustering |  Major | MLlib, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-8753](https://issues.apache.org/jira/browse/SPARK-8753) | Create an IntervalType data type |  Major | SQL | Reynold Xin | Wenchen Fan |
| [SPARK-8752](https://issues.apache.org/jira/browse/SPARK-8752) | Add ExpectsInputTypes trait for defining expected input types. |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8743](https://issues.apache.org/jira/browse/SPARK-8743) | Deregister Codahale metrics for streaming when StreamingContext is closed |  Major | Streaming | Tathagata Das | Neelesh Srinivas Salian |
| [SPARK-8741](https://issues.apache.org/jira/browse/SPARK-8741) | Remove e and pi from DataFrame functions |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8721](https://issues.apache.org/jira/browse/SPARK-8721) | Rename ExpectsInputTypes =\> AutoCastInputTypes |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8702](https://issues.apache.org/jira/browse/SPARK-8702) | Avoid massive concating strings in Javascript |  Major | Web UI | Shixiong Zhu | Shixiong Zhu |
| [SPARK-8700](https://issues.apache.org/jira/browse/SPARK-8700) | Disable feature scaling in Logistic Regression |  Major | ML | DB Tsai | DB Tsai |
| [SPARK-8698](https://issues.apache.org/jira/browse/SPARK-8698) | partitionBy in Python DataFrame reader/writer interface should not default to empty tuple |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8693](https://issues.apache.org/jira/browse/SPARK-8693) | profiles and goals are not printed in a nice way |  Minor | Build, Project Infra | Yin Huai | Brennon York |
| [SPARK-8685](https://issues.apache.org/jira/browse/SPARK-8685) | dataframe left joins are not working as expected in pyspark |  Major | PySpark, SQL | axel dahl | Davies Liu |
| [SPARK-8681](https://issues.apache.org/jira/browse/SPARK-8681) | crosstab column names in wrong order |  Critical | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-8664](https://issues.apache.org/jira/browse/SPARK-8664) | Add PCA transformer |  Major | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-8638](https://issues.apache.org/jira/browse/SPARK-8638) | Window Function Performance Improvements |  Major | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-8621](https://issues.apache.org/jira/browse/SPARK-8621) | crosstab exception when one of the value is empty |  Critical | SQL | Reynold Xin | Wenchen Fan |
| [SPARK-8613](https://issues.apache.org/jira/browse/SPARK-8613) | Add a param for disabling of feature scaling, default to true |  Major | ML | holdenk | holdenk |
| [SPARK-8583](https://issues.apache.org/jira/browse/SPARK-8583) | Refactor python/run-tests to integrate with dev/run-test's module system |  Major | Build, Project Infra, PySpark | Josh Rosen | Josh Rosen |
| [SPARK-8568](https://issues.apache.org/jira/browse/SPARK-8568) | Prevent accidental use of "and" and "or" to build invalid expressions in Python |  Critical | SQL | Reynold Xin | Davies Liu |
| [SPARK-8549](https://issues.apache.org/jira/browse/SPARK-8549) | Fix the line length of SparkR |  Major | SparkR | Yu Ishikawa | Yu Ishikawa |
| [SPARK-8548](https://issues.apache.org/jira/browse/SPARK-8548) | Remove the trailing whitespaces from the SparkR files |  Major | SparkR | Yu Ishikawa | Yu Ishikawa |
| [SPARK-8537](https://issues.apache.org/jira/browse/SPARK-8537) | Add a validation rule about the curly braces in SparkR to `.lintr` |  Major | SparkR | Yu Ishikawa | Yu Ishikawa |
| [SPARK-8495](https://issues.apache.org/jira/browse/SPARK-8495) | Add a `.lintr` file to validate the SparkR files and the `lint-r` script |  Major | SparkR | Yu Ishikawa | Yu Ishikawa |
| [SPARK-8444](https://issues.apache.org/jira/browse/SPARK-8444) | Add Python example in streaming for queueStream usage |  Minor | Streaming | Bryan Cutler | Bryan Cutler |
| [SPARK-8434](https://issues.apache.org/jira/browse/SPARK-8434) | Add a "pretty" parameter to show |  Major | SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-8422](https://issues.apache.org/jira/browse/SPARK-8422) | Introduce a module abstraction inside of dev/run-tests |  Major | Build, Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-8407](https://issues.apache.org/jira/browse/SPARK-8407) | complex type constructors: struct and named\_struct |  Major | SQL | Yijie Shen | Yijie Shen |
| [SPARK-8389](https://issues.apache.org/jira/browse/SPARK-8389) | Expose KafkaRDDs offsetRange in Python |  Critical | Streaming | Tathagata Das | Saisai Shao |
| [SPARK-8371](https://issues.apache.org/jira/browse/SPARK-8371) | improve unit test for MaxOf and MinOf |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-8363](https://issues.apache.org/jira/browse/SPARK-8363) | Move sqrt into math |  Major | SQL | Reynold Xin | Liang-Chi Hsieh |
| [SPARK-8362](https://issues.apache.org/jira/browse/SPARK-8362) | Add unit tests for +, -, \*, /, % |  Blocker | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8356](https://issues.apache.org/jira/browse/SPARK-8356) | Reconcile callUDF and callUdf |  Critical | SQL | Michael Armbrust | Benjamin Fradet |
| [SPARK-8355](https://issues.apache.org/jira/browse/SPARK-8355) | Python DataFrameReader/Writer should mirror scala |  Critical | SQL | Michael Armbrust | Cheolsoo Park |
| [SPARK-8353](https://issues.apache.org/jira/browse/SPARK-8353) | Show anchor links when hovering over documentation headers |  Major | Documentation | Josh Rosen | Josh Rosen |
| [SPARK-8347](https://issues.apache.org/jira/browse/SPARK-8347) | Add unit tests for abs |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8330](https://issues.apache.org/jira/browse/SPARK-8330) | DAG visualization: trim whitespace from input |  Major | Web UI | Andrew Or | Andrew Or |
| [SPARK-8320](https://issues.apache.org/jira/browse/SPARK-8320) | Add example in streaming programming guide that shows union of multiple input streams |  Minor | Streaming | Tathagata Das | Neelesh Srinivas Salian |
| [SPARK-8300](https://issues.apache.org/jira/browse/SPARK-8300) | DataFrame hint for broadcast join |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8283](https://issues.apache.org/jira/browse/SPARK-8283) | udf\_struct test failure |  Blocker | SQL | Reynold Xin | Yijie Shen |
| [SPARK-8281](https://issues.apache.org/jira/browse/SPARK-8281) | udf\_asin and udf\_acos test failure |  Blocker | SQL | Reynold Xin | Yijie Shen |
| [SPARK-8280](https://issues.apache.org/jira/browse/SPARK-8280) | udf7 failed due to null vs nan semantics |  Blocker | SQL | Reynold Xin | Yijie Shen |
| [SPARK-8279](https://issues.apache.org/jira/browse/SPARK-8279) | udf\_round\_3 test fails |  Blocker | SQL | Reynold Xin | Yijie Shen |
| [SPARK-8270](https://issues.apache.org/jira/browse/SPARK-8270) | string function: levenshtein |  Major | SQL | Reynold Xin | Tarek Auel |
| [SPARK-8268](https://issues.apache.org/jira/browse/SPARK-8268) | string function: unbase64 |  Major | SQL | Reynold Xin | Cheng Hao |
| [SPARK-8267](https://issues.apache.org/jira/browse/SPARK-8267) | string function: trim |  Major | SQL | Reynold Xin | Cheng Hao |
| [SPARK-8262](https://issues.apache.org/jira/browse/SPARK-8262) | string function: split |  Major | SQL | Reynold Xin | Cheng Hao |
| [SPARK-8261](https://issues.apache.org/jira/browse/SPARK-8261) | string function: space |  Major | SQL | Reynold Xin | Cheng Hao |
| [SPARK-8260](https://issues.apache.org/jira/browse/SPARK-8260) | string function: rtrim |  Major | SQL | Reynold Xin | Cheng Hao |
| [SPARK-8259](https://issues.apache.org/jira/browse/SPARK-8259) | string function: rpad |  Major | SQL | Reynold Xin | Cheng Hao |
| [SPARK-8258](https://issues.apache.org/jira/browse/SPARK-8258) | string function: reverse |  Major | SQL | Reynold Xin | Cheng Hao |
| [SPARK-8257](https://issues.apache.org/jira/browse/SPARK-8257) | string function: repeat |  Major | SQL | Reynold Xin | Cheng Hao |
| [SPARK-8256](https://issues.apache.org/jira/browse/SPARK-8256) | string function: regexp\_replace |  Major | SQL | Reynold Xin | Cheng Hao |
| [SPARK-8255](https://issues.apache.org/jira/browse/SPARK-8255) | string function: regexp\_extract |  Major | SQL | Reynold Xin | Cheng Hao |
| [SPARK-8254](https://issues.apache.org/jira/browse/SPARK-8254) | string function: printf |  Major | SQL | Reynold Xin | Cheng Hao |
| [SPARK-8253](https://issues.apache.org/jira/browse/SPARK-8253) | string function: ltrim |  Major | SQL | Reynold Xin | Cheng Hao |
| [SPARK-8252](https://issues.apache.org/jira/browse/SPARK-8252) | string function: lpad |  Major | SQL | Reynold Xin | Cheng Hao |
| [SPARK-8251](https://issues.apache.org/jira/browse/SPARK-8251) | string function: alias upper / ucase |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8250](https://issues.apache.org/jira/browse/SPARK-8250) | string function: alias lower/lcase |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8249](https://issues.apache.org/jira/browse/SPARK-8249) | string function: locate |  Major | SQL | Reynold Xin | Cheng Hao |
| [SPARK-8248](https://issues.apache.org/jira/browse/SPARK-8248) | string function: length |  Major | SQL | Reynold Xin | Cheng Hao |
| [SPARK-8247](https://issues.apache.org/jira/browse/SPARK-8247) | string function: instr |  Major | SQL | Reynold Xin | Cheng Hao |
| [SPARK-8245](https://issues.apache.org/jira/browse/SPARK-8245) | string function: format\_number |  Major | SQL | Reynold Xin | Cheng Hao |
| [SPARK-8243](https://issues.apache.org/jira/browse/SPARK-8243) | string function: encode |  Major | SQL | Reynold Xin | Cheng Hao |
| [SPARK-8242](https://issues.apache.org/jira/browse/SPARK-8242) | string function: decode |  Major | SQL | Reynold Xin | Cheng Hao |
| [SPARK-8241](https://issues.apache.org/jira/browse/SPARK-8241) | string function: concat\_ws |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8240](https://issues.apache.org/jira/browse/SPARK-8240) | string function: concat |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8239](https://issues.apache.org/jira/browse/SPARK-8239) | string function: base64 |  Major | SQL | Reynold Xin | Cheng Hao |
| [SPARK-8238](https://issues.apache.org/jira/browse/SPARK-8238) | string function: ascii |  Major | SQL | Reynold Xin | Cheng Hao |
| [SPARK-8237](https://issues.apache.org/jira/browse/SPARK-8237) | misc function: sha2 |  Major | SQL | Reynold Xin | Liang-Chi Hsieh |
| [SPARK-8236](https://issues.apache.org/jira/browse/SPARK-8236) | misc function: crc32 |  Major | SQL | Reynold Xin | Tarek Auel |
| [SPARK-8235](https://issues.apache.org/jira/browse/SPARK-8235) | misc function: sha1 / sha |  Major | SQL | Reynold Xin | Tarek Auel |
| [SPARK-8234](https://issues.apache.org/jira/browse/SPARK-8234) | misc function: md5 |  Major | SQL | Reynold Xin | Qian, Shilei |
| [SPARK-8230](https://issues.apache.org/jira/browse/SPARK-8230) | complex function: size |  Major | SQL | Reynold Xin | Pedro Rodriguez |
| [SPARK-8229](https://issues.apache.org/jira/browse/SPARK-8229) | conditional function: isnotnull |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8228](https://issues.apache.org/jira/browse/SPARK-8228) | conditional function: isnull |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8227](https://issues.apache.org/jira/browse/SPARK-8227) | math function: unhex |  Major | SQL | Reynold Xin | zhichao-li |
| [SPARK-8226](https://issues.apache.org/jira/browse/SPARK-8226) | math function: shiftrightunsigned |  Major | SQL | Reynold Xin | zhichao-li |
| [SPARK-8225](https://issues.apache.org/jira/browse/SPARK-8225) | math function: alias sign / signum |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8224](https://issues.apache.org/jira/browse/SPARK-8224) | math function: shiftright |  Major | SQL | Reynold Xin | Tarek Auel |
| [SPARK-8223](https://issues.apache.org/jira/browse/SPARK-8223) | math function: shiftleft |  Major | SQL | Reynold Xin | Tarek Auel |
| [SPARK-8222](https://issues.apache.org/jira/browse/SPARK-8222) | math function: alias power / pow |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8221](https://issues.apache.org/jira/browse/SPARK-8221) | math function: pmod |  Major | SQL | Reynold Xin | zhichao-li |
| [SPARK-8220](https://issues.apache.org/jira/browse/SPARK-8220) | math function: positive |  Major | SQL | Reynold Xin | zhichao-li |
| [SPARK-8219](https://issues.apache.org/jira/browse/SPARK-8219) | math function: negative |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8218](https://issues.apache.org/jira/browse/SPARK-8218) | math function: log |  Major | SQL | Reynold Xin | Liang-Chi Hsieh |
| [SPARK-8217](https://issues.apache.org/jira/browse/SPARK-8217) | math function: log2 |  Major | SQL | Reynold Xin | Adrian Wang |
| [SPARK-8216](https://issues.apache.org/jira/browse/SPARK-8216) | math function: rename log -\> ln |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8215](https://issues.apache.org/jira/browse/SPARK-8215) | math function: pi |  Major | SQL | Reynold Xin | Adrian Wang |
| [SPARK-8214](https://issues.apache.org/jira/browse/SPARK-8214) | math function: hex |  Major | SQL | Reynold Xin | zhichao-li |
| [SPARK-8213](https://issues.apache.org/jira/browse/SPARK-8213) | math function: factorial |  Major | SQL | Reynold Xin | zhichao-li |
| [SPARK-8212](https://issues.apache.org/jira/browse/SPARK-8212) | math function: e |  Major | SQL | Reynold Xin | Adrian Wang |
| [SPARK-8211](https://issues.apache.org/jira/browse/SPARK-8211) | math function: radians |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8210](https://issues.apache.org/jira/browse/SPARK-8210) | math function: degrees |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8209](https://issues.apache.org/jira/browse/SPARK-8209) | math function: conv |  Major | SQL | Reynold Xin | zhichao-li |
| [SPARK-8208](https://issues.apache.org/jira/browse/SPARK-8208) | math function: ceiling |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8206](https://issues.apache.org/jira/browse/SPARK-8206) | math function: round |  Major | SQL | Reynold Xin | Yijie Shen |
| [SPARK-8205](https://issues.apache.org/jira/browse/SPARK-8205) | conditional function: nvl |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8204](https://issues.apache.org/jira/browse/SPARK-8204) | conditional function: least |  Major | SQL | Reynold Xin | Adrian Wang |
| [SPARK-8203](https://issues.apache.org/jira/browse/SPARK-8203) | conditional functions: greatest |  Major | SQL | Reynold Xin | Adrian Wang |
| [SPARK-8201](https://issues.apache.org/jira/browse/SPARK-8201) | conditional function: if |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8199](https://issues.apache.org/jira/browse/SPARK-8199) | date/time function: date\_format |  Major | SQL | Reynold Xin | Tarek Auel |
| [SPARK-8193](https://issues.apache.org/jira/browse/SPARK-8193) | date/time function: current\_timestamp |  Major | SQL | Reynold Xin | Adrian Wang |
| [SPARK-8192](https://issues.apache.org/jira/browse/SPARK-8192) | date/time function: current\_date |  Major | SQL | Reynold Xin | Adrian Wang |
| [SPARK-8184](https://issues.apache.org/jira/browse/SPARK-8184) | date/time function: weekofyear |  Major | SQL | Reynold Xin | Tarek Auel |
| [SPARK-8183](https://issues.apache.org/jira/browse/SPARK-8183) | date/time function: second |  Major | SQL | Reynold Xin | Tarek Auel |
| [SPARK-8182](https://issues.apache.org/jira/browse/SPARK-8182) | date/time function: minute |  Major | SQL | Reynold Xin | Tarek Auel |
| [SPARK-8181](https://issues.apache.org/jira/browse/SPARK-8181) | date/time function: hour |  Major | SQL | Reynold Xin | Tarek Auel |
| [SPARK-8180](https://issues.apache.org/jira/browse/SPARK-8180) | date/time function: day / dayofmonth |  Major | SQL | Reynold Xin | Tarek Auel |
| [SPARK-8179](https://issues.apache.org/jira/browse/SPARK-8179) | date/time function: month |  Major | SQL | Reynold Xin | Tarek Auel |
| [SPARK-8178](https://issues.apache.org/jira/browse/SPARK-8178) | date/time function: quarter |  Major | SQL | Reynold Xin | Tarek Auel |
| [SPARK-8177](https://issues.apache.org/jira/browse/SPARK-8177) | date/time function: year |  Major | SQL | Reynold Xin | Tarek Auel |
| [SPARK-8148](https://issues.apache.org/jira/browse/SPARK-8148) | Do not use FloatType in partition column inference |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8146](https://issues.apache.org/jira/browse/SPARK-8146) | DataFrame Python API: Alias replace in DataFrameNaFunctions |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8125](https://issues.apache.org/jira/browse/SPARK-8125) | Accelerate ParquetRelation2 metadata discovery |  Blocker | SQL | Cheng Lian | Cheng Lian |
| [SPARK-8075](https://issues.apache.org/jira/browse/SPARK-8075) | apply type checking interface to more expressions |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-8074](https://issues.apache.org/jira/browse/SPARK-8074) | Parquet should throw AnalysisException during setup for data type/name related failures |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8072](https://issues.apache.org/jira/browse/SPARK-8072) | Better AnalysisException for writing DataFrame with identically named columns |  Blocker | SQL | Reynold Xin | Animesh Baranawal |
| [SPARK-8067](https://issues.apache.org/jira/browse/SPARK-8067) | Add support for connecting to Hive 1.1 |  Major | SQL | Reynold Xin | Marcelo Vanzin |
| [SPARK-8066](https://issues.apache.org/jira/browse/SPARK-8066) | Add support for connecting to Hive 1.0 (0.14.1) |  Major | SQL | Reynold Xin | Marcelo Vanzin |
| [SPARK-8065](https://issues.apache.org/jira/browse/SPARK-8065) | Add support for connecting to Hive 0.14 metastore |  Major | SQL | Reynold Xin | Marcelo Vanzin |
| [SPARK-8056](https://issues.apache.org/jira/browse/SPARK-8056) | Design an easier way to construct schema for both Scala and Python |  Major | SQL | Reynold Xin | Ilya Ganelin |
| [SPARK-8013](https://issues.apache.org/jira/browse/SPARK-8013) | Get JDBC server working with Scala 2.11 |  Critical | SQL | Patrick Wendell | Iulian Dragos |
| [SPARK-7996](https://issues.apache.org/jira/browse/SPARK-7996) | Deprecate the developer api SparkEnv.actorSystem |  Major | Spark Core | Shixiong Zhu | Ilya Ganelin |
| [SPARK-7993](https://issues.apache.org/jira/browse/SPARK-7993) | Improve DataFrame.show() output |  Blocker | SQL | Reynold Xin | Akhil Thatipamula |
| [SPARK-7991](https://issues.apache.org/jira/browse/SPARK-7991) | Python DataFrame: support passing a list into describe |  Major | SQL | Reynold Xin | Amey Chaugule |
| [SPARK-7990](https://issues.apache.org/jira/browse/SPARK-7990) | Add methods to facilitate equi-join on multiple join keys |  Major | SQL | Reynold Xin | Liang-Chi Hsieh |
| [SPARK-7986](https://issues.apache.org/jira/browse/SPARK-7986) | Refactor scalastyle-config.xml to divide it into 3 sections |  Major | Build | Reynold Xin | Reynold Xin |
| [SPARK-7984](https://issues.apache.org/jira/browse/SPARK-7984) | do type coercion for key and when expressions in CaseKeyWhen |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-7980](https://issues.apache.org/jira/browse/SPARK-7980) | Support SQLContext.range(end) |  Major | SQL | Reynold Xin | Animesh Baranawal |
| [SPARK-7977](https://issues.apache.org/jira/browse/SPARK-7977) | Disallow println |  Major | Project Infra | Reynold Xin | Jon Alter |
| [SPARK-7952](https://issues.apache.org/jira/browse/SPARK-7952) | equality check between boolean type and numeric type is broken. |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-7785](https://issues.apache.org/jira/browse/SPARK-7785) | Add pretty printing to pyspark.mllib.linalg.Matrices |  Minor | MLlib, PySpark | Manoj Kumar | Manoj Kumar |
| [SPARK-7743](https://issues.apache.org/jira/browse/SPARK-7743) | Upgrade Parquet to 1.7 |  Major | SQL | Thomas Omans | Thomas Omans |
| [SPARK-7715](https://issues.apache.org/jira/browse/SPARK-7715) | Update MLlib Programming Guide for 1.4 |  Major | Documentation, ML, MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-7633](https://issues.apache.org/jira/browse/SPARK-7633) | Streaming Logistic Regression- Python bindings |  Major | MLlib, PySpark | Yanbo Liang | Manoj Kumar |
| [SPARK-7562](https://issues.apache.org/jira/browse/SPARK-7562) | Improve error reporting for expression data type mismatch |  Major | SQL | Reynold Xin | Wenchen Fan |
| [SPARK-7558](https://issues.apache.org/jira/browse/SPARK-7558) | Log test name when starting and finishing each test |  Major | Tests | Patrick Wendell | Andrew Or |
| [SPARK-7401](https://issues.apache.org/jira/browse/SPARK-7401) | Dot product and squared\_distances should be vectorized in Vectors |  Major | MLlib, PySpark | Manoj Kumar | Manoj Kumar |
| [SPARK-7158](https://issues.apache.org/jira/browse/SPARK-7158) | collect and take return different results |  Blocker | SQL | Reynold Xin | Cheng Hao |
| [SPARK-7104](https://issues.apache.org/jira/browse/SPARK-7104) | Support model save/load in Python's Word2Vec |  Minor | MLlib, PySpark | Joseph K. Bradley | Yu Ishikawa |
| [SPARK-7017](https://issues.apache.org/jira/browse/SPARK-7017) | Refactor dev/run-tests into Python |  Major | Build, Project Infra | Brennon York | Brennon York |
| [SPARK-6910](https://issues.apache.org/jira/browse/SPARK-6910) | Support for pushing predicates down to metastore for partition pruning |  Critical | SQL | Michael Armbrust | Cheolsoo Park |
| [SPARK-6909](https://issues.apache.org/jira/browse/SPARK-6909) | Remove Hive Shim code |  Critical | SQL | Michael Armbrust | Cheolsoo Park |
| [SPARK-6777](https://issues.apache.org/jira/browse/SPARK-6777) | Implement backwards-compatibility rules in Parquet schema converters |  Critical | SQL | Cheng Lian | Cheng Lian |
| [SPARK-6602](https://issues.apache.org/jira/browse/SPARK-6602) | Replace direct use of Akka with Spark RPC interface |  Critical | Spark Core | Reynold Xin | Shixiong Zhu |
| [SPARK-6266](https://issues.apache.org/jira/browse/SPARK-6266) | PySpark SparseVector missing doc for size, indices, values |  Minor | Documentation, MLlib, PySpark | Joseph K. Bradley | Kai Sasaki |
| [SPARK-6263](https://issues.apache.org/jira/browse/SPARK-6263) | Python MLlib API missing items: Utils |  Major | MLlib, PySpark | Joseph K. Bradley | Kai Sasaki |
| [SPARK-6261](https://issues.apache.org/jira/browse/SPARK-6261) | Python MLlib API missing items: Feature |  Major | MLlib, PySpark | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-5989](https://issues.apache.org/jira/browse/SPARK-5989) | Model import/export for LDAModel |  Major | MLlib | Joseph K. Bradley | Manoj Kumar |
| [SPARK-5451](https://issues.apache.org/jira/browse/SPARK-5451) | And predicates are not properly pushed down |  Critical | SQL | Cheng Lian | Thomas Omans |
| [SPARK-5295](https://issues.apache.org/jira/browse/SPARK-5295) | Stabilize data types |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-5288](https://issues.apache.org/jira/browse/SPARK-5288) | Stabilize Spark SQL data type API followup |  Major | SQL | Yin Huai | Reynold Xin |
| [SPARK-4867](https://issues.apache.org/jira/browse/SPARK-4867) | UDF clean up |  Blocker | SQL | Michael Armbrust | Reynold Xin |
| [SPARK-4598](https://issues.apache.org/jira/browse/SPARK-4598) | Paginate stage page to avoid OOM with \> 100,000 tasks |  Major | Web UI | meiyoula | Shixiong Zhu |
| [SPARK-4258](https://issues.apache.org/jira/browse/SPARK-4258) | NPE with new Parquet Filters |  Critical | SQL | Michael Armbrust | Thomas Omans |
| [SPARK-4127](https://issues.apache.org/jira/browse/SPARK-4127) | Streaming Linear Regression- Python bindings |  Major | MLlib, PySpark | Anant Daksh Asthana | Manoj Kumar |
| [SPARK-4118](https://issues.apache.org/jira/browse/SPARK-4118) | Create python bindings for Streaming KMeans |  Major | MLlib, PySpark, Streaming | Anant Daksh Asthana | Manoj Kumar |
| [SPARK-3850](https://issues.apache.org/jira/browse/SPARK-3850) | Scala style: disallow trailing spaces |  Minor | Project Infra | Nicholas Chammas | Reynold Xin |
| [SPARK-2017](https://issues.apache.org/jira/browse/SPARK-2017) | web ui stage page becomes unresponsive when the number of tasks is large |  Major | Web UI | Reynold Xin | Andrew Or |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-9198](https://issues.apache.org/jira/browse/SPARK-9198) | Typo in PySpark SparseVector docs (bad index) |  Minor | Documentation, MLlib, PySpark | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-8927](https://issues.apache.org/jira/browse/SPARK-8927) | Doc format wrong for some config descriptions |  Trivial | Documentation | Jon Alter | Jon Alter |
| [SPARK-8769](https://issues.apache.org/jira/browse/SPARK-8769) | toLocalIterator should mention it results in many jobs |  Trivial | Documentation | holdenk | holdenk |
| [SPARK-8639](https://issues.apache.org/jira/browse/SPARK-8639) | Instructions for executing jekyll in docs/README.md could be slightly more clear, typo in docs/api.md |  Trivial | Documentation | Rosstin Murphy | Rosstin Murphy |
| [SPARK-8615](https://issues.apache.org/jira/browse/SPARK-8615) | sql programming guide recommends deprecated code |  Minor | Documentation | Gergely Svigruha | Tijo Thomas |
| [SPARK-8462](https://issues.apache.org/jira/browse/SPARK-8462) | Documentation fixes for Spark SQL |  Minor | Documentation | Lars Francke | Lars Francke |
| [SPARK-8457](https://issues.apache.org/jira/browse/SPARK-8457) | Documentation for N-Gram feature transformer |  Trivial | ML | Feynman Liang | Feynman Liang |
| [SPARK-8278](https://issues.apache.org/jira/browse/SPARK-8278) | Remove deprecated JsonRDD functionality in Spark SQL |  Critical | SQL | Nathan Howell | Reynold Xin |
| [SPARK-8274](https://issues.apache.org/jira/browse/SPARK-8274) | Fix wrong URLs in MLlib Frequent Pattern Mining Documentation |  Trivial | Documentation, MLlib | Favio Vázquez | Favio Vázquez |
| [SPARK-8145](https://issues.apache.org/jira/browse/SPARK-8145) | Trigger a double click on the span to show full job description |  Major | Web UI | q79969786 | q79969786 |
| [SPARK-7666](https://issues.apache.org/jira/browse/SPARK-7666) | MLlib Python doc parity check |  Major | MLlib, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-7555](https://issues.apache.org/jira/browse/SPARK-7555) | User guide update for ElasticNet |  Major | ML | Joseph K. Bradley | Shuo Xiang |
| [SPARK-7265](https://issues.apache.org/jira/browse/SPARK-7265) | Improving documentation for Spark SQL Hive support |  Trivial | Documentation | Jihong MA | Jihong MA |
| [SPARK-3629](https://issues.apache.org/jira/browse/SPARK-3629) | Improvements to YARN doc |  Minor | Documentation, YARN | Matei Zaharia | Neelesh Srinivas Salian |
| [SPARK-3258](https://issues.apache.org/jira/browse/SPARK-3258) | Python API for streaming MLlib algorithms |  Major | MLlib, PySpark, Streaming | Xiangrui Meng | Manoj Kumar |
| [SPARK-8533](https://issues.apache.org/jira/browse/SPARK-8533) | Bump Flume version to 1.6.0 |  Minor | Streaming | Hari Shreedharan | Hari Shreedharan |
| [SPARK-8058](https://issues.apache.org/jira/browse/SPARK-8058) | Add tests for SPARK-7853 and SPARK-8020 |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-7733](https://issues.apache.org/jira/browse/SPARK-7733) | Update build, code to use Java 7 for 1.5.0+ |  Minor | Build, Deploy, Spark Core | Sean Owen | Sean Owen |
| [SPARK-7667](https://issues.apache.org/jira/browse/SPARK-7667) | MLlib Python API consistency check |  Major | MLlib, PySpark | Yanbo Liang | Yanbo Liang |


