
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

## Release 1.4.0 - 2015-06-11

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-7746](https://issues.apache.org/jira/browse/SPARK-7746) | SetFetchSize for JDBCRDD's prepareStatement |  Major | SQL | Paul Wu | Liang-Chi Hsieh |
| [SPARK-7698](https://issues.apache.org/jira/browse/SPARK-7698) | Implement buffer pooling / re-use in ExecutorMemoryManager when using HeapAllocator |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-7648](https://issues.apache.org/jira/browse/SPARK-7648) | Additional methods in ALS JavaModel wrappers |  Major | ML, PySpark | Xiangrui Meng | Xiangrui Meng |
| [SPARK-7647](https://issues.apache.org/jira/browse/SPARK-7647) | Additional methods in GLM JavaModel wrappers |  Major | ML, PySpark | Xiangrui Meng | Xiangrui Meng |
| [SPARK-7593](https://issues.apache.org/jira/browse/SPARK-7593) | Python API for Bucketizer |  Major | ML, PySpark | Xiangrui Meng | Burak Yavuz |
| [SPARK-7553](https://issues.apache.org/jira/browse/SPARK-7553) | Add methods to maintain a singleton StreamingContext |  Blocker | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-7478](https://issues.apache.org/jira/browse/SPARK-7478) | Add a SQLContext.getOrCreate to maintain a singleton instance of SQLContext |  Blocker | SQL | Tathagata Das | Tathagata Das |
| [SPARK-7404](https://issues.apache.org/jira/browse/SPARK-7404) | Add RegressionEvaluator to spark.ml |  Major | ML | Xiangrui Meng | Ram Sriharsha |
| [SPARK-7333](https://issues.apache.org/jira/browse/SPARK-7333) | PySpark BinaryClassificationEvaluator |  Major | ML, PySpark | Xiangrui Meng | Xiangrui Meng |
| [SPARK-7262](https://issues.apache.org/jira/browse/SPARK-7262) | Binary LogisticRegression with L1/L2 (elastic net) using OWLQN in new ML package |  Major | ML | DB Tsai | DB Tsai |
| [SPARK-7123](https://issues.apache.org/jira/browse/SPARK-7123) | support table.star in sqlcontext |  Major | SQL | Fei Wang | Fei Wang |
| [SPARK-7081](https://issues.apache.org/jira/browse/SPARK-7081) | Faster sort-based shuffle path using binary processing cache-aware sort |  Major | Shuffle, Spark Core | Reynold Xin | Josh Rosen |
| [SPARK-7080](https://issues.apache.org/jira/browse/SPARK-7080) | Binary processing based aggregate operator |  Major | SQL | Reynold Xin | Josh Rosen |
| [SPARK-7077](https://issues.apache.org/jira/browse/SPARK-7077) | Binary processing hash table for aggregation |  Major | SQL | Reynold Xin | Josh Rosen |
| [SPARK-7076](https://issues.apache.org/jira/browse/SPARK-7076) | Binary processing compact tuple representation |  Major | SQL | Reynold Xin | Josh Rosen |
| [SPARK-7022](https://issues.apache.org/jira/browse/SPARK-7022) | PySpark is missing ParamGridBuilder |  Critical | ML, MLlib, PySpark | Omede Firouz | Omede Firouz |
| [SPARK-6991](https://issues.apache.org/jira/browse/SPARK-6991) | Adds support for zipPartitions for SparkR |  Minor | SparkR | Hao | Hao |
| [SPARK-6972](https://issues.apache.org/jira/browse/SPARK-6972) | Add Coalesce to DataFrame |  Blocker | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-6918](https://issues.apache.org/jira/browse/SPARK-6918) | Secure HBase with Kerberos does not work over YARN |  Major | YARN | Dean Chen | Dean Chen |
| [SPARK-6877](https://issues.apache.org/jira/browse/SPARK-6877) | Add code generation support for Min |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-6845](https://issues.apache.org/jira/browse/SPARK-6845) | Add isTranposed flag to DenseMatrix SerDe |  Minor | MLlib, PySpark | Manoj Kumar | Manoj Kumar |
| [SPARK-6841](https://issues.apache.org/jira/browse/SPARK-6841) | Similar to `stats.py` in Python, add support for mean, median, stdev etc. |  Major | SparkR | Shivaram Venkataraman | Qian Huang |
| [SPARK-6818](https://issues.apache.org/jira/browse/SPARK-6818) | Support column deletion in SparkR DataFrame API |  Major | SparkR, SQL | Shivaram Venkataraman | Sun Rui |
| [SPARK-6811](https://issues.apache.org/jira/browse/SPARK-6811) | Building binary R packages for SparkR |  Blocker | SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-6807](https://issues.apache.org/jira/browse/SPARK-6807) | Merge recent changes in SparkR-pkg into Spark |  Blocker | SparkR | Davies Liu | Davies Liu |
| [SPARK-6806](https://issues.apache.org/jira/browse/SPARK-6806) | SparkR examples in programming guide |  Critical | Documentation, SparkR | Davies Liu | Davies Liu |
| [SPARK-6756](https://issues.apache.org/jira/browse/SPARK-6756) | Add compress() to Vector |  Major | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-6703](https://issues.apache.org/jira/browse/SPARK-6703) | Provide a way to discover existing SparkContext's |  Critical | Spark Core | Patrick Wendell | Ilya Ganelin |
| [SPARK-6651](https://issues.apache.org/jira/browse/SPARK-6651) | Delegate dense vector arithmetics to the underly numpy array |  Major | MLlib, PySpark | Xiangrui Meng | Xiangrui Meng |
| [SPARK-6600](https://issues.apache.org/jira/browse/SPARK-6600) | Open ports in ec2/spark\_ec2.py to allow HDFS NFS gateway |  Minor | EC2 | Florian Verhein | Florian Verhein |
| [SPARK-6577](https://issues.apache.org/jira/browse/SPARK-6577) | SparseMatrix should be supported in PySpark |  Major | MLlib, PySpark | Manoj Kumar | Manoj Kumar |
| [SPARK-6576](https://issues.apache.org/jira/browse/SPARK-6576) | DenseMatrix in PySpark should support indexing |  Minor | MLlib, PySpark | Manoj Kumar | Manoj Kumar |
| [SPARK-6542](https://issues.apache.org/jira/browse/SPARK-6542) | Add CreateStruct as an Expression |  Major | SQL | Xiangrui Meng | Xiangrui Meng |
| [SPARK-6443](https://issues.apache.org/jira/browse/SPARK-6443) | Support HA in standalone cluster mode |  Major | Spark Submit | Tao Wang | Tao Wang |
| [SPARK-6309](https://issues.apache.org/jira/browse/SPARK-6309) | Add MatrixUDT to support dense/sparse matrices in DataFrames |  Major | MLlib, SQL | Xiangrui Meng | Manoj Kumar |
| [SPARK-6268](https://issues.apache.org/jira/browse/SPARK-6268) | KMeans parameter getter methods |  Minor | MLlib | Joseph K. Bradley | yuhao yang |
| [SPARK-6267](https://issues.apache.org/jira/browse/SPARK-6267) | Python API for IsotonicRegression |  Major | MLlib, PySpark | Joseph K. Bradley | Yanbo Liang |
| [SPARK-6264](https://issues.apache.org/jira/browse/SPARK-6264) | Python API for FPGrowth |  Major | MLlib, PySpark | Joseph K. Bradley | Yanbo Liang |
| [SPARK-6186](https://issues.apache.org/jira/browse/SPARK-6186) | make tachyon version configurable in the ec2 script |  Minor | EC2 | cheng chang | cheng chang |
| [SPARK-6130](https://issues.apache.org/jira/browse/SPARK-6130) | support if not exists for insert overwrite into partition in hiveQl |  Major | SQL | Adrian Wang | Adrian Wang |
| [SPARK-6025](https://issues.apache.org/jira/browse/SPARK-6025) | Helper method for GradientBoostedTrees to compute validation error |  Minor | MLlib | Joseph K. Bradley | Manoj Kumar |
| [SPARK-5955](https://issues.apache.org/jira/browse/SPARK-5955) | Add checkpointInterval to ALS |  Major | ML, MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-5954](https://issues.apache.org/jira/browse/SPARK-5954) | Add topByKey to pair RDDs |  Major | Spark Core | Xiangrui Meng | Shuo Xiang |
| [SPARK-5913](https://issues.apache.org/jira/browse/SPARK-5913) | Python API for ChiSqSelector |  Minor | MLlib, PySpark | Joseph K. Bradley | Yanbo Liang |
| [SPARK-5854](https://issues.apache.org/jira/browse/SPARK-5854) | Implement Personalized PageRank with GraphX |  Minor | GraphX | Baoxu Shi | Dan McClary |
| [SPARK-5843](https://issues.apache.org/jira/browse/SPARK-5843) | Expose all parameters in JavaPairRDD.combineByKey() |  Minor | Spark Core | Matt Cheah | Matthew Cheah |
| [SPARK-5654](https://issues.apache.org/jira/browse/SPARK-5654) | Integrate SparkR into Apache Spark |  Major | SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-5566](https://issues.apache.org/jira/browse/SPARK-5566) | Tokenizer for mllib package |  Major | ML, MLlib | Joseph K. Bradley | Augustin Borsu |
| [SPARK-5521](https://issues.apache.org/jira/browse/SPARK-5521) | PCA wrapper for easy transform vectors |  Major | MLlib | Kirill A. Korinskiy | Kirill A. Korinskiy |
| [SPARK-5495](https://issues.apache.org/jira/browse/SPARK-5495) | Offer user the ability to kill application in master web UI for standalone mode |  Major | Web UI | Saisai Shao | Saisai Shao |
| [SPARK-5443](https://issues.apache.org/jira/browse/SPARK-5443) | jsonRDD with schema should ignore sub-objects that are omitted in schema |  Major | SQL | Derrick Burns | Nathan Howell |
| [SPARK-5342](https://issues.apache.org/jira/browse/SPARK-5342) | Allow long running Spark apps to run on secure YARN/HDFS |  Major | YARN | Hari Shreedharan | Hari Shreedharan |
| [SPARK-5302](https://issues.apache.org/jira/browse/SPARK-5302) | Add support for SQLContext "partition" columns |  Major | SQL | Bob Tiernay | Cheng Lian |
| [SPARK-5253](https://issues.apache.org/jira/browse/SPARK-5253) | LinearRegression with L1/L2 (elastic net) using OWLQN in new ML package |  Major | ML | DB Tsai | DB Tsai |
| [SPARK-5213](https://issues.apache.org/jira/browse/SPARK-5213) | Pluggable SQL Parser Support |  Major | SQL | Cheng Hao | Cheng Hao |
| [SPARK-5162](https://issues.apache.org/jira/browse/SPARK-5162) | Python yarn-cluster mode |  Major | PySpark, YARN | Dana Klassen | Lianhui Wang |
| [SPARK-5100](https://issues.apache.org/jira/browse/SPARK-5100) | Spark Thrift server monitor page |  Critical | SQL, Web UI | Yi Tian | Yi Tian |
| [SPARK-4985](https://issues.apache.org/jira/browse/SPARK-4985) | Parquet support for date type |  Major | SQL | Adrian Wang | Adrian Wang |
| [SPARK-4894](https://issues.apache.org/jira/browse/SPARK-4894) | Add Bernoulli-variant of Naive Bayes |  Major | MLlib | RJ Nowling | Leah McGuire |
| [SPARK-4081](https://issues.apache.org/jira/browse/SPARK-4081) | Categorical feature indexing |  Minor | MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-3644](https://issues.apache.org/jira/browse/SPARK-3644) | REST API for Spark application info (jobs / stages / tasks / storage info) |  Major | Spark Core, Web UI | Josh Rosen | Imran Rashid |
| [SPARK-3562](https://issues.apache.org/jira/browse/SPARK-3562) | Periodic cleanup event logs |  Major | Spark Core | xukun | xukun |
| [SPARK-3066](https://issues.apache.org/jira/browse/SPARK-3066) | Support recommendAll in matrix factorization model |  Major | MLlib | Xiangrui Meng | Debasish Das |
| [SPARK-2883](https://issues.apache.org/jira/browse/SPARK-2883) | Spark Support for ORCFile format |  Critical | Input/Output, SQL | Zhan Zhang | Zhan Zhang |
| [SPARK-2691](https://issues.apache.org/jira/browse/SPARK-2691) | Allow Spark on Mesos to be launched with Docker |  Major | Mesos | Timothy Chen | Chris Heller |
| [SPARK-2033](https://issues.apache.org/jira/browse/SPARK-2033) | Automatically cleanup checkpoint |  Major | Spark Core | Guoqiang Li | Guoqiang Li |
| [SPARK-1442](https://issues.apache.org/jira/browse/SPARK-1442) | Add Window function support |  Blocker | SQL | Chengxiang Li | guowei |
| [SPARK-1406](https://issues.apache.org/jira/browse/SPARK-1406) | PMML model evaluation support via MLib |  Major | MLlib | Thomas Darimont | Vincenzo Selvaggio |
| [SPARK-911](https://issues.apache.org/jira/browse/SPARK-911) | Support map pruning on sorted (K, V) RDD's |  Major | Spark Core | Patrick Wendell | Aaron |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-8053](https://issues.apache.org/jira/browse/SPARK-8053) | ElementwiseProduct scalingVec param name should match between ml,mllib |  Minor | MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-8025](https://issues.apache.org/jira/browse/SPARK-8025) | Add JavaDoc style deprecation for deprecated Streaming methods |  Major | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7957](https://issues.apache.org/jira/browse/SPARK-7957) | Preserve partitioning in randomSplit in RDD.scala |  Major | Spark Core | Burak Yavuz | Burak Yavuz |
| [SPARK-7954](https://issues.apache.org/jira/browse/SPARK-7954) | Implicitly create SparkContext in sparkRSQL.init |  Major | SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-7949](https://issues.apache.org/jira/browse/SPARK-7949) | update document with some missing save/load |  Minor | MLlib | yuhao yang | yuhao yang |
| [SPARK-7926](https://issues.apache.org/jira/browse/SPARK-7926) | Switch to the official Pyrolite release |  Major | Build, PySpark | Xiangrui Meng | Xiangrui Meng |
| [SPARK-7922](https://issues.apache.org/jira/browse/SPARK-7922) | ALSModel in the pipeline API should return DataFrames for factors |  Major | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-7921](https://issues.apache.org/jira/browse/SPARK-7921) | Change includeFirst to dropLast in OneHotEncoder |  Major | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-7918](https://issues.apache.org/jira/browse/SPARK-7918) | MLlib Python doc parity check for evaluation and feature |  Major | Documentation, MLlib, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-7912](https://issues.apache.org/jira/browse/SPARK-7912) | Make OneHotEncoder more optimistic about the input |  Major | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-7911](https://issues.apache.org/jira/browse/SPARK-7911) | A workaround for VectorUDT serialize (or deserialize) being called multiple times |  Major | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-7895](https://issues.apache.org/jira/browse/SPARK-7895) | Move Kafka examples from scala-2.10/src to src |  Major | Examples, Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7845](https://issues.apache.org/jira/browse/SPARK-7845) | Bump "Hadoop 1" tests to version 1.2.1 |  Critical | Tests | Patrick Wendell | Cheng Lian |
| [SPARK-7838](https://issues.apache.org/jira/browse/SPARK-7838) | Set scope name for Kinesis stream |  Critical | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-7833](https://issues.apache.org/jira/browse/SPARK-7833) | Add python wrapper for RegressionEvaluator |  Major | . | Ram Sriharsha | Ram Sriharsha |
| [SPARK-7830](https://issues.apache.org/jira/browse/SPARK-7830) | ML doc cleanup: logreg, classification link |  Trivial | Documentation, MLlib | Mike Dusenberry | Mike Dusenberry |
| [SPARK-7794](https://issues.apache.org/jira/browse/SPARK-7794) | Update RegexTokenizer default settings. |  Major | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-7774](https://issues.apache.org/jira/browse/SPARK-7774) | Add sqlContext to MLlibTestSparkContext |  Minor | ML, MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-7771](https://issues.apache.org/jira/browse/SPARK-7771) | Dynamic allocation: lower timeouts further |  Major | Spark Core, YARN | Andrew Or | Andrew Or |
| [SPARK-7767](https://issues.apache.org/jira/browse/SPARK-7767) | Fail fast if the DStream checkpoint is not serializable |  Critical | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-7762](https://issues.apache.org/jira/browse/SPARK-7762) | Set default value for outputCol based on UID |  Major | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-7748](https://issues.apache.org/jira/browse/SPARK-7748) | Graduate spark.ml from alpha |  Critical | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-7745](https://issues.apache.org/jira/browse/SPARK-7745) | Replace assertions with requires (IllegalArgumentException) and modify other state checks |  Minor | Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-7744](https://issues.apache.org/jira/browse/SPARK-7744) | "Distributed matrix" section in MLlib "Data Types" documentation should be reordered. |  Minor | Documentation, MLlib | Mike Dusenberry | Mike Dusenberry |
| [SPARK-7724](https://issues.apache.org/jira/browse/SPARK-7724) | Add support for Intersect and Except in Catalyst DSL |  Trivial | SQL | Santiago M. Mola | Santiago M. Mola |
| [SPARK-7704](https://issues.apache.org/jira/browse/SPARK-7704) | Updating Programming Guides per SPARK-4397 |  Trivial | Documentation | Daisuke Kobayashi | Daisuke Kobayashi |
| [SPARK-7693](https://issues.apache.org/jira/browse/SPARK-7693) | Remove "import scala.concurrent.ExecutionContext.Implicits.global" |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7692](https://issues.apache.org/jira/browse/SPARK-7692) | Convert Kinesis examples to use new API instead of deprecated ones |  Blocker | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-7681](https://issues.apache.org/jira/browse/SPARK-7681) | Add SparseVector support for gemv |  Major | MLlib | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-7679](https://issues.apache.org/jira/browse/SPARK-7679) | Update AWS SDK and KCL versions to 1.2.1 |  Blocker | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-7678](https://issues.apache.org/jira/browse/SPARK-7678) | Scala ML seed Param should be fixed but vary per class |  Minor | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-7676](https://issues.apache.org/jira/browse/SPARK-7676) | Cleanup unnecessary code and fix small bug in the stage timeline view |  Major | Web UI | Kay Ousterhout | Kay Ousterhout |
| [SPARK-7658](https://issues.apache.org/jira/browse/SPARK-7658) | Update the mouse behaviors for the timeline graphs |  Major | Streaming, Web UI | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7656](https://issues.apache.org/jira/browse/SPARK-7656) | use CatalystConf in FunctionRegistry |  Major | SQL | Fei Wang | Fei Wang |
| [SPARK-7650](https://issues.apache.org/jira/browse/SPARK-7650) | Move streaming css and js files to the streaming project |  Major | Streaming, Web UI | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7649](https://issues.apache.org/jira/browse/SPARK-7649) | Use window.localStorage to store the status rather than the url |  Major | Streaming, Web UI | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7645](https://issues.apache.org/jira/browse/SPARK-7645) | Show milliseconds in the UI if the batch interval \< 1 second |  Major | Streaming, Web UI | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7621](https://issues.apache.org/jira/browse/SPARK-7621) | Report KafkaReceiver MessageHandler errors so StreamingListeners can take action |  Major | Streaming | Jeremy A. Lucas | Jeremy A. Lucas |
| [SPARK-7620](https://issues.apache.org/jira/browse/SPARK-7620) | Removed calling size, length in while condition to avoid extra JVM call |  Major | ML, MLlib | DB Tsai | DB Tsai |
| [SPARK-7612](https://issues.apache.org/jira/browse/SPARK-7612) | Use BLAS in naive Bayes training |  Minor | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-7598](https://issues.apache.org/jira/browse/SPARK-7598) | Add aliveWorkers metrics in Master |  Minor | Deploy | Rex Xiong | Rex Xiong |
| [SPARK-7589](https://issues.apache.org/jira/browse/SPARK-7589) | Make "Input Rate" in the Streaming page consistent with other pages |  Major | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7573](https://issues.apache.org/jira/browse/SPARK-7573) | OneVsRest cleanups |  Minor | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-7572](https://issues.apache.org/jira/browse/SPARK-7572) | Move Param and Params to ml.param in PySpark |  Major | ML, PySpark | Xiangrui Meng | Xiangrui Meng |
| [SPARK-7571](https://issues.apache.org/jira/browse/SPARK-7571) | Rename `Math` to `math` in MLlib's Scala code |  Trivial | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-7570](https://issues.apache.org/jira/browse/SPARK-7570) | Ignore \_temporary folders during partition discovery |  Critical | SQL | Cheng Lian | Cheng Lian |
| [SPARK-7559](https://issues.apache.org/jira/browse/SPARK-7559) | Bucketizer should include the right most boundary in the last bucket. |  Minor | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-7554](https://issues.apache.org/jira/browse/SPARK-7554) | Throw exception when an active StreamingContext is used to create DStreams and output operations |  Blocker | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-7545](https://issues.apache.org/jira/browse/SPARK-7545) | Bernoulli NaiveBayes should validate data |  Minor | MLlib | Joseph K. Bradley | Leah McGuire |
| [SPARK-7534](https://issues.apache.org/jira/browse/SPARK-7534) | Fix the Stage table when a stage is missing |  Minor | Spark Core, Web UI | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7526](https://issues.apache.org/jira/browse/SPARK-7526) | Specify ip of RBackend, MonitorServer and RRDD Socket server |  Minor | SparkR | Weizhong | Weizhong |
| [SPARK-7516](https://issues.apache.org/jira/browse/SPARK-7516) | Replace deprecated Data Frame api in Python Docs |  Minor | Documentation | Guancheng Chen | Guancheng Chen |
| [SPARK-7511](https://issues.apache.org/jira/browse/SPARK-7511) | PySpark ML seed Param should be varied per class |  Minor | ML, PySpark | Joseph K. Bradley | Holden Karau |
| [SPARK-7508](https://issues.apache.org/jira/browse/SPARK-7508) | JettyUtils-generated servlets to log & report all errors |  Minor | Web UI | Steve Loughran | Steve Loughran |
| [SPARK-7484](https://issues.apache.org/jira/browse/SPARK-7484) | Support passing jdbc connection properties for dataframe.createJDBCTable and insertIntoJDBC |  Minor | SQL | Venkata Ramana G | Venkata Ramana G |
| [SPARK-7482](https://issues.apache.org/jira/browse/SPARK-7482) | Rename some DataFrame API methods in SparkR to match their counterparts in Scala |  Critical | SparkR | Sun Rui | Sun Rui |
| [SPARK-7475](https://issues.apache.org/jira/browse/SPARK-7475) | adjust ldaExample for online LDA |  Minor | MLlib | yuhao yang | yuhao yang |
| [SPARK-7473](https://issues.apache.org/jira/browse/SPARK-7473) | Use reservoir sample in RandomForest when choosing features per node |  Trivial | MLlib | Joseph K. Bradley | Ai He |
| [SPARK-7450](https://issues.apache.org/jira/browse/SPARK-7450) | Use UNSAFE.getLong() to speed up BitSetMethods#anySet() |  Minor | Spark Core | Ted Yu | Ted Yu |
| [SPARK-7437](https://issues.apache.org/jira/browse/SPARK-7437) | Fold "literal in (item1, item2, ..., literal, ...)" into true or false directly |  Major | SQL | Zhongshuai Pei | Zhongshuai Pei |
| [SPARK-7435](https://issues.apache.org/jira/browse/SPARK-7435) | Make DataFrame.show() consistent with that of Scala and pySpark |  Critical | SparkR | Sun Rui | Rekha Joshi |
| [SPARK-7429](https://issues.apache.org/jira/browse/SPARK-7429) | Cleanups: Params.setDefault varargs, CrossValidatorModel transformSchema |  Minor | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-7421](https://issues.apache.org/jira/browse/SPARK-7421) | Online LDA cleanups |  Minor | MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-7407](https://issues.apache.org/jira/browse/SPARK-7407) | Use uid and param name to identify a parameter instead of the param object |  Major | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-7406](https://issues.apache.org/jira/browse/SPARK-7406) | Add tooltips for "Scheduling Delay", "Processing Time" and "Total Delay" in Streaming WebUI |  Minor | Streaming, Web UI | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7396](https://issues.apache.org/jira/browse/SPARK-7396) | Update Producer in Kafka example to use new API of Kafka 0.8.2 |  Major | Examples, Streaming | Saisai Shao | Saisai Shao |
| [SPARK-7373](https://issues.apache.org/jira/browse/SPARK-7373) | Support launching Spark drivers in Docker images with Mesos cluster mode |  Major | Mesos | Timothy Chen | Timothy Chen |
| [SPARK-7350](https://issues.apache.org/jira/browse/SPARK-7350) | Attach the Streaming page when calling ssc.start() |  Minor | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7339](https://issues.apache.org/jira/browse/SPARK-7339) | PySpark shuffle spill memory sometimes are not correct |  Minor | PySpark | Weizhong | Weizhong |
| [SPARK-7329](https://issues.apache.org/jira/browse/SPARK-7329) | Use itertools.product in ParamGridBuilder |  Minor | ML, PySpark | Xiangrui Meng | Xiangrui Meng |
| [SPARK-7323](https://issues.apache.org/jira/browse/SPARK-7323) | Use insertAll instead of individual insert while merging combiners |  Minor | Spark Core | Mridul Muralidharan | Mridul Muralidharan |
| [SPARK-7317](https://issues.apache.org/jira/browse/SPARK-7317) | ShuffleHandle needs to be exposed |  Minor | Shuffle | Mridul Muralidharan | Mridul Muralidharan |
| [SPARK-7314](https://issues.apache.org/jira/browse/SPARK-7314) | Upgrade Pyrolite to 4.4 |  Major | PySpark | Xiangrui Meng | Xiangrui Meng |
| [SPARK-7311](https://issues.apache.org/jira/browse/SPARK-7311) | Enable in-memory serialized map-side shuffle to work with SQL serializers |  Major | Spark Core, SQL | Sandy Ryza | Josh Rosen |
| [SPARK-7309](https://issues.apache.org/jira/browse/SPARK-7309) | Shutdown the thread pools in ReceivedBlockHandler and DAGScheduler |  Minor | Spark Core, Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7307](https://issues.apache.org/jira/browse/SPARK-7307) | Changing persistence engine trait to an abstract class |  Major | Spark Core | Reynold Xin | niranda perera |
| [SPARK-7305](https://issues.apache.org/jira/browse/SPARK-7305) | Make BatchPage show friendly information when jobs are dropped by SparkListener |  Minor | Streaming, Web UI | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7304](https://issues.apache.org/jira/browse/SPARK-7304) | Include $@ in call to mvn in make-distribution.sh |  Minor | Build | Rajendra | Rajendra |
| [SPARK-7303](https://issues.apache.org/jira/browse/SPARK-7303) | push down project if possible when the child is sort |  Major | SQL | Fei Wang | Fei Wang |
| [SPARK-7279](https://issues.apache.org/jira/browse/SPARK-7279) | Removed diffSum which is theoretical zero in LinearRegression and coding formating |  Major | ML | DB Tsai | DB Tsai |
| [SPARK-7267](https://issues.apache.org/jira/browse/SPARK-7267) | Push down Project when it's child is Limit |  Critical | SQL | Zhongshuai Pei | Zhongshuai Pei |
| [SPARK-7251](https://issues.apache.org/jira/browse/SPARK-7251) | Perform sequential scan when iterating over entries in BytesToBytesMap |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-7232](https://issues.apache.org/jira/browse/SPARK-7232) | Add a Substitution batch for spark sql analyzer |  Major | SQL | Fei Wang | Fei Wang |
| [SPARK-7222](https://issues.apache.org/jira/browse/SPARK-7222) | Added mathematical derivation in comment and compressed the model to LinearRegression with ElasticNet |  Major | ML | DB Tsai | DB Tsai |
| [SPARK-7219](https://issues.apache.org/jira/browse/SPARK-7219) | HashingTF should output ML attributes |  Trivial | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-7217](https://issues.apache.org/jira/browse/SPARK-7217) | Add configuration to control the default behavior of StreamingContext.stop() implicitly calling SparkContext.stop() |  Blocker | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-7216](https://issues.apache.org/jira/browse/SPARK-7216) | Show driver details in Mesos cluster UI |  Major | Mesos | Timothy Chen | Timothy Chen |
| [SPARK-7201](https://issues.apache.org/jira/browse/SPARK-7201) | Move identifiable to ml.util |  Major | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-7198](https://issues.apache.org/jira/browse/SPARK-7198) | VectorAssembler should carry ML metadata |  Major | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-7168](https://issues.apache.org/jira/browse/SPARK-7168) | Update plugin versions in Maven build and centralize versions |  Trivial | Build | Sean Owen | Sean Owen |
| [SPARK-7145](https://issues.apache.org/jira/browse/SPARK-7145) | commons-lang (2.x) classes used instead of commons-lang3 (3.x); commons-io used without dependency |  Minor | Spark Core, SQL, Streaming | Sean Owen | Sean Owen |
| [SPARK-7140](https://issues.apache.org/jira/browse/SPARK-7140) | Do not scan all values in Vector.hashCode |  Major | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-7136](https://issues.apache.org/jira/browse/SPARK-7136) | Spark SQL and DataFrame Guide - missing file paths and non-existent example file |  Minor | Documentation | Deborah Siegel | Deborah Siegel |
| [SPARK-7120](https://issues.apache.org/jira/browse/SPARK-7120) | ClosureCleaner lacks documentation |  Major | Documentation | Andrew Or | Andrew Or |
| [SPARK-7116](https://issues.apache.org/jira/browse/SPARK-7116) | Intermediate RDD cached but never unpersisted |  Major | PySpark, SQL | Kalle Jepsen | Kalle Jepsen |
| [SPARK-7115](https://issues.apache.org/jira/browse/SPARK-7115) | Do not output 1 in PolynomialExpansion |  Minor | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-7111](https://issues.apache.org/jira/browse/SPARK-7111) | Exposing of input data rates of non-receiver streams like Kafka Direct stream |  Blocker | Streaming | Saisai Shao | Saisai Shao |
| [SPARK-7109](https://issues.apache.org/jira/browse/SPARK-7109) | Push down left side filter for left semi join |  Major | SQL | Fei Wang | Fei Wang |
| [SPARK-7102](https://issues.apache.org/jira/browse/SPARK-7102) | update apache hosted graphx-programming-guide doc |  Minor | Documentation | Deborah Siegel | Deborah Siegel |
| [SPARK-7093](https://issues.apache.org/jira/browse/SPARK-7093) | Using newPredicate in NestedLoopJoin to enable code generation |  Major | SQL | Fei Wang | Fei Wang |
| [SPARK-7092](https://issues.apache.org/jira/browse/SPARK-7092) | Update spark scala version to 2.11.6 |  Minor | Spark Core, Spark Shell | Prashant Sharma | Prashant Sharma |
| [SPARK-7090](https://issues.apache.org/jira/browse/SPARK-7090) | Introduce LDAOptimizer to LDA to further improve extensibility |  Major | MLlib | yuhao yang | yuhao yang |
| [SPARK-7087](https://issues.apache.org/jira/browse/SPARK-7087) | Scala Version Change script is dependent on current working directory |  Minor | Build | Tijo Thomas | Tijo Thomas |
| [SPARK-7056](https://issues.apache.org/jira/browse/SPARK-7056) | Make the WriteAheadLog pluggable |  Critical | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-7052](https://issues.apache.org/jira/browse/SPARK-7052) | Add ThreadUtils and move thread methods from Utils to ThreadUtils |  Minor | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7047](https://issues.apache.org/jira/browse/SPARK-7047) | Model parent should be Optional |  Minor | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-7046](https://issues.apache.org/jira/browse/SPARK-7046) | BlockResult shouldn't include an InputMetrics object (code cleanup) |  Trivial | Spark Core | Kay Ousterhout | Kay Ousterhout |
| [SPARK-7037](https://issues.apache.org/jira/browse/SPARK-7037) | Inconsistent behavior for non-spark config properties in spark-shell and spark-submit |  Minor | Spark Shell, Spark Submit | Cheolsoo Park | Cheolsoo Park |
| [SPARK-7033](https://issues.apache.org/jira/browse/SPARK-7033) | Use JavaRDD.partitions() instead of JavaRDD.splits() |  Minor | SparkR | Sun Rui | Sun Rui |
| [SPARK-7031](https://issues.apache.org/jira/browse/SPARK-7031) | let thrift server take SPARK\_DAEMON\_MEMORY and SPARK\_DAEMON\_JAVA\_OPTS |  Minor | SQL | Tao Wang | Tao Wang |
| [SPARK-7015](https://issues.apache.org/jira/browse/SPARK-7015) | Multiclass to Binary Reduction |  Major | ML | Ram Sriharsha | Ram Sriharsha |
| [SPARK-6996](https://issues.apache.org/jira/browse/SPARK-6996) | DataFrame should support map types when creating DFs from JavaBeans. |  Major | SQL | Punya Biswal | Punya Biswal |
| [SPARK-6994](https://issues.apache.org/jira/browse/SPARK-6994) | Allow to fetch field values by name in sql.Row |  Minor | SQL | vidmantas zemleris | vidmantas zemleris |
| [SPARK-6993](https://issues.apache.org/jira/browse/SPARK-6993) | Adding default max and min methods for JavaDoubleRDD |  Minor | Java API | Olivier Girardot | Olivier Girardot |
| [SPARK-6988](https://issues.apache.org/jira/browse/SPARK-6988) | Fix Spark SQL documentation for 1.3.x |  Minor | SQL | Olivier Girardot | Olivier Girardot |
| [SPARK-6986](https://issues.apache.org/jira/browse/SPARK-6986) | Makes SparkSqlSerializer2 support sort-based shuffle with sort merge |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-6969](https://issues.apache.org/jira/browse/SPARK-6969) | Refresh the cached table when REFRESH TABLE is used |  Critical | SQL | Yin Huai | Yin Huai |
| [SPARK-6965](https://issues.apache.org/jira/browse/SPARK-6965) | StringIndexer should convert input to Strings |  Minor | ML | Joseph K. Bradley | Xiangrui Meng |
| [SPARK-6956](https://issues.apache.org/jira/browse/SPARK-6956) | Improve DataFrame API compatibility with Pandas |  Major | SQL | Reynold Xin | Davies Liu |
| [SPARK-6953](https://issues.apache.org/jira/browse/SPARK-6953) | Speedup tests of PySpark, reduce logging |  Major | PySpark | Davies Liu | Davies Liu |
| [SPARK-6949](https://issues.apache.org/jira/browse/SPARK-6949) | Support Date/Timestamp in Column expression of DataFrame Python API |  Blocker | PySpark, SQL | Davies Liu | Davies Liu |
| [SPARK-6948](https://issues.apache.org/jira/browse/SPARK-6948) | VectorAssembler should choose dense/sparse for output based on number of zeros |  Minor | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-6940](https://issues.apache.org/jira/browse/SPARK-6940) | PySpark CrossValidator |  Critical | ML, PySpark | Omede Firouz | Xiangrui Meng |
| [SPARK-6938](https://issues.apache.org/jira/browse/SPARK-6938) | Add informative error messages to require statements. |  Trivial | MLlib | Juliet Hougland | Juliet Hougland |
| [SPARK-6911](https://issues.apache.org/jira/browse/SPARK-6911) | API for access MapType in DataFrame |  Critical | SQL | Davies Liu | Davies Liu |
| [SPARK-6889](https://issues.apache.org/jira/browse/SPARK-6889) | Streamline contribution process with update to Contribution wiki, JIRA rules |  Major | Documentation | Sean Owen | Sean Owen |
| [SPARK-6888](https://issues.apache.org/jira/browse/SPARK-6888) | Make DriverQuirks editable |  Minor | SQL | Rene Treffer | Rene Treffer |
| [SPARK-6881](https://issues.apache.org/jira/browse/SPARK-6881) | Change the checkpoint directory name from checkpoints to checkpoint |  Trivial | SparkR | Hao | Hao |
| [SPARK-6870](https://issues.apache.org/jira/browse/SPARK-6870) | Catch InterruptedException when yarn application state monitor thread been interrupted |  Trivial | YARN | Weizhong | Weizhong |
| [SPARK-6866](https://issues.apache.org/jira/browse/SPARK-6866) | Cleanup duplicated dependency in pom.xml |  Trivial | Build | Guancheng Chen | Guancheng Chen |
| [SPARK-6858](https://issues.apache.org/jira/browse/SPARK-6858) | Register Java HashMap for SparkSqlSerializer |  Trivial | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-6856](https://issues.apache.org/jira/browse/SPARK-6856) | Make RDD information more useful in SparkR |  Minor | SparkR | Shivaram Venkataraman | Jeff Harrison |
| [SPARK-6852](https://issues.apache.org/jira/browse/SPARK-6852) | Accept numeric as numPartitions in SparkR |  Critical | SparkR | Davies Liu | Sun Rui |
| [SPARK-6846](https://issues.apache.org/jira/browse/SPARK-6846) | Stage kill URL easy to accidentally trigger and possibility for security issue. |  Minor | Web UI | Dev Lakhani | Sean Owen |
| [SPARK-6827](https://issues.apache.org/jira/browse/SPARK-6827) | Wrap FPGrowthModel.freqItemsets with namedtuples (or document the return type) in PySpark |  Minor | MLlib, PySpark | Xiangrui Meng | Yanbo Liang |
| [SPARK-6794](https://issues.apache.org/jira/browse/SPARK-6794) | Speed up default BroadcastHashJoin performance by using kryo-based SparkSerializer |  Major | SQL | Volodymyr Lyubinets | Volodymyr Lyubinets |
| [SPARK-6765](https://issues.apache.org/jira/browse/SPARK-6765) | Turn scalastyle on for test code |  Major | Project Infra, Tests | Reynold Xin | Reynold Xin |
| [SPARK-6758](https://issues.apache.org/jira/browse/SPARK-6758) | Block jetty's log as we have already shaded it |  Minor | Deploy | Tao Wang | Tao Wang |
| [SPARK-6754](https://issues.apache.org/jira/browse/SPARK-6754) | TaskContextHelper is not necessary |  Minor | Spark Core | Kay Ousterhout | Kay Ousterhout |
| [SPARK-6752](https://issues.apache.org/jira/browse/SPARK-6752) | Allow StreamingContext to be recreated from checkpoint and existing SparkContext |  Critical | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-6750](https://issues.apache.org/jira/browse/SPARK-6750) | Upgrade ScalaStyle to 0.7 |  Major | Project Infra | Reynold Xin | Reynold Xin |
| [SPARK-6736](https://issues.apache.org/jira/browse/SPARK-6736) | [GraphX]Example of Graph#aggregateMessages has error |  Minor | Documentation, GraphX | Sasaki Toru | Sasaki Toru |
| [SPARK-6733](https://issues.apache.org/jira/browse/SPARK-6733) | Suppression of usage of Scala existential code should be done |  Trivial | Scheduler | Raymond Tay | Vinod KC |
| [SPARK-6720](https://issues.apache.org/jira/browse/SPARK-6720) | PySpark MultivariateStatisticalSummary unit test for normL1 and normL2 |  Minor | MLlib, PySpark | Kai Sasaki | Kai Sasaki |
| [SPARK-6713](https://issues.apache.org/jira/browse/SPARK-6713) | Iterators in columnSimilarities to allow flatMap spill |  Major | MLlib | Reza Zadeh | Reza Zadeh |
| [SPARK-6705](https://issues.apache.org/jira/browse/SPARK-6705) | MLLIB ML Pipeline's Logistic Regression has no intercept term |  Major | ML, MLlib | Omede Firouz | Omede Firouz |
| [SPARK-6704](https://issues.apache.org/jira/browse/SPARK-6704) | integrate SparkR docs build tool into Spark doc build |  Blocker | SparkR | Davies Liu | Shivaram Venkataraman |
| [SPARK-6702](https://issues.apache.org/jira/browse/SPARK-6702) | Update the Streaming Tab in Spark UI to show more batch information |  Blocker | Streaming, Web UI | Tathagata Das | Shixiong Zhu |
| [SPARK-6693](https://issues.apache.org/jira/browse/SPARK-6693) | add toString with max lines and width for matrix |  Minor | MLlib | yuhao yang | yuhao yang |
| [SPARK-6671](https://issues.apache.org/jira/browse/SPARK-6671) | Add status command for spark daemons |  Minor | Deploy | PRADEEP CHANUMOLU | PRADEEP CHANUMOLU |
| [SPARK-6663](https://issues.apache.org/jira/browse/SPARK-6663) | Use Literal.create instead of constructor |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-6656](https://issues.apache.org/jira/browse/SPARK-6656) | Allow the application name to be passed in versus pulling from SparkContext.getAppName() |  Major | Streaming | Chris Fregly | Chris Fregly |
| [SPARK-6653](https://issues.apache.org/jira/browse/SPARK-6653) | New configuration property to specify port for sparkYarnAM actor system |  Minor | YARN | Manoj Samel | Shekhar Bansal |
| [SPARK-6638](https://issues.apache.org/jira/browse/SPARK-6638) | optimize StringType in SQL |  Blocker | SQL | Davies Liu | Davies Liu |
| [SPARK-6627](https://issues.apache.org/jira/browse/SPARK-6627) | Clean up of shuffle code and interfaces |  Critical | Shuffle, Spark Core | Patrick Wendell | Patrick Wendell |
| [SPARK-6620](https://issues.apache.org/jira/browse/SPARK-6620) | Speed up toDF() and rdd() functions by constructing converters in ScalaReflection |  Major | SQL | Volodymyr Lyubinets | Volodymyr Lyubinets |
| [SPARK-6618](https://issues.apache.org/jira/browse/SPARK-6618) | HiveMetastoreCatalog.lookupRelation should use fine-grained lock |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-6612](https://issues.apache.org/jira/browse/SPARK-6612) | Python KMeans parity |  Minor | MLlib, PySpark | Joseph K. Bradley | Hrishikesh |
| [SPARK-6611](https://issues.apache.org/jira/browse/SPARK-6611) | Add support for INTEGER as synonym of INT to DDLParser |  Minor | SQL | Santiago M. Mola | Santiago M. Mola |
| [SPARK-6604](https://issues.apache.org/jira/browse/SPARK-6604) | Specify ip of python server scoket |  Minor | PySpark | Weizhong | Weizhong |
| [SPARK-6597](https://issues.apache.org/jira/browse/SPARK-6597) | Replace `input:checkbox` with `input[type="checkbox"] in additional-metrics.js |  Trivial | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-6580](https://issues.apache.org/jira/browse/SPARK-6580) | Optimize LogisticRegressionModel.predictPoint |  Minor | MLlib | Joseph K. Bradley | Yanbo Liang |
| [SPARK-6569](https://issues.apache.org/jira/browse/SPARK-6569) | Kafka directInputStream logs what appear to be incorrect warnings |  Trivial | Streaming | Platon Potapov | Platon Potapov |
| [SPARK-6553](https://issues.apache.org/jira/browse/SPARK-6553) | Support for functools.partial as UserDefinedFunction |  Major | PySpark | Kalle Jepsen | Kalle Jepsen |
| [SPARK-6552](https://issues.apache.org/jira/browse/SPARK-6552) | expose start-slave.sh to user and update outdated doc |  Minor | Deploy, Documentation | Tao Wang | Tao Wang |
| [SPARK-6536](https://issues.apache.org/jira/browse/SPARK-6536) | Add IN to python Column |  Major | SQL | Michael Armbrust | Davies Liu |
| [SPARK-6515](https://issues.apache.org/jira/browse/SPARK-6515) | Use while(true) in OpenHashSet.getPos |  Minor | Spark Core | Xiangrui Meng | Xiangrui Meng |
| [SPARK-6514](https://issues.apache.org/jira/browse/SPARK-6514) | For Kinesis Streaming, use the same region for DynamoDB (KCL checkpoints) as the Kinesis stream itself |  Major | Streaming | Chris Fregly | Chris Fregly |
| [SPARK-6512](https://issues.apache.org/jira/browse/SPARK-6512) | Add contains to OpenHashMap |  Minor | Spark Core | Xiangrui Meng | Xiangrui Meng |
| [SPARK-6511](https://issues.apache.org/jira/browse/SPARK-6511) | Publish "hadoop provided" build with instructions for different distros |  Major | Build | Patrick Wendell | Patrick Wendell |
| [SPARK-6510](https://issues.apache.org/jira/browse/SPARK-6510) | Add Graph#minus method to act as Set#difference |  Major | GraphX | Brennon York | Brennon York |
| [SPARK-6483](https://issues.apache.org/jira/browse/SPARK-6483) | Spark SQL udf(ScalaUdf) is very slow |  Major | SQL | Zhichao  Zhang | Zhichao  Zhang |
| [SPARK-6479](https://issues.apache.org/jira/browse/SPARK-6479) | Create external block store API |  Major | Block Manager, Spark Core | Reynold Xin | Zhan Zhang |
| [SPARK-6477](https://issues.apache.org/jira/browse/SPARK-6477) | Run MIMA tests before the Spark test suite |  Minor | Build | Brennon York | Brennon York |
| [SPARK-6475](https://issues.apache.org/jira/browse/SPARK-6475) | DataFrame should support array types when creating DFs from JavaBeans. |  Major | SQL | Xiangrui Meng | Xiangrui Meng |
| [SPARK-6471](https://issues.apache.org/jira/browse/SPARK-6471) | Metastore schema should only be a subset of parquet schema to support dropping of columns using replace columns |  Blocker | SQL | Yash Datta | Yash Datta |
| [SPARK-6459](https://issues.apache.org/jira/browse/SPARK-6459) | Warn when Column API is constructing trivially true equality |  Critical | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-6453](https://issues.apache.org/jira/browse/SPARK-6453) | Some Mesos\*Suite have a different package with their classes |  Trivial | Mesos | Jongyoul Lee | Jongyoul Lee |
| [SPARK-6448](https://issues.apache.org/jira/browse/SPARK-6448) | History server doesn't log exception when failing to replay log file |  Trivial | Spark Core | Ryan Williams | Ryan Williams |
| [SPARK-6439](https://issues.apache.org/jira/browse/SPARK-6439) | Show per-task metrics when you hover over a task in the web UI visualization |  Major | Web UI | Kay Ousterhout | Kousuke Saruta |
| [SPARK-6433](https://issues.apache.org/jira/browse/SPARK-6433) | hive tests to import spark-sql test JAR for QueryTest access |  Minor | Build, SQL | Steve Loughran | Steve Loughran |
| [SPARK-6428](https://issues.apache.org/jira/browse/SPARK-6428) | Add to style checker "public method must have explicit type defined" |  Major | Build | Reynold Xin | Reynold Xin |
| [SPARK-6426](https://issues.apache.org/jira/browse/SPARK-6426) | User could also point the yarn cluster config directory via YARN\_CONF\_DIR |  Trivial | Documentation | Tao Wang | Tao Wang |
| [SPARK-6423](https://issues.apache.org/jira/browse/SPARK-6423) | MemoryUtils should use memoryOverhead if it's set |  Minor | Mesos | Jongyoul Lee | Jongyoul Lee |
| [SPARK-6406](https://issues.apache.org/jira/browse/SPARK-6406) | Launcher backward compatibility issues |  Minor | Deploy | Nishkam Ravi | Nishkam Ravi |
| [SPARK-6405](https://issues.apache.org/jira/browse/SPARK-6405) | Spark Kryo buffer should be forced to be max. 2GB |  Major | Spark Core | Matt Cheah | Matthew Cheah |
| [SPARK-6397](https://issues.apache.org/jira/browse/SPARK-6397) | Exclude virtual columns from QueryPlan.missingInput |  Minor | SQL | Yadong Qi | Yadong Qi |
| [SPARK-6394](https://issues.apache.org/jira/browse/SPARK-6394) | cleanup BlockManager companion object and improve the getCacheLocs method in DAGScheduler |  Minor | Spark Core | Wenchen Fan | Wenchen Fan |
| [SPARK-6379](https://issues.apache.org/jira/browse/SPARK-6379) | Support a functon to call user-defined functions registered in SQLContext |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-6374](https://issues.apache.org/jira/browse/SPARK-6374) | Add getter for GeneralizedLinearAlgorithm |  Minor | MLlib | yuhao yang | yuhao yang |
| [SPARK-6368](https://issues.apache.org/jira/browse/SPARK-6368) | Build a specialized serializer for Exchange operator. |  Critical | SQL | Yin Huai | Yin Huai |
| [SPARK-6361](https://issues.apache.org/jira/browse/SPARK-6361) | Support adding a column with metadata in DataFrames |  Major | SQL | Xiangrui Meng | Xiangrui Meng |
| [SPARK-6357](https://issues.apache.org/jira/browse/SPARK-6357) | Add unapply in EdgeContext |  Major | GraphX | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-6352](https://issues.apache.org/jira/browse/SPARK-6352) | Supporting non-default OutputCommitter when using saveAsParquetFile |  Major | SQL | Pei-Lun Lee | Pei-Lun Lee |
| [SPARK-6350](https://issues.apache.org/jira/browse/SPARK-6350) | Make mesosExecutorCores configurable in mesos "fine-grained" mode |  Minor | Mesos | Jongyoul Lee | Jongyoul Lee |
| [SPARK-6343](https://issues.apache.org/jira/browse/SPARK-6343) | Make doc more explicit regarding network connectivity requirements |  Minor | Documentation | Peter Parente | Peter Parente |
| [SPARK-6341](https://issues.apache.org/jira/browse/SPARK-6341) | Upgrade breeze from 0.11.1 to 0.11.2 or later |  Minor | ML, MLlib | Yu Ishikawa | Yu Ishikawa |
| [SPARK-6338](https://issues.apache.org/jira/browse/SPARK-6338) | Use standard temp dir mechanisms in tests to avoid orphaned temp files |  Minor | Tests | Sean Owen | Sean Owen |
| [SPARK-6326](https://issues.apache.org/jira/browse/SPARK-6326) | Improve castStruct to be faster |  Minor | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-6303](https://issues.apache.org/jira/browse/SPARK-6303) | Remove unnecessary Average in GeneratedAggregate |  Minor | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-6295](https://issues.apache.org/jira/browse/SPARK-6295) | spark.ml.Evaluator should have evaluate method not taking ParamMap |  Minor | ML | Joseph K. Bradley | Xiangrui Meng |
| [SPARK-6291](https://issues.apache.org/jira/browse/SPARK-6291) | GLM toString should not output full weight vector |  Minor | MLlib | Joseph K. Bradley | Yanbo Liang |
| [SPARK-6288](https://issues.apache.org/jira/browse/SPARK-6288) | Pyrolite calls hashCode to cache previously serialized objects |  Major | PySpark | Xiangrui Meng | Xiangrui Meng |
| [SPARK-6274](https://issues.apache.org/jira/browse/SPARK-6274) | Add streaming examples showing integration with DataFrames and SQL |  Major | Examples, Streaming | Tathagata Das | Tathagata Das |
| [SPARK-6271](https://issues.apache.org/jira/browse/SPARK-6271) | Sort these tokens in alphabetic order to avoid further duplicate in HiveQl |  Minor | SQL | Zhongshuai Pei | Zhongshuai Pei |
| [SPARK-6269](https://issues.apache.org/jira/browse/SPARK-6269) | Using a different implementation of java array reflection for size estimation |  Major | Spark Core | Matt Cheah | Matthew Cheah |
| [SPARK-6253](https://issues.apache.org/jira/browse/SPARK-6253) | Add LassoModel to \_\_all\_\_ in regression.py |  Minor | MLlib, PySpark | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-6252](https://issues.apache.org/jira/browse/SPARK-6252) | Scala NaiveBayes should expose getLambda |  Trivial | MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-6225](https://issues.apache.org/jira/browse/SPARK-6225) | Resolve most build warnings, 1.3.0 edition |  Minor | MLlib, Spark Core, SQL, Streaming | Sean Owen | Sean Owen |
| [SPARK-6219](https://issues.apache.org/jira/browse/SPARK-6219) | Expand Python lint checks to check for  compilation errors |  Minor | Build | Nicholas Chammas | Nicholas Chammas |
| [SPARK-6216](https://issues.apache.org/jira/browse/SPARK-6216) | Check Python version in worker before run PySpark job |  Major | PySpark | Davies Liu | Davies Liu |
| [SPARK-6202](https://issues.apache.org/jira/browse/SPARK-6202) | Test framework should support variable substitution |  Minor | SQL, Tests | Adrian Wang | Adrian Wang |
| [SPARK-6199](https://issues.apache.org/jira/browse/SPARK-6199) | Support CTE |  Major | SQL | haiyang | haiyang |
| [SPARK-6195](https://issues.apache.org/jira/browse/SPARK-6195) | Specialized in-memory column type for fixed-precision decimal |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-6193](https://issues.apache.org/jira/browse/SPARK-6193) | Speed up how spark-ec2 searches for clusters |  Minor | EC2 | Nicholas Chammas | Nicholas Chammas |
| [SPARK-6191](https://issues.apache.org/jira/browse/SPARK-6191) | Generalize spark-ec2's ability to download libraries from PyPI |  Minor | EC2 | Nicholas Chammas | Nicholas Chammas |
| [SPARK-6179](https://issues.apache.org/jira/browse/SPARK-6179) | Support "SHOW PRINCIPALS role\_name;" |  Major | SQL | Zhongshuai Pei | Zhongshuai Pei |
| [SPARK-6178](https://issues.apache.org/jira/browse/SPARK-6178) | Remove unused imports from java classes |  Trivial | Shuffle | Vinod KC | Vinod KC |
| [SPARK-6177](https://issues.apache.org/jira/browse/SPARK-6177) | Add note in LDA example to remind possible coalesce |  Trivial | Examples, MLlib | yuhao yang | yuhao yang |
| [SPARK-6153](https://issues.apache.org/jira/browse/SPARK-6153) | intellij import from maven cannot debug sparksqlclidriver |  Minor | Deploy, SQL | Adrian Wang | Adrian Wang |
| [SPARK-6146](https://issues.apache.org/jira/browse/SPARK-6146) | Support more datatype in SqlParser |  Critical | SQL | Yin Huai | Yin Huai |
| [SPARK-6138](https://issues.apache.org/jira/browse/SPARK-6138) | Enhance the `toArray` method in `SizeTrackingVector` |  Minor | Spark Core | Wenchen Fan | Wenchen Fan |
| [SPARK-6124](https://issues.apache.org/jira/browse/SPARK-6124) | Support jdbc connection properties in OPTIONS part of the query |  Minor | SQL | Volodymyr Lyubinets | Volodymyr Lyubinets |
| [SPARK-6122](https://issues.apache.org/jira/browse/SPARK-6122) | Upgrade Tachyon dependency to 0.6.0 |  Major | Spark Core | Haoyuan Li | Calvin Jia |
| [SPARK-6118](https://issues.apache.org/jira/browse/SPARK-6118) | making package name of deploy.worker.CommandUtils and deploy.CommandUtilsSuite consistent |  Minor | Tests | Nan Zhu | Nan Zhu |
| [SPARK-6103](https://issues.apache.org/jira/browse/SPARK-6103) | remove unused class to import in EdgeRDDImpl |  Trivial | GraphX | Lianhui Wang | Lianhui Wang |
| [SPARK-6087](https://issues.apache.org/jira/browse/SPARK-6087) | Provide actionable exception if Kryo buffer is not large enough |  Major | Spark Core | Patrick Wendell | Lev Khomich |
| [SPARK-6085](https://issues.apache.org/jira/browse/SPARK-6085) | Increase default value for memory overhead |  Minor | Spark Core | Ted Yu | Ted Yu |
| [SPARK-6081](https://issues.apache.org/jira/browse/SPARK-6081) | DriverRunner doesn't support pulling HTTP/HTTPS URIs |  Minor | Spark Submit | Timothy Chen | Timothy Chen |
| [SPARK-6079](https://issues.apache.org/jira/browse/SPARK-6079) | Use index to speed up StatusTracker.getJobIdsForGroup() |  Minor | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-6065](https://issues.apache.org/jira/browse/SPARK-6065) | Optimize word2vec.findSynonyms speed |  Major | MLlib | Joseph K. Bradley | Manoj Kumar |
| [SPARK-6013](https://issues.apache.org/jira/browse/SPARK-6013) | Add more Python ML examples for spark.ml |  Major | ML, PySpark | Joseph K. Bradley | Ram Sriharsha |
| [SPARK-6004](https://issues.apache.org/jira/browse/SPARK-6004) | Pick the best model when training GradientBoostedTrees with validation |  Minor | MLlib | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-5983](https://issues.apache.org/jira/browse/SPARK-5983) | Don't respond to HTTP TRACE in HTTP-based UIs |  Minor | Web UI | Sean Owen | Sean Owen |
| [SPARK-5972](https://issues.apache.org/jira/browse/SPARK-5972) | Cache residuals for GradientBoostedTrees during training |  Minor | MLlib | Joseph K. Bradley | Manoj Kumar |
| [SPARK-5960](https://issues.apache.org/jira/browse/SPARK-5960) | Allow AWS credentials to be passed to KinesisUtils.createStream() |  Major | Streaming | Chris Fregly | Chris Fregly |
| [SPARK-5948](https://issues.apache.org/jira/browse/SPARK-5948) | Support writing to partitioned table for the Parquet data source |  Blocker | SQL | Cheng Lian | Michael Armbrust |
| [SPARK-5947](https://issues.apache.org/jira/browse/SPARK-5947) | First class partitioning support in data sources API |  Blocker | SQL | Cheng Lian | Michael Armbrust |
| [SPARK-5946](https://issues.apache.org/jira/browse/SPARK-5946) | Add Python API for Kafka direct stream |  Major | PySpark, Streaming | Saisai Shao | Saisai Shao |
| [SPARK-5938](https://issues.apache.org/jira/browse/SPARK-5938) | Generate row from json efficiently |  Minor | SQL | Liang-Chi Hsieh | Nathan Howell |
| [SPARK-5933](https://issues.apache.org/jira/browse/SPARK-5933) | Centralize deprecated configs in SparkConf |  Major | Spark Core | Andrew Or | Marcelo Vanzin |
| [SPARK-5932](https://issues.apache.org/jira/browse/SPARK-5932) | Use consistent naming for byte properties |  Major | Spark Core | Andrew Or | Ilya Ganelin |
| [SPARK-5931](https://issues.apache.org/jira/browse/SPARK-5931) | Use consistent naming for time properties |  Major | Spark Core | Andrew Or | Ilya Ganelin |
| [SPARK-5924](https://issues.apache.org/jira/browse/SPARK-5924) | Add the ability to specify withMean or withStd parameters with StandarScaler |  Trivial | ML | Jao Rabary | Jao Rabary |
| [SPARK-5922](https://issues.apache.org/jira/browse/SPARK-5922) | Add diff(other: RDD[VertexId, VD]) in VertexRDD |  Trivial | GraphX | Takeshi Yamamuro | Brennon York |
| [SPARK-5911](https://issues.apache.org/jira/browse/SPARK-5911) | Make Column.cast(to: String) support fixed precision and scale decimal type |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-5831](https://issues.apache.org/jira/browse/SPARK-5831) | When checkpoint file size is bigger than 10, then delete them |  Trivial | Streaming | meiyoula | meiyoula |
| [SPARK-5790](https://issues.apache.org/jira/browse/SPARK-5790) | Add tests for: VertexRDD's won't zip properly for `diff` capability |  Minor | GraphX, Tests | Brennon York | Brennon York |
| [SPARK-5783](https://issues.apache.org/jira/browse/SPARK-5783) | Include filename, line number in eventlog-parsing error message |  Minor | Spark Core | Ryan Williams | Ryan Williams |
| [SPARK-5750](https://issues.apache.org/jira/browse/SPARK-5750) | Document that ordering of elements in shuffled partitions is not deterministic across runs |  Minor | Documentation | Josh Rosen | Ilya Ganelin |
| [SPARK-5726](https://issues.apache.org/jira/browse/SPARK-5726) | Hadamard Vector Product Transformer |  Major | ML, MLlib | Octavian Geagla | Octavian Geagla |
| [SPARK-5708](https://issues.apache.org/jira/browse/SPARK-5708) | Add Slf4jSink to Spark Metrics Sink |  Minor | Spark Core | Judy Nash | Judy Nash |
| [SPARK-5668](https://issues.apache.org/jira/browse/SPARK-5668) | spark\_ec2.py region parameter could be either mandatory or its value displayed |  Minor | EC2 | Miguel Peralvo | Miguel Peralvo |
| [SPARK-5666](https://issues.apache.org/jira/browse/SPARK-5666) | Improvements in Mqtt Spark Streaming |  Minor | Streaming | Prabeesh K | Prabeesh K |
| [SPARK-5644](https://issues.apache.org/jira/browse/SPARK-5644) | Delete tmp dir when sc is stop |  Minor | Spark Core | Weizhong | Weizhong |
| [SPARK-5641](https://issues.apache.org/jira/browse/SPARK-5641) | Allow spark\_ec2.py to copy arbitrary files to cluster |  Minor | EC2 | Florian Verhein | Florian Verhein |
| [SPARK-5628](https://issues.apache.org/jira/browse/SPARK-5628) | Add option to return spark-ec2 version |  Minor | EC2 | Nicholas Chammas | Nicholas Chammas |
| [SPARK-5611](https://issues.apache.org/jira/browse/SPARK-5611) | Allow spark-ec2 repo to be specified in CLI of spark\_ec2.py |  Minor | EC2 | Florian Verhein | Florian Verhein |
| [SPARK-5563](https://issues.apache.org/jira/browse/SPARK-5563) | LDA with online variational inference |  Major | MLlib | Joseph K. Bradley | yuhao yang |
| [SPARK-5560](https://issues.apache.org/jira/browse/SPARK-5560) | LDA EM should scale to more iterations |  Major | MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-5559](https://issues.apache.org/jira/browse/SPARK-5559) | Flaky test: o.a.s.streaming.flume.FlumeStreamSuite |  Major | Streaming, Tests | Kousuke Saruta | Kousuke Saruta |
| [SPARK-5522](https://issues.apache.org/jira/browse/SPARK-5522) | Accelerate the History Server start |  Major | Spark Core, Web UI | Liangliang Gu | Liangliang Gu |
| [SPARK-5436](https://issues.apache.org/jira/browse/SPARK-5436) | Validate GradientBoostedTrees during training |  Major | MLlib | Joseph K. Bradley | Manoj Kumar |
| [SPARK-5366](https://issues.apache.org/jira/browse/SPARK-5366) | check for mode of private key file |  Minor | EC2 | liu chang | liu chang |
| [SPARK-5338](https://issues.apache.org/jira/browse/SPARK-5338) | Support cluster mode with Mesos |  Major | Mesos | Timothy Chen | Timothy Chen |
| [SPARK-5313](https://issues.apache.org/jira/browse/SPARK-5313) | Create simple framework for highlighting changes introduced in a PR |  Minor | Project Infra | Nicholas Chammas | Brennon York |
| [SPARK-5283](https://issues.apache.org/jira/browse/SPARK-5283) | ML sharedParams should be private |  Major | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-5157](https://issues.apache.org/jira/browse/SPARK-5157) | Configure more JVM options properly when we use ConcMarkSweepGC for AM. |  Trivial | YARN | Kousuke Saruta | Kousuke Saruta |
| [SPARK-5134](https://issues.apache.org/jira/browse/SPARK-5134) | Bump default Hadoop version to 2+ |  Minor | Build | Ryan Williams | Ryan Williams |
| [SPARK-5112](https://issues.apache.org/jira/browse/SPARK-5112) | Expose SizeEstimator as a developer API |  Minor | Spark Core | Sandy Ryza | Sandy Ryza |
| [SPARK-4925](https://issues.apache.org/jira/browse/SPARK-4925) | Publish Spark SQL hive-thriftserver maven artifact |  Critical | Build, SQL | Alex Liu | Patrick Wendell |
| [SPARK-4924](https://issues.apache.org/jira/browse/SPARK-4924) | Factor out code to launch Spark applications into a separate library |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-4897](https://issues.apache.org/jira/browse/SPARK-4897) | Python 3 support |  Blocker | PySpark | Josh Rosen | Davies Liu |
| [SPARK-4820](https://issues.apache.org/jira/browse/SPARK-4820) | Spark build encounters "File name too long" on some encrypted filesystems |  Minor | Documentation | Patrick Wendell | Theodore Vasiloudis |
| [SPARK-4699](https://issues.apache.org/jira/browse/SPARK-4699) | Make caseSensitive configurable in Analyzer.scala |  Major | SQL | Jacky Li | Fei Wang |
| [SPARK-4600](https://issues.apache.org/jira/browse/SPARK-4600) | org.apache.spark.graphx.VertexRDD.diff does not work |  Minor | Documentation, GraphX | Teppei Tosa | Brennon York |
| [SPARK-4556](https://issues.apache.org/jira/browse/SPARK-4556) | Document that make-distribution.sh is required to make a runnable distribution |  Minor | Build, Deploy, Documentation | Sean Busbey | Sean Owen |
| [SPARK-4550](https://issues.apache.org/jira/browse/SPARK-4550) | In sort-based shuffle, store map outputs in serialized form |  Critical | Shuffle, Spark Core | Sandy Ryza | Sandy Ryza |
| [SPARK-4423](https://issues.apache.org/jira/browse/SPARK-4423) | Improve foreach() documentation to avoid confusion between local- and cluster-mode behavior |  Minor | Documentation | Josh Rosen | Ilya Ganelin |
| [SPARK-4346](https://issues.apache.org/jira/browse/SPARK-4346) | YarnClientSchedulerBack.asyncMonitorApplication should be common with Client.monitorApplication |  Major | Scheduler, YARN | Thomas Graves | Weizhong |
| [SPARK-4011](https://issues.apache.org/jira/browse/SPARK-4011) | tighten the visibility of the members in Master/Worker class |  Minor | Spark Core | Nan Zhu | Nan Zhu |
| [SPARK-3674](https://issues.apache.org/jira/browse/SPARK-3674) | Add support for launching YARN clusters in spark-ec2 |  Major | EC2 | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-3642](https://issues.apache.org/jira/browse/SPARK-3642) | Better document the nuances of shared variables |  Minor | Documentation | Sandy Ryza | Sandy Ryza |
| [SPARK-3596](https://issues.apache.org/jira/browse/SPARK-3596) | Support changing the yarn client monitor interval |  Major | YARN | Thomas Graves | Weizhong |
| [SPARK-3591](https://issues.apache.org/jira/browse/SPARK-3591) | Provide "fire and forget" option for YARN cluster mode |  Major | YARN | Andrew Or | Tao Wang |
| [SPARK-3524](https://issues.apache.org/jira/browse/SPARK-3524) | remove workaround to pickle array of float for Pyrolite |  Major | PySpark | Davies Liu | Xiangrui Meng |
| [SPARK-3454](https://issues.apache.org/jira/browse/SPARK-3454) | Expose JSON representation of data shown in WebUI |  Major | Web UI | Kousuke Saruta | Imran Rashid |
| [SPARK-3381](https://issues.apache.org/jira/browse/SPARK-3381) | DecisionTree: eliminate bins for unordered features |  Trivial | MLlib | Joseph K. Bradley | Manoj Kumar |
| [SPARK-3357](https://issues.apache.org/jira/browse/SPARK-3357) | Internal log messages should be set at DEBUG level instead of INFO |  Minor | Spark Core | Xiangrui Meng | Sean Owen |
| [SPARK-3355](https://issues.apache.org/jira/browse/SPARK-3355) | Allow running maven tests in run-tests |  Major | Project Infra | Patrick Wendell | Brennon York |
| [SPARK-3276](https://issues.apache.org/jira/browse/SPARK-3276) | Provide a API to specify MIN\_REMEMBER\_DURATION for files to consider as input in streaming |  Minor | Streaming | Jack Hu | Emre Sevinç |
| [SPARK-3164](https://issues.apache.org/jira/browse/SPARK-3164) | Store DecisionTree Split.categories as Set |  Trivial | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-3074](https://issues.apache.org/jira/browse/SPARK-3074) | support groupByKey() with hot keys in PySpark |  Major | PySpark | Davies Liu | Davies Liu |
| [SPARK-2149](https://issues.apache.org/jira/browse/SPARK-2149) | [MLLIB] Univariate kernel density estimation |  Major | MLlib | Sandy Ryza | Sandy Ryza |
| [SPARK-2087](https://issues.apache.org/jira/browse/SPARK-2087) | Clean Multi-user semantics for thrift JDBC/ODBC server. |  Minor | SQL | Michael Armbrust | Cheng Hao |
| [SPARK-1706](https://issues.apache.org/jira/browse/SPARK-1706) | Allow multiple executors per worker in Standalone mode |  Major | Deploy | Patrick Wendell | Nan Zhu |
| [SPARK-1684](https://issues.apache.org/jira/browse/SPARK-1684) | Merge script should standardize SPARK-XXX prefix |  Minor | Project Infra | Patrick Wendell | Michelle Casbon |
| [SPARK-677](https://issues.apache.org/jira/browse/SPARK-677) | PySpark should not collect results through local filesystem |  Major | PySpark | Josh Rosen | Davies Liu |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-9380](https://issues.apache.org/jira/browse/SPARK-9380) | Pregel example fix in graphx-programming-guide |  Major | Documentation | Alexander Ulanov | Alexander Ulanov |
| [SPARK-9040](https://issues.apache.org/jira/browse/SPARK-9040) | StructField datatype Conversion Error |  Major | PySpark, Spark Core, SQL | Sandeep Pal |  |
| [SPARK-9033](https://issues.apache.org/jira/browse/SPARK-9033) | scala.MatchError: interface java.util.Map (of class java.lang.Class) with Spark SQL |  Major | SQL | Pavel | Josh Rosen |
| [SPARK-8726](https://issues.apache.org/jira/browse/SPARK-8726) | Wrong spark.executor.memory when using different EC2 master and worker machine types |  Major | EC2 | Stefano Parmesan | Stefano Parmesan |
| [SPARK-8394](https://issues.apache.org/jira/browse/SPARK-8394) | HistoryServer doesn't read kerberos opts from config |  Minor | Spark Core | Steve Loughran | Marcelo Vanzin |
| [SPARK-8038](https://issues.apache.org/jira/browse/SPARK-8038) | PySpark SQL when functions is broken on Column |  Blocker | PySpark, SQL | Olivier Girardot | Olivier Girardot |
| [SPARK-8037](https://issues.apache.org/jira/browse/SPARK-8037) | Ignores files whose name starts with "." while enumerating files in HadoopFsRelation |  Minor | SQL | Cheng Lian | Cheng Lian |
| [SPARK-8028](https://issues.apache.org/jira/browse/SPARK-8028) | SparkR does not work with `--jars` and `--packages` |  Critical | SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-8027](https://issues.apache.org/jira/browse/SPARK-8027) | SparkR docs should be included in the distribution |  Critical | SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-8023](https://issues.apache.org/jira/browse/SPARK-8023) | Random Number Generation inconsistent in projections in DataFrame |  Blocker | SQL | Burak Yavuz | Yin Huai |
| [SPARK-8020](https://issues.apache.org/jira/browse/SPARK-8020) | Spark SQL conf in spark-defaults.conf make metadataHive get constructed too early |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-8015](https://issues.apache.org/jira/browse/SPARK-8015) | flume-sink should not depend on Guava. |  Minor | Streaming | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-8014](https://issues.apache.org/jira/browse/SPARK-8014) | DataFrame.write.mode("error").save(...) should not scan the output folder |  Major | SQL | Jianshi Huang | Cheng Lian |
| [SPARK-7985](https://issues.apache.org/jira/browse/SPARK-7985) | Remove "fittingParamMap" references. Update ML Doc "Estimator, Transformer, and Param" examples. |  Minor | Documentation, ML | Mike Dusenberry | Mike Dusenberry |
| [SPARK-7978](https://issues.apache.org/jira/browse/SPARK-7978) | DecimalType should not be singleton |  Blocker | PySpark, SQL | Davies Liu | Davies Liu |
| [SPARK-7972](https://issues.apache.org/jira/browse/SPARK-7972) | When parse window spec frame, we need to do case insensitive matches. |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-7965](https://issues.apache.org/jira/browse/SPARK-7965) | Wrong answers for queries with multiple window specs in the same expression |  Major | SQL | Josh Rosen | Yin Huai |
| [SPARK-7962](https://issues.apache.org/jira/browse/SPARK-7962) | Mesos cluster mode is broken |  Critical | Mesos, Spark Submit | Timothy Chen | Timothy Chen |
| [SPARK-7958](https://issues.apache.org/jira/browse/SPARK-7958) | Failed StreamingContext.start() can leak active actors |  Critical | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-7950](https://issues.apache.org/jira/browse/SPARK-7950) | HiveThriftServer2.startWithContext() doesn't set "spark.sql.hive.version" |  Critical | SQL | Cheng Lian | Cheng Lian |
| [SPARK-7946](https://issues.apache.org/jira/browse/SPARK-7946) | DecayFactor wrongly set in StreamingKMeans |  Major | MLlib, Streaming | Manoj Kumar | Manoj Kumar |
| [SPARK-7933](https://issues.apache.org/jira/browse/SPARK-7933) | The default merge script JIRA username / password should be empty |  Minor | Project Infra | Kay Ousterhout | Kay Ousterhout |
| [SPARK-7932](https://issues.apache.org/jira/browse/SPARK-7932) | Scheduler delay shown in event timeline is incorrect |  Minor | Web UI | Kay Ousterhout | Kay Ousterhout |
| [SPARK-7931](https://issues.apache.org/jira/browse/SPARK-7931) | Do not restart a socket receiver when the receiver is being shutdown |  Critical | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-7930](https://issues.apache.org/jira/browse/SPARK-7930) | Shutdown hook deletes rool local dir before SparkContext is stopped, throwing errors |  Critical | Spark Core, Streaming | Tathagata Das | Tathagata Das |
| [SPARK-7920](https://issues.apache.org/jira/browse/SPARK-7920) | Make MLlib ChiSqSelector Serializable (& Fix Related Documentation Example). |  Minor | MLlib | Mike Dusenberry | Mike Dusenberry |
| [SPARK-7907](https://issues.apache.org/jira/browse/SPARK-7907) | Rename ThriftServer tab in Spark UI |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-7899](https://issues.apache.org/jira/browse/SPARK-7899) | PySpark sql/tests breaks pylint validation |  Major | PySpark, Tests | Michael Nazario | Michael Nazario |
| [SPARK-7896](https://issues.apache.org/jira/browse/SPARK-7896) | IndexOutOfBoundsException in ChainedBuffer |  Blocker | Spark Core | Arun Ahuja | Sandy Ryza |
| [SPARK-7883](https://issues.apache.org/jira/browse/SPARK-7883) | Fixing broken trainImplicit example in MLlib Collaborative Filtering documentation. |  Trivial | Documentation, MLlib | Mike Dusenberry | Mike Dusenberry |
| [SPARK-7873](https://issues.apache.org/jira/browse/SPARK-7873) | Serializer re-use + Kryo autoReset disabled leads to AraryIndexOutOfBounds exception in sort-shuffle bypassMergeSort path |  Blocker | Shuffle, Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-7868](https://issues.apache.org/jira/browse/SPARK-7868) | Ignores "\_temporary" directories while listing files in HadoopFsRelation |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-7864](https://issues.apache.org/jira/browse/SPARK-7864) | Clicking a job's DAG graph on Web UI kills the job as the link is broken |  Blocker | Web UI | Carson Wang | Andrew Or |
| [SPARK-7858](https://issues.apache.org/jira/browse/SPARK-7858) | DataSourceStrategy.createPhysicalRDD should use output schema when performing row conversions, not relation schema |  Critical | SQL | Josh Rosen | Josh Rosen |
| [SPARK-7853](https://issues.apache.org/jira/browse/SPARK-7853) | ClassNotFoundException for SparkSQL |  Blocker | SQL | Cheng Hao | Yin Huai |
| [SPARK-7850](https://issues.apache.org/jira/browse/SPARK-7850) | Hive 0.12.0 profile in POM should be removed |  Minor | Build, Documentation | Cheolsoo Park | Cheolsoo Park |
| [SPARK-7847](https://issues.apache.org/jira/browse/SPARK-7847) | Fix dynamic partition path escaping |  Critical | SQL | Cheng Lian | Cheng Lian |
| [SPARK-7844](https://issues.apache.org/jira/browse/SPARK-7844) | Broken tests in KernelDensity |  Critical | MLlib | Manoj Kumar | Manoj Kumar |
| [SPARK-7842](https://issues.apache.org/jira/browse/SPARK-7842) | For InsertIntoHadoopFsRelation, if an exception is thrown while committing a task, the task is not aborted |  Critical | SQL | Cheng Lian | Cheng Lian |
| [SPARK-7840](https://issues.apache.org/jira/browse/SPARK-7840) | Move Python DataFrame.insertInto into DataFrameWriter |  Major | PySpark, SQL | Davies Liu | Davies Liu |
| [SPARK-7819](https://issues.apache.org/jira/browse/SPARK-7819) | Isolated Hive Client Loader appears to cause Native Library libMapRClient.4.0.2-mapr.so already loaded in another classloader error |  Critical | SQL | Fi | Yin Huai |
| [SPARK-7806](https://issues.apache.org/jira/browse/SPARK-7806) | spark-ec2 launch script fails for Python3 |  Minor | EC2, PySpark | Matthew Goodman | Matthew Goodman |
| [SPARK-7805](https://issues.apache.org/jira/browse/SPARK-7805) | Move SQLTestUtils.scala form src/main |  Critical | SQL | Patrick Wendell | Yin Huai |
| [SPARK-7800](https://issues.apache.org/jira/browse/SPARK-7800) | isDefined should not marked too early in putNewKey |  Minor | Spark Core | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-7793](https://issues.apache.org/jira/browse/SPARK-7793) | Use getOrElse for getting the threshold of SVM model |  Minor | MLlib | Shuo Xiang | Shuo Xiang |
| [SPARK-7790](https://issues.apache.org/jira/browse/SPARK-7790) | when use dynamic partitions, the partition string can be wrong without looking at the type |  Major | SQL | Adrian Wang | Adrian Wang |
| [SPARK-7788](https://issues.apache.org/jira/browse/SPARK-7788) | Streaming \| Kinesis \| KinesisReceiver blocks in onStart |  Blocker | Streaming | Aniket Bhatnagar | Tathagata Das |
| [SPARK-7787](https://issues.apache.org/jira/browse/SPARK-7787) | SerializableAWSCredentials in KinesisReceiver cannot be deserialized |  Blocker | Streaming | Chris Fregly | Tathagata Das |
| [SPARK-7782](https://issues.apache.org/jira/browse/SPARK-7782) | A small problem on history server webpage |  Minor | Web UI | Xia Hu | Shekhar Bansal |
| [SPARK-7779](https://issues.apache.org/jira/browse/SPARK-7779) | Dynamic allocation: confusing message when canceling requests |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-7776](https://issues.apache.org/jira/browse/SPARK-7776) | Add shutdown hook to stop StreamingContext |  Blocker | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-7766](https://issues.apache.org/jira/browse/SPARK-7766) | KryoSerializerInstance reuse is not safe when auto-reset is disabled |  Blocker | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-7763](https://issues.apache.org/jira/browse/SPARK-7763) | Partition columns of data source tables should be persisted into metastore when creating persisted tables |  Blocker | SQL | Cheng Lian | Cheng Lian |
| [SPARK-7760](https://issues.apache.org/jira/browse/SPARK-7760) | Master & Worker json endpoints missing |  Blocker | Web UI | Imran Rashid | Imran Rashid |
| [SPARK-7758](https://issues.apache.org/jira/browse/SPARK-7758) | Failed to start thrift server when metastore is postgre sql |  Blocker | SQL | Tao Wang | Tao Wang |
| [SPARK-7756](https://issues.apache.org/jira/browse/SPARK-7756) | Ensure Spark runs clean on IBM Java implementation |  Minor | Spark Core | Tim Ellison | Tim Ellison |
| [SPARK-7750](https://issues.apache.org/jira/browse/SPARK-7750) | Rename "json" endpoints to "api" endpoints |  Critical | Web UI | Hari Shreedharan | Hari Shreedharan |
| [SPARK-7749](https://issues.apache.org/jira/browse/SPARK-7749) | Parquet metastore conversion does not use metastore cache |  Blocker | SQL | Yin Huai | Cheng Lian |
| [SPARK-7741](https://issues.apache.org/jira/browse/SPARK-7741) | ContextCleaner not used by many DStream operations |  Blocker | Streaming | Tathagata Das | Andrew Or |
| [SPARK-7737](https://issues.apache.org/jira/browse/SPARK-7737) | parquet schema discovery should not fail because of empty \_temporary dir |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-7726](https://issues.apache.org/jira/browse/SPARK-7726) | Maven Install Breaks When Upgrading Scala 2.11.2--\>[2.11.3 or higher] |  Blocker | Build | Patrick Wendell | Iulian Dragos |
| [SPARK-7722](https://issues.apache.org/jira/browse/SPARK-7722) | Style checks do not run for Kinesis on Jenkins |  Critical | Project Infra, Streaming | Patrick Wendell | Tathagata Das |
| [SPARK-7719](https://issues.apache.org/jira/browse/SPARK-7719) | Java 6 code in UnsafeShuffleWriterSuite |  Critical | Spark Core, Tests | Patrick Wendell | Josh Rosen |
| [SPARK-7718](https://issues.apache.org/jira/browse/SPARK-7718) | Speed up data source partitioning by avoiding cleaning closures |  Critical | SQL | Andrew Or | Andrew Or |
| [SPARK-7713](https://issues.apache.org/jira/browse/SPARK-7713) | Use shared broadcast hadoop conf for partitioned table scan. |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-7711](https://issues.apache.org/jira/browse/SPARK-7711) | startTime() is missing |  Minor | PySpark | Sam Steingold | Holden Karau |
| [SPARK-7697](https://issues.apache.org/jira/browse/SPARK-7697) | Column with an unsigned int should be treated as long in JDBCRDD |  Major | SQL | DAITO Teppei | Liang-Chi Hsieh |
| [SPARK-7694](https://issues.apache.org/jira/browse/SPARK-7694) | Use getOrElse for getting the threshold of LR model |  Minor | MLlib | Shuo Xiang | Shuo Xiang |
| [SPARK-7687](https://issues.apache.org/jira/browse/SPARK-7687) | DataFrame.describe() should cast all aggregates to String |  Critical | SQL | Josh Rosen | Josh Rosen |
| [SPARK-7686](https://issues.apache.org/jira/browse/SPARK-7686) | Runnable DescribeCommand is assigned wrong physical plan output attributes in SparkStrategies |  Critical | SQL | Josh Rosen | Josh Rosen |
| [SPARK-7684](https://issues.apache.org/jira/browse/SPARK-7684) | TestHive.reset complains Database does not exist: default |  Major | SQL | Yin Huai | Cheng Lian |
| [SPARK-7673](https://issues.apache.org/jira/browse/SPARK-7673) | DataSourceStrategy's buildPartitionedTableScan always list list file status for all data files |  Blocker | SQL | Yin Huai | Cheng Lian |
| [SPARK-7672](https://issues.apache.org/jira/browse/SPARK-7672) | Number format exception with spark.kryoserializer.buffer.mb |  Critical | Spark Core | Nishkam Ravi | Nishkam Ravi |
| [SPARK-7669](https://issues.apache.org/jira/browse/SPARK-7669) | Builds against Hadoop 2.6+ get inconsistent curator dependencies |  Minor | Build | Steve Loughran | Steve Loughran |
| [SPARK-7668](https://issues.apache.org/jira/browse/SPARK-7668) | Matrix.map should preserve transpose property |  Major | MLlib | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-7664](https://issues.apache.org/jira/browse/SPARK-7664) | DAG visualization: Fix incorrect link paths of DAG. |  Minor | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-7662](https://issues.apache.org/jira/browse/SPARK-7662) | Exception of multi-attribute generator anlysis in projection |  Blocker | SQL | Cheng Hao | Cheng Hao |
| [SPARK-7660](https://issues.apache.org/jira/browse/SPARK-7660) | Snappy-java buffer-sharing bug leads to data corruption / test failures |  Blocker | Shuffle, Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-7655](https://issues.apache.org/jira/browse/SPARK-7655) | Akka timeout exception from ask and table broadcast |  Blocker | Scheduler, Spark Core | Yin Huai | Shixiong Zhu |
| [SPARK-7652](https://issues.apache.org/jira/browse/SPARK-7652) | Performance regression in naive Bayes prediction |  Major | MLlib | Xiangrui Meng | Liang-Chi Hsieh |
| [SPARK-7651](https://issues.apache.org/jira/browse/SPARK-7651) | PySpark GMM predict, predictSoft should fail on bad input |  Minor | MLlib, PySpark | Joseph K. Bradley | Meethu Mathew |
| [SPARK-7643](https://issues.apache.org/jira/browse/SPARK-7643) | Number of executors and partitions are displayed wrongly in storage tab |  Critical | Web UI | Xiangrui Meng | Xiangrui Meng |
| [SPARK-7631](https://issues.apache.org/jira/browse/SPARK-7631) | treenode argString should not print children |  Minor | SQL | Fei Wang | Fei Wang |
| [SPARK-7624](https://issues.apache.org/jira/browse/SPARK-7624) | Task scheduler delay is increasing time over time in spark local mode |  Major | Spark Core | Jack Hu | Davies Liu |
| [SPARK-7619](https://issues.apache.org/jira/browse/SPARK-7619) | autodoc\_docstring\_signature doesn't work for some classes/methods under spark.ml |  Major | ML, PySpark | Xiangrui Meng | Xiangrui Meng |
| [SPARK-7616](https://issues.apache.org/jira/browse/SPARK-7616) | Column order can be corrupted when saving DataFrame as a partitioned table |  Blocker | SQL | Yin Huai | Cheng Lian |
| [SPARK-7608](https://issues.apache.org/jira/browse/SPARK-7608) | Memory leak in RDDOperationGraphListener |  Critical | Spark Core, Web UI | Shixiong Zhu | Andrew Or |
| [SPARK-7601](https://issues.apache.org/jira/browse/SPARK-7601) | Support Insert into JDBC Datasource |  Major | SQL | Venkata Ramana G | Venkata Ramana G |
| [SPARK-7599](https://issues.apache.org/jira/browse/SPARK-7599) | Don't restrict customized FSBasedRelation OutputCommitter to be subclass of FileOutputFormat |  Blocker | SQL | Cheng Lian | Cheng Lian |
| [SPARK-7595](https://issues.apache.org/jira/browse/SPARK-7595) | Window will cause resolve failed with self join |  Minor | SQL | Weizhong | Weizhong |
| [SPARK-7592](https://issues.apache.org/jira/browse/SPARK-7592) | Resolution set to "Pending Closed" when using PR merge script |  Blocker | Project Infra | Patrick Wendell | Patrick Wendell |
| [SPARK-7569](https://issues.apache.org/jira/browse/SPARK-7569) | Improve error for binary expressions |  Critical | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-7568](https://issues.apache.org/jira/browse/SPARK-7568) | ml.LogisticRegression doesn't output the right prediction |  Blocker | ML | Xiangrui Meng | DB Tsai |
| [SPARK-7567](https://issues.apache.org/jira/browse/SPARK-7567) | Migrating Parquet data source to FSBasedRelation |  Blocker | SQL | Cheng Lian | Cheng Lian |
| [SPARK-7566](https://issues.apache.org/jira/browse/SPARK-7566) | HiveContext.analyzer cannot be overriden |  Major | SQL | Santiago M. Mola | Santiago M. Mola |
| [SPARK-7565](https://issues.apache.org/jira/browse/SPARK-7565) | Broken maps in jsonRDD |  Blocker | SQL | Paul Colomiets | Davies Liu |
| [SPARK-7563](https://issues.apache.org/jira/browse/SPARK-7563) | OutputCommitCoordinator.stop() should only be executed in driver |  Critical | Spark Core | Hailong Wen | Josh Rosen |
| [SPARK-7552](https://issues.apache.org/jira/browse/SPARK-7552) | Close files correctly when iteration is finished in WAL recovery |  Major | Streaming | Saisai Shao | Saisai Shao |
| [SPARK-7532](https://issues.apache.org/jira/browse/SPARK-7532) | Make StreamingContext.start() idempotent |  Blocker | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-7530](https://issues.apache.org/jira/browse/SPARK-7530) | Add API to get the current state of a StreamingContext |  Blocker | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-7522](https://issues.apache.org/jira/browse/SPARK-7522) | ML Examples option for dataFormat should not be enclosed in angle brackets |  Minor | Examples | Bryan Cutler | Bryan Cutler |
| [SPARK-7519](https://issues.apache.org/jira/browse/SPARK-7519) | Some minor UI bugs in the new HiveThriftServer2 web UI |  Minor | SQL | Yi Tian | Yi Tian |
| [SPARK-7512](https://issues.apache.org/jira/browse/SPARK-7512) | SparkR RDD show method doesn't work after transformations |  Major | SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-7504](https://issues.apache.org/jira/browse/SPARK-7504) | NullPointerException when initializing SparkContext in YARN-cluster mode |  Major | Deploy, YARN | Zoltán Zvara | Zoltán Zvara |
| [SPARK-7503](https://issues.apache.org/jira/browse/SPARK-7503) | Resources in .sparkStaging directory can't be cleaned up on error |  Major | YARN | Kousuke Saruta | Kousuke Saruta |
| [SPARK-7498](https://issues.apache.org/jira/browse/SPARK-7498) | Params.setDefault should keep varargs annotation |  Major | Java API, ML | Joseph K. Bradley | Xiangrui Meng |
| [SPARK-7490](https://issues.apache.org/jira/browse/SPARK-7490) | MapOutputTracker: close input streams to free native memory |  Minor | Spark Core | Evan Jones | Evan Jones |
| [SPARK-7489](https://issues.apache.org/jira/browse/SPARK-7489) | Spark shell crashes when compiled with scala 2.11 and SPARK\_PREPEND\_CLASSES=true |  Major | Spark Shell | Vinod KC | Vinod KC |
| [SPARK-7485](https://issues.apache.org/jira/browse/SPARK-7485) | Remove python artifacts from the assembly jar |  Major | Build | Thomas Graves | Marcelo Vanzin |
| [SPARK-7470](https://issues.apache.org/jira/browse/SPARK-7470) | Spark shell not having hive crashes SQLContext |  Major | Spark Shell, SQL | Andrew Or | Andrew Or |
| [SPARK-7452](https://issues.apache.org/jira/browse/SPARK-7452) | need to sort when convert to array in topByKey |  Major | MLlib | Shuo Xiang | Shuo Xiang |
| [SPARK-7451](https://issues.apache.org/jira/browse/SPARK-7451) | Spark on Yarn : Preemption of executors is counted as failure causing Spark job to fail |  Major | YARN | Ashwin Shankar | Ashwin Shankar |
| [SPARK-7447](https://issues.apache.org/jira/browse/SPARK-7447) | Large Job submission lag when using Parquet w/ Schema Merging |  Major | PySpark, Spark Core, Spark Submit | Brad Willard | Liang-Chi Hsieh |
| [SPARK-7438](https://issues.apache.org/jira/browse/SPARK-7438) | Validation Error while running  countApproxDistinct  with relative accuracy  \>= 0.38 |  Minor | Spark Core | Vinod KC | Vinod KC |
| [SPARK-7436](https://issues.apache.org/jira/browse/SPARK-7436) | Cannot implement nor use custom StandaloneRecoveryModeFactory implementations |  Major | Deploy | Jacek Lewandowski | Jacek Lewandowski |
| [SPARK-7432](https://issues.apache.org/jira/browse/SPARK-7432) | Flaky test in PySpark CrossValidator doc test |  Critical | ML, PySpark | Joseph K. Bradley | Xiangrui Meng |
| [SPARK-7431](https://issues.apache.org/jira/browse/SPARK-7431) | PySpark CrossValidatorModel needs to call parent init |  Major | ML, PySpark | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-7418](https://issues.apache.org/jira/browse/SPARK-7418) | Flaky test: o.a.s.deploy.SparkSubmitUtilsSuite search for artifacts |  Critical | Tests | Andrew Or | Burak Yavuz |
| [SPARK-7417](https://issues.apache.org/jira/browse/SPARK-7417) | Flaky test: o.a.s.deploy.SparkSubmitUtilsSuite neglect dependencies |  Critical | Tests | Andrew Or | Burak Yavuz |
| [SPARK-7411](https://issues.apache.org/jira/browse/SPARK-7411) | CTAS parser is incomplete |  Blocker | SQL | Michael Armbrust | Cheng Hao |
| [SPARK-7405](https://issues.apache.org/jira/browse/SPARK-7405) | Fix the bug that ReceiverInputDStream doesn't report InputInfo |  Major | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7403](https://issues.apache.org/jira/browse/SPARK-7403) | Link URL in objects on Timeline View is wrong in case of running on YARN |  Minor | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-7399](https://issues.apache.org/jira/browse/SPARK-7399) | Master fails on 2.11 with compilation error |  Blocker | Spark Core | Iulian Dragos | Tijo Thomas |
| [SPARK-7392](https://issues.apache.org/jira/browse/SPARK-7392) | Kryo buffer size can not be larger than 2M |  Critical | Spark Core | Zhang, Liye | Zhang, Liye |
| [SPARK-7390](https://issues.apache.org/jira/browse/SPARK-7390) | CovarianceCounter in StatFunctions might calculate incorrect result |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-7384](https://issues.apache.org/jira/browse/SPARK-7384) | Fix flaky tests for distributed mode in BroadcastSuite |  Major | Spark Core, Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7378](https://issues.apache.org/jira/browse/SPARK-7378) | HistoryServer does not handle "deep" link when lazy loading app |  Blocker | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-7375](https://issues.apache.org/jira/browse/SPARK-7375) | Avoid defensive copying in SQL exchange operator when sort-based shuffle buffers data in serialized form |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-7361](https://issues.apache.org/jira/browse/SPARK-7361) | Throw unambiguous exception when attempting to start multiple StreamingContexts in the same JVM |  Blocker | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-7345](https://issues.apache.org/jira/browse/SPARK-7345) | Spark cannot detect renamed columns using JDBC connector |  Major | SQL | Oleg Sidorkin | Oleg Sidorkin |
| [SPARK-7343](https://issues.apache.org/jira/browse/SPARK-7343) | C4 instance types need to be added to spark\_ec2.py |  Minor | EC2 | Jey Kottalam | Shivaram Venkataraman |
| [SPARK-7330](https://issues.apache.org/jira/browse/SPARK-7330) | JDBC RDD could lead to NPE when the date field is null |  Major | SQL | Adrian Wang | Adrian Wang |
| [SPARK-7326](https://issues.apache.org/jira/browse/SPARK-7326) | Performing window() on a WindowedDStream doesn't work all the time |  Major | Streaming | Wesley Miao | Wesley Miao |
| [SPARK-7318](https://issues.apache.org/jira/browse/SPARK-7318) | DStream isn't cleaning closures correctly |  Critical | Spark Core, Streaming | Andrew Or | Andrew Or |
| [SPARK-7312](https://issues.apache.org/jira/browse/SPARK-7312) | SPARK-6913 broke jdk6 build |  Blocker | Build | Thomas Graves | Yin Huai |
| [SPARK-7306](https://issues.apache.org/jira/browse/SPARK-7306) | SPARK-7224 broke build with jdk6 |  Blocker | Build | Thomas Graves | Patrick Wendell |
| [SPARK-7302](https://issues.apache.org/jira/browse/SPARK-7302) | SPARK building documentation still mentions building for yarn 0.23 |  Minor | Documentation | Thomas Graves | Sean Owen |
| [SPARK-7299](https://issues.apache.org/jira/browse/SPARK-7299) | saving Oracle-source DataFrame to Hive changes scale |  Major | SQL | Ken Geis | Liang-Chi Hsieh |
| [SPARK-7288](https://issues.apache.org/jira/browse/SPARK-7288) | Suppress compiler warnings due to use of sun.misc.Unsafe |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-7282](https://issues.apache.org/jira/browse/SPARK-7282) | Fix a flaky test in StreamingListenerSuite |  Major | Streaming, Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7281](https://issues.apache.org/jira/browse/SPARK-7281) | No option for AM native library path in yarn-client mode. |  Minor | YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-7278](https://issues.apache.org/jira/browse/SPARK-7278) | Inconsistent handling of dates in PySparks Row object |  Major | PySpark | Kalle Jepsen | Kalle Jepsen |
| [SPARK-7277](https://issues.apache.org/jira/browse/SPARK-7277) | property mapred.reduce.task replaced by spark.sql.shuffle.partitions |  Major | SQL | Sebastian | Liang-Chi Hsieh |
| [SPARK-7270](https://issues.apache.org/jira/browse/SPARK-7270) | StringType dynamic partition cast to DecimalType in Spark Sql Hive |  Major | SQL | Feixiang Yan | Liang-Chi Hsieh |
| [SPARK-7269](https://issues.apache.org/jira/browse/SPARK-7269) | Incorrect aggregation analysis |  Major | SQL | Cheng Hao | Wenchen Fan |
| [SPARK-7237](https://issues.apache.org/jira/browse/SPARK-7237) | Many user provided closures are not actually cleaned |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-7236](https://issues.apache.org/jira/browse/SPARK-7236) | AkkaUtils askWithReply sleeps indefinitely when a timeout exception is thrown |  Critical | Spark Core | Bryan Cutler | Bryan Cutler |
| [SPARK-7234](https://issues.apache.org/jira/browse/SPARK-7234) | When codegen on DateType defaultPrimitive will throw type mismatch exception |  Major | SQL | Chen Song | Chen Song |
| [SPARK-7233](https://issues.apache.org/jira/browse/SPARK-7233) | ClosureCleaner#clean blocks concurrent job submitter threads |  Critical | Spark Core | Oleksii Kostyliev | Oleksii Kostyliev |
| [SPARK-7229](https://issues.apache.org/jira/browse/SPARK-7229) | SpecificMutableRow should take integer type as internal representation for DateType |  Major | SQL | Cheng Hao | Cheng Hao |
| [SPARK-7225](https://issues.apache.org/jira/browse/SPARK-7225) | CombineLimits optimizer does not work |  Major | SQL | Zhongshuai Pei | Zhongshuai Pei |
| [SPARK-7213](https://issues.apache.org/jira/browse/SPARK-7213) | Exception while copying Hadoop config files due to permission issues |  Minor | YARN | Nishkam Ravi | Nishkam Ravi |
| [SPARK-7208](https://issues.apache.org/jira/browse/SPARK-7208) | Add Matrix, SparseMatrix to \_\_all\_\_ list in linalg.py |  Trivial | MLlib, PySpark | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-7207](https://issues.apache.org/jira/browse/SPARK-7207) | Add new spark.ml subpackages to SparkBuild |  Minor | Build, ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-7205](https://issues.apache.org/jira/browse/SPARK-7205) | Support local ivy cache in --packages |  Critical | Spark Submit | Burak Yavuz | Burak Yavuz |
| [SPARK-7204](https://issues.apache.org/jira/browse/SPARK-7204) | Call sites in UI are not accurate for DataFrame operations |  Critical | SQL | Patrick Wendell | Patrick Wendell |
| [SPARK-7196](https://issues.apache.org/jira/browse/SPARK-7196) | decimal precision lost when loading DataFrame from JDBC |  Major | SQL | Ken Geis | Liang-Chi Hsieh |
| [SPARK-7187](https://issues.apache.org/jira/browse/SPARK-7187) | Exceptions in SerializationDebugger should not crash user code |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-7183](https://issues.apache.org/jira/browse/SPARK-7183) | Memory leak in netty shuffle with spark standalone cluster |  Major | Shuffle | Jack Hu | Liang-Chi Hsieh |
| [SPARK-7181](https://issues.apache.org/jira/browse/SPARK-7181) | External Sorter merge with aggregation go to an infinite loop when we have a total ordering |  Critical | Spark Core | Qiping Li | Qiping Li |
| [SPARK-7162](https://issues.apache.org/jira/browse/SPARK-7162) | Launcher error in yarn-client |  Minor | YARN | Guoqiang Li | Guoqiang Li |
| [SPARK-7155](https://issues.apache.org/jira/browse/SPARK-7155) | SparkContext's newAPIHadoopFile does not support comma-separated list of files, but the other API hadoopFile does. |  Major | Spark Core | Yong Tang | Yong Tang |
| [SPARK-7121](https://issues.apache.org/jira/browse/SPARK-7121) | ClosureCleaner does not handle nesting properly |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-7107](https://issues.apache.org/jira/browse/SPARK-7107) | Add parameter for zookeeper.znode.parent to hbase\_inputformat.py |  Minor | Examples, PySpark | Ted Yu | Ted Yu |
| [SPARK-7103](https://issues.apache.org/jira/browse/SPARK-7103) | SparkContext.union crashed when some RDDs have no partitioner |  Critical | Spark Core | Steven She | Steven She |
| [SPARK-7100](https://issues.apache.org/jira/browse/SPARK-7100) | GradientBoostTrees leaks a persisted RDD |  Minor | MLlib | Jim Carroll | Jim Carroll |
| [SPARK-7098](https://issues.apache.org/jira/browse/SPARK-7098) | Inconsistent Timestamp behavior when used in WHERE clause |  Major | SQL | Peter Hagelund | Liang-Chi Hsieh |
| [SPARK-7085](https://issues.apache.org/jira/browse/SPARK-7085) | Inconsistent default miniBatchFraction parameters in the train methods of RidgeRegression |  Minor | MLlib | Nobuyuki Kuromatsu | Nobuyuki Kuromatsu |
| [SPARK-7070](https://issues.apache.org/jira/browse/SPARK-7070) | LDA.setBeta calls itself |  Critical | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-7066](https://issues.apache.org/jira/browse/SPARK-7066) | VectorAssembler should use NumericType, not NativeType |  Major | MLlib | Reynold Xin | Reynold Xin |
| [SPARK-7058](https://issues.apache.org/jira/browse/SPARK-7058) | Task deserialization time metric does not include time to deserialize broadcasted RDDs |  Critical | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-7055](https://issues.apache.org/jira/browse/SPARK-7055) | getContextOrSparkClassLoader is not used while loading JDBC driver class |  Major | SQL | Vinod KC | Vinod KC |
| [SPARK-7044](https://issues.apache.org/jira/browse/SPARK-7044) | [Spark SQL] query would hang when using scripts in SQL statement |  Major | SQL | Yi Zhou | Cheng Hao |
| [SPARK-7039](https://issues.apache.org/jira/browse/SPARK-7039) | JdbcRdd doesn't support java.sql.Types.NVARCHAR |  Minor | SQL | Shuai Zheng | Shuai Zheng |
| [SPARK-7036](https://issues.apache.org/jira/browse/SPARK-7036) | ALS.train should support DataFrames in PySpark |  Minor | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-7011](https://issues.apache.org/jira/browse/SPARK-7011) | Build fails with scala 2.11 option, because a protected[sql] type is accessed in ml package. |  Major | . | Prashant Sharma | Prashant Sharma |
| [SPARK-7003](https://issues.apache.org/jira/browse/SPARK-7003) | Improve reliability of connection failure detection between Netty block transfer service endpoints |  Major | Spark Core | Aaron Davidson | Aaron Davidson |
| [SPARK-6999](https://issues.apache.org/jira/browse/SPARK-6999) | infinite recursion with createDataFrame(JavaRDD[Row], java.util.List[String]) |  Blocker | SQL | Justin Uang | Cheng Hao |
| [SPARK-6998](https://issues.apache.org/jira/browse/SPARK-6998) | Make StreamingKMeans `Serializable` |  Major | MLlib | Shixiong Zhu | Shixiong Zhu |
| [SPARK-6992](https://issues.apache.org/jira/browse/SPARK-6992) | Spark SQL documentation for programmatically adding a Schema is broken for Java API |  Minor | Documentation | Olivier Girardot | Olivier Girardot |
| [SPARK-6985](https://issues.apache.org/jira/browse/SPARK-6985) | Receiver maxRate over 1000 causes a StackOverflowError |  Critical | Streaming | David McGuire | David McGuire |
| [SPARK-6975](https://issues.apache.org/jira/browse/SPARK-6975) | Argument checking conflict in Yarn when dynamic allocation is enabled |  Minor | YARN | Saisai Shao | Saisai Shao |
| [SPARK-6971](https://issues.apache.org/jira/browse/SPARK-6971) | Each Jenkins build should use a distinct Zinc port |  Critical | Project Infra | Patrick Wendell | Patrick Wendell |
| [SPARK-6967](https://issues.apache.org/jira/browse/SPARK-6967) | Internal DateType not handled correctly in caching |  Blocker | SQL | Michael Armbrust | Adrian Wang |
| [SPARK-6966](https://issues.apache.org/jira/browse/SPARK-6966) | JDBC datasources use Class.forName to load driver |  Blocker | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-6963](https://issues.apache.org/jira/browse/SPARK-6963) | Flaky test: o.a.s.ContextCleanerSuite automatically cleanup checkpoint |  Major | Spark Core | Andrew Or | Guoqiang Li |
| [SPARK-6955](https://issues.apache.org/jira/browse/SPARK-6955) | Do not let Yarn Shuffle Server retry its server port. |  Minor | Shuffle, YARN | SaintBacchus | Aaron Davidson |
| [SPARK-6954](https://issues.apache.org/jira/browse/SPARK-6954) | ExecutorAllocationManager can end up requesting a negative number of executors |  Major | YARN | Cheolsoo Park | Sandy Ryza |
| [SPARK-6952](https://issues.apache.org/jira/browse/SPARK-6952) | spark-daemon.sh PID reuse check fails on long classpath |  Minor | Deploy | Punya Biswal | Punya Biswal |
| [SPARK-6937](https://issues.apache.org/jira/browse/SPARK-6937) | Tiny bug in PowerIterationClusteringExample in which radius not accepted from command line |  Trivial | MLlib | Stephen Boesch | Stephen Boesch |
| [SPARK-6934](https://issues.apache.org/jira/browse/SPARK-6934) | Fix the bug that using a wrong configuration for “ask” timeout in RpcEnv |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-6927](https://issues.apache.org/jira/browse/SPARK-6927) | Sorting Error when codegen on |  Major | SQL | Chen Song | Chen Song |
| [SPARK-6917](https://issues.apache.org/jira/browse/SPARK-6917) | Broken data returned to PySpark dataframe if any large numbers used in Scala land |  Critical | PySpark, SQL | Harry Brundage | Davies Liu |
| [SPARK-6913](https://issues.apache.org/jira/browse/SPARK-6913) | "No suitable driver found" loading JDBC dataframe using driver added by through SparkContext.addJar |  Major | SQL | Evan Yu | Vyacheslav Baranov |
| [SPARK-6905](https://issues.apache.org/jira/browse/SPARK-6905) | Upgrade Snappy Java to 1.1.1.7 to fix bug that resulted in worse compression |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-6899](https://issues.apache.org/jira/browse/SPARK-6899) | Type mismatch when using codegen |  Major | SQL | Chen Song | Liang-Chi Hsieh |
| [SPARK-6898](https://issues.apache.org/jira/browse/SPARK-6898) | Special chars in column names is broken |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-6896](https://issues.apache.org/jira/browse/SPARK-6896) | building error because of guava import |  Major | SQL | Adrian Wang | Adrian Wang |
| [SPARK-6894](https://issues.apache.org/jira/browse/SPARK-6894) | typo spark.executor.extraLibraryOptions =\> spark.executor.extraLibraryPath |  Minor | Spark Submit | Tao Wang | Tao Wang |
| [SPARK-6890](https://issues.apache.org/jira/browse/SPARK-6890) | Local cluster mode is broken with SPARK\_PREPEND\_CLASSES |  Critical | Spark Core | Davies Liu | Marcelo Vanzin |
| [SPARK-6887](https://issues.apache.org/jira/browse/SPARK-6887) | ColumnBuilder misses FloatType |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-6886](https://issues.apache.org/jira/browse/SPARK-6886) | Big closure in PySpark will fail during shuffle |  Blocker | PySpark | Davies Liu | Davies Liu |
| [SPARK-6880](https://issues.apache.org/jira/browse/SPARK-6880) | Spark Shutdowns with NoSuchElementException when running parallel collect on cachedRDD |  Major | Spark Core | pankaj arora | pankaj arora |
| [SPARK-6879](https://issues.apache.org/jira/browse/SPARK-6879) | Check if the app is completed before clean it up |  Major | Deploy | Tao Wang | Tao Wang |
| [SPARK-6878](https://issues.apache.org/jira/browse/SPARK-6878) | Sum on empty RDD fails with exception |  Minor | Spark Core | Erik van Oosten | Erik van Oosten |
| [SPARK-6872](https://issues.apache.org/jira/browse/SPARK-6872) | external sort need to copy |  Major | SQL | Adrian Wang | Adrian Wang |
| [SPARK-6871](https://issues.apache.org/jira/browse/SPARK-6871) | WITH clause in CTE can not following another WITH clause |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-6869](https://issues.apache.org/jira/browse/SPARK-6869) | Add pyspark archives path to PYTHONPATH |  Blocker | PySpark | Weizhong | Lianhui Wang |
| [SPARK-6868](https://issues.apache.org/jira/browse/SPARK-6868) | Container link broken on Spark UI Executors page when YARN is set to HTTPS\_ONLY |  Minor | YARN | Dean Chen | Dean Chen |
| [SPARK-6861](https://issues.apache.org/jira/browse/SPARK-6861) | Scalastyle config prevents building Maven child modules alone |  Minor | Build | Sean Owen | Sean Owen |
| [SPARK-6860](https://issues.apache.org/jira/browse/SPARK-6860) | Fix the possible inconsistency of StreamingPage |  Minor | Streaming, Web UI | Shixiong Zhu | Shixiong Zhu |
| [SPARK-6855](https://issues.apache.org/jira/browse/SPARK-6855) | Set R includes in each file to get right collate order |  Major | SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-6851](https://issues.apache.org/jira/browse/SPARK-6851) | Wrong answers for self joins of converted parquet relations |  Blocker | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-6850](https://issues.apache.org/jira/browse/SPARK-6850) | SparkR flaky unit tests when run on Jenkins |  Blocker | SparkR | Shivaram Venkataraman | Davies Liu |
| [SPARK-6844](https://issues.apache.org/jira/browse/SPARK-6844) | Memory leak occurs when register temp table with cache table on |  Major | SQL | Jack Hu | Liang-Chi Hsieh |
| [SPARK-6843](https://issues.apache.org/jira/browse/SPARK-6843) | Potential visibility problem for the "state" of Executor |  Trivial | Spark Core | zhichao-li | zhichao-li |
| [SPARK-6812](https://issues.apache.org/jira/browse/SPARK-6812) | filter() on DataFrame does not work as expected |  Blocker | SparkR | Davies Liu | Sun Rui |
| [SPARK-6800](https://issues.apache.org/jira/browse/SPARK-6800) | Reading from JDBC with SQLContext, using lower/upper bounds and numPartitions gives incorrect results. |  Major | SQL | Micael Capitão | Liang-Chi Hsieh |
| [SPARK-6773](https://issues.apache.org/jira/browse/SPARK-6773) | check -license will passed in next time when rat jar download failed. |  Minor | Build | June | June |
| [SPARK-6769](https://issues.apache.org/jira/browse/SPARK-6769) | Usage of the ListenerBus in YarnClusterSuite is wrong |  Minor | Tests, YARN | Kousuke Saruta | Kousuke Saruta |
| [SPARK-6767](https://issues.apache.org/jira/browse/SPARK-6767) | Documentation error in Spark SQL Readme file |  Trivial | Documentation, SQL | Tijo Thomas | Tijo Thomas |
| [SPARK-6766](https://issues.apache.org/jira/browse/SPARK-6766) | StreamingListenerBatchSubmitted isn't sent and StreamingListenerBatchStarted.batchInfo.processingStartTime is a wrong value |  Major | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-6762](https://issues.apache.org/jira/browse/SPARK-6762) | Fix potential resource leaks in CheckPoint CheckpointWriter and CheckpointReader |  Minor | Streaming | zhichao-li | zhichao-li |
| [SPARK-6753](https://issues.apache.org/jira/browse/SPARK-6753) | Unit test for SPARK-3426 (in ShuffleSuite) doesn't correctly clone the SparkConf |  Minor | Tests | Kay Ousterhout | Kay Ousterhout |
| [SPARK-6748](https://issues.apache.org/jira/browse/SPARK-6748) | QueryPlan.schema should be a lazy val to avoid creating excessive duplicate StructType objects |  Major | . | Cheng Lian | Cheng Lian |
| [SPARK-6743](https://issues.apache.org/jira/browse/SPARK-6743) | Join with empty projection on one side produces invalid results |  Critical | SQL | Santiago M. Mola | Michael Armbrust |
| [SPARK-6742](https://issues.apache.org/jira/browse/SPARK-6742) | Spark pushes down filters in old parquet path that reference partitioning columns |  Major | SQL | Yash Datta | Yash Datta |
| [SPARK-6738](https://issues.apache.org/jira/browse/SPARK-6738) | EstimateSize  is difference with spill file size |  Major | Spark Core | Hong Shen | Hong Shen |
| [SPARK-6737](https://issues.apache.org/jira/browse/SPARK-6737) | OutputCommitCoordinator.authorizedCommittersByStage map out of memory |  Critical | Scheduler, Spark Core, Streaming | Tao Li | Josh Rosen |
| [SPARK-6734](https://issues.apache.org/jira/browse/SPARK-6734) | Support GenericUDTF.close for Generate |  Major | SQL | Cheng Hao | Cheng Hao |
| [SPARK-6730](https://issues.apache.org/jira/browse/SPARK-6730) | Can't have table as identifier in OPTIONS |  Major | SQL | Alex Liu | Liang-Chi Hsieh |
| [SPARK-6729](https://issues.apache.org/jira/browse/SPARK-6729) | DriverQuirks get can get OutOfBounds exception is some cases |  Minor | SQL | Volodymyr Lyubinets | Volodymyr Lyubinets |
| [SPARK-6716](https://issues.apache.org/jira/browse/SPARK-6716) | Change SparkContext.DRIVER\_IDENTIFIER from '\<driver\>' to 'driver' |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-6710](https://issues.apache.org/jira/browse/SPARK-6710) | Wrong initial bias in GraphX SVDPlusPlus |  Major | GraphX | Michael Malak | Michael Malak |
| [SPARK-6708](https://issues.apache.org/jira/browse/SPARK-6708) | Using Hive UDTF may throw ClassNotFoundException |  Major | SQL | Cheng Lian | Cheng Hao |
| [SPARK-6696](https://issues.apache.org/jira/browse/SPARK-6696) | HiveContext.refreshTable is missing in PySpark |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-6694](https://issues.apache.org/jira/browse/SPARK-6694) | SparkSQL CLI must be able to specify an option --database on the command line. |  Critical | SQL | Jin Adachi | Jin Adachi |
| [SPARK-6690](https://issues.apache.org/jira/browse/SPARK-6690) | spark-sql script ends up throwing Exception when event logging is enabled. |  Minor | SQL | Kousuke Saruta | Marcelo Vanzin |
| [SPARK-6688](https://issues.apache.org/jira/browse/SPARK-6688) | EventLoggingListener should always operate on resolved URIs |  Minor | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-6686](https://issues.apache.org/jira/browse/SPARK-6686) | toDF column rename does not work when columns contain '.' |  Critical | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-6677](https://issues.apache.org/jira/browse/SPARK-6677) | pyspark.sql nondeterministic issue with row fields |  Major | PySpark | Stefano Parmesan | Davies Liu |
| [SPARK-6673](https://issues.apache.org/jira/browse/SPARK-6673) | spark-shell.cmd can't start even when spark was built in Windows |  Blocker | Windows | Masayoshi TSUZUKI | Masayoshi TSUZUKI |
| [SPARK-6672](https://issues.apache.org/jira/browse/SPARK-6672) | createDataFrame from RDD[Row] with UDTs cannot be saved |  Major | MLlib, SQL | Xiangrui Meng | Xiangrui Meng |
| [SPARK-6670](https://issues.apache.org/jira/browse/SPARK-6670) | HiveContext.analyze should throw UnsupportedOperationException instead of NotImplementedError |  Major | SQL | Yin Huai | Michael Armbrust |
| [SPARK-6669](https://issues.apache.org/jira/browse/SPARK-6669) | Lock metastore client in analyzeTable |  Critical | SQL | Yin Huai | Yin Huai |
| [SPARK-6667](https://issues.apache.org/jira/browse/SPARK-6667) | hang while collect in PySpark |  Blocker | PySpark | Davies Liu | Davies Liu |
| [SPARK-6661](https://issues.apache.org/jira/browse/SPARK-6661) | Python type errors should print type, not object |  Minor | MLlib, PySpark | Joseph K. Bradley | Elisey Zanko |
| [SPARK-6660](https://issues.apache.org/jira/browse/SPARK-6660) | MLLibPythonAPI.pythonToJava doesn't recognize object arrays |  Critical | MLlib, PySpark | Xiangrui Meng | Xiangrui Meng |
| [SPARK-6655](https://issues.apache.org/jira/browse/SPARK-6655) | We need to read the schema of a data source table stored in spark.sql.sources.schema property |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-6650](https://issues.apache.org/jira/browse/SPARK-6650) | ExecutorAllocationManager never stops |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-6647](https://issues.apache.org/jira/browse/SPARK-6647) | Make trait StringComparison as BinaryPredicate and throw error when Predicate can't translate to data source Filter |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-6642](https://issues.apache.org/jira/browse/SPARK-6642) | Change the lambda weight to number of explicit ratings in implicit ALS |  Major | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-6640](https://issues.apache.org/jira/browse/SPARK-6640) | Executor may connect to HeartbeartReceiver before it's setup in the driver side |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-6636](https://issues.apache.org/jira/browse/SPARK-6636) | Use public DNS hostname everywhere in spark\_ec2.py |  Minor | EC2 | Matt Aasted | Matt Aasted |
| [SPARK-6635](https://issues.apache.org/jira/browse/SPARK-6635) | DataFrame.withColumn can create columns with identical names |  Major | SQL | Joseph K. Bradley | Liang-Chi Hsieh |
| [SPARK-6633](https://issues.apache.org/jira/browse/SPARK-6633) | Should be "Contains" instead of "EndsWith" when constructing sources.StringContains |  Critical | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-6629](https://issues.apache.org/jira/browse/SPARK-6629) | cancelJobGroup() may not work for jobs whose job groups are inherited from parent threads |  Minor | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-6621](https://issues.apache.org/jira/browse/SPARK-6621) | Calling EventLoop.stop in EventLoop.onReceive and EventLoop.onError should call onStop |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-6614](https://issues.apache.org/jira/browse/SPARK-6614) | OutputCommitCoordinator should clear authorized committers only after authorized committer fails, not after any failure |  Major | Scheduler | Josh Rosen | Josh Rosen |
| [SPARK-6607](https://issues.apache.org/jira/browse/SPARK-6607) | Aggregation attribute name including special chars '(' and ')' should be replaced before generating Parquet schema |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-6596](https://issues.apache.org/jira/browse/SPARK-6596) | fix the instruction on building scaladoc |  Trivial | Documentation | Nan Zhu | Nan Zhu |
| [SPARK-6595](https://issues.apache.org/jira/browse/SPARK-6595) | DataFrame self joins with MetastoreRelations fail |  Blocker | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-6592](https://issues.apache.org/jira/browse/SPARK-6592) | API of Row trait should be presented in Scala doc |  Critical | Documentation, SQL | Nan Zhu | Nan Zhu |
| [SPARK-6585](https://issues.apache.org/jira/browse/SPARK-6585) | FileServerSuite.test ("HttpFileServer should not work with SSL when the server is untrusted") failed is some evn. |  Minor | Tests | June | June |
| [SPARK-6578](https://issues.apache.org/jira/browse/SPARK-6578) | Outbound channel in network library is not thread-safe, can lead to fetch failures |  Blocker | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-6575](https://issues.apache.org/jira/browse/SPARK-6575) | Converted Parquet Metastore tables no longer cache metadata |  Blocker | SQL | Cheng Lian | Cheng Lian |
| [SPARK-6574](https://issues.apache.org/jira/browse/SPARK-6574) | Python Example sql.py not working in version 1.3 |  Blocker | PySpark, SQL | Davies Liu | Davies Liu |
| [SPARK-6571](https://issues.apache.org/jira/browse/SPARK-6571) | MatrixFactorizationModel created by load fails on predictAll |  Major | MLlib, PySpark | Charles Hayden | Xiangrui Meng |
| [SPARK-6568](https://issues.apache.org/jira/browse/SPARK-6568) | spark-shell.cmd --jars option does not accept the jar that has space in its path |  Major | Spark Shell | Masayoshi TSUZUKI | Masayoshi TSUZUKI |
| [SPARK-6560](https://issues.apache.org/jira/browse/SPARK-6560) | PairRDDFunctions suppresses exceptions in writeFile |  Minor | Spark Core | Stephen Haberman | Stephen Haberman |
| [SPARK-6558](https://issues.apache.org/jira/browse/SPARK-6558) | Utils.getCurrentUserName returns the full principal name instead of login name |  Critical | Spark Core | Thomas Graves | Thomas Graves |
| [SPARK-6556](https://issues.apache.org/jira/browse/SPARK-6556) | Fix wrong parsing logic of executorTimeoutMs and checkTimeoutIntervalMs in HeartbeatReceiver |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-6555](https://issues.apache.org/jira/browse/SPARK-6555) | Override equals and hashCode in MetastoreRelation |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-6550](https://issues.apache.org/jira/browse/SPARK-6550) | Add PreAnalyzer to keep logical plan consistent across DataFrame |  Major | SQL | Liang-Chi Hsieh | Michael Armbrust |
| [SPARK-6546](https://issues.apache.org/jira/browse/SPARK-6546) | Build failure caused by PR #5029 together with #4289 |  Major | SQL | Zhongshuai Pei | Zhongshuai Pei |
| [SPARK-6544](https://issues.apache.org/jira/browse/SPARK-6544) | Problem with Avro and Kryo Serialization |  Major | Spark Core | Dean Chen | Dean Chen |
| [SPARK-6538](https://issues.apache.org/jira/browse/SPARK-6538) | Add missing nullable Metastore fields when merging a Parquet schema |  Major | SQL | Adam Budde | Adam Budde |
| [SPARK-6537](https://issues.apache.org/jira/browse/SPARK-6537) | UIWorkloadGenerator: The main thread should not stop SparkContext until all jobs finish |  Minor | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-6532](https://issues.apache.org/jira/browse/SPARK-6532) | LDAModel.scala fails scalastyle on Windows |  Minor | Build, Windows | Brian O'Keefe | Sean Owen |
| [SPARK-6506](https://issues.apache.org/jira/browse/SPARK-6506) | python support yarn cluster mode requires SPARK\_HOME to be set |  Major | YARN | Thomas Graves | Marcelo Vanzin |
| [SPARK-6505](https://issues.apache.org/jira/browse/SPARK-6505) | Remove the reflection call in HiveFunctionWrapper |  Minor | SQL | Cheng Lian | Cheng Lian |
| [SPARK-6496](https://issues.apache.org/jira/browse/SPARK-6496) | Multinomial Logistic Regression failed when initialWeights is not null |  Major | MLlib | Yanbo Liang | Yanbo Liang |
| [SPARK-6492](https://issues.apache.org/jira/browse/SPARK-6492) | SparkContext.stop() can deadlock when DAGSchedulerEventProcessLoop dies |  Critical | Spark Core | Josh Rosen | Ilya Ganelin |
| [SPARK-6480](https://issues.apache.org/jira/browse/SPARK-6480) | histogram() bucket function is wrong in some simple edge cases |  Major | Spark Core | Sean Owen | Sean Owen |
| [SPARK-6473](https://issues.apache.org/jira/browse/SPARK-6473) | Launcher lib shouldn't try to figure out Scala version when not in dev mode |  Minor | Spark Submit | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-6468](https://issues.apache.org/jira/browse/SPARK-6468) | Fix the race condition of subDirs in DiskBlockManager |  Minor | Block Manager | Shixiong Zhu | Shixiong Zhu |
| [SPARK-6465](https://issues.apache.org/jira/browse/SPARK-6465) | GenericRowWithSchema: KryoException: Class cannot be created (missing no-arg constructor): |  Critical | SQL | Earthson Lu | Michael Armbrust |
| [SPARK-6463](https://issues.apache.org/jira/browse/SPARK-6463) | AttributeSet.equal should compare size |  Critical | SQL | June | June |
| [SPARK-6458](https://issues.apache.org/jira/browse/SPARK-6458) | Bad error message for invalid data sources |  Critical | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-6457](https://issues.apache.org/jira/browse/SPARK-6457) | Error when calling Pyspark RandomForestModel.load |  Minor | MLlib, PySpark | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-6454](https://issues.apache.org/jira/browse/SPARK-6454) | Fix several broken links in PySpark docs |  Minor | Documentation, PySpark | Sean Owen | Kamil Smuga |
| [SPARK-6452](https://issues.apache.org/jira/browse/SPARK-6452) | CheckAnalysis should throw when the Aggregate node contains missing input attribute(s) |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-6451](https://issues.apache.org/jira/browse/SPARK-6451) | Support CombineSum in Code Gen |  Blocker | SQL | Yin Huai | Venkata Ramana G |
| [SPARK-6450](https://issues.apache.org/jira/browse/SPARK-6450) | Metastore Parquet table conversion fails when a single metastore Parquet table appears multiple times in the query |  Blocker | SQL | Anand Mohan Tumuluri | Cheng Lian |
| [SPARK-6440](https://issues.apache.org/jira/browse/SPARK-6440) | ipv6 URI for HttpServer |  Minor | Spark Core | Arsenii Krasikov | Arsenii Krasikov |
| [SPARK-6437](https://issues.apache.org/jira/browse/SPARK-6437) | SQL ExternalSort should use CompletionIterator to clean up temp files |  Critical | SQL | Yin Huai | Michael Armbrust |
| [SPARK-6435](https://issues.apache.org/jira/browse/SPARK-6435) | spark-shell --jars option does not add all jars to classpath |  Major | Spark Shell, Windows | vijay | Masayoshi TSUZUKI |
| [SPARK-6432](https://issues.apache.org/jira/browse/SPARK-6432) | Cannot load parquet data with partitions if not all partition columns match data columns |  Major | SQL | Jianshi Huang | Cheng Lian |
| [SPARK-6431](https://issues.apache.org/jira/browse/SPARK-6431) | Couldn't find leader offsets exception when creating KafkaDirectStream |  Major | Streaming | Alberto | Cody Koeninger |
| [SPARK-6421](https://issues.apache.org/jira/browse/SPARK-6421) | \_regression\_train\_wrapper does not test initialWeights correctly |  Major | MLlib, PySpark | Joseph K. Bradley | Kai Sasaki |
| [SPARK-6414](https://issues.apache.org/jira/browse/SPARK-6414) | Spark driver failed with NPE on job cancelation |  Critical | Scheduler | Yuri Makhno | Hung Lin |
| [SPARK-6409](https://issues.apache.org/jira/browse/SPARK-6409) | It is not necessary that avoid old inteface of hive, because this will make some UDAF can not work. |  Major | SQL | Zhongshuai Pei | Zhongshuai Pei |
| [SPARK-6408](https://issues.apache.org/jira/browse/SPARK-6408) | JDBCRDD fails on where clause with string literal |  Blocker | SQL | Pei-Lun Lee | Pei-Lun Lee |
| [SPARK-6389](https://issues.apache.org/jira/browse/SPARK-6389) | YARN app diagnostics report doesn't report NPEs |  Trivial | YARN | Steve Loughran | Steve Loughran |
| [SPARK-6383](https://issues.apache.org/jira/browse/SPARK-6383) | Few examples on Dataframe operation give compiler errors |  Trivial | SQL | Tijo Thomas | Tijo Thomas |
| [SPARK-6376](https://issues.apache.org/jira/browse/SPARK-6376) | Subqueries are thrown away too early in dataframes |  Critical | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-6375](https://issues.apache.org/jira/browse/SPARK-6375) | Bad formatting in analysis errors |  Critical | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-6372](https://issues.apache.org/jira/browse/SPARK-6372) | "spark-submit --conf" is not being propagated to child processes |  Blocker | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-6369](https://issues.apache.org/jira/browse/SPARK-6369) | InsertIntoHiveTable and Parquet Relation should use logic from SparkHadoopWriter |  Blocker | SQL | Michael Armbrust | Cheng Lian |
| [SPARK-6345](https://issues.apache.org/jira/browse/SPARK-6345) | Model update propagation during prediction in Streaming Regression |  Major | MLlib, Streaming | Jeremy Freeman | Jeremy Freeman |
| [SPARK-6337](https://issues.apache.org/jira/browse/SPARK-6337) | Spark 1.3 doc fixes |  Trivial | Documentation, SQL | Joseph K. Bradley | Vinod KC |
| [SPARK-6330](https://issues.apache.org/jira/browse/SPARK-6330) | newParquetRelation gets incorrect FileSystem |  Blocker | SQL | Volodymyr Lyubinets | Volodymyr Lyubinets |
| [SPARK-6329](https://issues.apache.org/jira/browse/SPARK-6329) | Minor doc changes for Mesos and TOC |  Trivial | Documentation | Brennon York | Brennon York |
| [SPARK-6327](https://issues.apache.org/jira/browse/SPARK-6327) | Run PySpark with python directly is broken |  Critical | PySpark | Davies Liu | Davies Liu |
| [SPARK-6325](https://issues.apache.org/jira/browse/SPARK-6325) | YarnAllocator crash with dynamic allocation on |  Critical | Spark Core, YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-6317](https://issues.apache.org/jira/browse/SPARK-6317) | Interactive HIVE scala console is not starting |  Major | SQL | Vinod KC | Vinod KC |
| [SPARK-6315](https://issues.apache.org/jira/browse/SPARK-6315) | SparkSQL 1.3.0 (RC3) fails to read parquet file generated by 1.1.1 |  Blocker | SQL | Michael Armbrust | Cheng Lian |
| [SPARK-6313](https://issues.apache.org/jira/browse/SPARK-6313) | Fetch File Lock file creation doesnt work when Spark working dir is on a NFS mount |  Critical | Spark Core | Nathan McCarthy | Nathan McCarthy |
| [SPARK-6308](https://issues.apache.org/jira/browse/SPARK-6308) | VectorUDT is displayed as `vecto` in dtypes |  Major | MLlib, SQL | Xiangrui Meng | Manoj Kumar |
| [SPARK-6306](https://issues.apache.org/jira/browse/SPARK-6306) | Readme points to dead link |  Trivial | Documentation | Theodore Vasiloudis | Theodore Vasiloudis |
| [SPARK-6300](https://issues.apache.org/jira/browse/SPARK-6300) | sc.addFile(path) does not support the relative path. |  Critical | Spark Core | Zhongshuai Pei | Zhongshuai Pei |
| [SPARK-6299](https://issues.apache.org/jira/browse/SPARK-6299) | ClassNotFoundException in standalone mode when running groupByKey with class defined in REPL. |  Major | Spark Shell | Kevin (Sangwoo) Kim | Kevin (Sangwoo) Kim |
| [SPARK-6294](https://issues.apache.org/jira/browse/SPARK-6294) | PySpark task may hang while call take() on in Java/Scala |  Critical | PySpark | Davies Liu | Davies Liu |
| [SPARK-6290](https://issues.apache.org/jira/browse/SPARK-6290) | spark.ml.param.Params.checkInputColumn bug upon error |  Minor | ML | Joseph K. Bradley | Xiangrui Meng |
| [SPARK-6286](https://issues.apache.org/jira/browse/SPARK-6286) | Handle TASK\_ERROR in TaskState |  Minor | Spark Core | Iulian Dragos | Iulian Dragos |
| [SPARK-6285](https://issues.apache.org/jira/browse/SPARK-6285) | Duplicated code leads to errors |  Major | SQL | Iulian Dragos | Cheng Lian |
| [SPARK-6279](https://issues.apache.org/jira/browse/SPARK-6279) | Miss expressions flag "s" at logging string |  Trivial | Streaming | Zhichao  Zhang | Zhichao  Zhang |
| [SPARK-6250](https://issues.apache.org/jira/browse/SPARK-6250) | Types are now reserved words in DDL parser. |  Blocker | SQL | Michael Armbrust | Yin Huai |
| [SPARK-6245](https://issues.apache.org/jira/browse/SPARK-6245) | jsonRDD() of empty RDD results in exception |  Minor | SQL | Matthew Farrellee | Sean Owen |
| [SPARK-6243](https://issues.apache.org/jira/browse/SPARK-6243) | The Operation of match did not conside the scenarios that order.dataType does not match NativeType |  Major | SQL | Zhongshuai Pei | Zhongshuai Pei |
| [SPARK-6222](https://issues.apache.org/jira/browse/SPARK-6222) | [STREAMING] All data may not be recovered from WAL when driver is killed |  Blocker | Streaming | Hari Shreedharan | Hari Shreedharan |
| [SPARK-6209](https://issues.apache.org/jira/browse/SPARK-6209) | ExecutorClassLoader can leak connections after failing to load classes from the REPL class server |  Critical | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-6207](https://issues.apache.org/jira/browse/SPARK-6207) | YARN secure cluster mode doesn't obtain a hive-metastore token |  Major | Spark Submit, SQL, YARN | Doug Balog | Doug Balog |
| [SPARK-6205](https://issues.apache.org/jira/browse/SPARK-6205) | UISeleniumSuite fails for Hadoop 2.x test with NoClassDefFoundError |  Minor | Tests | Sean Owen | Sean Owen |
| [SPARK-6201](https://issues.apache.org/jira/browse/SPARK-6201) | INSET should coerce types |  Major | SQL | Jianshi Huang | Adrian Wang |
| [SPARK-6194](https://issues.apache.org/jira/browse/SPARK-6194) | collect() in PySpark will cause memory leak in JVM |  Critical | PySpark | Davies Liu | Davies Liu |
| [SPARK-6188](https://issues.apache.org/jira/browse/SPARK-6188) | Instance types can be mislabeled when re-starting cluster with default arguments |  Minor | EC2 | Theodore Vasiloudis | Theodore Vasiloudis |
| [SPARK-6145](https://issues.apache.org/jira/browse/SPARK-6145) | ORDER BY fails to resolve nested fields |  Critical | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-6133](https://issues.apache.org/jira/browse/SPARK-6133) | SparkContext#stop is not idempotent |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-6132](https://issues.apache.org/jira/browse/SPARK-6132) | Context cleaner race condition across SparkContexts |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-6107](https://issues.apache.org/jira/browse/SPARK-6107) | event log file ends with .inprogress should be able to display on webUI for standalone mode |  Major | Web UI | Zhang, Liye | Zhang, Liye |
| [SPARK-6088](https://issues.apache.org/jira/browse/SPARK-6088) | UI is malformed when tasks fetch remote results |  Major | Web UI | Kay Ousterhout | Kay Ousterhout |
| [SPARK-6077](https://issues.apache.org/jira/browse/SPARK-6077) | Multiple spark streaming tabs on UI when reuse the same sparkcontext |  Minor | Streaming, Web UI | zhichao-li | zhichao-li |
| [SPARK-6076](https://issues.apache.org/jira/browse/SPARK-6076) | Fix a potential OOM issue when StorageLevel is MEMORY\_AND\_DISK\_SER |  Minor | Block Manager | Shixiong Zhu | Shixiong Zhu |
| [SPARK-6075](https://issues.apache.org/jira/browse/SPARK-6075) | After SPARK-3885, some tasks' accumulator updates may be lost |  Blocker | Spark Core, Tests | Josh Rosen | Josh Rosen |
| [SPARK-6063](https://issues.apache.org/jira/browse/SPARK-6063) | MLlib doesn't pass mvn scalastyle check due to UTF chars in LDAModel.scala |  Minor | Build, Windows | Michael Griffiths | Michael Griffiths |
| [SPARK-6059](https://issues.apache.org/jira/browse/SPARK-6059) | Add volatile to ApplicationMaster.reporterThread and ApplicationMaster.allocator |  Minor | YARN | Shixiong Zhu | Shixiong Zhu |
| [SPARK-6054](https://issues.apache.org/jira/browse/SPARK-6054) | SQL UDF returning object of case class; regression from 1.2.0 |  Blocker | SQL | Spiro Michaylov | Michael Armbrust |
| [SPARK-6046](https://issues.apache.org/jira/browse/SPARK-6046) | Provide an easier way for developers to handle deprecated configs |  Minor | Spark Core | Andrew Or | Marcelo Vanzin |
| [SPARK-6045](https://issues.apache.org/jira/browse/SPARK-6045) | RecordWriter should be checked against null in PairRDDFunctions#saveAsNewAPIHadoopDataset |  Trivial | Input/Output | Ted Yu | Ted Yu |
| [SPARK-6044](https://issues.apache.org/jira/browse/SPARK-6044) | RDD.aggregate() should not use the closure serializer on the zero value |  Major | Spark Core | Matt Cheah | Sean Owen |
| [SPARK-6036](https://issues.apache.org/jira/browse/SPARK-6036) | EventLog process logic has race condition with Akka actor system |  Major | Spark Core, Web UI | Zhang, Liye | Zhang, Liye |
| [SPARK-6030](https://issues.apache.org/jira/browse/SPARK-6030) | SizeEstimator gives wrong result for Integer object on 64bit JVM with UseCompressedOops on |  Minor | Spark Core | Xianjin YE | Xianjin YE |
| [SPARK-6014](https://issues.apache.org/jira/browse/SPARK-6014) | java.io.IOException: Filesystem is thrown when ctrl+c or ctrl+d spark-sql on YARN |  Minor | YARN | Cheolsoo Park | Marcelo Vanzin |
| [SPARK-5970](https://issues.apache.org/jira/browse/SPARK-5970) | Temporary directories are not removed (but their content is) |  Minor | Spark Core | Milan Straka | Milan Straka |
| [SPARK-5969](https://issues.apache.org/jira/browse/SPARK-5969) | The pyspark.rdd.sortByKey always fills only two partitions when ascending=False. |  Major | PySpark | Milan Straka | Milan Straka |
| [SPARK-5949](https://issues.apache.org/jira/browse/SPARK-5949) | Driver program has to register roaring bitmap classes used by spark with Kryo when number of partitions is greater than 2000 |  Major | Spark Core | Peter Torok | Imran Rashid |
| [SPARK-5941](https://issues.apache.org/jira/browse/SPARK-5941) | Unit Test loads the table `src` twice for leftsemijoin.q |  Major | SQL | Cheng Hao | Cheng Hao |
| [SPARK-5914](https://issues.apache.org/jira/browse/SPARK-5914) | Enable spark-submit to run requiring only user permission on windows |  Minor | Spark Submit, Windows | Judy Nash | Judy Nash |
| [SPARK-5908](https://issues.apache.org/jira/browse/SPARK-5908) | Hive udtf with single alias should be resolved correctly |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-5860](https://issues.apache.org/jira/browse/SPARK-5860) | JdbcRDD: overflow on large range with high number of partitions |  Minor | Spark Core | Jeroen Warmerdam | Jeroen Warmerdam |
| [SPARK-5845](https://issues.apache.org/jira/browse/SPARK-5845) | Time to cleanup spilled shuffle files not included in shuffle write time |  Minor | Shuffle | Kay Ousterhout | Ilya Ganelin |
| [SPARK-5821](https://issues.apache.org/jira/browse/SPARK-5821) | JSONRelation and ParquetRelation2 should check if delete is successful for the overwrite operation. |  Major | SQL | Yanbo Liang | Yanbo Liang |
| [SPARK-5817](https://issues.apache.org/jira/browse/SPARK-5817) | UDTF column names didn't set properly |  Major | SQL | Cheng Hao | Cheng Hao |
| [SPARK-5815](https://issues.apache.org/jira/browse/SPARK-5815) | Deprecate SVDPlusPlus APIs that expose DoubleMatrix from JBLAS |  Major | GraphX | Xiangrui Meng | Sean Owen |
| [SPARK-5808](https://issues.apache.org/jira/browse/SPARK-5808) | Assembly generated by sbt does not contain pyspark |  Minor | Build | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-5801](https://issues.apache.org/jira/browse/SPARK-5801) | Shuffle creates too many nested directories |  Minor | Shuffle, Spark Core | Kay Ousterhout | Marcelo Vanzin |
| [SPARK-5794](https://issues.apache.org/jira/browse/SPARK-5794) | add jar should return 0 |  Minor | SQL | Adrian Wang | Adrian Wang |
| [SPARK-5776](https://issues.apache.org/jira/browse/SPARK-5776) | JIRA version not of form x.y.z breaks merge\_spark\_pr.py |  Minor | Project Infra | Sean Owen | Sean Owen |
| [SPARK-5771](https://issues.apache.org/jira/browse/SPARK-5771) | Number of Cores in Completed Applications of Standalone Master Web Page always be 0 if sc.stop() is called |  Minor | Web UI | Liangliang Gu | Liangliang Gu |
| [SPARK-5744](https://issues.apache.org/jira/browse/SPARK-5744) | RDD.isEmpty / take fails for (empty) RDD of Nothing |  Minor | Spark Core | Tobias Bertelsen | Sean Owen |
| [SPARK-5724](https://issues.apache.org/jira/browse/SPARK-5724) | misconfiguration in Akka system |  Minor | Spark Core | Nan Zhu | Nan Zhu |
| [SPARK-5712](https://issues.apache.org/jira/browse/SPARK-5712) | Semicolon at end of a comment line |  Minor | SQL | Adrian Wang | Adrian Wang |
| [SPARK-5680](https://issues.apache.org/jira/browse/SPARK-5680) | Sum function on all null values, should return zero |  Minor | SQL | Venkata Ramana G | Venkata Ramana G |
| [SPARK-5656](https://issues.apache.org/jira/browse/SPARK-5656) | NegativeArraySizeException in EigenValueDecomposition.symmetricEigs for large n and/or large k |  Minor | MLlib | Mark Bittmann | Mark Bittmann |
| [SPARK-5651](https://issues.apache.org/jira/browse/SPARK-5651) | Support 'create db.table' in HiveContext |  Major | SQL | Yadong Qi | Yadong Qi |
| [SPARK-5634](https://issues.apache.org/jira/browse/SPARK-5634) | History server shows misleading message when there are no incomplete apps |  Minor | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-5529](https://issues.apache.org/jira/browse/SPARK-5529) | BlockManager heartbeat expiration does not kill executor |  Major | Spark Core, YARN | Hong Shen | Hong Shen |
| [SPARK-5498](https://issues.apache.org/jira/browse/SPARK-5498) | [SPARK-SQL]when the partition schema does not match table schema,it throws java.lang.ClassCastException and so on |  Major | SQL | jeanlyn | jeanlyn |
| [SPARK-5494](https://issues.apache.org/jira/browse/SPARK-5494) | SparkSqlSerializer Ignores KryoRegistrators |  Major | SQL | Hamel Ajay Kothari | Michael Armbrust |
| [SPARK-5470](https://issues.apache.org/jira/browse/SPARK-5470) | use defaultClassLoader of Serializer to load classes of classesToRegister in KryoSerializer |  Major | Spark Core | Lianhui Wang | Lianhui Wang |
| [SPARK-5456](https://issues.apache.org/jira/browse/SPARK-5456) | Decimal Type comparison issue |  Blocker | SQL | Kuldeep | Adrian Wang |
| [SPARK-5416](https://issues.apache.org/jira/browse/SPARK-5416) | Initialize Executor.threadPool before ExecutorSource |  Minor | Spark Core | Ryan Williams | Ryan Williams |
| [SPARK-5412](https://issues.apache.org/jira/browse/SPARK-5412) | Cannot bind Master to a specific hostname as per the documentation |  Major | Deploy | Alexis Seigneurin | Sean Owen |
| [SPARK-5408](https://issues.apache.org/jira/browse/SPARK-5408) | MaxPermSize is ignored by ExecutorRunner and DriverRunner |  Minor | Spark Core | Jacek Lewandowski | Jacek Lewandowski |
| [SPARK-5404](https://issues.apache.org/jira/browse/SPARK-5404) | Statistic of Logical Plan is too aggresive |  Major | SQL | Cheng Hao | Cheng Hao |
| [SPARK-5380](https://issues.apache.org/jira/browse/SPARK-5380) | There will be an ArrayIndexOutOfBoundsException if the format of the source file is wrong |  Minor | GraphX | Leo\_lh | Leo\_lh |
| [SPARK-5371](https://issues.apache.org/jira/browse/SPARK-5371) | Failure to analyze query with UNION ALL and double aggregation |  Critical | SQL | David Ross | Michael Armbrust |
| [SPARK-5363](https://issues.apache.org/jira/browse/SPARK-5363) | Spark 1.2 freeze without error notification |  Blocker | PySpark | Tassilo Klein | Davies Liu |
| [SPARK-5360](https://issues.apache.org/jira/browse/SPARK-5360) | For CoGroupedRDD, rdds for narrow dependencies and shuffle handles are included twice in serialized task |  Minor | Spark Core | Kay Ousterhout | Kay Ousterhout |
| [SPARK-5320](https://issues.apache.org/jira/browse/SPARK-5320) | Joins on simple table created using select gives error |  Major | SQL | Kuldeep | Yuri Saito |
| [SPARK-5281](https://issues.apache.org/jira/browse/SPARK-5281) | Registering table on RDD is giving MissingRequirementError |  Critical | SQL | sarsol | Iulian Dragos |
| [SPARK-5277](https://issues.apache.org/jira/browse/SPARK-5277) | SparkSqlSerializer does not register user specified KryoRegistrators |  Major | SQL | Max Seiden | Max Seiden |
| [SPARK-5242](https://issues.apache.org/jira/browse/SPARK-5242) | "ec2/spark\_ec2.py lauch" does not work with VPC if no public DNS or IP is available |  Major | EC2 | Vladimir Grigor | Michelangelo D'Agostino |
| [SPARK-5220](https://issues.apache.org/jira/browse/SPARK-5220) | keepPushingBlocks in BlockGenerator terminated when an exception occurs, which causes the block pushing thread to terminate and blocks receiver |  Major | Streaming | Max Xu | Hari Shreedharan |
| [SPARK-5203](https://issues.apache.org/jira/browse/SPARK-5203) | union with different decimal type report error |  Major | SQL | guowei | guowei |
| [SPARK-5074](https://issues.apache.org/jira/browse/SPARK-5074) | Flaky test: o.a.s.scheduler.DAGSchedulerSuite |  Critical | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-5068](https://issues.apache.org/jira/browse/SPARK-5068) | When the path not found in the hdfs,we can't get the result |  Major | SQL | jeanlyn | dongxu |
| [SPARK-4949](https://issues.apache.org/jira/browse/SPARK-4949) | shutdownCallback in SparkDeploySchedulerBackend should be enclosed by synchronized block. |  Minor | Scheduler | Kousuke Saruta | Kousuke Saruta |
| [SPARK-4848](https://issues.apache.org/jira/browse/SPARK-4848) | Allow different Worker configurations in standalone cluster |  Major | Deploy | Nathan Kronenfeld | Nathan Kronenfeld |
| [SPARK-4808](https://issues.apache.org/jira/browse/SPARK-4808) | Spark fails to spill with small number of large objects |  Major | Spark Core | Dennis Lawler | Mingyu Kim |
| [SPARK-4783](https://issues.apache.org/jira/browse/SPARK-4783) | System.exit() calls in SparkContext disrupt applications embedding Spark |  Minor | Spark Core | David Semeria | Sean Owen |
| [SPARK-4777](https://issues.apache.org/jira/browse/SPARK-4777) | Some block memory after unrollSafely not count into used memory(memoryStore.entrys or unrollMemory) |  Major | Spark Core | SuYan | SuYan |
| [SPARK-4705](https://issues.apache.org/jira/browse/SPARK-4705) | Driver retries in cluster mode always fail if event logging is enabled |  Major | Spark Core, YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-4704](https://issues.apache.org/jira/browse/SPARK-4704) | SparkSubmitDriverBootstrap doesn't flush output |  Major | Spark Core | Stephen Haberman | Sean Owen |
| [SPARK-4687](https://issues.apache.org/jira/browse/SPARK-4687) | SparkContext#addFile doesn't keep file folder information |  Major | Spark Core | Jimmy Xiang | Sandy Ryza |
| [SPARK-4315](https://issues.apache.org/jira/browse/SPARK-4315) | PySpark pickling of pyspark.sql.Row objects is extremely inefficient |  Major | PySpark | Adam Davison | Davies Liu |
| [SPARK-4300](https://issues.apache.org/jira/browse/SPARK-4300) | Race condition during SparkWorker shutdown |  Minor | Spark Shell | Alex Liu | Sean Owen |
| [SPARK-4194](https://issues.apache.org/jira/browse/SPARK-4194) | Exceptions thrown during SparkContext or SparkEnv construction might lead to resource leaks or corrupted global state |  Critical | Spark Core | Josh Rosen | Marcelo Vanzin |
| [SPARK-4012](https://issues.apache.org/jira/browse/SPARK-4012) | Uncaught OOM in ContextCleaner |  Major | Spark Core | Nan Zhu | Nan Zhu |
| [SPARK-3885](https://issues.apache.org/jira/browse/SPARK-3885) | Provide mechanism to remove accumulators once they are no longer used |  Major | Spark Core | Josh Rosen | Ilya Ganelin |
| [SPARK-3884](https://issues.apache.org/jira/browse/SPARK-3884) | If deploy mode is cluster, --driver-memory shouldn't apply to client JVM |  Major | Spark Submit | Sandy Ryza | Marcelo Vanzin |
| [SPARK-3570](https://issues.apache.org/jira/browse/SPARK-3570) | Shuffle write time does not include time to open shuffle files |  Major | Spark Core | Kay Ousterhout | Kay Ousterhout |
| [SPARK-3266](https://issues.apache.org/jira/browse/SPARK-3266) | JavaDoubleRDD doesn't contain max() |  Major | Java API | Amey Chaugule | Sean Owen |
| [SPARK-3090](https://issues.apache.org/jira/browse/SPARK-3090) |  Avoid not stopping SparkContext with YARN Client mode |  Major | Spark Core, YARN | Kousuke Saruta | Marcelo Vanzin |
| [SPARK-2669](https://issues.apache.org/jira/browse/SPARK-2669) | Hadoop configuration is not localised when submitting job in yarn-cluster mode |  Major | YARN | Maxim Ivanov | Marcelo Vanzin |
| [SPARK-2319](https://issues.apache.org/jira/browse/SPARK-2319) | Number of tasks on executors become negative after executor failures |  Major | Web UI | Reynold Xin | Andrew Or |
| [SPARK-2312](https://issues.apache.org/jira/browse/SPARK-2312) | Spark Actors do not handle unknown messages in their receive methods |  Trivial | Spark Core | Kam Kasravi | Isaias Barroso |
| [SPARK-2155](https://issues.apache.org/jira/browse/SPARK-2155) | Support effectful / non-deterministic key expressions in CASE WHEN statements |  Minor | SQL | Zongheng Yang | Wenchen Fan |
| [SPARK-2018](https://issues.apache.org/jira/browse/SPARK-2018) | Big-Endian (IBM Power7)  Spark Serialization issue |  Major | Deploy | Yanjie Gao | Tim Ellison |
| [SPARK-1965](https://issues.apache.org/jira/browse/SPARK-1965) | Spark UI throws NPE on trying to load the app page for non-existent app |  Minor | Web UI | Kay Ousterhout | Sean Owen |
| [SPARK-1805](https://issues.apache.org/jira/browse/SPARK-1805) | Error launching cluster when master and slave machines are of different virtualization types |  Minor | EC2 | Han JU | Nicholas Chammas |
| [SPARK-984](https://issues.apache.org/jira/browse/SPARK-984) | SPARK\_TOOLS\_JAR not set if multiple tools jars exists |  Minor | Build | Aaron Davidson | Marcelo Vanzin |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-7777](https://issues.apache.org/jira/browse/SPARK-7777) | Fix a flaky test: org.apache.spark.streaming.BasicOperationsSuite.rdd cleanup - input blocks and persisted RDDs |  Minor | Streaming, Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7430](https://issues.apache.org/jira/browse/SPARK-7430) | General improvements to streaming tests to increase debuggability |  Critical | Streaming, Tests | Tathagata Das | Tathagata Das |
| [SPARK-7356](https://issues.apache.org/jira/browse/SPARK-7356) | Flaky test: o.a.s.streaming.flume.FlumePollingStreamSuite |  Blocker | Streaming, Tests | Tathagata Das | Hari Shreedharan |
| [SPARK-7315](https://issues.apache.org/jira/browse/SPARK-7315) | Flaky Test: WriteAheadLogBackedBlockRDDSuite |  Major | Tests | Tathagata Das | Tathagata Das |
| [SPARK-7291](https://issues.apache.org/jira/browse/SPARK-7291) | Fix a flaky test in AkkaRpcEnvSuite |  Minor | Spark Core, Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7224](https://issues.apache.org/jira/browse/SPARK-7224) | Mock repositories for testing with --packages |  Critical | Spark Submit | Burak Yavuz | Burak Yavuz |
| [SPARK-6211](https://issues.apache.org/jira/browse/SPARK-6211) | Test Python Kafka API using Python unit tests |  Critical | Streaming, Tests | Tathagata Das | Saisai Shao |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-8299](https://issues.apache.org/jira/browse/SPARK-8299) | Improve error message reporting for DataFrame and SQL |  Major | SQL | Reynold Xin | Michael Armbrust |
| [SPARK-8026](https://issues.apache.org/jira/browse/SPARK-8026) | Add Column.alias to Scala/Java API |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8021](https://issues.apache.org/jira/browse/SPARK-8021) | DataFrameReader/Writer in Python does not match Scala |  Blocker | . | Michael Armbrust | Davies Liu |
| [SPARK-7982](https://issues.apache.org/jira/browse/SPARK-7982) | crosstab should use 0 instead of null for pairs that don't appear |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-7979](https://issues.apache.org/jira/browse/SPARK-7979) | Enforce structural type checker |  Major | Project Infra | Reynold Xin | Reynold Xin |
| [SPARK-7976](https://issues.apache.org/jira/browse/SPARK-7976) | Add style checker to disallow overriding finalize |  Major | Project Infra | Reynold Xin | Reynold Xin |
| [SPARK-7975](https://issues.apache.org/jira/browse/SPARK-7975) | CovariantEqualsChecker |  Major | Project Infra | Reynold Xin | Reynold Xin |
| [SPARK-7971](https://issues.apache.org/jira/browse/SPARK-7971) | Add JavaDoc style deprecation for deprecated DataFrame methods |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-7940](https://issues.apache.org/jira/browse/SPARK-7940) | Enforce whitespace checking for DO, TRY, CATCH, FINALLY, MATCH |  Major | Build | Reynold Xin | Reynold Xin |
| [SPARK-7927](https://issues.apache.org/jira/browse/SPARK-7927) | Enforce whitespace for more tokens in style checker |  Major | Build | Reynold Xin | Reynold Xin |
| [SPARK-7890](https://issues.apache.org/jira/browse/SPARK-7890) | Document that Spark 2.11 now supports Kafka |  Critical | Documentation | Patrick Wendell | Sean Owen |
| [SPARK-7836](https://issues.apache.org/jira/browse/SPARK-7836) | DataFrame.ntile() should only accept Int as parameter |  Blocker | SQL | Davies Liu | Davies Liu |
| [SPARK-7834](https://issues.apache.org/jira/browse/SPARK-7834) | Better error for unresolved window functions. |  Critical | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-7822](https://issues.apache.org/jira/browse/SPARK-7822) | Window function support in Python DataFrame DSL |  Major | SQL | Reynold Xin | Davies Liu |
| [SPARK-7783](https://issues.apache.org/jira/browse/SPARK-7783) | Add rollup and cube support to DataFrame Python DSL |  Major | SQL | Reynold Xin | Davies Liu |
| [SPARK-7753](https://issues.apache.org/jira/browse/SPARK-7753) | Improve kernel density API |  Major | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-7752](https://issues.apache.org/jira/browse/SPARK-7752) | NaiveBayes.modelType should use lowercase letters |  Minor | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-7742](https://issues.apache.org/jira/browse/SPARK-7742) | Figure out what to do with insertInto w.r.t. DataFrameWriter API |  Critical | SQL | Reynold Xin | Yin Huai |
| [SPARK-7738](https://issues.apache.org/jira/browse/SPARK-7738) | DataFrame reader/writer API in Python |  Critical | SQL | Davies Liu | Davies Liu |
| [SPARK-7677](https://issues.apache.org/jira/browse/SPARK-7677) | Enable Kafka In Scala 2.11 Build |  Major | Build | Patrick Wendell | Iulian Dragos |
| [SPARK-7654](https://issues.apache.org/jira/browse/SPARK-7654) | DataFrameReader and DataFrameWriter for input/output API |  Blocker | SQL | Reynold Xin | Reynold Xin |
| [SPARK-7627](https://issues.apache.org/jira/browse/SPARK-7627) | DAG visualization: cached RDDs not shown on job page |  Major | Web UI | Andrew Or | Andrew Or |
| [SPARK-7606](https://issues.apache.org/jira/browse/SPARK-7606) | Document all PySpark SQL/DataFrame public methods with @since tag |  Major | SQL | Nicholas Chammas | Davies Liu |
| [SPARK-7591](https://issues.apache.org/jira/browse/SPARK-7591) | FSBasedRelation interface tweaks |  Blocker | SQL | Reynold Xin | Cheng Lian |
| [SPARK-7588](https://issues.apache.org/jira/browse/SPARK-7588) | Document all SQL/DataFrame public methods with @since tag |  Blocker | SQL | Reynold Xin | Reynold Xin |
| [SPARK-7561](https://issues.apache.org/jira/browse/SPARK-7561) | Install Junit Attachment Plugin on Jenkins |  Major | Project Infra | Patrick Wendell | shane knapp |
| [SPARK-7551](https://issues.apache.org/jira/browse/SPARK-7551) | Don't split by dot if within backticks for DataFrame attribute resolution |  Critical | SQL | Reynold Xin | Wenchen Fan |
| [SPARK-7548](https://issues.apache.org/jira/browse/SPARK-7548) | Add explode expression |  Blocker | SQL | Reynold Xin | Michael Armbrust |
| [SPARK-7543](https://issues.apache.org/jira/browse/SPARK-7543) | Break dataframe.py into multiple files |  Major | SQL | Reynold Xin | Davies Liu |
| [SPARK-7541](https://issues.apache.org/jira/browse/SPARK-7541) | Check model save/load for MLlib 1.4 |  Major | ML, MLlib, PySpark | Joseph K. Bradley | yuhao yang |
| [SPARK-7535](https://issues.apache.org/jira/browse/SPARK-7535) | Audit Pipeline APIs for 1.4 |  Major | ML, PySpark | Joseph K. Bradley | Xiangrui Meng |
| [SPARK-7531](https://issues.apache.org/jira/browse/SPARK-7531) | Install GPG on Jenkins machines |  Major | Project Infra | Patrick Wendell | shane knapp |
| [SPARK-7529](https://issues.apache.org/jira/browse/SPARK-7529) | Java compatibility check for MLlib 1.4 |  Major | ML, MLlib | Xiangrui Meng | Joseph K. Bradley |
| [SPARK-7520](https://issues.apache.org/jira/browse/SPARK-7520) | Install Jekyll On Jenkins Machines |  Critical | Project Infra | Patrick Wendell | shane knapp |
| [SPARK-7509](https://issues.apache.org/jira/browse/SPARK-7509) | Add drop column to Python DataFrame API |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-7502](https://issues.apache.org/jira/browse/SPARK-7502) | DAG visualization: handle removed stages gracefully |  Major | Web UI | Andrew Or | Andrew Or |
| [SPARK-7501](https://issues.apache.org/jira/browse/SPARK-7501) | DAG visualization: show DStream operations for Streaming |  Critical | Streaming, Web UI | Andrew Or | Andrew Or |
| [SPARK-7500](https://issues.apache.org/jira/browse/SPARK-7500) | DAG visualization: cluster name bleeds beyond the cluster |  Minor | Web UI | Andrew Or | Andrew Or |
| [SPARK-7491](https://issues.apache.org/jira/browse/SPARK-7491) | Handle drivers for Metastore JDBC |  Blocker | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-7488](https://issues.apache.org/jira/browse/SPARK-7488) | Python API for ml.recommendation |  Major | ML, PySpark | Burak Yavuz | Burak Yavuz |
| [SPARK-7487](https://issues.apache.org/jira/browse/SPARK-7487) | Python API for ml.regression |  Major | ML, PySpark | Burak Yavuz | Burak Yavuz |
| [SPARK-7472](https://issues.apache.org/jira/browse/SPARK-7472) | DAG visualization: handle skipped stages differently |  Major | Web UI | Andrew Or | Andrew Or |
| [SPARK-7469](https://issues.apache.org/jira/browse/SPARK-7469) | DAG visualization: show operators for SQL |  Major | SQL, Web UI | Andrew Or | Andrew Or |
| [SPARK-7467](https://issues.apache.org/jira/browse/SPARK-7467) | DAG visualization: handle checkpoint correctly |  Major | Web UI | Andrew Or | Andrew Or |
| [SPARK-7466](https://issues.apache.org/jira/browse/SPARK-7466) | DAG visualization: orphaned nodes are not rendered correctly |  Critical | Web UI | Andrew Or | Andrew Or |
| [SPARK-7464](https://issues.apache.org/jira/browse/SPARK-7464) | DAG visualization: highlight the same RDDs on hover |  Major | Web UI | Andrew Or | Andrew Or |
| [SPARK-7462](https://issues.apache.org/jira/browse/SPARK-7462) | By default retain group by columns in aggregate |  Blocker | SQL | Reynold Xin | Reynold Xin |
| [SPARK-7408](https://issues.apache.org/jira/browse/SPARK-7408) | DAG visualization: move style from JS to CSS |  Minor | Web UI | Andrew Or | Andrew Or |
| [SPARK-7394](https://issues.apache.org/jira/browse/SPARK-7394) | Add Pandas style cast (astype) |  Major | SQL | Reynold Xin | Chen Song |
| [SPARK-7391](https://issues.apache.org/jira/browse/SPARK-7391) | DAG visualization: open viz on stage page if from job page |  Minor | Web UI | Andrew Or | Andrew Or |
| [SPARK-7388](https://issues.apache.org/jira/browse/SPARK-7388) | Python Api for Param[Array[T]] |  Major | ML | Burak Yavuz | Burak Yavuz |
| [SPARK-7383](https://issues.apache.org/jira/browse/SPARK-7383) | Python API for ml.feature |  Major | ML, PySpark | Burak Yavuz | Burak Yavuz |
| [SPARK-7382](https://issues.apache.org/jira/browse/SPARK-7382) | Python API for ml.classification |  Major | ML, PySpark | Burak Yavuz | Burak Yavuz |
| [SPARK-7380](https://issues.apache.org/jira/browse/SPARK-7380) | Python: Transformer/Estimator should be copyable |  Major | ML, PySpark | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-7377](https://issues.apache.org/jira/browse/SPARK-7377) | DAG visualization: JS error when there is only 1 RDD |  Major | Web UI | Andrew Or | Andrew Or |
| [SPARK-7371](https://issues.apache.org/jira/browse/SPARK-7371) | DAG visualization: put less emphasis on RDDs on stage page |  Major | Web UI | Andrew Or | Andrew Or |
| [SPARK-7358](https://issues.apache.org/jira/browse/SPARK-7358) | Move mathfunctions into functions |  Blocker | SQL | Reynold Xin | Burak Yavuz |
| [SPARK-7347](https://issues.apache.org/jira/browse/SPARK-7347) | DAG visualization: add tooltips to RDDs on job page |  Minor | Web UI | Andrew Or | Andrew Or |
| [SPARK-7328](https://issues.apache.org/jira/browse/SPARK-7328) | Add missing items to pyspark.mllib.linalg.Vectors |  Major | MLlib, PySpark | Manoj Kumar | Manoj Kumar |
| [SPARK-7324](https://issues.apache.org/jira/browse/SPARK-7324) | Add DataFrame.dropDuplicates |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-7322](https://issues.apache.org/jira/browse/SPARK-7322) | Window function support in Scala/Java DataFrame DSL |  Major | SQL | Reynold Xin | Cheng Hao |
| [SPARK-7321](https://issues.apache.org/jira/browse/SPARK-7321) | Add Column expression for conditional statements (if, case) |  Critical | SQL | Reynold Xin | Chen Song |
| [SPARK-7320](https://issues.apache.org/jira/browse/SPARK-7320) | Add rollup and cube support to DataFrame Java/Scala DSL |  Major | SQL | Reynold Xin | Cheng Hao |
| [SPARK-7319](https://issues.apache.org/jira/browse/SPARK-7319) | Improve the output from DataFrame.show() |  Major | SQL | Reynold Xin | Chen Song |
| [SPARK-7298](https://issues.apache.org/jira/browse/SPARK-7298) | Harmonize style of new UI visualizations |  Blocker | Web UI | Patrick Wendell | Matei Zaharia |
| [SPARK-7297](https://issues.apache.org/jira/browse/SPARK-7297) | Make timeline more discoverable |  Blocker | Web UI | Patrick Wendell | Patrick Wendell |
| [SPARK-7296](https://issues.apache.org/jira/browse/SPARK-7296) | Timeline view for Stage page |  Major | Web UI | Patrick Wendell | Kousuke Saruta |
| [SPARK-7295](https://issues.apache.org/jira/browse/SPARK-7295) | Add bitwise operations to DataFrame DSL |  Major | SQL | Reynold Xin | Shiti Saxena |
| [SPARK-7294](https://issues.apache.org/jira/browse/SPARK-7294) | Add a between function in Column |  Major | SQL | Reynold Xin | Chen Song |
| [SPARK-7280](https://issues.apache.org/jira/browse/SPARK-7280) | Add a method for dropping a column in Java/Scala |  Major | SQL | Reynold Xin | Rakesh Chalasani |
| [SPARK-7276](https://issues.apache.org/jira/browse/SPARK-7276) | withColumn is very slow on dataframe with large number of columns |  Major | SQL | Alexandre CLEMENT | Wenchen Fan |
| [SPARK-7274](https://issues.apache.org/jira/browse/SPARK-7274) | Create Column expression for array/struct creation |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-7266](https://issues.apache.org/jira/browse/SPARK-7266) | Add ExpectsInputTypes to expressions whenever possible |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-7259](https://issues.apache.org/jira/browse/SPARK-7259) | VectorIndexer: do not preserve non-ML metadata in output |  Minor | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-7248](https://issues.apache.org/jira/browse/SPARK-7248) | Random number generators for DataFrames |  Major | SQL | Xiangrui Meng | Burak Yavuz |
| [SPARK-7243](https://issues.apache.org/jira/browse/SPARK-7243) | Contingency table for DataFrames |  Major | SQL | Xiangrui Meng | Burak Yavuz |
| [SPARK-7242](https://issues.apache.org/jira/browse/SPARK-7242) | Frequent items for DataFrames |  Major | SQL | Xiangrui Meng | Burak Yavuz |
| [SPARK-7241](https://issues.apache.org/jira/browse/SPARK-7241) | Pearson correlation for DataFrames |  Major | SQL | Xiangrui Meng | Burak Yavuz |
| [SPARK-7240](https://issues.apache.org/jira/browse/SPARK-7240) | Covariance for DataFrames |  Major | SQL | Xiangrui Meng | Burak Yavuz |
| [SPARK-7231](https://issues.apache.org/jira/browse/SPARK-7231) | Make SparkR DataFrame API more dplyr friendly |  Critical | SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-7230](https://issues.apache.org/jira/browse/SPARK-7230) | Make RDD API private in SparkR for Spark 1.4 |  Critical | SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-7227](https://issues.apache.org/jira/browse/SPARK-7227) | Support fillna / dropna in R DataFrame |  Critical | SparkR | Reynold Xin | Sun Rui |
| [SPARK-7226](https://issues.apache.org/jira/browse/SPARK-7226) | Support math functions in R DataFrame |  Critical | SparkR | Reynold Xin | Qian Huang |
| [SPARK-7223](https://issues.apache.org/jira/browse/SPARK-7223) | Rename RPC askWithReply -\> askWithReply, sendWithReply -\> ask |  Major | Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-7215](https://issues.apache.org/jira/browse/SPARK-7215) | Make repartition and coalesce a part of the query plan |  Critical | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-7202](https://issues.apache.org/jira/browse/SPARK-7202) | Add SparseMatrixPickler to SerDe |  Major | MLlib, PySpark | Manoj Kumar | Manoj Kumar |
| [SPARK-7188](https://issues.apache.org/jira/browse/SPARK-7188) | Support math functions in DataFrames in Python |  Major | SQL | Reynold Xin | Burak Yavuz |
| [SPARK-7176](https://issues.apache.org/jira/browse/SPARK-7176) | Add validation functionality to individual Param |  Major | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-7174](https://issues.apache.org/jira/browse/SPARK-7174) | Move calling `TaskScheduler.executorHeartbeatReceived` to another thread to avoid blocking the Akka thread pool |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7156](https://issues.apache.org/jira/browse/SPARK-7156) | Add randomSplit method to DataFrame |  Minor | SQL | Joseph K. Bradley | Burak Yavuz |
| [SPARK-7152](https://issues.apache.org/jira/browse/SPARK-7152) | Add a Column expression for partition ID |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-7150](https://issues.apache.org/jira/browse/SPARK-7150) | SQLContext.range() |  Minor | ML, SQL | Joseph K. Bradley | Adrian Wang |
| [SPARK-7139](https://issues.apache.org/jira/browse/SPARK-7139) | Allow received block metadata to be saved to WAL and recovered on driver failure |  Blocker | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-7138](https://issues.apache.org/jira/browse/SPARK-7138) | Add method to BlockGenerator to add multiple records to BlockGenerator with single callback |  Minor | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-7135](https://issues.apache.org/jira/browse/SPARK-7135) | Expression for monotonically increasing IDs |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-7133](https://issues.apache.org/jira/browse/SPARK-7133) | Implement struct, array, and map field accessor using apply in Scala and \_\_getitem\_\_ in Python |  Blocker | SQL | Reynold Xin | Wenchen Fan |
| [SPARK-7118](https://issues.apache.org/jira/browse/SPARK-7118) | Add coalesce Spark SQL function to PySpark API |  Minor | PySpark, SQL | Olivier Girardot | Olivier Girardot |
| [SPARK-7113](https://issues.apache.org/jira/browse/SPARK-7113) | Add the direct stream related information to the streaming listener and web UI |  Major | Streaming | Saisai Shao | Saisai Shao |
| [SPARK-7112](https://issues.apache.org/jira/browse/SPARK-7112) | Add InputInfoTracker to have a generic way to track input data rates for all input streams. |  Major | Streaming | Saisai Shao | Saisai Shao |
| [SPARK-7073](https://issues.apache.org/jira/browse/SPARK-7073) | Clean up Python data type hierarchy |  Major | SQL | Reynold Xin | Davies Liu |
| [SPARK-7069](https://issues.apache.org/jira/browse/SPARK-7069) | Rename NativeType -\> AtomicType |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-7068](https://issues.apache.org/jira/browse/SPARK-7068) | Remove PrimitiveType |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-7060](https://issues.apache.org/jira/browse/SPARK-7060) | Missing alias function on Python DataFrame |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-7059](https://issues.apache.org/jira/browse/SPARK-7059) | Create a DataFrame join API to facilitate equijoin and self join |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-6983](https://issues.apache.org/jira/browse/SPARK-6983) | Update ReceiverTrackerActor to use the new Rpc interface |  Major | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-6979](https://issues.apache.org/jira/browse/SPARK-6979) | Replace JobScheduler.eventActor and JobGenerator.eventActor with EventLoop |  Minor | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-6958](https://issues.apache.org/jira/browse/SPARK-6958) | Add Pandas style sort operator |  Major | SQL | Reynold Xin | Davies Liu |
| [SPARK-6957](https://issues.apache.org/jira/browse/SPARK-6957) | Add Pandas style group by operator |  Major | SQL | Reynold Xin | Davies Liu |
| [SPARK-6944](https://issues.apache.org/jira/browse/SPARK-6944) | Mechanism to associate generic operator scope with RDD's |  Major | Spark Core, SQL | Patrick Wendell | Andrew Or |
| [SPARK-6943](https://issues.apache.org/jira/browse/SPARK-6943) | Graphically show the RDD DAG on the UI |  Major | Spark Core, SQL | Patrick Wendell | Andrew Or |
| [SPARK-6939](https://issues.apache.org/jira/browse/SPARK-6939) | Refactoring existing batch statistics into the new UI |  Major | Streaming, Web UI | Shixiong Zhu | Shixiong Zhu |
| [SPARK-6908](https://issues.apache.org/jira/browse/SPARK-6908) | Refactor existing code to use the isolated client |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-6907](https://issues.apache.org/jira/browse/SPARK-6907) | Create an isolated classloader for the Hive Client. |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-6893](https://issues.apache.org/jira/browse/SPARK-6893) | Better handling of pipeline parameters in PySpark |  Major | PySpark | Xiangrui Meng | Xiangrui Meng |
| [SPARK-6876](https://issues.apache.org/jira/browse/SPARK-6876) | DataFrame.na.replace value support for Python |  Major | SQL | Reynold Xin | Adrian Wang |
| [SPARK-6865](https://issues.apache.org/jira/browse/SPARK-6865) | Decide on semantics for string identifiers in DataFrame API |  Blocker | SQL | Michael Armbrust | Reynold Xin |
| [SPARK-6829](https://issues.apache.org/jira/browse/SPARK-6829) | Support math functions in DataFrames |  Blocker | SQL | Xiangrui Meng | Burak Yavuz |
| [SPARK-6824](https://issues.apache.org/jira/browse/SPARK-6824) | Fill the docs for DataFrame API in SparkR |  Blocker | SparkR | Shivaram Venkataraman | Qian Huang |
| [SPARK-6799](https://issues.apache.org/jira/browse/SPARK-6799) | Add dataframe examples for SparkR |  Critical | SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-6796](https://issues.apache.org/jira/browse/SPARK-6796) | Add the batch list to StreamingPage |  Major | Streaming, Web UI | Shixiong Zhu | Shixiong Zhu |
| [SPARK-6779](https://issues.apache.org/jira/browse/SPARK-6779) | Move shared params to param.shared and use code gen |  Major | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-6625](https://issues.apache.org/jira/browse/SPARK-6625) | Add common string filters to data sources |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-6623](https://issues.apache.org/jira/browse/SPARK-6623) | Alias DataFrame.na.fill/drop in Python |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-6608](https://issues.apache.org/jira/browse/SPARK-6608) | Make DataFrame.rdd a lazy val |  Minor | SQL | Cheng Lian | Cheng Lian |
| [SPARK-6603](https://issues.apache.org/jira/browse/SPARK-6603) | SQLContext.registerFunction -\> SQLContext.udf.register |  Major | SQL | Reynold Xin | Davies Liu |
| [SPARK-6564](https://issues.apache.org/jira/browse/SPARK-6564) | SQLContext.emptyDataFrame should contain 0 rows, not 1 row |  Blocker | SQL | Reynold Xin | Reynold Xin |
| [SPARK-6563](https://issues.apache.org/jira/browse/SPARK-6563) | DataFrame.fillna |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-6562](https://issues.apache.org/jira/browse/SPARK-6562) | DataFrame.na.replace value support in Scala/Java |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-6554](https://issues.apache.org/jira/browse/SPARK-6554) | Cannot use partition columns in where clause when Parquet filter push-down is enabled |  Critical | SQL | Jon Chase | Cheng Lian |
| [SPARK-6529](https://issues.apache.org/jira/browse/SPARK-6529) | Word2Vec transformer |  Major | ML | Xusen Yin | Xusen Yin |
| [SPARK-6528](https://issues.apache.org/jira/browse/SPARK-6528) | IDF transformer |  Major | ML | Xusen Yin | Xusen Yin |
| [SPARK-6526](https://issues.apache.org/jira/browse/SPARK-6526) | Add Normalizer transformer |  Major | ML | Xusen Yin | Xusen Yin |
| [SPARK-6490](https://issues.apache.org/jira/browse/SPARK-6490) | Deprecate configurations for "askWithReply" and use new configuration names |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-6418](https://issues.apache.org/jira/browse/SPARK-6418) | Add simple per-stage visualization to the UI |  Major | Web UI | Kay Ousterhout | Kousuke Saruta |
| [SPARK-6265](https://issues.apache.org/jira/browse/SPARK-6265) | PySpark GLMs missing doc for intercept, weights |  Minor | Documentation, MLlib, PySpark | Joseph K. Bradley | YBL |
| [SPARK-6262](https://issues.apache.org/jira/browse/SPARK-6262) | Python MLlib API missing items: Statistics |  Major | MLlib, PySpark | Joseph K. Bradley | Kai Sasaki |
| [SPARK-6258](https://issues.apache.org/jira/browse/SPARK-6258) | Python MLlib API missing items: Clustering |  Major | MLlib, PySpark | Joseph K. Bradley | Yanbo Liang |
| [SPARK-6257](https://issues.apache.org/jira/browse/SPARK-6257) | Python MLlib API missing items: Recommendation |  Major | MLlib, PySpark | Joseph K. Bradley | Manoj Kumar |
| [SPARK-6256](https://issues.apache.org/jira/browse/SPARK-6256) | Python MLlib API missing items: Regression |  Major | MLlib, PySpark | Joseph K. Bradley | Yanbo Liang |
| [SPARK-6255](https://issues.apache.org/jira/browse/SPARK-6255) | Python MLlib API missing items: Classification |  Major | MLlib, PySpark | Joseph K. Bradley | Yanbo Liang |
| [SPARK-6231](https://issues.apache.org/jira/browse/SPARK-6231) | Join on two tables (generated from same one) is broken |  Critical | SQL | Davies Liu | Reynold Xin |
| [SPARK-6229](https://issues.apache.org/jira/browse/SPARK-6229) | Support SASL encryption in network/common module |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-6228](https://issues.apache.org/jira/browse/SPARK-6228) | Move SASL support into network/common module |  Minor | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-6226](https://issues.apache.org/jira/browse/SPARK-6226) | Support model save/load in Python's KMeans |  Major | MLlib, PySpark | Joseph K. Bradley | Xusen Yin |
| [SPARK-6119](https://issues.apache.org/jira/browse/SPARK-6119) | DataFrame.dropna support |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-6117](https://issues.apache.org/jira/browse/SPARK-6117) | describe function for summary statistics |  Major | SQL | Reynold Xin | Andrey Zagrebin |
| [SPARK-6113](https://issues.apache.org/jira/browse/SPARK-6113) | Stabilize DecisionTree and ensembles APIs |  Critical | MLlib, PySpark | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-6096](https://issues.apache.org/jira/browse/SPARK-6096) | Support model save/load in Python's naive Bayes |  Major | MLlib, PySpark | Xiangrui Meng | Xusen Yin |
| [SPARK-6095](https://issues.apache.org/jira/browse/SPARK-6095) | Support model save/load in Python's linear models |  Major | MLlib, PySpark | Xiangrui Meng | Yanbo Liang |
| [SPARK-6094](https://issues.apache.org/jira/browse/SPARK-6094) | Add MultilabelMetrics in PySpark/MLlib |  Major | MLlib, PySpark | Xiangrui Meng | Yanbo Liang |
| [SPARK-6093](https://issues.apache.org/jira/browse/SPARK-6093) | Add RegressionMetrics in PySpark/MLlib |  Major | MLlib, PySpark | Xiangrui Meng | Yanbo Liang |
| [SPARK-6092](https://issues.apache.org/jira/browse/SPARK-6092) | Add RankingMetrics in PySpark/MLlib |  Major | MLlib, PySpark | Xiangrui Meng | Yanbo Liang |
| [SPARK-6091](https://issues.apache.org/jira/browse/SPARK-6091) | Add MulticlassMetrics in PySpark/MLlib |  Major | MLlib, PySpark | Xiangrui Meng | Yanbo Liang |
| [SPARK-6090](https://issues.apache.org/jira/browse/SPARK-6090) | Add BinaryClassificationMetrics in PySpark/MLlib |  Major | MLlib, PySpark | Xiangrui Meng | Xiangrui Meng |
| [SPARK-5995](https://issues.apache.org/jira/browse/SPARK-5995) | Make ML Prediction Developer APIs public |  Major | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-5990](https://issues.apache.org/jira/browse/SPARK-5990) | Model import/export for IsotonicRegression |  Major | MLlib | Joseph K. Bradley | Yanbo Liang |
| [SPARK-5988](https://issues.apache.org/jira/browse/SPARK-5988) | Model import/export for PowerIterationClusteringModel |  Major | MLlib | Joseph K. Bradley | Xusen Yin |
| [SPARK-5987](https://issues.apache.org/jira/browse/SPARK-5987) | Model import/export for GaussianMixtureModel |  Major | MLlib | Joseph K. Bradley | Manoj Kumar |
| [SPARK-5986](https://issues.apache.org/jira/browse/SPARK-5986) | Model import/export for KMeansModel |  Major | MLlib | Joseph K. Bradley | Xusen Yin |
| [SPARK-5957](https://issues.apache.org/jira/browse/SPARK-5957) | Better handling of default parameter values. |  Major | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-5956](https://issues.apache.org/jira/browse/SPARK-5956) | Transformer/Estimator should be copyable. |  Blocker | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-5894](https://issues.apache.org/jira/browse/SPARK-5894) | Add PolynomialExpansion |  Major | ML | Xiangrui Meng | Xusen Yin |
| [SPARK-5893](https://issues.apache.org/jira/browse/SPARK-5893) | Add Bucketizer |  Major | ML | Xiangrui Meng | Xusen Yin |
| [SPARK-5891](https://issues.apache.org/jira/browse/SPARK-5891) | Add Binarizer |  Major | ML | Xiangrui Meng | Liang-Chi Hsieh |
| [SPARK-5888](https://issues.apache.org/jira/browse/SPARK-5888) | Add OneHotEncoder as a Transformer |  Major | ML | Xiangrui Meng | Sandy Ryza |
| [SPARK-5886](https://issues.apache.org/jira/browse/SPARK-5886) | Add StringIndexer |  Major | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-5885](https://issues.apache.org/jira/browse/SPARK-5885) | Add VectorAssembler |  Major | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-5692](https://issues.apache.org/jira/browse/SPARK-5692) | Model import/export for Word2Vec |  Major | MLlib | Xiangrui Meng | Manoj Kumar |
| [SPARK-5632](https://issues.apache.org/jira/browse/SPARK-5632) | not able to resolve dot('.') in field name |  Blocker | SQL | Lishu Liu | Wenchen Fan |
| [SPARK-5182](https://issues.apache.org/jira/browse/SPARK-5182) | Partitioning support for tables created by the data source API |  Blocker | SQL | Yin Huai | Cheng Lian |
| [SPARK-5124](https://issues.apache.org/jira/browse/SPARK-5124) | Standardize internal RPC interface |  Major | Spark Core | Reynold Xin | Shixiong Zhu |
| [SPARK-4655](https://issues.apache.org/jira/browse/SPARK-4655) | Split Stage into ShuffleMapStage and ResultStage subclasses |  Major | Spark Core | Josh Rosen | Ilya Ganelin |
| [SPARK-4588](https://issues.apache.org/jira/browse/SPARK-4588) | Add API for feature attributes |  Critical | ML, MLlib | Xiangrui Meng | Sean Owen |
| [SPARK-3468](https://issues.apache.org/jira/browse/SPARK-3468) | Provide timeline view in Job UI pages |  Major | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-3386](https://issues.apache.org/jira/browse/SPARK-3386) | Reuse serializer and serializer buffer in shuffle block iterator |  Major | Shuffle, Spark Core | Reynold Xin | Josh Rosen |
| [SPARK-2808](https://issues.apache.org/jira/browse/SPARK-2808) | update kafka to version 0.8.2 |  Major | Build, Spark Core, Streaming | Anand Avati | Cody Koeninger |
| [SPARK-2213](https://issues.apache.org/jira/browse/SPARK-2213) | Sort Merge Join |  Blocker | SQL | Cheng Hao | Adrian Wang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-7849](https://issues.apache.org/jira/browse/SPARK-7849) | Update Spark SQL Hive support documentation for 1.4 |  Critical | Documentation, SQL | Cheng Lian | Cheng Lian |
| [SPARK-7747](https://issues.apache.org/jira/browse/SPARK-7747) | Document spark.sql.planner.externalSort option |  Minor | Documentation | Luca Martinetti | Luca Martinetti |
| [SPARK-7723](https://issues.apache.org/jira/browse/SPARK-7723) | Fix string interpolation in pipeline examples |  Trivial | Documentation, MLlib | Saleem Ansari | Saleem Ansari |
| [SPARK-7671](https://issues.apache.org/jira/browse/SPARK-7671) | Fix wrong URLs in MLlib Data Types Documentation |  Trivial | Documentation, MLlib | Favio Vázquez | Favio Vázquez |
| [SPARK-7586](https://issues.apache.org/jira/browse/SPARK-7586) | User guide update for spark.ml Word2Vec |  Major | Documentation, ML | Joseph K. Bradley | Xusen Yin |
| [SPARK-7585](https://issues.apache.org/jira/browse/SPARK-7585) | User guide update for VectorIndexer |  Major | Documentation, ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-7584](https://issues.apache.org/jira/browse/SPARK-7584) | User guide update for VectorAssembler |  Major | Documentation, ML | Joseph K. Bradley | Xiangrui Meng |
| [SPARK-7582](https://issues.apache.org/jira/browse/SPARK-7582) | User guide update for StringIndexer |  Major | Documentation, ML | Joseph K. Bradley | Xiangrui Meng |
| [SPARK-7581](https://issues.apache.org/jira/browse/SPARK-7581) | User guide update for PolynomialExpansion |  Major | Documentation, ML | Joseph K. Bradley | Xusen Yin |
| [SPARK-7579](https://issues.apache.org/jira/browse/SPARK-7579) | User guide update for OneHotEncoder |  Major | Documentation, ML | Joseph K. Bradley | Sandy Ryza |
| [SPARK-7578](https://issues.apache.org/jira/browse/SPARK-7578) | User guide update for spark.ml IDF, Normalizer, StandardScaler |  Major | Documentation, ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-7577](https://issues.apache.org/jira/browse/SPARK-7577) | User guide update for Bucketizer |  Major | Documentation, ML | Joseph K. Bradley | Xusen Yin |
| [SPARK-7576](https://issues.apache.org/jira/browse/SPARK-7576) | User guide update for spark.ml ElementwiseProduct |  Major | Documentation, ML | Joseph K. Bradley | Octavian Geagla |
| [SPARK-7575](https://issues.apache.org/jira/browse/SPARK-7575) | Example code for OneVsRest |  Major | Documentation, ML | Joseph K. Bradley | Ram Sriharsha |
| [SPARK-7574](https://issues.apache.org/jira/browse/SPARK-7574) | User guide update for OneVsRest |  Major | Documentation, ML | Joseph K. Bradley | Ram Sriharsha |
| [SPARK-7557](https://issues.apache.org/jira/browse/SPARK-7557) | User guide update for feature transformer: HashingTF, Tokenizer |  Major | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-7556](https://issues.apache.org/jira/browse/SPARK-7556) | User guide update for feature transformer: Binarizer |  Major | ML | Joseph K. Bradley | Liang-Chi Hsieh |
| [SPARK-7537](https://issues.apache.org/jira/browse/SPARK-7537) | Audit new public Scala APIs for MLlib 1.4 |  Major | MLlib | Joseph K. Bradley | Xiangrui Meng |
| [SPARK-7496](https://issues.apache.org/jira/browse/SPARK-7496) | User guide update for Online LDA |  Minor | Documentation, MLlib | Joseph K. Bradley | yuhao yang |
| [SPARK-7474](https://issues.apache.org/jira/browse/SPARK-7474) | ParamGridBuilder's doctest doesn't show up correctly in the generated doc |  Major | Documentation, ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-7459](https://issues.apache.org/jira/browse/SPARK-7459) | Add Java example for ElementwiseProduct in programming guide |  Minor | Documentation, Java API, ML | Joseph K. Bradley | Octavian Geagla |
| [SPARK-7443](https://issues.apache.org/jira/browse/SPARK-7443) | MLlib 1.4 QA plan |  Critical | ML, MLlib | Xiangrui Meng | Joseph K. Bradley |
| [SPARK-7427](https://issues.apache.org/jira/browse/SPARK-7427) | Make sharedParams match in Scala, Python |  Trivial | ML, PySpark | Joseph K. Bradley | Glenn Weidner |
| [SPARK-7381](https://issues.apache.org/jira/browse/SPARK-7381) | Missing Python API for o.a.s.ml in 1.4 |  Major | ML, PySpark | Burak Yavuz | Burak Yavuz |
| [SPARK-7351](https://issues.apache.org/jira/browse/SPARK-7351) | Add spark.streaming.ui.retainedBatches to docs |  Major | Documentation, Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7272](https://issues.apache.org/jira/browse/SPARK-7272) | User guide update for PMML model export |  Major | MLlib | Xiangrui Meng | Vincenzo Selvaggio |
| [SPARK-7255](https://issues.apache.org/jira/browse/SPARK-7255) | spark.streaming.kafka.maxRetries not documented |  Minor | Documentation, Streaming | Benjamin Fradet | Benjamin Fradet |
| [SPARK-7249](https://issues.apache.org/jira/browse/SPARK-7249) |  Updated Hadoop dependencies due to inconsistency in the versions |  Blocker | Build | Favio Vázquez | Favio Vázquez |
| [SPARK-7228](https://issues.apache.org/jira/browse/SPARK-7228) | SparkR public API for 1.4 release |  Blocker | SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-6863](https://issues.apache.org/jira/browse/SPARK-6863) | Formatted list broken on Hive compatibility section of SQL programming guide |  Trivial | Documentation | Santiago M. Mola | Santiago M. Mola |
| [SPARK-6731](https://issues.apache.org/jira/browse/SPARK-6731) | Upgrade Apache commons-math3 to 3.4.1 |  Minor | Spark Core | Punya Biswal | Punya Biswal |
| [SPARK-6662](https://issues.apache.org/jira/browse/SPARK-6662) | Allow variable substitution in spark.yarn.historyServer.address |  Minor | YARN | Cheolsoo Park | Cheolsoo Park |
| [SPARK-6657](https://issues.apache.org/jira/browse/SPARK-6657) | Fix Python doc build warnings |  Trivial | Documentation, MLlib, PySpark, SQL, Streaming | Joseph K. Bradley | Xiangrui Meng |
| [SPARK-6626](https://issues.apache.org/jira/browse/SPARK-6626) | TwitterUtils.createStream documentation error |  Trivial | Documentation | Jayson Sunshine | Jayson Sunshine |
| [SPARK-6469](https://issues.apache.org/jira/browse/SPARK-6469) | Improving documentation on YARN local directories usage |  Minor | Documentation, YARN | Christophe Préaud | Christophe Préaud |
| [SPARK-6455](https://issues.apache.org/jira/browse/SPARK-6455) | Correct some mistakes and typos |  Trivial | GraphX | Hangchen Yu | Hangchen Yu |
| [SPARK-6402](https://issues.apache.org/jira/browse/SPARK-6402) | EC2 script and job scheduling documentation still refer to Shark |  Trivial | Documentation, EC2 | Pierre Borckmans | Pierre Borckmans |
| [SPARK-6391](https://issues.apache.org/jira/browse/SPARK-6391) | Update Tachyon version compatibility documentation |  Major | Documentation | Calvin Jia | Calvin Jia |
| [SPARK-6370](https://issues.apache.org/jira/browse/SPARK-6370) | Improve documentation of RDD.sample() fraction's effect |  Minor | Spark Core | Marko Bonaci | Marko Bonaci |
| [SPARK-6336](https://issues.apache.org/jira/browse/SPARK-6336) | LBFGS should document what convergenceTol means |  Trivial | Documentation, MLlib | Joseph K. Bradley | Kai Sasaki |
| [SPARK-6278](https://issues.apache.org/jira/browse/SPARK-6278) | Mention the change of step size in the migration guide |  Major | Documentation, MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-6275](https://issues.apache.org/jira/browse/SPARK-6275) | Miss toDF() function in docs/sql-programming-guide.md |  Trivial | Documentation | Zhichao  Zhang | Zhichao  Zhang |
| [SPARK-5884](https://issues.apache.org/jira/browse/SPARK-5884) | Implement feature transformers to ML pipelines for Spark 1.4 |  Critical | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-5814](https://issues.apache.org/jira/browse/SPARK-5814) | Remove JBLAS from runtime dependencies |  Major | GraphX, MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-5610](https://issues.apache.org/jira/browse/SPARK-5610) | Generate Java docs without package private classes and methods |  Major | Documentation | Xiangrui Meng | Xiangrui Meng |
| [SPARK-3833](https://issues.apache.org/jira/browse/SPARK-3833) | Allow Spark SQL SchemaRDDs to be merged |  Major | SQL | Chris Wood | Michael Armbrust |
| [SPARK-7973](https://issues.apache.org/jira/browse/SPARK-7973) | Increase the timeout of CliSuite's "Commands using SerDe provided in --jars" and "Single command with -e" |  Major | SQL, Tests | Yin Huai | Yin Huai |
| [SPARK-7929](https://issues.apache.org/jira/browse/SPARK-7929) | Remove Bagel examples |  Major | Examples, GraphX | Reynold Xin | Reynold Xin |
| [SPARK-7832](https://issues.apache.org/jira/browse/SPARK-7832) | Always run SQL tests in master build. |  Critical | Build, SQL | Yin Huai | Yin Huai |
| [SPARK-7784](https://issues.apache.org/jira/browse/SPARK-7784) | Check 1.3-\> 1.4 SQL API compliance using java-compliance-checker |  Major | SQL | Xiangrui Meng | Xiangrui Meng |
| [SPARK-7528](https://issues.apache.org/jira/browse/SPARK-7528) | Java compatibility of RankingMetrics |  Major | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-6781](https://issues.apache.org/jira/browse/SPARK-6781) | sqlCtx -\> sqlContext in pyspark shell |  Critical | SQL | Michael Armbrust | Davies Liu |
| [SPARK-6643](https://issues.apache.org/jira/browse/SPARK-6643) | Python API for StandardScalerModel |  Minor | MLlib | Kai Sasaki | Kai Sasaki |
| [SPARK-6615](https://issues.apache.org/jira/browse/SPARK-6615) | Add missing methods to Word2Vec's Python API |  Minor | MLlib, PySpark | Kai Sasaki | Kai Sasaki |
| [SPARK-6598](https://issues.apache.org/jira/browse/SPARK-6598) | Python API for IDFModel |  Minor | MLlib | Kai Sasaki | Kai Sasaki |
| [SPARK-6371](https://issues.apache.org/jira/browse/SPARK-6371) | Update version to 1.4.0-SNAPSHOT |  Critical | Build | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-6367](https://issues.apache.org/jira/browse/SPARK-6367) | Use the proper data type for those expressions that are hijacking existing data types. |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-5909](https://issues.apache.org/jira/browse/SPARK-5909) | Add a clearCache command to Spark SQL's cache manager |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-5727](https://issues.apache.org/jira/browse/SPARK-5727) | Deprecate, remove Debian packaging |  Minor | Build, Deploy | Sean Owen | Sean Owen |
| [SPARK-4286](https://issues.apache.org/jira/browse/SPARK-4286) | Support External Shuffle Service with Mesos integration |  Major | Mesos, Shuffle | Timothy Chen | Iulian Dragos |


