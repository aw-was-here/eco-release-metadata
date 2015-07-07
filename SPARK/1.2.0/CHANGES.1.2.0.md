
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

## Release 1.2.0 - 2014-12-17

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-4685](https://issues.apache.org/jira/browse/SPARK-4685) | Update JavaDoc settings to include spark.ml and all spark.mllib subpackages in the right sections |  Trivial | Documentation | Matei Zaharia | Kai Sasaki |
| [SPARK-4683](https://issues.apache.org/jira/browse/SPARK-4683) | Add a beeline.cmd to run on Windows |  Critical | SQL | Matei Zaharia | Cheng Lian |
| [SPARK-4582](https://issues.apache.org/jira/browse/SPARK-4582) | Add getVectors to Word2VecModel |  Minor | MLlib | Xiangrui Meng | Tobias Kässmann |
| [SPARK-4529](https://issues.apache.org/jira/browse/SPARK-4529) | support view with column alias specified |  Major | SQL | Adrian Wang |  |
| [SPARK-4477](https://issues.apache.org/jira/browse/SPARK-4477) | remove numpy from RDDSampler of PySpark |  Major | PySpark | Davies Liu | Davies Liu |
| [SPARK-4439](https://issues.apache.org/jira/browse/SPARK-4439) | Expose RandomForest in Python |  Major | MLlib, PySpark | Matei Zaharia | Davies Liu |
| [SPARK-4435](https://issues.apache.org/jira/browse/SPARK-4435) | Add setThreshold in Python LogisticRegressionModel and SVMModel |  Major | MLlib, PySpark | Matei Zaharia | Davies Liu |
| [SPARK-4396](https://issues.apache.org/jira/browse/SPARK-4396) | Support lookup by index in Rating |  Major | MLlib, PySpark | Xiangrui Meng | Xiangrui Meng |
| [SPARK-4327](https://issues.apache.org/jira/browse/SPARK-4327) | Python API for RDD.randomSplit() |  Critical | PySpark | Davies Liu | Davies Liu |
| [SPARK-4306](https://issues.apache.org/jira/browse/SPARK-4306) | LogisticRegressionWithLBFGS support for PySpark MLlib |  Major | MLlib, PySpark | Varadharajan | Davies Liu |
| [SPARK-4239](https://issues.apache.org/jira/browse/SPARK-4239) | support view in HiveQL |  Major | SQL | Adrian Wang | Adrian Wang |
| [SPARK-4228](https://issues.apache.org/jira/browse/SPARK-4228) | Save a ScheamRDD in JSON format |  Minor | SQL | Yin Huai |  |
| [SPARK-4209](https://issues.apache.org/jira/browse/SPARK-4209) | Support UDT in UDF |  Major | SQL | Xiangrui Meng | Michael Armbrust |
| [SPARK-4186](https://issues.apache.org/jira/browse/SPARK-4186) | Support binaryFiles and binaryRecords API in Python |  Major | PySpark, Spark Core | Matei Zaharia | Davies Liu |
| [SPARK-4149](https://issues.apache.org/jira/browse/SPARK-4149) | ISO 8601 support for json date time strings |  Minor | SQL | Adrian Wang | Adrian Wang |
| [SPARK-4145](https://issues.apache.org/jira/browse/SPARK-4145) | Create jobs overview and job details pages on the web UI |  Major | Web UI | Josh Rosen | Josh Rosen |
| [SPARK-4111](https://issues.apache.org/jira/browse/SPARK-4111) | [MLlib] Implement regression model evaluation metrics |  Major | MLlib | Yanbo Liang | Yanbo Liang |
| [SPARK-4017](https://issues.apache.org/jira/browse/SPARK-4017) | Progress bar in console |  Major | Spark Core | Davies Liu | Davies Liu |
| [SPARK-3964](https://issues.apache.org/jira/browse/SPARK-3964) | Python API for Hypothesis testing |  Major | MLlib | Davies Liu | Davies Liu |
| [SPARK-3961](https://issues.apache.org/jira/browse/SPARK-3961) | Python API for mllib.feature |  Major | . | Davies Liu | Davies Liu |
| [SPARK-3929](https://issues.apache.org/jira/browse/SPARK-3929) | Support for fixed-precision decimal |  Major | SQL | Matei Zaharia | Matei Zaharia |
| [SPARK-3907](https://issues.apache.org/jira/browse/SPARK-3907) | add "truncate table" support |  Minor | SQL | XiaoJing wang |  |
| [SPARK-3902](https://issues.apache.org/jira/browse/SPARK-3902) | Stabilize AsyncRDDActions and expose its methods in Java API |  Major | Java API, Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-3748](https://issues.apache.org/jira/browse/SPARK-3748) | Log thread name in unit test logs |  Minor | Project Infra, Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-3593](https://issues.apache.org/jira/browse/SPARK-3593) | Support Sorting of Binary Type Data |  Major | SQL | Paul Magid | Venkata Ramana G |
| [SPARK-3590](https://issues.apache.org/jira/browse/SPARK-3590) | Expose async APIs in the Java API |  Major | Java API | Marcelo Vanzin | Josh Rosen |
| [SPARK-3572](https://issues.apache.org/jira/browse/SPARK-3572) | Internal API for User-Defined Types |  Major | SQL | Xiangrui Meng | Joseph K. Bradley |
| [SPARK-3569](https://issues.apache.org/jira/browse/SPARK-3569) | Add metadata field to StructField |  Major | MLlib, SQL | Xiangrui Meng | Xiangrui Meng |
| [SPARK-3568](https://issues.apache.org/jira/browse/SPARK-3568) | Add metrics for ranking algorithms |  Major | MLlib | Shuo Xiang | Shuo Xiang |
| [SPARK-3540](https://issues.apache.org/jira/browse/SPARK-3540) | Add reboot-slaves functionality to the ec2 script |  Major | EC2 | Reynold Xin | Reynold Xin |
| [SPARK-3537](https://issues.apache.org/jira/browse/SPARK-3537) | Statistics for cached RDDs |  Major | SQL | Michael Armbrust | Cheng Lian |
| [SPARK-3486](https://issues.apache.org/jira/browse/SPARK-3486) | Add PySpark support for Word2Vec |  Major | MLlib, PySpark | Liquan Pei | Liquan Pei |
| [SPARK-3478](https://issues.apache.org/jira/browse/SPARK-3478) | Profile Python tasks stage by stage in worker |  Major | PySpark | Davies Liu | Davies Liu |
| [SPARK-3470](https://issues.apache.org/jira/browse/SPARK-3470) | Have JavaSparkContext implement Closeable/AutoCloseable |  Minor | Spark Core | Shay Rojansky |  |
| [SPARK-3466](https://issues.apache.org/jira/browse/SPARK-3466) | Limit size of results that a driver collects for each action |  Critical | Spark Core | Matei Zaharia | Davies Liu |
| [SPARK-3458](https://issues.apache.org/jira/browse/SPARK-3458) | enable use of python's "with" statements for SparkContext management |  Major | PySpark | Matthew Farrellee | Matthew Farrellee |
| [SPARK-3446](https://issues.apache.org/jira/browse/SPARK-3446) | FutureAction should expose the job ID |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-3418](https://issues.apache.org/jira/browse/SPARK-3418) | [MLlib] Additional BLAS and Local Sparse Matrix support |  Major | MLlib | Burak Yavuz | Burak Yavuz |
| [SPARK-3343](https://issues.apache.org/jira/browse/SPARK-3343) | Support for CREATE TABLE AS SELECT that specifies the format |  Major | SQL | HuQizhong |  |
| [SPARK-3315](https://issues.apache.org/jira/browse/SPARK-3315) | Support hyperparameter tuning |  Major | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-3256](https://issues.apache.org/jira/browse/SPARK-3256) | Enable :cp to add JARs in spark-shell (Scala 2.10) |  Major | Spark Shell | Matei Zaharia | Chip Senkbeil |
| [SPARK-3254](https://issues.apache.org/jira/browse/SPARK-3254) | Streaming K-Means |  Major | MLlib, Streaming | Xiangrui Meng | Jeremy Freeman |
| [SPARK-3247](https://issues.apache.org/jira/browse/SPARK-3247) | Improved support for external data sources |  Blocker | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-3129](https://issues.apache.org/jira/browse/SPARK-3129) | Prevent data loss in Spark Streaming on driver failure using Write Ahead Logs |  Critical | Streaming | Hari Shreedharan | Tathagata Das |
| [SPARK-3094](https://issues.apache.org/jira/browse/SPARK-3094) | Support run pyspark in PyPy |  Major | PySpark | Davies Liu | Davies Liu |
| [SPARK-2978](https://issues.apache.org/jira/browse/SPARK-2978) | Provide an MR-style shuffle transformation |  Major | Spark Core | Sandy Ryza | Sandy Ryza |
| [SPARK-2895](https://issues.apache.org/jira/browse/SPARK-2895) | Support mapPartitionsWithContext in Spark Java API |  Major | Java API | Chengxiang Li | Chengxiang Li |
| [SPARK-2885](https://issues.apache.org/jira/browse/SPARK-2885) | All-pairs similarity via DIMSUM |  Major | MLlib | Reza Zadeh | Reza Zadeh |
| [SPARK-2636](https://issues.apache.org/jira/browse/SPARK-2636) | Expose job ID in JobWaiter API |  Major | Java API | Chengxiang Li | Chengxiang Li |
| [SPARK-2594](https://issues.apache.org/jira/browse/SPARK-2594) | Add CACHE TABLE \<name\> AS SELECT ... |  Critical | SQL | Michael Armbrust | Ravindra Pesala |
| [SPARK-2377](https://issues.apache.org/jira/browse/SPARK-2377) | Create a Python API for Spark Streaming |  Major | PySpark, Streaming | Nicholas Chammas | Kenichi Takagiwa |
| [SPARK-2329](https://issues.apache.org/jira/browse/SPARK-2329) | Add multi-label evaluation metrics |  Major | MLlib | Alexander Ulanov | Alexander Ulanov |
| [SPARK-2207](https://issues.apache.org/jira/browse/SPARK-2207) | Add minimum information gain and minimum instances per node as training parameters for decision tree. |  Major | MLlib | Manish Amde | Qiping Li |
| [SPARK-1812](https://issues.apache.org/jira/browse/SPARK-1812) | Support cross-building with Scala 2.11 |  Major | Build, Spark Core | Matei Zaharia | Prashant Sharma |
| [SPARK-1547](https://issues.apache.org/jira/browse/SPARK-1547) | Add gradient boosting algorithm to MLlib |  Major | MLlib | Manish Amde | Manish Amde |
| [SPARK-1545](https://issues.apache.org/jira/browse/SPARK-1545) | Add Random Forest algorithm to MLlib |  Major | MLlib | Manish Amde | Joseph K. Bradley |
| [SPARK-1087](https://issues.apache.org/jira/browse/SPARK-1087) | Separate file for traceback and callsite related functions |  Major | PySpark | Jyotiska NK |  |
| [SPARK-787](https://issues.apache.org/jira/browse/SPARK-787) | Add EC2 Script Option to Push EC2 Credentials to Spark Nodes |  Major | EC2 | Patrick Wendell | Dan Osipov |
| [SPARK-611](https://issues.apache.org/jira/browse/SPARK-611) | Allow JStack to be run from web UI |  Major | Web UI | Reynold Xin | Josh Rosen |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-4765](https://issues.apache.org/jira/browse/SPARK-4765) | Add GC back to default metrics |  Critical | Web UI | Patrick Wendell | Kay Ousterhout |
| [SPARK-4740](https://issues.apache.org/jira/browse/SPARK-4740) | Netty's network throughput is about 1/2 of NIO's in spark-perf sortByKey |  Major | Shuffle, Spark Core | Zhang, Liye | Reynold Xin |
| [SPARK-4717](https://issues.apache.org/jira/browse/SPARK-4717) | Optimize BLAS library to avoid de-reference multiple times in loop |  Major | MLlib | DB Tsai | DB Tsai |
| [SPARK-4710](https://issues.apache.org/jira/browse/SPARK-4710) | Fix MLlib compilation warnings |  Trivial | MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-4695](https://issues.apache.org/jira/browse/SPARK-4695) |  Get result using executeCollect in spark sql |  Major | SQL | Fei Wang |  |
| [SPARK-4661](https://issues.apache.org/jira/browse/SPARK-4661) | Minor code and docs cleanup |  Trivial | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-4646](https://issues.apache.org/jira/browse/SPARK-4646) | Replace Scala.util.Sorting.quickSort with Sorter(TimSort) in Spark |  Minor | GraphX | Takeshi Yamamuro |  |
| [SPARK-4620](https://issues.apache.org/jira/browse/SPARK-4620) | Add unpersist in Graph/GraphImpl |  Trivial | GraphX | Takeshi Yamamuro |  |
| [SPARK-4614](https://issues.apache.org/jira/browse/SPARK-4614) | Slight API changes in Matrix and Matrices |  Major | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-4613](https://issues.apache.org/jira/browse/SPARK-4613) | Make JdbcRDD easier to use from Java |  Major | Spark Core | Matei Zaharia | Cheng Lian |
| [SPARK-4612](https://issues.apache.org/jira/browse/SPARK-4612) | Configuration object gets created for every task even if not new file/jar is added |  Critical | Spark Core | Tathagata Das | Tathagata Das |
| [SPARK-4611](https://issues.apache.org/jira/browse/SPARK-4611) | Implement the efficient vector norm |  Major | MLlib | DB Tsai | DB Tsai |
| [SPARK-4610](https://issues.apache.org/jira/browse/SPARK-4610) | Standardize API for DecisionTree: numClasses vs numClassesForClassification |  Minor | MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-4604](https://issues.apache.org/jira/browse/SPARK-4604) | Make MatrixFactorizationModel constructor public |  Major | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-4596](https://issues.apache.org/jira/browse/SPARK-4596) | Refactorize Normalizer to make code cleaner |  Major | MLlib | DB Tsai | DB Tsai |
| [SPARK-4583](https://issues.apache.org/jira/browse/SPARK-4583) | GradientBoostedTrees error logging should use loss being minimized |  Minor | MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-4581](https://issues.apache.org/jira/browse/SPARK-4581) | Refactorize StandardScaler to improve the transformation performance |  Major | MLlib | DB Tsai | DB Tsai |
| [SPARK-4575](https://issues.apache.org/jira/browse/SPARK-4575) | Documentation for the pipeline features |  Major | Documentation, ML, MLlib | Xiangrui Meng | Joseph K. Bradley |
| [SPARK-4567](https://issues.apache.org/jira/browse/SPARK-4567) | Make SparkJobInfo and SparkStageInfo serializable |  Major | Spark Core | Xuefu Zhang | Sandy Ryza |
| [SPARK-4562](https://issues.apache.org/jira/browse/SPARK-4562) | GLM testing time regressions from Spark 1.1 |  Blocker | MLlib, PySpark | Davies Liu | Davies Liu |
| [SPARK-4531](https://issues.apache.org/jira/browse/SPARK-4531) | Cache serialized java objects instead of serialized python objects in MLlib |  Blocker | MLlib, PySpark | Davies Liu | Davies Liu |
| [SPARK-4517](https://issues.apache.org/jira/browse/SPARK-4517) | Improve memory efficiency for python broadcast |  Major | PySpark | Davies Liu | Davies Liu |
| [SPARK-4486](https://issues.apache.org/jira/browse/SPARK-4486) | Improve GradientBoosting APIs and doc |  Major | Documentation, MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-4472](https://issues.apache.org/jira/browse/SPARK-4472) | Print "Spark context available as sc." only when SparkContext is created successfully |  Minor | Spark Shell | Shixiong Zhu | Shixiong Zhu |
| [SPARK-4470](https://issues.apache.org/jira/browse/SPARK-4470) | SparkContext accepts local[0] as a master URL |  Trivial | Spark Core | Kenichi Maehashi | Kenichi Maehashi |
| [SPARK-4466](https://issues.apache.org/jira/browse/SPARK-4466) | Provide support for publishing Scala 2.11 artifacts to Maven |  Blocker | . | Patrick Wendell | Patrick Wendell |
| [SPARK-4463](https://issues.apache.org/jira/browse/SPARK-4463) | Add (de)select all button for additional metrics in webUI |  Minor | Web UI | Kay Ousterhout | Kay Ousterhout |
| [SPARK-4457](https://issues.apache.org/jira/browse/SPARK-4457) | Document how to build for Hadoop versions greater than 2.4 |  Minor | Documentation | Sandy Ryza | Sandy Ryza |
| [SPARK-4453](https://issues.apache.org/jira/browse/SPARK-4453) | Simplify Parquet record filter generation |  Critical | SQL | Cheng Lian | Cheng Lian |
| [SPARK-4444](https://issues.apache.org/jira/browse/SPARK-4444) | Drop VD type parameter from EdgeRDD |  Blocker | GraphX | Ankur Dave | Ankur Dave |
| [SPARK-4431](https://issues.apache.org/jira/browse/SPARK-4431) | Implement efficient activeIterator for dense and sparse vector |  Major | MLlib | DB Tsai | DB Tsai |
| [SPARK-4419](https://issues.apache.org/jira/browse/SPARK-4419) | Upgrade Snappy Java to 1.1.1.6 |  Minor | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-4413](https://issues.apache.org/jira/browse/SPARK-4413) | Parquet support through datasource API |  Critical | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-4410](https://issues.apache.org/jira/browse/SPARK-4410) | Support for external sort |  Critical | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-4398](https://issues.apache.org/jira/browse/SPARK-4398) | Specialize rdd.parallelize for xrange |  Major | PySpark | Xiangrui Meng | Xiangrui Meng |
| [SPARK-4394](https://issues.apache.org/jira/browse/SPARK-4394) | Allow datasources to support IN and sizeInBytes |  Blocker | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-4393](https://issues.apache.org/jira/browse/SPARK-4393) | Memory leak in connection manager timeout thread |  Blocker | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-4386](https://issues.apache.org/jira/browse/SPARK-4386) | Parquet file write performance improvement |  Major | SQL | Jim Carroll |  |
| [SPARK-4381](https://issues.apache.org/jira/browse/SPARK-4381) | User should get warned when set spark.master with local in Spark Streaming |  Major | Streaming | Saisai Shao |  |
| [SPARK-4380](https://issues.apache.org/jira/browse/SPARK-4380) | Executor full of log "spilling in-memory map of 0 MB to disk" |  Major | Spark Core | Hong Shen | Andrew Or |
| [SPARK-4379](https://issues.apache.org/jira/browse/SPARK-4379) | RDD.checkpoint throws a general Exception (should be SparkException) |  Trivial | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-4378](https://issues.apache.org/jira/browse/SPARK-4378) | Make ALS more Java-friendly |  Major | Java API, MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-4365](https://issues.apache.org/jira/browse/SPARK-4365) | Remove unnecessary filter call on records returned from parquet library |  Minor | SQL | Yash Datta |  |
| [SPARK-4358](https://issues.apache.org/jira/browse/SPARK-4358) | Parsing NumericLit with more specified types |  Minor | . | Liang-Chi Hsieh |  |
| [SPARK-4347](https://issues.apache.org/jira/browse/SPARK-4347) | GradientBoostingSuite takes more than 1 minute to finish |  Major | MLlib | Xiangrui Meng | Manish Amde |
| [SPARK-4330](https://issues.apache.org/jira/browse/SPARK-4330) | Link to proper URL for YARN overview |  Minor | Documentation | Kousuke Saruta | Kousuke Saruta |
| [SPARK-4324](https://issues.apache.org/jira/browse/SPARK-4324) | Support numpy/scipy in all Python API of MLlib |  Critical | MLlib, PySpark | Davies Liu | Davies Liu |
| [SPARK-4307](https://issues.apache.org/jira/browse/SPARK-4307) | Initialize FileDescriptor lazily in FileRegion |  Major | Shuffle | Reynold Xin | Reynold Xin |
| [SPARK-4294](https://issues.apache.org/jira/browse/SPARK-4294) | UnionDStream stream should express the requirements in the same way as TransformedDStream |  Minor | Streaming | Yadong Qi | Tathagata Das |
| [SPARK-4272](https://issues.apache.org/jira/browse/SPARK-4272) | Add more unwrap functions for primitive type in TableReader |  Minor | SQL | Cheng Hao |  |
| [SPARK-4262](https://issues.apache.org/jira/browse/SPARK-4262) | Add .schemaRDD to JavaSchemaRDD |  Trivial | SQL | Xiangrui Meng | Xiangrui Meng |
| [SPARK-4221](https://issues.apache.org/jira/browse/SPARK-4221) | Allow access to nonnegative ALS from python |  Major | MLlib, PySpark | Michelangelo D'Agostino | Michelangelo D'Agostino |
| [SPARK-4214](https://issues.apache.org/jira/browse/SPARK-4214) | With dynamic allocation, avoid outstanding requests for more executors than pending tasks need |  Major | Spark Core, YARN | Sandy Ryza | Sandy Ryza |
| [SPARK-4211](https://issues.apache.org/jira/browse/SPARK-4211) | Spark POM hive-0.13.1 profile sets incorrect hive version property |  Major | Build | Fi |  |
| [SPARK-4202](https://issues.apache.org/jira/browse/SPARK-4202) | DSL support for Scala UDF |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-4197](https://issues.apache.org/jira/browse/SPARK-4197) | Gradient Boosting API cleanups |  Major | MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-4191](https://issues.apache.org/jira/browse/SPARK-4191) | move wrapperFor to HiveInspectors to reuse them |  Major | SQL | Fei Wang |  |
| [SPARK-4188](https://issues.apache.org/jira/browse/SPARK-4188) | Shuffle fetches should be retried at a lower level |  Major | Spark Core | Aaron Davidson | Aaron Davidson |
| [SPARK-4166](https://issues.apache.org/jira/browse/SPARK-4166) | Display the executor ID in the Web UI when ExecutorLostFailure happens |  Minor | Spark Core, Web UI | Shixiong Zhu |  |
| [SPARK-4164](https://issues.apache.org/jira/browse/SPARK-4164) | spark.kryo.registrator shall use comma separated value to support multiple registrator |  Major | Spark Core | Jarred Li |  |
| [SPARK-4163](https://issues.apache.org/jira/browse/SPARK-4163) | When fetching blocks unsuccessfully, Web UI only displays "Fetch failure" |  Minor | Spark Core, Web UI | Shixiong Zhu | Shixiong Zhu |
| [SPARK-4150](https://issues.apache.org/jira/browse/SPARK-4150) | rdd.setName returns None in PySpark |  Trivial | PySpark | Xiangrui Meng | Xiangrui Meng |
| [SPARK-4143](https://issues.apache.org/jira/browse/SPARK-4143) | Move inner class DeferredObjectAdapter to top level |  Trivial | SQL | Cheng Hao | Cheng Hao |
| [SPARK-4141](https://issues.apache.org/jira/browse/SPARK-4141) | Hide Accumulators column on stage page when no accumulators exist |  Minor | Web UI | Kay Ousterhout |  |
| [SPARK-4139](https://issues.apache.org/jira/browse/SPARK-4139) | Start the number of executors at the max if dynamic allocation is enabled |  Major | YARN | Andrew Or | Andrew Or |
| [SPARK-4129](https://issues.apache.org/jira/browse/SPARK-4129) | Performance tuning in MultivariateOnlineSummarizer |  Major | MLlib | DB Tsai | DB Tsai |
| [SPARK-4128](https://issues.apache.org/jira/browse/SPARK-4128) | Create instructions on fully building Spark in Intellij |  Blocker | Documentation | Patrick Wendell | Patrick Wendell |
| [SPARK-4116](https://issues.apache.org/jira/browse/SPARK-4116) | Delete the abandoned log4j-spark-container.properties |  Minor | YARN | Tao Wang |  |
| [SPARK-4115](https://issues.apache.org/jira/browse/SPARK-4115) | [GraphX] add overrided count for EdgeRDD |  Minor | GraphX | Lu Lu |  |
| [SPARK-4102](https://issues.apache.org/jira/browse/SPARK-4102) | ShuffleReader.stop() method is never implemented or called; should be deleted. |  Trivial | Spark Core | Kay Ousterhout | Kay Ousterhout |
| [SPARK-4098](https://issues.apache.org/jira/browse/SPARK-4098) | use appUIAddress instead of appUIHostPort in yarn-client mode |  Minor | YARN | Tao Wang |  |
| [SPARK-4096](https://issues.apache.org/jira/browse/SPARK-4096) | let ApplicationMaster accept executor memory argument in same format as JVM memory strings |  Minor | YARN | Tao Wang | Tao Wang |
| [SPARK-4095](https://issues.apache.org/jira/browse/SPARK-4095) | [YARN][Minor]extract val isLaunchingDriver in ClientBase |  Minor | YARN | Tao Wang |  |
| [SPARK-4084](https://issues.apache.org/jira/browse/SPARK-4084) | Reuse sort key in Sorter |  Major | Spark Core | Xiangrui Meng | Xiangrui Meng |
| [SPARK-4067](https://issues.apache.org/jira/browse/SPARK-4067) | refactor ExecutorUncaughtExceptionHandler as a general one as it is used like this |  Major | Spark Core | Nan Zhu | Nan Zhu |
| [SPARK-4060](https://issues.apache.org/jira/browse/SPARK-4060) | MLlib, exposing special rdd functions to the public |  Trivial | MLlib | Niklas Wilcke | Niklas Wilcke |
| [SPARK-4058](https://issues.apache.org/jira/browse/SPARK-4058) | Log file name is hard coded even though there is a variable '$LOG\_FILE ' |  Minor | PySpark | Kousuke Saruta | Kousuke Saruta |
| [SPARK-4051](https://issues.apache.org/jira/browse/SPARK-4051) | Rows in python should support conversion to dictionary |  Major | SQL | Chris Grier | Davies Liu |
| [SPARK-4047](https://issues.apache.org/jira/browse/SPARK-4047) | Generate runtime warning for naive implementation examples for algorithms implemented in MLlib/graphx |  Minor | Examples | Varadharajan | Varadharajan |
| [SPARK-4030](https://issues.apache.org/jira/browse/SPARK-4030) | `destroy` method in Broadcast should be public |  Major | Block Manager, Spark Core | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-4025](https://issues.apache.org/jira/browse/SPARK-4025) | Don't show accumulator values in the task table on the stage detail page when there are no accumulators |  Minor | Web UI | Kay Ousterhout |  |
| [SPARK-4016](https://issues.apache.org/jira/browse/SPARK-4016) | Allow user to optionally show additional, advanced metrics in the UI |  Minor | Web UI | Kay Ousterhout | Kay Ousterhout |
| [SPARK-4000](https://issues.apache.org/jira/browse/SPARK-4000) | Gathers unit tests logs to Jenkins master at the end of a Jenkins build |  Major | Build | Cheng Lian |  |
| [SPARK-3988](https://issues.apache.org/jira/browse/SPARK-3988) | Public API for DateType support |  Minor | SQL | Adrian Wang | Adrian Wang |
| [SPARK-3984](https://issues.apache.org/jira/browse/SPARK-3984) | Display task deserialization time in the UI |  Major | Web UI | Kay Ousterhout | Kay Ousterhout |
| [SPARK-3969](https://issues.apache.org/jira/browse/SPARK-3969) | Optimizer should have a super class as an interface. |  Major | SQL | Takuya Ueshin |  |
| [SPARK-3968](https://issues.apache.org/jira/browse/SPARK-3968) | Use parquet-mr filter2 api in spark sql |  Minor | SQL | Yash Datta | Yash Datta |
| [SPARK-3954](https://issues.apache.org/jira/browse/SPARK-3954) | Optimization to FileInputDStream |  Major | Streaming | 宿荣全 |  |
| [SPARK-3953](https://issues.apache.org/jira/browse/SPARK-3953) | Confusable variable name. |  Minor | SQL | Kousuke Saruta |  |
| [SPARK-3943](https://issues.apache.org/jira/browse/SPARK-3943) | Some scripts bin\\*.cmd pollutes environment variables in Windows. |  Minor | Windows | Masayoshi TSUZUKI | Masayoshi TSUZUKI |
| [SPARK-3938](https://issues.apache.org/jira/browse/SPARK-3938) | Set RDD name to table name during cache operations |  Critical | SQL | Patrick Wendell | Cheng Lian |
| [SPARK-3922](https://issues.apache.org/jira/browse/SPARK-3922) | A global UTF8 constant for Spark |  Minor | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-3911](https://issues.apache.org/jira/browse/SPARK-3911) | HiveSimpleUdf can not be optimized in constant folding |  Minor | SQL | Cheng Hao | Cheng Hao |
| [SPARK-3906](https://issues.apache.org/jira/browse/SPARK-3906) | Support joins of multiple tables in SparkSQL (SQLContext, not HiveQL) |  Major | SQL | Jianshi Huang | Ravindra Pesala |
| [SPARK-3892](https://issues.apache.org/jira/browse/SPARK-3892) | Map type do not need simpleName |  Minor | SQL | Adrian Wang | Adrian Wang |
| [SPARK-3890](https://issues.apache.org/jira/browse/SPARK-3890) | remove redundant spark.executor.memory in doc |  Minor | Documentation | Tao Wang | Tao Wang |
| [SPARK-3887](https://issues.apache.org/jira/browse/SPARK-3887) | ConnectionManager should log remote exception when reporting remote errors |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-3886](https://issues.apache.org/jira/browse/SPARK-3886) | Choose the batch size of serializer based on size of object |  Major | . | Davies Liu | Davies Liu |
| [SPARK-3874](https://issues.apache.org/jira/browse/SPARK-3874) | Provide stable TaskContext API |  Major | Spark Core | Patrick Wendell | Prashant Sharma |
| [SPARK-3870](https://issues.apache.org/jira/browse/SPARK-3870) | EOL character enforcement |  Minor | Project Infra | Kousuke Saruta |  |
| [SPARK-3856](https://issues.apache.org/jira/browse/SPARK-3856) | Clean deprecated usage after breeze 0.10 upgrade |  Trivial | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-3845](https://issues.apache.org/jira/browse/SPARK-3845) | SQLContext(...) should inherit configurations from SparkContext |  Major | SQL | Jianshi Huang |  |
| [SPARK-3844](https://issues.apache.org/jira/browse/SPARK-3844) | Truncate appName in WebUI if it is too long |  Trivial | Web UI | Xiangrui Meng | Xiangrui Meng |
| [SPARK-3841](https://issues.apache.org/jira/browse/SPARK-3841) | Pretty-print Params case classes for tests |  Minor | MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-3836](https://issues.apache.org/jira/browse/SPARK-3836) | Spark REPL optionally propagate internal exceptions |  Minor | Spark Core | Ahir Reddy | Ahir Reddy |
| [SPARK-3831](https://issues.apache.org/jira/browse/SPARK-3831) | Filter rule Improvement and bool expression optimization. |  Major | SQL | Kousuke Saruta |  |
| [SPARK-3826](https://issues.apache.org/jira/browse/SPARK-3826) | Support JDBC/ODBC server with Hive 0.13.1 |  Blocker | SQL | Fei Wang | Fei Wang |
| [SPARK-3813](https://issues.apache.org/jira/browse/SPARK-3813) | Support "case when" conditional functions in Spark SQL |  Major | SQL | Ravindra Pesala(Old.Don't assign to it) | Ravindra Pesala |
| [SPARK-3811](https://issues.apache.org/jira/browse/SPARK-3811) | More robust / standard Utils.deleteRecursively, Utils.createTempDir |  Minor | Spark Core | Sean Owen | Sean Owen |
| [SPARK-3792](https://issues.apache.org/jira/browse/SPARK-3792) | enable JavaHiveQLSuite |  Major | SQL | Fei Wang |  |
| [SPARK-3790](https://issues.apache.org/jira/browse/SPARK-3790) | CosineSimilarity via DIMSUM example |  Major | . | Reza Zadeh | Reza Zadeh |
| [SPARK-3786](https://issues.apache.org/jira/browse/SPARK-3786) | Speedup tests of PySpark |  Major | PySpark | Davies Liu | Davies Liu |
| [SPARK-3780](https://issues.apache.org/jira/browse/SPARK-3780) | YarnAllocator should look at the container completed diagnostic message |  Major | YARN | Thomas Graves | Sandy Ryza |
| [SPARK-3777](https://issues.apache.org/jira/browse/SPARK-3777) | Display "Executor ID" for Tasks in Stage page |  Minor | Web UI | Shixiong Zhu | Shixiong Zhu |
| [SPARK-3775](https://issues.apache.org/jira/browse/SPARK-3775) | Not suitable error message in spark-shell.cmd |  Trivial | . | Masayoshi TSUZUKI | Masayoshi TSUZUKI |
| [SPARK-3774](https://issues.apache.org/jira/browse/SPARK-3774) | typo comment in bin/utils.sh |  Trivial | PySpark, Spark Shell | Masayoshi TSUZUKI | Masayoshi TSUZUKI |
| [SPARK-3770](https://issues.apache.org/jira/browse/SPARK-3770) | The userFeatures RDD from MatrixFactorizationModel isn't accessible from the python bindings |  Major | MLlib, PySpark | Michelangelo D'Agostino | Michelangelo D'Agostino |
| [SPARK-3768](https://issues.apache.org/jira/browse/SPARK-3768) | Modify default YARN memory\_overhead-- from an additive constant to a multiplier |  Major | YARN | Thomas Graves | Nishkam Ravi |
| [SPARK-3766](https://issues.apache.org/jira/browse/SPARK-3766) | Snappy is also the default compression codec for broadcast variables |  Major | Documentation | Fei Wang | Fei Wang |
| [SPARK-3765](https://issues.apache.org/jira/browse/SPARK-3765) | Add test information to sbt build docs |  Major | Documentation | Fei Wang | Fei Wang |
| [SPARK-3752](https://issues.apache.org/jira/browse/SPARK-3752) | Spark SQL needs more exhaustive tests for definite Hive UDF's |  Major | SQL | Vida Ha |  |
| [SPARK-3751](https://issues.apache.org/jira/browse/SPARK-3751) | DecisionTreeRunner functionality improvement |  Minor | MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-3740](https://issues.apache.org/jira/browse/SPARK-3740) | Use a compressed bitmap to track zero sized blocks in HighlyCompressedMapStatus |  Major | Shuffle, Spark Core | Reynold Xin | Josh Rosen |
| [SPARK-3716](https://issues.apache.org/jira/browse/SPARK-3716) | Change partitionStrategy to utilize PartitionStrategy.fromString(\_) to match edgeStorageLevel and vertexStorageLevel syntax in Analytics.scala |  Trivial | GraphX | Benjamin Piering |  |
| [SPARK-3715](https://issues.apache.org/jira/browse/SPARK-3715) | [Docs]Minor typo |  Trivial | Documentation | Tao Wang |  |
| [SPARK-3713](https://issues.apache.org/jira/browse/SPARK-3713) | Use JSON to serialize DataType |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-3711](https://issues.apache.org/jira/browse/SPARK-3711) | Optimize where in clause filter queries |  Minor | SQL | Yash Datta |  |
| [SPARK-3696](https://issues.apache.org/jira/browse/SPARK-3696) | Do not override user-defined conf\_dir in spark-config.sh |  Minor | Deploy | Tao Wang | Tao Wang |
| [SPARK-3675](https://issues.apache.org/jira/browse/SPARK-3675) | Allow starting JDBC server on an existing context |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-3666](https://issues.apache.org/jira/browse/SPARK-3666) | Extract interfaces for EdgeRDD and VertexRDD |  Blocker | GraphX | Ankur Dave | Ankur Dave |
| [SPARK-3664](https://issues.apache.org/jira/browse/SPARK-3664) | Graduate GraphX from alpha to stable |  Major | GraphX | Ankur Dave | Ankur Dave |
| [SPARK-3658](https://issues.apache.org/jira/browse/SPARK-3658) | Take thrift server as a daemon |  Minor | SQL | Tao Wang |  |
| [SPARK-3653](https://issues.apache.org/jira/browse/SPARK-3653) | SPARK\_{DRIVER\|EXECUTOR}\_MEMORY is ignored in cluster mode |  Critical | Spark Core | Andrew Or | Andrew Or |
| [SPARK-3651](https://issues.apache.org/jira/browse/SPARK-3651) | Consolidate executor maps in CoarseGrainedSchedulerBackend |  Major | Spark Core | Andrew Or | Dale Richardson |
| [SPARK-3646](https://issues.apache.org/jira/browse/SPARK-3646) | Copy SQL options from the spark context |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-3634](https://issues.apache.org/jira/browse/SPARK-3634) | Python modules added through addPyFile should take precedence over system modules |  Major | PySpark | Josh Rosen |  |
| [SPARK-3623](https://issues.apache.org/jira/browse/SPARK-3623) | Graph should support the checkpoint operation |  Critical | GraphX | Guoqiang Li | Guoqiang Li |
| [SPARK-3616](https://issues.apache.org/jira/browse/SPARK-3616) | Add Selenium tests to Web UI |  Major | Web UI | Josh Rosen | Josh Rosen |
| [SPARK-3614](https://issues.apache.org/jira/browse/SPARK-3614) | Filter on minimum occurrences of a term in IDF |  Minor | MLlib | Jatinpreet Singh | RJ Nowling |
| [SPARK-3613](https://issues.apache.org/jira/browse/SPARK-3613) | Don't record the size of each shuffle block for large jobs |  Major | Shuffle, Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-3595](https://issues.apache.org/jira/browse/SPARK-3595) | Spark should respect configured OutputCommitter when using saveAsHadoopFile |  Major | . | Ian Hummel | Ian Hummel |
| [SPARK-3594](https://issues.apache.org/jira/browse/SPARK-3594) | try more rows during inferSchema |  Major | . | Davies Liu | Davies Liu |
| [SPARK-3589](https://issues.apache.org/jira/browse/SPARK-3589) | [Minor]Remove redundant code in deploy module |  Minor | Deploy | Tao Wang | Tao Wang |
| [SPARK-3566](https://issues.apache.org/jira/browse/SPARK-3566) | .gitignore and .rat-excludes should consider Windows cmd file and Emacs' backup files |  Minor | . | Kousuke Saruta | Kousuke Saruta |
| [SPARK-3564](https://issues.apache.org/jira/browse/SPARK-3564) | Display App ID on HistoryPage |  Major | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-3554](https://issues.apache.org/jira/browse/SPARK-3554) | handle large dataset in closure of PySpark |  Major | PySpark | Davies Liu | Davies Liu |
| [SPARK-3547](https://issues.apache.org/jira/browse/SPARK-3547) | Maybe we should not simply make return code 1 equal to CLASS\_NOT\_FOUND |  Minor | Deploy | Tao Wang | Tao Wang |
| [SPARK-3529](https://issues.apache.org/jira/browse/SPARK-3529) | Delete the temporal files after test exit |  Minor | SQL | Cheng Hao |  |
| [SPARK-3516](https://issues.apache.org/jira/browse/SPARK-3516) | DecisionTree Python support for params maxInstancesPerNode, maxInfoGain |  Minor | MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-3491](https://issues.apache.org/jira/browse/SPARK-3491) | Use pickle to serialize the data in MLlib Python |  Major | MLlib, PySpark | Davies Liu | Davies Liu |
| [SPARK-3485](https://issues.apache.org/jira/browse/SPARK-3485) | should check parameter type when find constructors |  Major | SQL | Adrian Wang | Adrian Wang |
| [SPARK-3483](https://issues.apache.org/jira/browse/SPARK-3483) | Special chars in column names |  Major | SQL | Kuldeep | Ravindra Pesala |
| [SPARK-3479](https://issues.apache.org/jira/browse/SPARK-3479) | Have Jenkins show which category of tests failed in his GitHub messages |  Major | Build | Nicholas Chammas |  |
| [SPARK-3469](https://issues.apache.org/jira/browse/SPARK-3469) | All TaskCompletionListeners should be called even if some of them fail |  Major | Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-3467](https://issues.apache.org/jira/browse/SPARK-3467) | Python BatchedSerializer should dynamically lower batch size for large objects |  Major | PySpark | Matei Zaharia | Davies Liu |
| [SPARK-3463](https://issues.apache.org/jira/browse/SPARK-3463) | Show metrics about spilling in Python |  Major | PySpark | Davies Liu | Davies Liu |
| [SPARK-3462](https://issues.apache.org/jira/browse/SPARK-3462) | parquet pushdown for unionAll |  Major | SQL | Cody Koeninger |  |
| [SPARK-3443](https://issues.apache.org/jira/browse/SPARK-3443) | Update the default values of some decision tree parameters |  Minor | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-3427](https://issues.apache.org/jira/browse/SPARK-3427) | Avoid active vertex tracking in static PageRank |  Major | GraphX | Ankur Dave | Ankur Dave |
| [SPARK-3425](https://issues.apache.org/jira/browse/SPARK-3425) | OpenJDK - when run with jvm 1.8, should not set MaxPermSize |  Minor | . | Matthew Farrellee | Matthew Farrellee |
| [SPARK-3423](https://issues.apache.org/jira/browse/SPARK-3423) | Implement BETWEEN support for regular SQL parser |  Minor | SQL | William Benton | William Benton |
| [SPARK-3420](https://issues.apache.org/jira/browse/SPARK-3420) | Using Sphinx to generate API docs for PySpark |  Major | PySpark | Davies Liu | Davies Liu |
| [SPARK-3411](https://issues.apache.org/jira/browse/SPARK-3411) | Improve load-balancing of concurrently-submitted drivers across workers |  Minor | Deploy | Tao Wang | Tao Wang |
| [SPARK-3410](https://issues.apache.org/jira/browse/SPARK-3410) | The priority of shutdownhook for ApplicationMaster should not be integer literal |  Minor | YARN | Kousuke Saruta | Kousuke Saruta |
| [SPARK-3409](https://issues.apache.org/jira/browse/SPARK-3409) | Avoid pulling in Exchange operator itself in Exchange's closures |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-3407](https://issues.apache.org/jira/browse/SPARK-3407) | Add Date type support |  Major | SQL | Cheng Hao | Adrian Wang |
| [SPARK-3398](https://issues.apache.org/jira/browse/SPARK-3398) | Have spark-ec2 intelligently wait for specific cluster states |  Minor | EC2 | Nicholas Chammas | Nicholas Chammas |
| [SPARK-3397](https://issues.apache.org/jira/browse/SPARK-3397) | Bump pom.xml version number of master branch to 1.2.0-SNAPSHOT |  Major | Build | Guoqiang Li |  |
| [SPARK-3396](https://issues.apache.org/jira/browse/SPARK-3396) | Change LogistricRegressionWithSGD's default regType to L2 |  Major | MLlib, PySpark | Xiangrui Meng | Christoph Sawade |
| [SPARK-3393](https://issues.apache.org/jira/browse/SPARK-3393) | Align the log4j configuration for Spark & SparkSQLCLI |  Minor | SQL | Cheng Hao | Cheng Hao |
| [SPARK-3391](https://issues.apache.org/jira/browse/SPARK-3391) | Support attaching more than 1 EBS volumes |  Major | EC2 | Reynold Xin | Reynold Xin |
| [SPARK-3389](https://issues.apache.org/jira/browse/SPARK-3389) | Add converter class to make reading Parquet files easy with PySpark |  Major | PySpark | Uri Laserson | Uri Laserson |
| [SPARK-3388](https://issues.apache.org/jira/browse/SPARK-3388) | Expose cluster applicationId, use it to serve history information |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-3366](https://issues.apache.org/jira/browse/SPARK-3366) | Compute best splits distributively in decision tree |  Major | MLlib | Xiangrui Meng | Qiping Li |
| [SPARK-3353](https://issues.apache.org/jira/browse/SPARK-3353) | Stage id monotonicity (parent stage should have lower stage id) |  Major | Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-3337](https://issues.apache.org/jira/browse/SPARK-3337) | Paranoid quoting in shell to allow install dirs with spaces within. |  Major | Build, Spark Core | Prashant Sharma | Prashant Sharma |
| [SPARK-3310](https://issues.apache.org/jira/browse/SPARK-3310) | Directly use currentTable without unnecessary implicit conversion |  Minor | . | Liang-Chi Hsieh |  |
| [SPARK-3309](https://issues.apache.org/jira/browse/SPARK-3309) | Put all public API in \_\_all\_\_ |  Major | PySpark | Davies Liu | Davies Liu |
| [SPARK-3305](https://issues.apache.org/jira/browse/SPARK-3305) | Remove unused import from UI classes. |  Trivial | Spark Core | Kousuke Saruta | Kousuke Saruta |
| [SPARK-3300](https://issues.apache.org/jira/browse/SPARK-3300) | No need to call clear() in ensureFreeSpace and shorten build() in ColumnBuilder |  Minor | . | Liang-Chi Hsieh |  |
| [SPARK-3294](https://issues.apache.org/jira/browse/SPARK-3294) | Avoid boxing/unboxing when handling in-memory columnar storage |  Critical | SQL | Cheng Lian | Cheng Lian |
| [SPARK-3280](https://issues.apache.org/jira/browse/SPARK-3280) | Made sort-based shuffle the default implementation |  Major | Shuffle, Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-3272](https://issues.apache.org/jira/browse/SPARK-3272) | Calculate prediction for nodes separately from calculating information gain for splits in decision tree |  Major | MLlib | Qiping Li | Qiping Li |
| [SPARK-3265](https://issues.apache.org/jira/browse/SPARK-3265) | Allow using custom ipython executable with pyspark |  Minor | PySpark | Rob O'Dwyer | Rob O'Dwyer |
| [SPARK-3250](https://issues.apache.org/jira/browse/SPARK-3250) | More Efficient Sampling |  Major | Spark Core | RJ Nowling | Erik Erlandson |
| [SPARK-3207](https://issues.apache.org/jira/browse/SPARK-3207) | Choose splits for continuous features in DecisionTree more adaptively |  Minor | MLlib | Joseph K. Bradley | Qiping Li |
| [SPARK-3193](https://issues.apache.org/jira/browse/SPARK-3193) | output error info when Process exitcode not zero |  Major | Spark Core | Fei Wang | Fei Wang |
| [SPARK-3179](https://issues.apache.org/jira/browse/SPARK-3179) | Add task OutputMetrics |  Major | Spark Core | Sandy Ryza | Sandy Ryza |
| [SPARK-3176](https://issues.apache.org/jira/browse/SPARK-3176) | Implement 'ABS' and 'LAST' for sql |  Minor | SQL | Xinyun Huang |  |
| [SPARK-3174](https://issues.apache.org/jira/browse/SPARK-3174) | Provide elastic scaling within a Spark application |  Major | Spark Core, YARN | Sandy Ryza | Andrew Or |
| [SPARK-3161](https://issues.apache.org/jira/browse/SPARK-3161) | Cache example-node map for DecisionTree training |  Major | MLlib | Joseph K. Bradley | Sung Chung |
| [SPARK-3160](https://issues.apache.org/jira/browse/SPARK-3160) | Simplify DecisionTree data structure for training |  Minor | MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-3158](https://issues.apache.org/jira/browse/SPARK-3158) | Avoid 1 extra aggregation for DecisionTree training |  Major | MLlib | Joseph K. Bradley | Qiping Li |
| [SPARK-3156](https://issues.apache.org/jira/browse/SPARK-3156) | DecisionTree: Order categorical features adaptively |  Major | MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-3128](https://issues.apache.org/jira/browse/SPARK-3128) | Use streaming test suite for StreamingLR |  Minor | MLlib, Streaming | Jeremy Freeman |  |
| [SPARK-3123](https://issues.apache.org/jira/browse/SPARK-3123) | override the "setName" function to set EdgeRDD's name manually just as VertexRDD does. |  Minor | GraphX | uncleGen |  |
| [SPARK-3086](https://issues.apache.org/jira/browse/SPARK-3086) | Use 1-indexing for decision tree nodes |  Minor | MLlib | Xiangrui Meng | Joseph K. Bradley |
| [SPARK-3073](https://issues.apache.org/jira/browse/SPARK-3073) | improve large sort (external sort) for PySpark |  Major | . | Davies Liu | Davies Liu |
| [SPARK-3069](https://issues.apache.org/jira/browse/SPARK-3069) | Build instructions in README are outdated |  Minor | Build, Documentation | Bertrand Bossy | Sean Owen |
| [SPARK-3068](https://issues.apache.org/jira/browse/SPARK-3068) | when run with jvm 1.8, should not set MaxPermSize |  Minor | . | Adrian Wang | Adrian Wang |
| [SPARK-3052](https://issues.apache.org/jira/browse/SPARK-3052) | Misleading and spurious FileSystem closed errors whenever a job fails while reading from Hadoop |  Major | Spark Core | Sandy Ryza | Sandy Ryza |
| [SPARK-3047](https://issues.apache.org/jira/browse/SPARK-3047) | add an option to use str in textFileRDD() |  Major | . | Davies Liu | Davies Liu |
| [SPARK-3043](https://issues.apache.org/jira/browse/SPARK-3043) | DecisionTree aggregation is inefficient |  Major | MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-3040](https://issues.apache.org/jira/browse/SPARK-3040) | Reverse order of Utils.findLocalIpAddress on UNIX |  Trivial | Spark Core | Xianjin YE | Xianjin YE |
| [SPARK-3030](https://issues.apache.org/jira/browse/SPARK-3030) | reuse python worker |  Major | PySpark | Davies Liu | Davies Liu |
| [SPARK-3019](https://issues.apache.org/jira/browse/SPARK-3019) | Pluggable block transfer (data plane communication) interface |  Major | Shuffle, Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-3014](https://issues.apache.org/jira/browse/SPARK-3014) | Log a more informative messages in a couple failure scenarios |  Minor | YARN | Sandy Ryza | Sandy Ryza |
| [SPARK-3010](https://issues.apache.org/jira/browse/SPARK-3010) | fix redundant conditional |  Trivial | Spark Core | Fei Wang | Fei Wang |
| [SPARK-3007](https://issues.apache.org/jira/browse/SPARK-3007) | Add "Dynamic Partition" support  to  Spark Sql hive |  Major | SQL | baishuo |  |
| [SPARK-2976](https://issues.apache.org/jira/browse/SPARK-2976) | Replace tabs with spaces |  Minor | . | Kousuke Saruta | Kousuke Saruta |
| [SPARK-2961](https://issues.apache.org/jira/browse/SPARK-2961) | Use statistics to skip partitions when reading from in-memory columnar data |  Major | SQL | Michael Armbrust | Cheng Lian |
| [SPARK-2950](https://issues.apache.org/jira/browse/SPARK-2950) | Add GC time and Shuffle Write time to JobLogger output |  Minor | . | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-2918](https://issues.apache.org/jira/browse/SPARK-2918) | EXPLAIN doens't support the CTAS |  Minor | SQL | Cheng Hao | Cheng Hao |
| [SPARK-2911](https://issues.apache.org/jira/browse/SPARK-2911) | provide rdd.parent[T](j) to obtain jth parent of rdd |  Minor | Spark Core | Erik Erlandson | Erik Erlandson |
| [SPARK-2871](https://issues.apache.org/jira/browse/SPARK-2871) | Missing API in PySpark |  Major | . | Davies Liu | Davies Liu |
| [SPARK-2845](https://issues.apache.org/jira/browse/SPARK-2845) | Add timestamp to BlockManager events |  Minor | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-2761](https://issues.apache.org/jira/browse/SPARK-2761) | Merge similar code paths in ExternalSorter and EAOM |  Major | Spark Core | Andrew Or | Jim Lim |
| [SPARK-2759](https://issues.apache.org/jira/browse/SPARK-2759) | The ability to read binary files into Spark |  Major | Input/Output, Java API, Spark Core | Kevin Mader | Kevin Mader |
| [SPARK-2745](https://issues.apache.org/jira/browse/SPARK-2745) | Add Java friendly methods to Duration class |  Minor | Streaming | Tathagata Das | Sean Owen |
| [SPARK-2714](https://issues.apache.org/jira/browse/SPARK-2714) | DAGScheduler should log jobid when runJob finishes |  Minor | Spark Core | YanTang Zhai |  |
| [SPARK-2713](https://issues.apache.org/jira/browse/SPARK-2713) | Executors of same application in same host should only download files & jars once |  Major | Spark Core | Zhihui | Zhihui |
| [SPARK-2672](https://issues.apache.org/jira/browse/SPARK-2672) | Support compression in wholeFile() |  Major | PySpark, Spark Core | Davies Liu | Davies Liu |
| [SPARK-2668](https://issues.apache.org/jira/browse/SPARK-2668) | Add variable of yarn log directory for reference from the log4j configuration |  Major | YARN | Peng Zhang |  |
| [SPARK-2652](https://issues.apache.org/jira/browse/SPARK-2652) | Turning default configurations for PySpark |  Major | PySpark | Davies Liu | Davies Liu |
| [SPARK-2642](https://issues.apache.org/jira/browse/SPARK-2642) | Add jobId in web UI |  Minor | Web UI | YanTang Zhai | Josh Rosen |
| [SPARK-2621](https://issues.apache.org/jira/browse/SPARK-2621) | Update task InputMetrics incrementally |  Major | Spark Core | Sandy Ryza | Sandy Ryza |
| [SPARK-2517](https://issues.apache.org/jira/browse/SPARK-2517) | Remove as many compilation warning messages as possible |  Minor | . | Reynold Xin | Reynold Xin |
| [SPARK-2492](https://issues.apache.org/jira/browse/SPARK-2492) | KafkaReceiver minor changes to align with Kafka 0.8 |  Minor | Streaming | Saisai Shao | Saisai Shao |
| [SPARK-2468](https://issues.apache.org/jira/browse/SPARK-2468) | Netty-based block server / client module |  Critical | Shuffle, Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-2461](https://issues.apache.org/jira/browse/SPARK-2461) | Add a toString method to GeneralizedLinearModel |  Major | MLlib | Sandy Ryza |  |
| [SPARK-2460](https://issues.apache.org/jira/browse/SPARK-2460) | Optimize SparkContext.hadoopFile api |  Major | Spark Core | Fei Wang |  |
| [SPARK-2444](https://issues.apache.org/jira/browse/SPARK-2444) | Make spark.yarn.executor.memoryOverhead a first class citizen |  Minor | Documentation | Nishkam Ravi | Nishkam Ravi |
| [SPARK-2321](https://issues.apache.org/jira/browse/SPARK-2321) | Design a proper progress reporting & event listener API |  Critical | Java API, Spark Core | Reynold Xin | Josh Rosen |
| [SPARK-2143](https://issues.apache.org/jira/browse/SPARK-2143) | Display Spark version on Driver web page |  Critical | Spark Core | Jeff Hammerbacher |  |
| [SPARK-2098](https://issues.apache.org/jira/browse/SPARK-2098) | All Spark processes should support spark-defaults.conf, config file |  Major | Spark Core | Marcelo Vanzin | Guoqiang Li |
| [SPARK-2058](https://issues.apache.org/jira/browse/SPARK-2058) | SPARK\_CONF\_DIR should override all present configs |  Critical | Deploy | Eugen Cepoi | Eugen Cepoi |
| [SPARK-1986](https://issues.apache.org/jira/browse/SPARK-1986) | lib.Analytics should be in org.apache.spark.examples |  Major | GraphX | Ankur Dave | Ankur Dave |
| [SPARK-1853](https://issues.apache.org/jira/browse/SPARK-1853) | Show Streaming application code context (file, line number) in Spark Stages UI |  Major | Streaming | Tathagata Das | Mubarak Seyed |
| [SPARK-1847](https://issues.apache.org/jira/browse/SPARK-1847) | Pushdown filters on non-required parquet columns |  Major | SQL | Michael Armbrust | Yash Datta |
| [SPARK-1813](https://issues.apache.org/jira/browse/SPARK-1813) | Add a utility to SparkConf that makes using Kryo really easy |  Major | Spark Core | Sandy Ryza | Sandy Ryza |
| [SPARK-1767](https://issues.apache.org/jira/browse/SPARK-1767) | Prefer HDFS-cached replicas when scheduling data-local tasks |  Major | Spark Core | Sandy Ryza | Colin Patrick McCabe |
| [SPARK-1713](https://issues.apache.org/jira/browse/SPARK-1713) | YarnAllocationHandler starts a thread for every executor it runs |  Major | YARN | Sandy Ryza | Sandy Ryza |
| [SPARK-1701](https://issues.apache.org/jira/browse/SPARK-1701) | Inconsistent naming: "slice" or "partition" |  Minor | Documentation, Spark Core | Daniel Darabos | Thomas Graves |
| [SPARK-1694](https://issues.apache.org/jira/browse/SPARK-1694) | Simplify ColumnBuilder/Accessor class hierarchy |  Minor | SQL | Cheng Lian | Cheng Lian |
| [SPARK-1484](https://issues.apache.org/jira/browse/SPARK-1484) | MLlib should warn if you are using an iterative algorithm on non-cached data |  Major | MLlib | Matei Zaharia | Aaron Staple |
| [SPARK-1455](https://issues.apache.org/jira/browse/SPARK-1455) | Determine which test suites to run based on code changes |  Major | Project Infra | Patrick Wendell |  |
| [SPARK-1362](https://issues.apache.org/jira/browse/SPARK-1362) | Web UI should provide page of showing statistics and stage list for a given job |  Major | Spark Core, Web UI | Fei Wang | Josh Rosen |
| [SPARK-1338](https://issues.apache.org/jira/browse/SPARK-1338) | Create Additional Style Rules |  Major | Project Infra | Patrick Wendell | Prashant Sharma |
| [SPARK-985](https://issues.apache.org/jira/browse/SPARK-985) | Support Job Cancellation on Mesos Scheduler |  Major | Mesos, Scheduler | Josh Rosen |  |
| [SPARK-546](https://issues.apache.org/jira/browse/SPARK-546) | Support full outer join and multiple join in a single shuffle |   | Spark Core, Streaming | Reynold Xin | Aaron Staple |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-5121](https://issues.apache.org/jira/browse/SPARK-5121) | Stored as parquet doens't support the CTAS |  Major | SQL | XiaoJing wang |  |
| [SPARK-4785](https://issues.apache.org/jira/browse/SPARK-4785) | When called with arguments referring column fields, PMOD throws NPE |  Blocker | SQL | Cheng Lian |  |
| [SPARK-4774](https://issues.apache.org/jira/browse/SPARK-4774) | Make HiveFromSpark example more portable |  Major | Examples, SQL | Kostas Sakellis | Kostas Sakellis |
| [SPARK-4769](https://issues.apache.org/jira/browse/SPARK-4769) | CTAS does not work when reading from temporary tables |  Critical | SQL | Michael Armbrust | Cheng Hao |
| [SPARK-4761](https://issues.apache.org/jira/browse/SPARK-4761) | With JDBC server, set Kryo as default serializer and disable reference tracking |  Blocker | SQL | Patrick Wendell | Cheng Lian |
| [SPARK-4757](https://issues.apache.org/jira/browse/SPARK-4757) | Yarn-client failed to start due to Wrong FS error in distCacheMgr.addResource |  Major | YARN | Jianshi Huang |  |
| [SPARK-4753](https://issues.apache.org/jira/browse/SPARK-4753) | Parquet2 does not prune based on OR filters on partition columns |  Blocker | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-4715](https://issues.apache.org/jira/browse/SPARK-4715) | ShuffleMemoryManager.tryToAcquire may return a negative value |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-4701](https://issues.apache.org/jira/browse/SPARK-4701) | Typo in sbt/sbt |  Trivial | Build | Masayoshi TSUZUKI | Masayoshi TSUZUKI |
| [SPARK-4686](https://issues.apache.org/jira/browse/SPARK-4686) | Link to "allowed master URLs" is broken in configuration documentation |  Minor | Documentation | Kay Ousterhout | Kay Ousterhout |
| [SPARK-4676](https://issues.apache.org/jira/browse/SPARK-4676) | JavaSchemaRDD.schema may throw NullType MatchError if sql has null |  Major | SQL | YanTang Zhai |  |
| [SPARK-4672](https://issues.apache.org/jira/browse/SPARK-4672) | Cut off the super long serialization chain in GraphX to avoid the StackOverflow error |  Critical | GraphX, Spark Core | Lijie Xu |  |
| [SPARK-4670](https://issues.apache.org/jira/browse/SPARK-4670) | bitwise NOT has a wrong `toString` output |  Major | SQL | Adrian Wang |  |
| [SPARK-4668](https://issues.apache.org/jira/browse/SPARK-4668) | Fix documentation typos |  Major | Documentation | Ryan Williams | Ryan Williams |
| [SPARK-4663](https://issues.apache.org/jira/browse/SPARK-4663) | close() function is not surrounded by finally in ParquetTableOperations.scala |  Minor | SQL | baishuo |  |
| [SPARK-4658](https://issues.apache.org/jira/browse/SPARK-4658) | Code documentation issue in DDL of datasource |  Minor | SQL | Ravindra Pesala |  |
| [SPARK-4650](https://issues.apache.org/jira/browse/SPARK-4650) | Supporting multi column support in countDistinct function like count(distinct c1,c2..) in Spark SQL |  Major | SQL | Ravindra Pesala |  |
| [SPARK-4645](https://issues.apache.org/jira/browse/SPARK-4645) | Asynchronous execution in HiveThriftServer2 with Hive 0.13.1 doesn't play well with Simba ODBC driver |  Blocker | SQL | Cheng Lian | Cheng Lian |
| [SPARK-4627](https://issues.apache.org/jira/browse/SPARK-4627) | Too many TripletFields |  Trivial | GraphX | Joseph E. Gonzalez |  |
| [SPARK-4626](https://issues.apache.org/jira/browse/SPARK-4626) | NoSuchElementException in CoarseGrainedSchedulerBackend |  Major | Spark Core | Victor Tso | Victor Tso |
| [SPARK-4619](https://issues.apache.org/jira/browse/SPARK-4619) | Double "ms" in ShuffleBlockFetcherIterator log |  Minor | . | maji2014 | maji2014 |
| [SPARK-4615](https://issues.apache.org/jira/browse/SPARK-4615) | Cannot disconnect from spark-shell |  Minor | Spark Shell | Thomas Omans |  |
| [SPARK-4602](https://issues.apache.org/jira/browse/SPARK-4602) | saveAsNewAPIHadoopFiles by default does not use SparkContext's hadoop configuration |  Major | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-4601](https://issues.apache.org/jira/browse/SPARK-4601) | Call site of jobs generated by streaming incorrect in Spark UI |  Major | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-4593](https://issues.apache.org/jira/browse/SPARK-4593) | sum(1/0) would produce a very large number |  Minor | SQL | Adrian Wang |  |
| [SPARK-4592](https://issues.apache.org/jira/browse/SPARK-4592) | "Worker registration failed: Duplicate worker ID" error during Master failover |  Blocker | Deploy, Spark Core | Josh Rosen | Andrew Or |
| [SPARK-4584](https://issues.apache.org/jira/browse/SPARK-4584) | 2x Performance regression for Spark-on-YARN |  Blocker | YARN | Nishkam Ravi | Marcelo Vanzin |
| [SPARK-4578](https://issues.apache.org/jira/browse/SPARK-4578) | Row.asDict() should keep the type of values |  Blocker | PySpark, SQL | Davies Liu | Davies Liu |
| [SPARK-4552](https://issues.apache.org/jira/browse/SPARK-4552) | query for empty parquet table in spark sql hive get IllegalArgumentException |  Blocker | SQL | Fei Wang | Michael Armbrust |
| [SPARK-4548](https://issues.apache.org/jira/browse/SPARK-4548) | Python broadcast perf regression from Spark 1.1 |  Blocker | PySpark | Davies Liu | Davies Liu |
| [SPARK-4546](https://issues.apache.org/jira/browse/SPARK-4546) | Improve HistoryServer first time user experience |  Critical | Spark Core | Andrew Or | Andrew Or |
| [SPARK-4536](https://issues.apache.org/jira/browse/SPARK-4536) | Add sqrt and abs to Spark SQL DSL |  Major | SQL | Kousuke Saruta | Kousuke Saruta |
| [SPARK-4535](https://issues.apache.org/jira/browse/SPARK-4535) | Fix the error in comments |  Minor | Streaming | Yadong Qi |  |
| [SPARK-4532](https://issues.apache.org/jira/browse/SPARK-4532) | make-distribution in Spark 1.2 does not correctly detect whether Hive is enabled |  Blocker | Build | Patrick Wendell | Patrick Wendell |
| [SPARK-4530](https://issues.apache.org/jira/browse/SPARK-4530) | GradientDescent get a wrong gradient value according to the gradient formula, which is caused by the miniBatchSize parameter. |  Minor | MLlib | Guoqiang Li | Guoqiang Li |
| [SPARK-4525](https://issues.apache.org/jira/browse/SPARK-4525) | MesosSchedulerBackend.resourceOffers cannot decline unused offers from acceptedOffers |  Blocker | Mesos | Jongyoul Lee | Jongyoul Lee |
| [SPARK-4519](https://issues.apache.org/jira/browse/SPARK-4519) | Filestream does not use hadoop configuration set within sparkContext.hadoopConfiguration |  Major | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-4518](https://issues.apache.org/jira/browse/SPARK-4518) | Filestream sometimes processes files twice |  Blocker | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-4516](https://issues.apache.org/jira/browse/SPARK-4516) | Netty off-heap memory use causes executors to be killed by OS |  Critical | Shuffle | Hector Yee | Aaron Davidson |
| [SPARK-4513](https://issues.apache.org/jira/browse/SPARK-4513) | Support relational operator '\<=\>' in Spark SQL |  Major | SQL | Ravindra Pesala |  |
| [SPARK-4509](https://issues.apache.org/jira/browse/SPARK-4509) | Revert EC2 tag-based cluster membership patch in branch-1.2 |  Blocker | EC2 | Josh Rosen | Xiangrui Meng |
| [SPARK-4506](https://issues.apache.org/jira/browse/SPARK-4506) | Update documentation to clarify whether standalone-cluster mode is now officially supported |  Major | Documentation | Josh Rosen | Andrew Or |
| [SPARK-4498](https://issues.apache.org/jira/browse/SPARK-4498) | Standalone Master can fail to recognize completed/failed applications |  Blocker | Deploy, Spark Core | Harry Brundage | Mark Hamstra |
| [SPARK-4495](https://issues.apache.org/jira/browse/SPARK-4495) | Memory leak in JobProgressListener due to `spark.ui.retainedJobs` not being used |  Blocker | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-4487](https://issues.apache.org/jira/browse/SPARK-4487) | Fix attribute reference resolution error when using ORDER BY. |  Critical | SQL | Kousuke Saruta |  |
| [SPARK-4484](https://issues.apache.org/jira/browse/SPARK-4484) | [CORE] Treat maxResultSize as unlimited when set to 0; improve error message |  Critical | Spark Core | Nishkam Ravi | Nishkam Ravi |
| [SPARK-4482](https://issues.apache.org/jira/browse/SPARK-4482) | ReceivedBlockTracker's write ahead log is enabled by default |  Blocker | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-4480](https://issues.apache.org/jira/browse/SPARK-4480) | Avoid many small spills in external data structures |  Blocker | Spark Core | Andrew Or | Andrew Or |
| [SPARK-4479](https://issues.apache.org/jira/browse/SPARK-4479) | Avoid unnecessary defensive copies when Sort based shuffle is on |  Blocker | SQL | Michael Armbrust | Cheng Lian |
| [SPARK-4478](https://issues.apache.org/jira/browse/SPARK-4478) | totalRegisteredExecutors not updated properly |  Major | Spark Core | Akshat Aranya | Akshat Aranya |
| [SPARK-4471](https://issues.apache.org/jira/browse/SPARK-4471) |  blockManagerIdFromJson function throws exception while BlockManagerId be null in MetadataFetchFailedException |  Minor | Spark Core | SuYan | SuYan |
| [SPARK-4468](https://issues.apache.org/jira/browse/SPARK-4468) | Wrong Parquet filters are created for all inequality predicates with literals on the left hand side |  Blocker | SQL | Cheng Lian |  |
| [SPARK-4467](https://issues.apache.org/jira/browse/SPARK-4467) | Number of elements read is never reset in ExternalSorter |  Blocker | Shuffle, Spark Core | Andrew Or | Tianshuo Deng |
| [SPARK-4455](https://issues.apache.org/jira/browse/SPARK-4455) | Exclude dependency on hbase-annotations module |  Major | . | Ted Yu | Ted Yu |
| [SPARK-4448](https://issues.apache.org/jira/browse/SPARK-4448) | Support ConstantObjectInspector for unwrapping data |  Minor | SQL | Cheng Hao |  |
| [SPARK-4446](https://issues.apache.org/jira/browse/SPARK-4446) | MetadataCleaner schedule task with a wrong param for delay time . |  Major | Spark Core | Leo | Leo |
| [SPARK-4445](https://issues.apache.org/jira/browse/SPARK-4445) | Don't display storage level in toDebugString unless RDD is persisted |  Blocker | Spark Core | Patrick Wendell | Prashant Sharma |
| [SPARK-4443](https://issues.apache.org/jira/browse/SPARK-4443) | Statistics bug for external table in spark sql hive |  Critical | SQL | Fei Wang |  |
| [SPARK-4441](https://issues.apache.org/jira/browse/SPARK-4441) | Close Tachyon client when TachyonBlockManager is shut down |  Major | Block Manager | shimingfei | shimingfei |
| [SPARK-4434](https://issues.apache.org/jira/browse/SPARK-4434) | spark-submit cluster deploy mode JAR URLs are broken in 1.1.1 |  Blocker | Deploy, Spark Core | Josh Rosen | Andrew Or |
| [SPARK-4433](https://issues.apache.org/jira/browse/SPARK-4433) | Racing condition in zipWithIndex |  Major | Spark Core | Xiangrui Meng | Xiangrui Meng |
| [SPARK-4432](https://issues.apache.org/jira/browse/SPARK-4432) | Resource(InStream) is not closed in TachyonStore |  Major | Block Manager | shimingfei | shimingfei |
| [SPARK-4429](https://issues.apache.org/jira/browse/SPARK-4429) | Build for Scala 2.11 using sbt fails. |  Major | Build | Takuya Ueshin | Takuya Ueshin |
| [SPARK-4426](https://issues.apache.org/jira/browse/SPARK-4426) | The symbol of BitwiseOr is wrong, should not be '&' |  Minor | SQL | Kousuke Saruta | Kousuke Saruta |
| [SPARK-4425](https://issues.apache.org/jira/browse/SPARK-4425) | Handle NaN or Infinity cast to Timestamp correctly |  Major | SQL | Takuya Ueshin |  |
| [SPARK-4422](https://issues.apache.org/jira/browse/SPARK-4422) | In some cases, Vectors.fromBreeze get wrong results. |  Minor | MLlib | Guoqiang Li | Guoqiang Li |
| [SPARK-4420](https://issues.apache.org/jira/browse/SPARK-4420) | Change nullability of Cast from DoubleType/FloatType to DecimalType. |  Major | SQL | Takuya Ueshin |  |
| [SPARK-4415](https://issues.apache.org/jira/browse/SPARK-4415) | Driver did not exit after python driver had exited. |  Critical | PySpark, Spark Core | Davies Liu | Davies Liu |
| [SPARK-4407](https://issues.apache.org/jira/browse/SPARK-4407) | Thrift server for 0.13.1 doesn't deserialize complex types properly |  Blocker | SQL | Cheng Lian |  |
| [SPARK-4404](https://issues.apache.org/jira/browse/SPARK-4404) | SparkSubmitDriverBootstrapper should stop after its SparkSubmit sub-process ends |  Blocker | Spark Core | Tao Wang | Tao Wang |
| [SPARK-4391](https://issues.apache.org/jira/browse/SPARK-4391) | Parquet Filter pushdown flag should be set with SQLConf |  Blocker | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-4390](https://issues.apache.org/jira/browse/SPARK-4390) | Bad casts to decimal throw instead of returning null |  Blocker | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-4384](https://issues.apache.org/jira/browse/SPARK-4384) | Too many open files during sort in pyspark |  Blocker | PySpark | Davies Liu | Davies Liu |
| [SPARK-4375](https://issues.apache.org/jira/browse/SPARK-4375) | Assembly built with Maven is missing most of repl classes |  Blocker | . | Sandy Ryza | Sandy Ryza |
| [SPARK-4373](https://issues.apache.org/jira/browse/SPARK-4373) | MLlib unit tests failed maven test |  Critical | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-4372](https://issues.apache.org/jira/browse/SPARK-4372) | Make LR and SVM's default parameters consistent in Scala and Python |  Major | MLlib, PySpark | Xiangrui Meng | Xiangrui Meng |
| [SPARK-4370](https://issues.apache.org/jira/browse/SPARK-4370) | Limit cores used by Netty transfer service based on executor size |  Critical | Spark Core | Aaron Davidson | Aaron Davidson |
| [SPARK-4369](https://issues.apache.org/jira/browse/SPARK-4369) | TreeModel.predict does not work with RDD |  Blocker | MLlib, PySpark | Davies Liu | Davies Liu |
| [SPARK-4355](https://issues.apache.org/jira/browse/SPARK-4355) | OnlineSummarizer doesn't merge mean correctly |  Major | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-4348](https://issues.apache.org/jira/browse/SPARK-4348) | pyspark.mllib.random conflicts with random module |  Blocker | MLlib, PySpark | Davies Liu | Davies Liu |
| [SPARK-4333](https://issues.apache.org/jira/browse/SPARK-4333) | Correctly log number of iterations in RuleExecutor |  Minor | SQL | Zhongshuai Pei |  |
| [SPARK-4326](https://issues.apache.org/jira/browse/SPARK-4326) | unidoc is broken on master |  Critical | Build, Documentation | Xiangrui Meng | Xiangrui Meng |
| [SPARK-4322](https://issues.apache.org/jira/browse/SPARK-4322) | Struct fields can't be used as sub-expression of grouping fields |  Blocker | SQL | Michael Armbrust | Cheng Lian |
| [SPARK-4318](https://issues.apache.org/jira/browse/SPARK-4318) | Fix empty sum distinct. |  Major | SQL | Takuya Ueshin |  |
| [SPARK-4313](https://issues.apache.org/jira/browse/SPARK-4313) | "Thread Dump" link is broken in yarn-cluster mode |  Minor | Web UI, YARN | Shixiong Zhu | Shixiong Zhu |
| [SPARK-4312](https://issues.apache.org/jira/browse/SPARK-4312) | bash can't `die` |  Major | Build | Kousuke Saruta | Kousuke Saruta |
| [SPARK-4310](https://issues.apache.org/jira/browse/SPARK-4310) | "Submitted" column in Stage page doesn't sort by time |  Minor | Web UI | Shixiong Zhu | Shixiong Zhu |
| [SPARK-4309](https://issues.apache.org/jira/browse/SPARK-4309) | Date type support missing in HiveThriftServer2 |  Major | SQL | Cheng Lian |  |
| [SPARK-4308](https://issues.apache.org/jira/browse/SPARK-4308) | SQL operation state is not properly set when exception is thrown |  Minor | SQL | Cheng Lian | Cheng Lian |
| [SPARK-4305](https://issues.apache.org/jira/browse/SPARK-4305) | yarn-alpha profile won't build due to network/yarn module |  Minor | . | Sean Owen | Sean Owen |
| [SPARK-4304](https://issues.apache.org/jira/browse/SPARK-4304) | sortByKey() will fail on empty RDD |  Blocker | PySpark | Davies Liu | Davies Liu |
| [SPARK-4301](https://issues.apache.org/jira/browse/SPARK-4301) | StreamingContext should not allow start() to be called after calling stop() |  Major | Streaming | Josh Rosen | Josh Rosen |
| [SPARK-4295](https://issues.apache.org/jira/browse/SPARK-4295) | [External]Exception throws in SparkSinkSuite although all test cases pass |  Minor | Streaming | maji2014 |  |
| [SPARK-4292](https://issues.apache.org/jira/browse/SPARK-4292) | incorrect result set in JDBC/ODBC |  Major | SQL | Fei Wang |  |
| [SPARK-4291](https://issues.apache.org/jira/browse/SPARK-4291) | Drop "Code" from network module names |  Major | Build | Andrew Or | Andrew Or |
| [SPARK-4282](https://issues.apache.org/jira/browse/SPARK-4282) | Stopping flag in YarnClientSchedulerBackend should be volatile |  Major | YARN | Kousuke Saruta | Kousuke Saruta |
| [SPARK-4281](https://issues.apache.org/jira/browse/SPARK-4281) | Yarn shuffle service jars need to include dependencies |  Blocker | Build, YARN | Andrew Or | Andrew Or |
| [SPARK-4277](https://issues.apache.org/jira/browse/SPARK-4277) | Support external shuffle service on Worker |  Major | Deploy, Spark Core | Aaron Davidson | Aaron Davidson |
| [SPARK-4274](https://issues.apache.org/jira/browse/SPARK-4274) | NPE in printing the details of query plan |  Minor | SQL | Cheng Hao |  |
| [SPARK-4270](https://issues.apache.org/jira/browse/SPARK-4270) | Fix Cast from DateType to DecimalType. |  Major | SQL | Takuya Ueshin |  |
| [SPARK-4266](https://issues.apache.org/jira/browse/SPARK-4266) | Avoid expensive JavaScript for StagePages with huge numbers of tasks |  Blocker | Web UI | Kay Ousterhout | Kay Ousterhout |
| [SPARK-4264](https://issues.apache.org/jira/browse/SPARK-4264) | SQL HashJoin induces "refCnt = 0" error in ShuffleBlockFetcherIterator |  Blocker | . | Aaron Davidson | Aaron Davidson |
| [SPARK-4260](https://issues.apache.org/jira/browse/SPARK-4260) | Httpbroadcast should set connection timeout. |  Major | Spark Core | Kousuke Saruta |  |
| [SPARK-4256](https://issues.apache.org/jira/browse/SPARK-4256) | MLLib BinaryClassificationMetricComputers try to divide by zero |  Major | MLlib | Andrew Bullen | Andrew Bullen |
| [SPARK-4255](https://issues.apache.org/jira/browse/SPARK-4255) | Table striping is incorrect on page load |  Minor | Web UI | Kay Ousterhout | Kay Ousterhout |
| [SPARK-4254](https://issues.apache.org/jira/browse/SPARK-4254) | MovieLensALS example fails from including Params in closure |  Trivial | MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-4253](https://issues.apache.org/jira/browse/SPARK-4253) | Ignore spark.driver.host in yarn-cluster and standalone-cluster mode |  Minor | YARN | Tao Wang | Tao Wang |
| [SPARK-4250](https://issues.apache.org/jira/browse/SPARK-4250) | Create constant null value for Hive Inspectors |  Major | SQL | Cheng Hao |  |
| [SPARK-4249](https://issues.apache.org/jira/browse/SPARK-4249) | A problem of EdgePartitionBuilder in Graphx |  Minor | GraphX | Cookies |  |
| [SPARK-4248](https://issues.apache.org/jira/browse/SPARK-4248) | [SQL] spark sql not support add jar |  Major | SQL | qiaohaijun |  |
| [SPARK-4245](https://issues.apache.org/jira/browse/SPARK-4245) | Fix containsNull of the result ArrayType of CreateArray expression. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-4244](https://issues.apache.org/jira/browse/SPARK-4244) | ConstantFolding has to be done before initialize the Generic UDF |  Minor | SQL | Cheng Hao |  |
| [SPARK-4242](https://issues.apache.org/jira/browse/SPARK-4242) | Add SASL to external shuffle service |  Major | Spark Core | Aaron Davidson | Aaron Davidson |
| [SPARK-4236](https://issues.apache.org/jira/browse/SPARK-4236) | External shuffle service must cleanup its shuffle files |  Critical | Spark Core | Aaron Davidson | Aaron Davidson |
| [SPARK-4230](https://issues.apache.org/jira/browse/SPARK-4230) | Doc for spark.default.parallelism is incorrect |  Major | Spark Core | Sandy Ryza | Sandy Ryza |
| [SPARK-4225](https://issues.apache.org/jira/browse/SPARK-4225) | jdbc/odbc error when using maven build spark |  Blocker | Build, SQL | Fei Wang | Cheng Lian |
| [SPARK-4222](https://issues.apache.org/jira/browse/SPARK-4222) | FixedLengthBinaryRecordReader should readFully |  Minor | . | Jascha Swisher | Jascha Swisher |
| [SPARK-4213](https://issues.apache.org/jira/browse/SPARK-4213) | SparkSQL - ParquetFilters - No support for LT, LTE, GT, GTE operators |  Blocker | SQL | Terry Siu |  |
| [SPARK-4207](https://issues.apache.org/jira/browse/SPARK-4207) | Query which has syntax like 'not like' is not working in Spark SQL |  Major | SQL | Ravindra Pesala | Ravindra Pesala |
| [SPARK-4204](https://issues.apache.org/jira/browse/SPARK-4204) | Utils.exceptionString only return the information for the outermost exception |  Minor | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-4203](https://issues.apache.org/jira/browse/SPARK-4203) | Partition directories in random order when inserting into hive table |  Major | SQL | Matthew Taylor |  |
| [SPARK-4201](https://issues.apache.org/jira/browse/SPARK-4201) | Can't use concat() on partition column in where condition (Hive compatibility problem) |  Minor | SQL | dongxu |  |
| [SPARK-4196](https://issues.apache.org/jira/browse/SPARK-4196) | Streaming + checkpointing + saveAsNewAPIHadoopFiles = NotSerializableException for Hadoop Configuration |  Major | Streaming | Sean Owen | Tathagata Das |
| [SPARK-4193](https://issues.apache.org/jira/browse/SPARK-4193) | Disable doclint in Java 8 to prevent from build error. |  Major | Build | Takuya Ueshin | Takuya Ueshin |
| [SPARK-4185](https://issues.apache.org/jira/browse/SPARK-4185) | JSON schema inference failed when dealing with type conflicts in arrays |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-4183](https://issues.apache.org/jira/browse/SPARK-4183) | Enable Netty-based BlockTransferService by default |  Major | . | Aaron Davidson | Aaron Davidson |
| [SPARK-4182](https://issues.apache.org/jira/browse/SPARK-4182) | Caching tables containing boolean, binary, array, struct and/or map columns doesn't work |  Blocker | SQL | Cheng Lian | Cheng Lian |
| [SPARK-4180](https://issues.apache.org/jira/browse/SPARK-4180) | SparkContext constructor should throw exception if another SparkContext is already running |  Blocker | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-4177](https://issues.apache.org/jira/browse/SPARK-4177) | update build doc for already supporting hive 13 in jdbc/cli |  Major | Documentation | Fei Wang | Fei Wang |
| [SPARK-4175](https://issues.apache.org/jira/browse/SPARK-4175) | Exception on stage page |  Critical | . | Sandy Ryza |  |
| [SPARK-4173](https://issues.apache.org/jira/browse/SPARK-4173) | EdgePartitionBuilder uses wrong value for first clustered index |  Major | GraphX | Ankur Dave | Ankur Dave |
| [SPARK-4169](https://issues.apache.org/jira/browse/SPARK-4169) | [Core] Locale dependent code |  Major | Spark Core | Niklas Wilcke | Niklas Wilcke |
| [SPARK-4158](https://issues.apache.org/jira/browse/SPARK-4158) | Spark throws exception when Mesos resources are missing |  Major | Mesos | Brenden Matthews | Brenden Matthews |
| [SPARK-4155](https://issues.apache.org/jira/browse/SPARK-4155) | Consolidate usages of \<driver\> |  Minor | Spark Core | Andrew Or | Andrew Or |
| [SPARK-4154](https://issues.apache.org/jira/browse/SPARK-4154) | Query does not work if it has "not between " in Spark SQL and HQL |  Major | SQL | Ravindra Pesala | Ravindra Pesala |
| [SPARK-4153](https://issues.apache.org/jira/browse/SPARK-4153) | All columns of the application table in the history page are sorted in alphabetical order |  Trivial | Web UI | Shixiong Zhu | Shixiong Zhu |
| [SPARK-4152](https://issues.apache.org/jira/browse/SPARK-4152) | Avoid data change in CTAS while table already existed |  Minor | SQL | Cheng Hao | Cheng Hao |
| [SPARK-4148](https://issues.apache.org/jira/browse/SPARK-4148) | PySpark's sample uses the same seed for all partitions |  Major | PySpark | Xiangrui Meng | Xiangrui Meng |
| [SPARK-4146](https://issues.apache.org/jira/browse/SPARK-4146) | [GraphX] Modify option name according to example doc in SynthBenchmark |  Minor | GraphX | Jie Huang | Jie Huang |
| [SPARK-4142](https://issues.apache.org/jira/browse/SPARK-4142) | Bad Default for GraphLoader Edge Partitions |  Major | GraphX | Joseph E. Gonzalez | Joseph E. Gonzalez |
| [SPARK-4138](https://issues.apache.org/jira/browse/SPARK-4138) | Guard against incompatible settings on the number of executors |  Major | YARN | Andrew Or | Andrew Or |
| [SPARK-4137](https://issues.apache.org/jira/browse/SPARK-4137) | Relative paths don't get handled correctly by spark-ec2 |  Minor | EC2 | Nicholas Chammas | Nicholas Chammas |
| [SPARK-4130](https://issues.apache.org/jira/browse/SPARK-4130) | loadLibSVMFile does not handle extra whitespace |  Major | MLlib | Joseph E. Gonzalez | Joseph E. Gonzalez |
| [SPARK-4124](https://issues.apache.org/jira/browse/SPARK-4124) | Simplify serialization and call API in MLlib Python |  Major | MLlib, PySpark | Davies Liu | Davies Liu |
| [SPARK-4121](https://issues.apache.org/jira/browse/SPARK-4121) | Master build failures after shading commons-math3 |  Blocker | Build, MLlib, Spark Core | Xiangrui Meng | Xiangrui Meng |
| [SPARK-4120](https://issues.apache.org/jira/browse/SPARK-4120) | Join of multiple tables with syntax like SELECT .. FROM T1,T2,T3.. does not work in SparkSQL |  Major | SQL | Ravindra Pesala | Ravindra Pesala |
| [SPARK-4113](https://issues.apache.org/jira/browse/SPARK-4113) | Pyhon UDF on ArrayType |  Blocker | PySpark, SQL | Davies Liu | Davies Liu |
| [SPARK-4110](https://issues.apache.org/jira/browse/SPARK-4110) | Wrong comments about default settings in spark-daemon.sh |  Minor | Spark Core | Kousuke Saruta | Kousuke Saruta |
| [SPARK-4107](https://issues.apache.org/jira/browse/SPARK-4107) | Incorrect handling of Channel.read()'s return value may lead to data truncation |  Blocker | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-4097](https://issues.apache.org/jira/browse/SPARK-4097) | Race condition in org.apache.spark.ComplexFutureAction.cancel |  Minor | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-4090](https://issues.apache.org/jira/browse/SPARK-4090) | Memory leak in snappy-java 1.1.1.4/5 |  Blocker | Spark Core | Davies Liu |  |
| [SPARK-4089](https://issues.apache.org/jira/browse/SPARK-4089) | The version number of Spark in \_config.yaml is wrong. |  Minor | Documentation | Kousuke Saruta | Kousuke Saruta |
| [SPARK-4088](https://issues.apache.org/jira/browse/SPARK-4088) | Python worker should exit after socket is closed by JVM |  Blocker | PySpark | Davies Liu | Davies Liu |
| [SPARK-4085](https://issues.apache.org/jira/browse/SPARK-4085) | Job will fail if a shuffle file that's read locally gets deleted |  Critical | Spark Core | Kay Ousterhout | Reynold Xin |
| [SPARK-4080](https://issues.apache.org/jira/browse/SPARK-4080) | "IOException: unexpected exception type" while deserializing tasks |  Critical | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-4078](https://issues.apache.org/jira/browse/SPARK-4078) | New FsPermission instance w/o FsPermission.createImmutable in eventlog |  Major | Spark Core | Jie Huang | Jie Huang |
| [SPARK-4077](https://issues.apache.org/jira/browse/SPARK-4077) | A broken string timestamp value can Spark SQL return wrong values for valid string timestamp values |  Major | SQL | Yin Huai | Venkata Ramana G |
| [SPARK-4076](https://issues.apache.org/jira/browse/SPARK-4076) | Parameter expansion in spark-config is wrong |  Minor | Spark Core | Kousuke Saruta | Kousuke Saruta |
| [SPARK-4075](https://issues.apache.org/jira/browse/SPARK-4075) | Jar url validation is not enough for Jar file |  Minor | Deploy | Kousuke Saruta | Kousuke Saruta |
| [SPARK-4071](https://issues.apache.org/jira/browse/SPARK-4071) | Unroll fails silently if BlockManager size is small |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-4068](https://issues.apache.org/jira/browse/SPARK-4068) | NPE in jsonRDD schema inference |  Critical | SQL | Michael Armbrust | Yin Huai |
| [SPARK-4065](https://issues.apache.org/jira/browse/SPARK-4065) | pyspark will not use ipython on Windows |  Minor | PySpark | Michael Griffiths | Michael Griffiths |
| [SPARK-4064](https://issues.apache.org/jira/browse/SPARK-4064) | NioBlockTransferService should deal with empty messages correctly |  Critical | Spark Core | Guoqiang Li | Guoqiang Li |
| [SPARK-4061](https://issues.apache.org/jira/browse/SPARK-4061) | We cannot use EOL character in the operand of LIKE predicate. |  Major | SQL | Kousuke Saruta |  |
| [SPARK-4055](https://issues.apache.org/jira/browse/SPARK-4055) | Inconsistent spelling 'MLlib' and 'MLLib' |  Trivial | Documentation, MLlib | Kousuke Saruta | Kousuke Saruta |
| [SPARK-4053](https://issues.apache.org/jira/browse/SPARK-4053) | Block generator throttling in NetworkReceiverSuite is flaky |  Minor | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-4052](https://issues.apache.org/jira/browse/SPARK-4052) | Use scala.collection.Map for pattern matching instead of using Predef.Map (it is scala.collection.immutable.Map) |  Minor | SQL | Yin Huai | Yin Huai |
| [SPARK-4050](https://issues.apache.org/jira/browse/SPARK-4050) | Caching of temporary tables with projects fail when the final query projects fewer columns |  Blocker | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-4042](https://issues.apache.org/jira/browse/SPARK-4042) | append columns ids and names before broadcast |  Major | SQL | Fei Wang |  |
| [SPARK-4041](https://issues.apache.org/jira/browse/SPARK-4041) | convert attributes names in table scan lowercase when compare with relation attributes |  Major | SQL | Fei Wang |  |
| [SPARK-4037](https://issues.apache.org/jira/browse/SPARK-4037) | NPE in JDBC server when calling SET |  Blocker | SQL | Michael Armbrust | Cheng Lian |
| [SPARK-4035](https://issues.apache.org/jira/browse/SPARK-4035) | Wrong format specifier in BlockerManager.scala |  Trivial | Spark Core | Shixiong Zhu |  |
| [SPARK-4031](https://issues.apache.org/jira/browse/SPARK-4031) | Read broadcast variables on use |  Major | Block Manager, Spark Core | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-4023](https://issues.apache.org/jira/browse/SPARK-4023) | PySpark's stat.Statistics is broken |  Critical | MLlib, PySpark | Xiangrui Meng | Davies Liu |
| [SPARK-4022](https://issues.apache.org/jira/browse/SPARK-4022) | Replace colt dependency (LGPL) with commons-math |  Critical | MLlib, Spark Core | Patrick Wendell | Sean Owen |
| [SPARK-4020](https://issues.apache.org/jira/browse/SPARK-4020) | Failed executor not properly removed if it has not run tasks |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-4019](https://issues.apache.org/jira/browse/SPARK-4019) | Shuffling with more than 2000 reducers may drop all data when partitons are mostly empty or cause deserialization errors if at least one partition is empty |  Blocker | Spark Core | Xiangrui Meng | Josh Rosen |
| [SPARK-4015](https://issues.apache.org/jira/browse/SPARK-4015) | Documentation in the streaming context references non-existent function |  Trivial | Streaming | holdenk |  |
| [SPARK-4013](https://issues.apache.org/jira/browse/SPARK-4013) | Do not run multiple actor systems on each executor |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-4010](https://issues.apache.org/jira/browse/SPARK-4010) | Spark UI returns 500 in yarn-client mode |  Blocker | Web UI | Guoqiang Li | Guoqiang Li |
| [SPARK-4006](https://issues.apache.org/jira/browse/SPARK-4006) | Spark Driver crashes whenever an Executor is registered twice |  Critical | Block Manager, Spark Core | Tal Sliwowicz | Tal Sliwowicz |
| [SPARK-4003](https://issues.apache.org/jira/browse/SPARK-4003) | Add {Big Decimal, Timestamp, Date} types to Java SqlContext |  Major | SQL | Adrian Wang | Adrian Wang |
| [SPARK-3997](https://issues.apache.org/jira/browse/SPARK-3997) | scalastyle should output the error location |  Major | Build | Guoqiang Li |  |
| [SPARK-3995](https://issues.apache.org/jira/browse/SPARK-3995) | [PYSPARK] PySpark's sample methods do not work with NumPy 1.9 |  Critical | PySpark, Spark Core | Jeremy Freeman | Jeremy Freeman |
| [SPARK-3994](https://issues.apache.org/jira/browse/SPARK-3994) | countByKey / countByValue do not go through Aggregator |  Major | Spark Core | Aaron Davidson | Aaron Davidson |
| [SPARK-3993](https://issues.apache.org/jira/browse/SPARK-3993) | python worker may hang after reused from take() |  Blocker | PySpark | Davies Liu | Davies Liu |
| [SPARK-3990](https://issues.apache.org/jira/browse/SPARK-3990) | kryo.KryoException caused by ALS.trainImplicit in pyspark |  Critical | MLlib, PySpark | Gen TANG | Xiangrui Meng |
| [SPARK-3987](https://issues.apache.org/jira/browse/SPARK-3987) | NNLS generates incorrect result |  Major | MLlib | Debasish Das | Shuo Xiang |
| [SPARK-3986](https://issues.apache.org/jira/browse/SPARK-3986) | Fix package names to fit their directory names. |  Minor | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-3985](https://issues.apache.org/jira/browse/SPARK-3985) | json file path is not right |  Minor | Examples, SQL | Adrian Wang | Adrian Wang |
| [SPARK-3983](https://issues.apache.org/jira/browse/SPARK-3983) | Scheduler delay (shown in the UI) is incorrect |  Major | Web UI | Kay Ousterhout | Kay Ousterhout |
| [SPARK-3979](https://issues.apache.org/jira/browse/SPARK-3979) | Yarn backend's default file replication should match HDFS's default one |  Minor | YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-3973](https://issues.apache.org/jira/browse/SPARK-3973) | Print callSite information for broadcast variables |  Minor | Spark Core | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-3971](https://issues.apache.org/jira/browse/SPARK-3971) | Failed to deserialize Vector in cluster mode |  Blocker | MLlib, PySpark | Davies Liu | Davies Liu |
| [SPARK-3970](https://issues.apache.org/jira/browse/SPARK-3970) | Remove duplicate removal of local dirs |  Major | . | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-3967](https://issues.apache.org/jira/browse/SPARK-3967) | Spark applications fail in yarn-cluster mode when the directories configured in yarn.nodemanager.local-dirs are located on different disks/partitions |  Major | YARN | Christophe Préaud | Christophe Préaud |
| [SPARK-3966](https://issues.apache.org/jira/browse/SPARK-3966) | Fix nullabilities of Cast related to DateType. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-3962](https://issues.apache.org/jira/browse/SPARK-3962) | Mark spark dependency as "provided" in external libraries |  Blocker | Streaming | Patrick Wendell | Prashant Sharma |
| [SPARK-3960](https://issues.apache.org/jira/browse/SPARK-3960) | We can apply unary minus only to literal. |  Critical | SQL | Kousuke Saruta | Kousuke Saruta |
| [SPARK-3959](https://issues.apache.org/jira/browse/SPARK-3959) | SqlParser fails to parse literal -9223372036854775808 (Long.MinValue). |  Critical | SQL | Kousuke Saruta |  |
| [SPARK-3952](https://issues.apache.org/jira/browse/SPARK-3952) | Python examples in Streaming Programming Guide |  Blocker | PySpark, Streaming | Davies Liu |  |
| [SPARK-3948](https://issues.apache.org/jira/browse/SPARK-3948) | Sort-based shuffle can lead to assorted stream-corruption exceptions |  Blocker | Shuffle | Saisai Shao | Saisai Shao |
| [SPARK-3946](https://issues.apache.org/jira/browse/SPARK-3946) | .gitignore in /python includes wrong directory. |  Minor | Build | Masayoshi TSUZUKI | Masayoshi TSUZUKI |
| [SPARK-3945](https://issues.apache.org/jira/browse/SPARK-3945) | Write properties of hive-site.xml to HiveContext when initilize session state In SparkSQLEnv.scala |  Major | SQL | Gankun Luo | Gankun Luo |
| [SPARK-3941](https://issues.apache.org/jira/browse/SPARK-3941) | \_remainingMem should not increase twice when updateBlockInfo |  Major | Spark Core | Zhang, Liye | Zhang, Liye |
| [SPARK-3940](https://issues.apache.org/jira/browse/SPARK-3940) | SQL console prints error messages three times |  Major | SQL | XiaoJing wang | XiaoJing wang |
| [SPARK-3936](https://issues.apache.org/jira/browse/SPARK-3936) | Remove auto join elimination and introduce aggregateMessages |  Blocker | GraphX | Pedro Rodriguez | Ankur Dave |
| [SPARK-3935](https://issues.apache.org/jira/browse/SPARK-3935) | Unused variable in PairRDDFunctions.scala |  Minor | Spark Core | Fei Wang | Fei Wang |
| [SPARK-3934](https://issues.apache.org/jira/browse/SPARK-3934) | RandomForest bug in sanity check in DTStatsAggregator |  Major | MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-3925](https://issues.apache.org/jira/browse/SPARK-3925) | Do not consider the ordering of qualifiers during comparison |  Major | SQL | Liang-Chi Hsieh |  |
| [SPARK-3923](https://issues.apache.org/jira/browse/SPARK-3923) | All Standalone Mode services time out with each other |  Blocker | Deploy | Aaron Davidson | Aaron Davidson |
| [SPARK-3921](https://issues.apache.org/jira/browse/SPARK-3921) | WorkerWatcher in Standalone mode fail to come up due to invalid workerUrl |  Critical | . | Aaron Davidson | Aaron Davidson |
| [SPARK-3918](https://issues.apache.org/jira/browse/SPARK-3918) | Forget Unpersist in RandomForest.scala(train Method) |  Major | MLlib | junlong | Joseph K. Bradley |
| [SPARK-3912](https://issues.apache.org/jira/browse/SPARK-3912) | FlumeStreamSuite is flaky, fails either with port binding issues or data not being reliably sent |  Critical | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-3909](https://issues.apache.org/jira/browse/SPARK-3909) | A corrupted format in Sphinx documents and building warnings |  Minor | PySpark | Tomohiko K. |  |
| [SPARK-3905](https://issues.apache.org/jira/browse/SPARK-3905) | The keys for sorting the columns of Executor page ,Stage page Storage page  are incorrect |  Major | Web UI | Guoqiang Li | Guoqiang Li |
| [SPARK-3904](https://issues.apache.org/jira/browse/SPARK-3904) | HQL doesn't support the ConstantObjectInspector to pass into UDFs |  Major | SQL | Cheng Hao | Cheng Hao |
| [SPARK-3900](https://issues.apache.org/jira/browse/SPARK-3900) | ApplicationMaster's shutdown hook fails and IllegalStateException is thrown. |  Critical | YARN | Kousuke Saruta |  |
| [SPARK-3899](https://issues.apache.org/jira/browse/SPARK-3899) | wrong links in streaming doc |  Major | Documentation | Fei Wang |  |
| [SPARK-3889](https://issues.apache.org/jira/browse/SPARK-3889) | JVM dies with SIGBUS, resulting in ConnectionManager failed ACK |  Critical | Spark Core | Aaron Davidson | Aaron Davidson |
| [SPARK-3877](https://issues.apache.org/jira/browse/SPARK-3877) | The exit code of spark-submit is still 0 when an yarn application fails |  Major | YARN | Shixiong Zhu | Shixiong Zhu |
| [SPARK-3869](https://issues.apache.org/jira/browse/SPARK-3869) | ./bin/spark-class miss Java version with \_JAVA\_OPTIONS set |  Major | Spark Shell | Tomohiko K. |  |
| [SPARK-3858](https://issues.apache.org/jira/browse/SPARK-3858) | SchemaRDD.generate ignores alias argument |  Minor | SQL | Nathan Howell |  |
| [SPARK-3855](https://issues.apache.org/jira/browse/SPARK-3855) | Binding Exception when running PythonUDFs |  Major | PySpark, SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-3853](https://issues.apache.org/jira/browse/SPARK-3853) | JsonRDD does not support converting fields to type Timestamp |  Major | SQL | Michael Timper |  |
| [SPARK-3848](https://issues.apache.org/jira/browse/SPARK-3848) | yarn alpha doesn't build on master |  Blocker | YARN | Thomas Graves | Kousuke Saruta |
| [SPARK-3843](https://issues.apache.org/jira/browse/SPARK-3843) | Cleanup scalastyle.txt at the end of running dev/scalastyle |  Trivial | Build | Kousuke Saruta | Kousuke Saruta |
| [SPARK-3840](https://issues.apache.org/jira/browse/SPARK-3840) | Spark EC2 templates fail when variables are missing |  Major | EC2 | Allan Douglas R. de Oliveira |  |
| [SPARK-3834](https://issues.apache.org/jira/browse/SPARK-3834) | Backticks not correctly handled in subquery aliases |  Blocker | SQL | Michael Armbrust | Ravindra Pesala |
| [SPARK-3829](https://issues.apache.org/jira/browse/SPARK-3829) | Make Spark logo image on the header of HistoryPage as a link to HistoryPage's page #1 |  Minor | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-3827](https://issues.apache.org/jira/browse/SPARK-3827) | Very long RDD names are not rendered properly in web UI |  Minor | Web UI | Hossein Falaki |  |
| [SPARK-3825](https://issues.apache.org/jira/browse/SPARK-3825) | Log more information when unrolling a block fails |  Major | Block Manager, Spark Core | Andrew Or | Andrew Or |
| [SPARK-3824](https://issues.apache.org/jira/browse/SPARK-3824) | Spark SQL should cache in MEMORY\_AND\_DISK by default |  Blocker | SQL | Patrick Wendell | Cheng Lian |
| [SPARK-3816](https://issues.apache.org/jira/browse/SPARK-3816) | Add configureOutputJobPropertiesForStorageHandler to JobConf in SparkHadoopWriter |  Major | SQL | Alex Liu |  |
| [SPARK-3814](https://issues.apache.org/jira/browse/SPARK-3814) | Support for Bitwise AND(&), OR(\|) ,XOR(^), NOT(~) in Spark HQL and SQL |  Minor | SQL | Yana Kadiyska | Ravindra Pesala |
| [SPARK-3810](https://issues.apache.org/jira/browse/SPARK-3810) | Rule PreInsertionCasts doesn't handle partitioned table properly |  Minor | SQL | Cheng Lian |  |
| [SPARK-3809](https://issues.apache.org/jira/browse/SPARK-3809) | make HiveThriftServer2Suite work correctly |  Major | SQL | Fei Wang |  |
| [SPARK-3808](https://issues.apache.org/jira/browse/SPARK-3808) | PySpark fails to start in Windows |  Blocker | PySpark, Windows | Masayoshi TSUZUKI | Masayoshi TSUZUKI |
| [SPARK-3807](https://issues.apache.org/jira/browse/SPARK-3807) | SparkSql does not work for tables created using custom serde |  Major | SQL | chirag aggarwal |  |
| [SPARK-3806](https://issues.apache.org/jira/browse/SPARK-3806) | minor bug in CliSuite |  Major | SQL | Fei Wang |  |
| [SPARK-3803](https://issues.apache.org/jira/browse/SPARK-3803) | ArrayIndexOutOfBoundsException found in executing computePrincipalComponents |  Major | MLlib | Masaru Dobashi | Sean Owen |
| [SPARK-3800](https://issues.apache.org/jira/browse/SPARK-3800) | BindingException when grouping on nested fields |  Critical | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-3798](https://issues.apache.org/jira/browse/SPARK-3798) | Corrupted projection in Generator |  Blocker | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-3794](https://issues.apache.org/jira/browse/SPARK-3794) | Building spark core fails due to inadvertent dependency on Commons IO |  Major | Spark Core | Tomohiko K. |  |
| [SPARK-3791](https://issues.apache.org/jira/browse/SPARK-3791) | HiveThriftServer2 returns 0.12.0 to ODBC SQLGetInfo call |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-3788](https://issues.apache.org/jira/browse/SPARK-3788) | Yarn dist cache code is not friendly to HDFS HA, Federation |  Major | YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-3783](https://issues.apache.org/jira/browse/SPARK-3783) | The type parameters for SparkContext.accumulable are inconsistent Accumulable itself |  Minor | Spark Core | Nathan Kronenfeld | Nathan Kronenfeld |
| [SPARK-3776](https://issues.apache.org/jira/browse/SPARK-3776) | Wrong conversion to Catalyst for Option[Product] |  Major | SQL | Renat Yusupov |  |
| [SPARK-3773](https://issues.apache.org/jira/browse/SPARK-3773) | Sphinx build warnings |  Minor | PySpark | Tomohiko K. |  |
| [SPARK-3772](https://issues.apache.org/jira/browse/SPARK-3772) | RDD operation on IPython REPL failed with an illegal port number |  Major | PySpark | Tomohiko K. |  |
| [SPARK-3771](https://issues.apache.org/jira/browse/SPARK-3771) | AppendingParquetOutputFormat should use reflection to prevent from breaking binary-compatibility. |  Major | SQL | Takuya Ueshin |  |
| [SPARK-3763](https://issues.apache.org/jira/browse/SPARK-3763) | The example of building with sbt should be "sbt assembly" instead of "sbt compile" |  Trivial | Documentation | Kousuke Saruta | Kousuke Saruta |
| [SPARK-3762](https://issues.apache.org/jira/browse/SPARK-3762) | clear all SparkEnv references after stop |  Critical | Spark Core | Davies Liu | Davies Liu |
| [SPARK-3759](https://issues.apache.org/jira/browse/SPARK-3759) | SparkSubmitDriverBootstrapper should return exit code of driver process |  Minor | Deploy | Eric Eijkelenboom | Eric Eijkelenboom |
| [SPARK-3757](https://issues.apache.org/jira/browse/SPARK-3757) | mvn clean doesn't delete some files |  Trivial | Build | Masayoshi TSUZUKI |  |
| [SPARK-3756](https://issues.apache.org/jira/browse/SPARK-3756) | Include possible MultiException when detecting port collisions |  Major | . | Fei Wang | Fei Wang |
| [SPARK-3755](https://issues.apache.org/jira/browse/SPARK-3755) | Do not bind port 1 - 1024 to server in spark |  Major | Spark Core | Fei Wang | Fei Wang |
| [SPARK-3749](https://issues.apache.org/jira/browse/SPARK-3749) | Bugs in broadcast  of large RDD |  Critical | PySpark | Davies Liu | Davies Liu |
| [SPARK-3747](https://issues.apache.org/jira/browse/SPARK-3747) | TaskResultGetter could incorrectly abort a stage if it cannot get result for a specific task |  Major | Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-3746](https://issues.apache.org/jira/browse/SPARK-3746) | Failure to lock hive client when creating tables |  Major | . | Michael Armbrust | Michael Armbrust |
| [SPARK-3745](https://issues.apache.org/jira/browse/SPARK-3745) | curl on maven search repo (apache rat) url returns search status, not jar file |  Major | Build | shane knapp |  |
| [SPARK-3744](https://issues.apache.org/jira/browse/SPARK-3744) | FlumeStreamSuite will fail during port contention |  Blocker | . | Patrick Wendell | Tathagata Das |
| [SPARK-3741](https://issues.apache.org/jira/browse/SPARK-3741) | ConnectionManager.sendMessage may not propagate errors to MessageStatus |  Minor | Spark Core | Shixiong Zhu |  |
| [SPARK-3736](https://issues.apache.org/jira/browse/SPARK-3736) | Workers should reconnect to Master if disconnected |  Critical | Spark Core | Andrew Ash | Matthew Cheah |
| [SPARK-3734](https://issues.apache.org/jira/browse/SPARK-3734) | DriverRunner should not read SPARK\_HOME from submitter's environment |  Major | Deploy | Josh Rosen | Josh Rosen |
| [SPARK-3731](https://issues.apache.org/jira/browse/SPARK-3731) | RDD caching stops working in pyspark after some time |  Critical | PySpark, Spark Core | Milan Straka | Davies Liu |
| [SPARK-3729](https://issues.apache.org/jira/browse/SPARK-3729) | Null-pointer when constructing a HiveContext when settings are present |  Blocker | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-3721](https://issues.apache.org/jira/browse/SPARK-3721) | Broadcast Variables above 2GB break in PySpark |  Major | PySpark | Brad Miller | Davies Liu |
| [SPARK-3710](https://issues.apache.org/jira/browse/SPARK-3710) | YARN integration test is flaky |  Blocker | YARN | Patrick Wendell | Marcelo Vanzin |
| [SPARK-3709](https://issues.apache.org/jira/browse/SPARK-3709) | Executors don't always report broadcast block removal properly back to the driver |  Blocker | Spark Core | Patrick Wendell | Reynold Xin |
| [SPARK-3708](https://issues.apache.org/jira/browse/SPARK-3708) | Backticks aren't handled correctly in aliases |  Major | SQL | Michael Armbrust | Ravindra Pesala |
| [SPARK-3707](https://issues.apache.org/jira/browse/SPARK-3707) | Type Coercion for DIV doesn't work for non-numeric argument |  Minor | SQL | Cheng Hao |  |
| [SPARK-3706](https://issues.apache.org/jira/browse/SPARK-3706) | Cannot run IPython REPL with IPYTHON set to "1" and PYSPARK\_PYTHON unset |  Major | PySpark | Tomohiko K. |  |
| [SPARK-3705](https://issues.apache.org/jira/browse/SPARK-3705) | add case for VoidObjectInspector in inspectorToDataType |  Major | SQL | Fei Wang |  |
| [SPARK-3704](https://issues.apache.org/jira/browse/SPARK-3704) | Short (TINYINT) incorrectly handled in thrift JDBC/ODBC server |  Major | SQL | Fei Wang |  |
| [SPARK-3701](https://issues.apache.org/jira/browse/SPARK-3701) | Some clean-up work after the refactoring of MLlib's SerDe for PySpark |  Minor | MLlib, PySpark | Xiangrui Meng | Xiangrui Meng |
| [SPARK-3699](https://issues.apache.org/jira/browse/SPARK-3699) | sbt console tasks don't clean up SparkContext |  Minor | SQL | William Benton | William Benton |
| [SPARK-3697](https://issues.apache.org/jira/browse/SPARK-3697) |  HistoryServer cann't list event Log when there was a no permissions directory in the $spark.eventLog.dir |  Minor | Spark Core | yangping wu |  |
| [SPARK-3695](https://issues.apache.org/jira/browse/SPARK-3695) | Enable to show host and port in block fetch failure |  Minor | Input/Output | Adrian Wang | Adrian Wang |
| [SPARK-3690](https://issues.apache.org/jira/browse/SPARK-3690) | Closing shuffle writers we swallow more important exception |  Minor | Spark Core | Egor Pakhomov |  |
| [SPARK-3686](https://issues.apache.org/jira/browse/SPARK-3686) | flume.SparkSinkSuite.Success is flaky |  Blocker | Streaming | Patrick Wendell | Hari Shreedharan |
| [SPARK-3681](https://issues.apache.org/jira/browse/SPARK-3681) | Failed to serialized ArrayType or MapType  after accessing them in Python |  Major | PySpark | Davies Liu | Davies Liu |
| [SPARK-3680](https://issues.apache.org/jira/browse/SPARK-3680) | java.lang.Exception: makeCopy when using HiveGeneric UDFs on Converted Parquet Metastore tables |  Critical | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-3679](https://issues.apache.org/jira/browse/SPARK-3679) | pickle the exact globals of functions |  Critical | PySpark | Davies Liu | Davies Liu |
| [SPARK-3676](https://issues.apache.org/jira/browse/SPARK-3676) | jdk version lead to spark sql test suite error |  Major | SQL | Fei Wang |  |
| [SPARK-3661](https://issues.apache.org/jira/browse/SPARK-3661) | spark.\*.memory is ignored in cluster mode |  Critical | Spark Core | Andrew Or | Andrew Or |
| [SPARK-3659](https://issues.apache.org/jira/browse/SPARK-3659) | Set EC2 version to 1.1.0 in master branch |  Minor | EC2 | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-3657](https://issues.apache.org/jira/browse/SPARK-3657) | yarn alpha YarnRMClientImpl throws NPE appMasterRequest.setTrackingUrl starting spark-shell |  Blocker | YARN | Thomas Graves | Kousuke Saruta |
| [SPARK-3654](https://issues.apache.org/jira/browse/SPARK-3654) | Implement all extended HiveQL statements/commands with a separate parser combinator |  Major | SQL | Cheng Lian | Ravindra Pesala |
| [SPARK-3649](https://issues.apache.org/jira/browse/SPARK-3649) | ClassCastException in GraphX custom serializers when sort-based shuffle spills |  Major | GraphX | Ankur Dave | Ankur Dave |
| [SPARK-3647](https://issues.apache.org/jira/browse/SPARK-3647) | Shaded Guava patch causes access issues with package private classes |  Critical | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-3645](https://issues.apache.org/jira/browse/SPARK-3645) | Make caching using SQL commands eager by default, with the option of being lazy |  Critical | SQL | Michael Armbrust | Cheng Lian |
| [SPARK-3641](https://issues.apache.org/jira/browse/SPARK-3641) | Correctly populate SparkPlan.currentContext |  Critical | SQL | Yin Huai | Michael Armbrust |
| [SPARK-3639](https://issues.apache.org/jira/browse/SPARK-3639) | Kinesis examples set master as local |  Minor | Examples, Streaming | Aniket Bhatnagar | Aniket Bhatnagar |
| [SPARK-3638](https://issues.apache.org/jira/browse/SPARK-3638) | Commons HTTP client dependency conflict in extras/kinesis-asl module |  Major | Examples, Streaming | Aniket Bhatnagar |  |
| [SPARK-3635](https://issues.apache.org/jira/browse/SPARK-3635) | Find Strongly Connected Components with Graphx has a small bug |  Trivial | GraphX | Oded Zimerman |  |
| [SPARK-3633](https://issues.apache.org/jira/browse/SPARK-3633) | Fetches failure observed after SPARK-2711 |  Blocker | Block Manager | Nishkam Ravi |  |
| [SPARK-3632](https://issues.apache.org/jira/browse/SPARK-3632) | ConnectionManager can run out of receive threads with authentication on |  Critical | Spark Core | Thomas Graves | Thomas Graves |
| [SPARK-3628](https://issues.apache.org/jira/browse/SPARK-3628) | Don't apply accumulator updates multiple times for tasks in result stages |  Blocker | Spark Core | Matei Zaharia | Nan Zhu |
| [SPARK-3627](https://issues.apache.org/jira/browse/SPARK-3627) | spark on yarn reports success even though job fails |  Critical | YARN | Thomas Graves | Thomas Graves |
| [SPARK-3618](https://issues.apache.org/jira/browse/SPARK-3618) | Store analyzed plans for temp tables |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-3615](https://issues.apache.org/jira/browse/SPARK-3615) | Kafka test should not hard code Zookeeper port |  Blocker | Streaming | Patrick Wendell | Saisai Shao |
| [SPARK-3612](https://issues.apache.org/jira/browse/SPARK-3612) | Executor shouldn't quit if heartbeat message fails to reach the driver |  Major | Spark Core | Reynold Xin | Sandy Ryza |
| [SPARK-3610](https://issues.apache.org/jira/browse/SPARK-3610) | History server log name should not be based on user input |  Critical | Spark Core | SK | Kousuke Saruta |
| [SPARK-3609](https://issues.apache.org/jira/browse/SPARK-3609) | Add sizeInBytes statistics to Limit operator |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-3608](https://issues.apache.org/jira/browse/SPARK-3608) | Spark EC2 Script does not correctly break when AWS tagging succeeds. |  Critical | EC2 | Vida Ha | Vida Ha |
| [SPARK-3606](https://issues.apache.org/jira/browse/SPARK-3606) | Spark-on-Yarn AmIpFilter does not work with Yarn HA. |  Major | YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-3605](https://issues.apache.org/jira/browse/SPARK-3605) | Typo in SchemaRDD JavaDoc |  Trivial | SQL | Sandy Ryza |  |
| [SPARK-3598](https://issues.apache.org/jira/browse/SPARK-3598) | cast to timestamp should be the same as hive |  Major | SQL | Adrian Wang | Adrian Wang |
| [SPARK-3597](https://issues.apache.org/jira/browse/SPARK-3597) | MesosSchedulerBackend does not implement `killTask` |  Major | Mesos | Brenden Matthews | Brenden Matthews |
| [SPARK-3592](https://issues.apache.org/jira/browse/SPARK-3592) | applySchema to an RDD of Row |  Critical | PySpark, SQL | Davies Liu | Davies Liu |
| [SPARK-3584](https://issues.apache.org/jira/browse/SPARK-3584) | sbin/slaves doesn't work when we use password authentication for SSH |  Major | Spark Core | Kousuke Saruta | Kousuke Saruta |
| [SPARK-3582](https://issues.apache.org/jira/browse/SPARK-3582) | Spark SQL having issue with existing Hive UDFs which take Map as a parameter |  Major | SQL | Saurabh Santhosh | Adrian Wang |
| [SPARK-3579](https://issues.apache.org/jira/browse/SPARK-3579) | Jekyll doc generation is different across environments |  Major | Documentation | Patrick Wendell | Patrick Wendell |
| [SPARK-3578](https://issues.apache.org/jira/browse/SPARK-3578) | GraphGenerators.sampleLogNormal sometimes returns too-large result |  Minor | GraphX | Ankur Dave | Ankur Dave |
| [SPARK-3571](https://issues.apache.org/jira/browse/SPARK-3571) | Spark standalone cluster mode doesn't work. |  Blocker | Spark Core | Kousuke Saruta | Kousuke Saruta |
| [SPARK-3567](https://issues.apache.org/jira/browse/SPARK-3567) | appId field in SparkDeploySchedulerBackend should be volatile |  Major | Spark Core | Kousuke Saruta | Kousuke Saruta |
| [SPARK-3560](https://issues.apache.org/jira/browse/SPARK-3560) | In yarn-cluster mode, the same jars are distributed through multiple mechanisms. |  Critical | YARN | Sandy Ryza | Min Shen |
| [SPARK-3559](https://issues.apache.org/jira/browse/SPARK-3559) | appendReadColumnIDs and appendReadColumnNames introduce unnecessary columns in the lists of needed column ids and column names stored in hiveConf |  Blocker | SQL | Yin Huai | Venkata Ramana G |
| [SPARK-3555](https://issues.apache.org/jira/browse/SPARK-3555) | UI port contention suite flakey |  Blocker | Spark Core | Patrick Wendell | Andrew Or |
| [SPARK-3546](https://issues.apache.org/jira/browse/SPARK-3546) | InputStream of ManagedBuffer is not closed and causes running out of file descriptor |  Critical | Spark Core | Kousuke Saruta | Kousuke Saruta |
| [SPARK-3543](https://issues.apache.org/jira/browse/SPARK-3543) | Write TaskContext in Java and expose it through a static accessor |  Critical | Spark Core | Patrick Wendell | Prashant Sharma |
| [SPARK-3539](https://issues.apache.org/jira/browse/SPARK-3539) | Task description "apply at Option.scala:120"; no user code involved |  Minor | Spark Core | John Salvatier |  |
| [SPARK-3536](https://issues.apache.org/jira/browse/SPARK-3536) | SELECT on empty parquet table throws exception |  Major | SQL | Michael Armbrust | Ravindra Pesala |
| [SPARK-3535](https://issues.apache.org/jira/browse/SPARK-3535) | Spark on Mesos not correctly setting heap overhead |  Major | Mesos | Brenden Matthews | Brenden Matthews |
| [SPARK-3534](https://issues.apache.org/jira/browse/SPARK-3534) | Avoid running MLlib and Streaming tests when testing SQL PRs |  Blocker | Project Infra, SQL | Michael Armbrust | Nicholas Chammas |
| [SPARK-3531](https://issues.apache.org/jira/browse/SPARK-3531) | select null from table would throw a MatchError |  Major | SQL | Adrian Wang |  |
| [SPARK-3527](https://issues.apache.org/jira/browse/SPARK-3527) | Strip the physical plan message margin |  Trivial | SQL | Cheng Hao | Cheng Hao |
| [SPARK-3519](https://issues.apache.org/jira/browse/SPARK-3519) | PySpark RDDs are missing the distinct(n) method |  Major | PySpark, Spark Core | Nicholas Chammas | Matthew Farrellee |
| [SPARK-3518](https://issues.apache.org/jira/browse/SPARK-3518) | Remove useless statement in JsonProtocol |  Minor | Spark Core | Kousuke Saruta | Kousuke Saruta |
| [SPARK-3515](https://issues.apache.org/jira/browse/SPARK-3515) | ParquetMetastoreSuite fails when executed together with other suites under Maven |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-3501](https://issues.apache.org/jira/browse/SPARK-3501) | Hive SimpleUDF will create duplicated type cast which cause exception in constant folding |  Minor | SQL | Cheng Hao | Cheng Hao |
| [SPARK-3500](https://issues.apache.org/jira/browse/SPARK-3500) | coalesce() and repartition() of SchemaRDD is broken |  Critical | PySpark, SQL | Davies Liu | Davies Liu |
| [SPARK-3496](https://issues.apache.org/jira/browse/SPARK-3496) | Block replication can by mistake choose driver BlockManager as a peer for replication |  Critical | Block Manager, Spark Core, Streaming | Tathagata Das | Tathagata Das |
| [SPARK-3495](https://issues.apache.org/jira/browse/SPARK-3495) | Block replication fails continuously when the replication target node is dead |  Critical | Block Manager, Spark Core, Streaming | Tathagata Das | Tathagata Das |
| [SPARK-3494](https://issues.apache.org/jira/browse/SPARK-3494) | DecisionTree overflow error in calculating maxMemoryUsage |  Major | MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-3490](https://issues.apache.org/jira/browse/SPARK-3490) | Alleviate port collisions during tests |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-3465](https://issues.apache.org/jira/browse/SPARK-3465) | Task metrics are not aggregated correctly in local mode |  Blocker | Spark Core | Davies Liu | Davies Liu |
| [SPARK-3456](https://issues.apache.org/jira/browse/SPARK-3456) | YarnAllocator can lose container requests to RM |  Critical | YARN | Thomas Graves | Thomas Graves |
| [SPARK-3452](https://issues.apache.org/jira/browse/SPARK-3452) | Maven build should skip publishing artifacts people shouldn't depend on |  Critical | Build | Patrick Wendell | Prashant Sharma |
| [SPARK-3448](https://issues.apache.org/jira/browse/SPARK-3448) | SpecificMutableRow.update doesn't check for null |  Minor | SQL | Cheng Lian | Cheng Lian |
| [SPARK-3447](https://issues.apache.org/jira/browse/SPARK-3447) | Kryo NPE when serializing JListWrapper |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-3433](https://issues.apache.org/jira/browse/SPARK-3433) | Mima false-positives with @DeveloperAPI and @Experimental annotations |  Minor | Build | Josh Rosen | Prashant Sharma |
| [SPARK-3429](https://issues.apache.org/jira/browse/SPARK-3429) | Don't include the empty string "" as a defaultAclUser |  Major | Spark Core | Andrew Ash | Andrew Ash |
| [SPARK-3426](https://issues.apache.org/jira/browse/SPARK-3426) | Sort-based shuffle compression behavior is inconsistent |  Blocker | Spark Core | Andrew Or | Josh Rosen |
| [SPARK-3417](https://issues.apache.org/jira/browse/SPARK-3417) | Use of old-style classes in pyspark |  Minor | . | Matthew Rocklin |  |
| [SPARK-3415](https://issues.apache.org/jira/browse/SPARK-3415) | Using sys.stderr in pyspark results in error |  Major | PySpark | Ward Viaene |  |
| [SPARK-3414](https://issues.apache.org/jira/browse/SPARK-3414) | Case insensitivity breaks when unresolved relation contains attributes with uppercase letters in their names |  Critical | SQL | Cheng Lian | Michael Armbrust |
| [SPARK-3412](https://issues.apache.org/jira/browse/SPARK-3412) | Add Missing Types for Row API |  Minor | SQL | Cheng Hao | Cheng Hao |
| [SPARK-3408](https://issues.apache.org/jira/browse/SPARK-3408) | Limit operator doesn't work with sort based shuffle |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-3406](https://issues.apache.org/jira/browse/SPARK-3406) | Python persist API does not have a default storage level |  Minor | PySpark | holdenk |  |
| [SPARK-3404](https://issues.apache.org/jira/browse/SPARK-3404) | SparkSubmitSuite fails with "spark-submit exits with code 1" |  Critical | Build | Sean Owen |  |
| [SPARK-3399](https://issues.apache.org/jira/browse/SPARK-3399) | Test for PySpark should ignore HADOOP\_CONF\_DIR and YARN\_CONF\_DIR |  Major | PySpark | Kousuke Saruta |  |
| [SPARK-3395](https://issues.apache.org/jira/browse/SPARK-3395) | [SQL] DSL uses incorrect attribute ids after a distinct() |  Minor | SQL | Eric Liang | Eric Liang |
| [SPARK-3394](https://issues.apache.org/jira/browse/SPARK-3394) | TakeOrdered crashes when limit is 0 |  Minor | Spark Core, SQL | Eric Liang | Eric Liang |
| [SPARK-3392](https://issues.apache.org/jira/browse/SPARK-3392) | Set command always get \<undefined\> for key "mapred.reduce.tasks" |  Trivial | SQL | Cheng Hao | Cheng Hao |
| [SPARK-3390](https://issues.apache.org/jira/browse/SPARK-3390) | sqlContext.jsonRDD fails on a complex structure of JSON array and JSON object nesting |  Critical | SQL | Vida Ha | Yin Huai |
| [SPARK-3378](https://issues.apache.org/jira/browse/SPARK-3378) | Replace the word "SparkSQL" with right word "Spark SQL" |  Trivial | Documentation | Kousuke Saruta |  |
| [SPARK-3377](https://issues.apache.org/jira/browse/SPARK-3377) | Metrics can be accidentally aggregated against our intention |  Critical | Spark Core | Kousuke Saruta |  |
| [SPARK-3375](https://issues.apache.org/jira/browse/SPARK-3375) | spark on yarn container allocation issues |  Blocker | YARN | Thomas Graves | Thomas Graves |
| [SPARK-3372](https://issues.apache.org/jira/browse/SPARK-3372) | MLlib doesn't pass maven build / checkstyle due to multi-byte character contained in Gradient.scala |  Blocker | MLlib | Kousuke Saruta | Kousuke Saruta |
| [SPARK-3371](https://issues.apache.org/jira/browse/SPARK-3371) | Spark SQL: Renaming a function expression with group by gives error |  Major | SQL | Pei-Lun Lee | Ravindra Pesala |
| [SPARK-3363](https://issues.apache.org/jira/browse/SPARK-3363) | [SQL] Type Coercion should support every type to have null value |  Major | SQL | Adrian Wang | Adrian Wang |
| [SPARK-3362](https://issues.apache.org/jira/browse/SPARK-3362) | [SQL] bug in CaseWhen resolve |  Major | SQL | Adrian Wang | Adrian Wang |
| [SPARK-3358](https://issues.apache.org/jira/browse/SPARK-3358) | PySpark worker fork()ing performance regression in m3.\* / PVM instances |  Major | PySpark | Josh Rosen |  |
| [SPARK-3349](https://issues.apache.org/jira/browse/SPARK-3349) | Incorrect partitioning after LIMIT operator |  Major | SQL | Eric Liang | Eric Liang |
| [SPARK-3347](https://issues.apache.org/jira/browse/SPARK-3347) | Spark on yarn alpha doesn't compile due to SPARK-2889 |  Blocker | YARN | Thomas Graves | Marcelo Vanzin |
| [SPARK-3345](https://issues.apache.org/jira/browse/SPARK-3345) | Do correct parameters for ShuffleFileGroup |  Minor | Spark Core | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-3341](https://issues.apache.org/jira/browse/SPARK-3341) | The dataType of Sqrt expression should be DoubleType. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-3339](https://issues.apache.org/jira/browse/SPARK-3339) | Support for skipping json lines that fail to parse |  Critical | SQL | Michael Armbrust | Yin Huai |
| [SPARK-3338](https://issues.apache.org/jira/browse/SPARK-3338) | Respect user setting of spark.submit.pyFiles |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-3335](https://issues.apache.org/jira/browse/SPARK-3335) | [Spark SQL] In pyspark, cannot use broadcast variables in UDF |  Major | PySpark, SQL | kay feng | Davies Liu |
| [SPARK-3332](https://issues.apache.org/jira/browse/SPARK-3332) | Tagging is not atomic with launching instances on EC2 |  Major | EC2 | Allan Douglas R. de Oliveira | Josh Rosen |
| [SPARK-3331](https://issues.apache.org/jira/browse/SPARK-3331) | PEP8 tests fail because they check unzipped py4j code |  Minor | Build | Sean Owen |  |
| [SPARK-3329](https://issues.apache.org/jira/browse/SPARK-3329) | HiveQuerySuite SET tests depend on map orderings |  Trivial | SQL | William Benton | William Benton |
| [SPARK-3319](https://issues.apache.org/jira/browse/SPARK-3319) | Resolve spark.jars, spark.files, and spark.submit.pyFiles etc. |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-3308](https://issues.apache.org/jira/browse/SPARK-3308) | Ability to read JSON Arrays as tables |  Critical | SQL | Michael Armbrust | Yin Huai |
| [SPARK-3304](https://issues.apache.org/jira/browse/SPARK-3304) | ApplicationMaster's Finish status is wrong when uncaught exception is thrown from ReporterThread |  Major | YARN | Kousuke Saruta | Kousuke Saruta |
| [SPARK-3303](https://issues.apache.org/jira/browse/SPARK-3303) | SparkContextSchedulerCreationSuite test failed when mesos native lib is set |  Minor | Spark Core | Fei Wang | Fei Wang |
| [SPARK-3302](https://issues.apache.org/jira/browse/SPARK-3302) | The wrong version information in SparkContext |  Major | Spark Core | Guoqiang Li | Guoqiang Li |
| [SPARK-3301](https://issues.apache.org/jira/browse/SPARK-3301) | The spark version in the welcome message of pyspark is not correct |  Minor | PySpark | Guoqiang Li | Guoqiang Li |
| [SPARK-3297](https://issues.apache.org/jira/browse/SPARK-3297) | [Spark SQL][UI] SchemaRDD toString with many columns messes up Storage tab display |  Minor | SQL, Web UI | Evan Chan | Hossein Falaki |
| [SPARK-3286](https://issues.apache.org/jira/browse/SPARK-3286) | Cannot view ApplicationMaster UI when Yarn’s url scheme is https |  Major | Web UI, YARN | Benoy Antony |  |
| [SPARK-3279](https://issues.apache.org/jira/browse/SPARK-3279) | Remove useless field variable in ApplicationMaster |  Major | YARN | Kousuke Saruta |  |
| [SPARK-3273](https://issues.apache.org/jira/browse/SPARK-3273) | We should read the version information from the same place. |  Minor | Spark Shell | Guoqiang Li | Guoqiang Li |
| [SPARK-3268](https://issues.apache.org/jira/browse/SPARK-3268) | DoubleType should support modulus |  Minor | SQL | Chris Grier | Venkata Ramana G |
| [SPARK-3263](https://issues.apache.org/jira/browse/SPARK-3263) | PR #720 broke GraphGenerator.logNormal |  Major | GraphX | RJ Nowling |  |
| [SPARK-3260](https://issues.apache.org/jira/browse/SPARK-3260) | Yarn - pass acls along with executor launch |  Major | YARN | Thomas Graves | Thomas Graves |
| [SPARK-3233](https://issues.apache.org/jira/browse/SPARK-3233) | Executor never stop its SparnEnv, BlockManager, ConnectionManager etc. |  Critical | Spark Core | Kousuke Saruta | Kousuke Saruta |
| [SPARK-3225](https://issues.apache.org/jira/browse/SPARK-3225) | Typo in script |  Trivial | Deploy | Tao Wang | Tao Wang |
| [SPARK-3223](https://issues.apache.org/jira/browse/SPARK-3223) | runAsSparkUser cannot change HDFS write permission properly in mesos cluster mode |  Critical | Input/Output, Mesos | Jongyoul Lee | Jongyoul Lee |
| [SPARK-3217](https://issues.apache.org/jira/browse/SPARK-3217) | Shaded Guava jar doesn't play well with Maven build when SPARK\_PREPEND\_CLASSES is set |  Major | Build | Cheng Lian | Marcelo Vanzin |
| [SPARK-3212](https://issues.apache.org/jira/browse/SPARK-3212) | Improve the clarity of caching semantics |  Blocker | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-3211](https://issues.apache.org/jira/browse/SPARK-3211) | .take() is OOM-prone when there are empty partitions |  Major | Spark Core | Andrew Ash | Andrew Ash |
| [SPARK-3206](https://issues.apache.org/jira/browse/SPARK-3206) | Error in PageRank values |  Major | GraphX | Peter Fontana | Ankur Dave |
| [SPARK-3190](https://issues.apache.org/jira/browse/SPARK-3190) | Creation of large graph(\> 2.15 B nodes) seems to be broken:possible overflow somewhere |  Critical | GraphX | npanj | Ankur Dave |
| [SPARK-3178](https://issues.apache.org/jira/browse/SPARK-3178) | setting SPARK\_WORKER\_MEMORY to a value without a label (m or g) sets the worker memory limit to zero |  Major | . | Jon Haddad | Bill Bejeck |
| [SPARK-3177](https://issues.apache.org/jira/browse/SPARK-3177) | Yarn-alpha ClientBaseSuite Unit test failed |  Minor | YARN | Chester |  |
| [SPARK-3121](https://issues.apache.org/jira/browse/SPARK-3121) | Wrong implementation of implicit bytesWritableConverter |  Critical | Spark Core | Jakub Dubovsky |  |
| [SPARK-3067](https://issues.apache.org/jira/browse/SPARK-3067) | JobProgressPage could not show Fair Scheduler Pools section sometimes |  Minor | Spark Core, Web UI | YanTang Zhai | YanTang Zhai |
| [SPARK-3061](https://issues.apache.org/jira/browse/SPARK-3061) | Maven build fails in Windows OS |  Minor | Build | Masayoshi TSUZUKI | Josh Rosen |
| [SPARK-3032](https://issues.apache.org/jira/browse/SPARK-3032) | Potential bug when running sort-based shuffle with sorting using TimSort |  Blocker | Shuffle | Saisai Shao | Saisai Shao |
| [SPARK-2981](https://issues.apache.org/jira/browse/SPARK-2981) | PartitionStrategy: VertexID hash overflow |  Major | GraphX | Larry Xiao |  |
| [SPARK-2955](https://issues.apache.org/jira/browse/SPARK-2955) | Test code fails to compile with "mvn compile" without "install" |  Minor | Build | Sean Owen | Sean Owen |
| [SPARK-2951](https://issues.apache.org/jira/browse/SPARK-2951) | SerDeUtils.pythonToPairRDD fails on RDDs of pickled array.arrays in Python 2.6 |  Major | PySpark | Josh Rosen | Davies Liu |
| [SPARK-2917](https://issues.apache.org/jira/browse/SPARK-2917) | Avoid CTAS creates table in logical plan analyzing. |  Minor | SQL | Cheng Hao | Cheng Hao |
| [SPARK-2915](https://issues.apache.org/jira/browse/SPARK-2915) | Storage summary table UI glitch when using sparkSQL |  Minor | Web UI | Hossein Falaki | Hossein Falaki |
| [SPARK-2890](https://issues.apache.org/jira/browse/SPARK-2890) | Spark SQL should allow SELECT with duplicated columns |  Major | SQL | Jianshi Huang | Michael Armbrust |
| [SPARK-2889](https://issues.apache.org/jira/browse/SPARK-2889) | Spark creates Hadoop Configuration objects inconsistently |  Minor | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-2881](https://issues.apache.org/jira/browse/SPARK-2881) | Snappy is now default codec - could lead to conflicts since uses /tmp |  Blocker | Spark Core | Thomas Graves | Patrick Wendell |
| [SPARK-2866](https://issues.apache.org/jira/browse/SPARK-2866) | ORDER BY attributes must appear in SELECT clause |  Critical | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-2781](https://issues.apache.org/jira/browse/SPARK-2781) | Analyzer should check resolution of LogicalPlans |  Major | SQL | Aaron Staple | Michael Armbrust |
| [SPARK-2760](https://issues.apache.org/jira/browse/SPARK-2760) | Caching tables from multiple databases does not work |  Critical | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-2742](https://issues.apache.org/jira/browse/SPARK-2742) | The variable inputFormatInfo and inputFormatMap never used |  Minor | YARN | meiyoula |  |
| [SPARK-2693](https://issues.apache.org/jira/browse/SPARK-2693) | Support for UDAF Hive Aggregates like PERCENTILE |  Critical | SQL | Michael Armbrust | Ravindra Pesala |
| [SPARK-2634](https://issues.apache.org/jira/browse/SPARK-2634) | MapOutputTrackerWorker.mapStatuses should be thread-safe |  Major | Spark Core | Shixiong Zhu |  |
| [SPARK-2626](https://issues.apache.org/jira/browse/SPARK-2626) | Stop SparkContext in all examples |  Major | Spark Core | Andrew Or | Sean Owen |
| [SPARK-2548](https://issues.apache.org/jira/browse/SPARK-2548) | JavaRecoverableWordCount is missing |  Minor | Documentation, Streaming | Xiangrui Meng |  |
| [SPARK-2546](https://issues.apache.org/jira/browse/SPARK-2546) | Configuration object thread safety issue |  Critical | Spark Core | Andrew Ash | Josh Rosen |
| [SPARK-2482](https://issues.apache.org/jira/browse/SPARK-2482) | Resolve sbt warnings during build |  Major | . | Guoqiang Li | Guoqiang Li |
| [SPARK-2435](https://issues.apache.org/jira/browse/SPARK-2435) | Add shutdown hook to bin/pyspark |  Major | PySpark | Andrew Or | Matthew Farrellee |
| [SPARK-2425](https://issues.apache.org/jira/browse/SPARK-2425) | Standalone Master is too aggressive in removing Applications |  Critical | Spark Core | Mark Hamstra | Mark Hamstra |
| [SPARK-2334](https://issues.apache.org/jira/browse/SPARK-2334) | Attribute Error calling PipelinedRDD.id() in pyspark |  Major | PySpark | Diana Carroll |  |
| [SPARK-2314](https://issues.apache.org/jira/browse/SPARK-2314) | RDD actions are only overridden in Scala, not java or python |  Major | SQL | Michael Armbrust | Aaron Staple |
| [SPARK-2269](https://issues.apache.org/jira/browse/SPARK-2269) | Clean up and add unit tests for resourceOffers in MesosSchedulerBackend |  Major | Mesos | Patrick Wendell | Tim Chen |
| [SPARK-2220](https://issues.apache.org/jira/browse/SPARK-2220) | Fix remaining Hive Commands |  Major | SQL | Michael Armbrust | Cheng Lian |
| [SPARK-2219](https://issues.apache.org/jira/browse/SPARK-2219) | AddJar doesn't work |  Major | SQL | Michael Armbrust | Cheng Lian |
| [SPARK-2192](https://issues.apache.org/jira/browse/SPARK-2192) | Examples Data Not in Binary Distribution |  Major | Build, MLlib | Pat McDonough | Sean Owen |
| [SPARK-2189](https://issues.apache.org/jira/browse/SPARK-2189) | Method for removing temp tables created by registerAsTable |  Critical | SQL | Michael Armbrust | Cheng Lian |
| [SPARK-2140](https://issues.apache.org/jira/browse/SPARK-2140) | yarn stable client doesn't properly handle MEMORY\_OVERHEAD for AM |  Major | YARN | Thomas Graves | Chris Cope |
| [SPARK-2096](https://issues.apache.org/jira/browse/SPARK-2096) | Correctly parse dot notations for accessing an array of structs |  Minor | SQL | Yin Huai |  |
| [SPARK-2069](https://issues.apache.org/jira/browse/SPARK-2069) | MIMA false positives (umbrella) |  Critical | Build | Patrick Wendell | Prashant Sharma |
| [SPARK-2066](https://issues.apache.org/jira/browse/SPARK-2066) | Better error message for non-aggregated attributes with aggregates |  Critical | SQL | Reynold Xin | Cheng Lian |
| [SPARK-2062](https://issues.apache.org/jira/browse/SPARK-2062) | VertexRDD.apply does not use the mergeFunc |  Major | GraphX | Ankur Dave | Larry Xiao |
| [SPARK-1919](https://issues.apache.org/jira/browse/SPARK-1919) | In Windows, Spark shell cannot load classes in spark.jars (--jars) |  Major | Windows | Andrew Or | Andrew Or |
| [SPARK-1860](https://issues.apache.org/jira/browse/SPARK-1860) | Standalone Worker cleanup should not clean up running executors |  Blocker | Deploy | Aaron Davidson |  |
| [SPARK-1720](https://issues.apache.org/jira/browse/SPARK-1720) | use LD\_LIBRARY\_PATH instead of -Djava.library.path |  Critical | Deploy | Thomas Graves | Guoqiang Li |
| [SPARK-1656](https://issues.apache.org/jira/browse/SPARK-1656) | Potential resource leak in HttpBroadcast, SparkSubmitArguments, FileSystemPersistenceEngine and DiskStore |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-1652](https://issues.apache.org/jira/browse/SPARK-1652) | Fixes and improvements for spark-submit/configs |  Blocker | Spark Core, YARN | Patrick Wendell | Patrick Wendell |
| [SPARK-1344](https://issues.apache.org/jira/browse/SPARK-1344) | Scala API docs for top methods |  Major | Documentation | Diana Carroll | Sean Owen |
| [SPARK-1307](https://issues.apache.org/jira/browse/SPARK-1307) | don't use term 'standalone' to refer to a Spark Application |  Major | Documentation | Diana Carroll | Sean Owen |
| [SPARK-1209](https://issues.apache.org/jira/browse/SPARK-1209) | SparkHadoop{MapRed,MapReduce}Util should not use package org.apache.hadoop |  Major | Spark Core | Sandy Ryza | Sean Owen |
| [SPARK-1047](https://issues.apache.org/jira/browse/SPARK-1047) | Ability to disable the spark ui server (unit tests) |  Minor | Web UI | Heiko Braun | Andrew Or |
| [SPARK-927](https://issues.apache.org/jira/browse/SPARK-927) | PySpark sample() doesn't work if numpy is installed on master but not on workers |  Minor | PySpark | Josh Rosen | Matthew Farrellee |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-4319](https://issues.apache.org/jira/browse/SPARK-4319) | Enable an ignored test "null count". |  Minor | SQL | Takuya Ueshin |  |
| [SPARK-4008](https://issues.apache.org/jira/browse/SPARK-4008) | Fix "kryo with fold" in KryoSerializerSuite |  Minor | Spark Core | Shixiong Zhu |  |
| [SPARK-3481](https://issues.apache.org/jira/browse/SPARK-3481) | HiveComparisonTest throws exception of "org.apache.hadoop.hive.ql.metadata.HiveException: Database does not exist: default" |  Minor | SQL | Cheng Hao | Cheng Hao |
| [SPARK-3285](https://issues.apache.org/jira/browse/SPARK-3285) | Using values.sum is easier to understand than using values.foldLeft(0)(\_ + \_) |  Major | Examples | Yadong Qi |  |
| [SPARK-2778](https://issues.apache.org/jira/browse/SPARK-2778) | Add unit tests for Yarn integration |  Major | YARN | Marcelo Vanzin | Marcelo Vanzin |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-4192](https://issues.apache.org/jira/browse/SPARK-4192) | Support UDT in Python |  Minor | PySpark, SQL | Xiangrui Meng | Xiangrui Meng |
| [SPARK-4032](https://issues.apache.org/jira/browse/SPARK-4032) | Deprecate YARN alpha support in Spark 1.2 |  Blocker | Spark Core, YARN | Patrick Wendell | Prashant Sharma |
| [SPARK-4029](https://issues.apache.org/jira/browse/SPARK-4029) | Update streaming driver to reliably save and recover received block metadata on driver failures |  Critical | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-4028](https://issues.apache.org/jira/browse/SPARK-4028) | ReceivedBlockHandler interface to abstract the functionality of storage of received data |  Critical | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-4027](https://issues.apache.org/jira/browse/SPARK-4027) | Write Ahead Log backed Block RDD |  Critical | Streaming | Tathagata Das | Hari Shreedharan |
| [SPARK-4026](https://issues.apache.org/jira/browse/SPARK-4026) | Write ahead log management |  Critical | Streaming | Tathagata Das | Hari Shreedharan |
| [SPARK-3944](https://issues.apache.org/jira/browse/SPARK-3944) | Utils.resolveURI fails on upgrading scalaVersion to 2.11.2 |  Major | Spark Core | Shiti Saxena | Shiti Saxena |
| [SPARK-3932](https://issues.apache.org/jira/browse/SPARK-3932) | Support reading fixed-precision decimals from Hive 0.13 |  Major | SQL | Matei Zaharia | Matei Zaharia |
| [SPARK-3931](https://issues.apache.org/jira/browse/SPARK-3931) | Support reading fixed-precision decimals from Parquet |  Major | SQL | Matei Zaharia | Matei Zaharia |
| [SPARK-3930](https://issues.apache.org/jira/browse/SPARK-3930) | Add precision and scale to Spark SQL's Decimal type |  Major | SQL | Matei Zaharia | Matei Zaharia |
| [SPARK-3868](https://issues.apache.org/jira/browse/SPARK-3868) | Hard to recognize which module is tested from unit-tests.log |  Major | PySpark | Tomohiko K. | Tomohiko K. |
| [SPARK-3867](https://issues.apache.org/jira/browse/SPARK-3867) | ./python/run-tests failed when it run with Python 2.6 and unittest2 is not installed |  Major | PySpark | Tomohiko K. | Tomohiko K. |
| [SPARK-3861](https://issues.apache.org/jira/browse/SPARK-3861) | Avoid rebuilding hash tables on each partition |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-3838](https://issues.apache.org/jira/browse/SPARK-3838) | Python code example for Word2Vec in user guide |  Trivial | Documentation, MLlib | Xiangrui Meng | Anant Daksh Asthana |
| [SPARK-3822](https://issues.apache.org/jira/browse/SPARK-3822) | Expose a mechanism for SparkContext to ask for / remove Yarn containers |  Major | Spark Core, YARN | Andrew Or | Andrew Or |
| [SPARK-3812](https://issues.apache.org/jira/browse/SPARK-3812) | Adapt maven build to publish effective pom. |  Major | Build, Spark Core | Prashant Sharma | Prashant Sharma |
| [SPARK-3797](https://issues.apache.org/jira/browse/SPARK-3797) | Run the shuffle service inside the YARN NodeManager as an AuxiliaryService |  Major | YARN | Patrick Wendell | Andrew Or |
| [SPARK-3796](https://issues.apache.org/jira/browse/SPARK-3796) | Create shuffle service for external block storage |  Major | Spark Core | Patrick Wendell | Aaron Davidson |
| [SPARK-3795](https://issues.apache.org/jira/browse/SPARK-3795) | Add scheduler hooks/heuristics for adding and removing executors |  Major | Spark Core | Patrick Wendell | Andrew Or |
| [SPARK-3573](https://issues.apache.org/jira/browse/SPARK-3573) | Dataset |  Critical | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-3530](https://issues.apache.org/jira/browse/SPARK-3530) | Pipeline and Parameters |  Critical | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-3503](https://issues.apache.org/jira/browse/SPARK-3503) | Disable thread local cache in PooledByteBufAllocator |  Major | Shuffle | Reynold Xin | Reynold Xin |
| [SPARK-3502](https://issues.apache.org/jira/browse/SPARK-3502) | SO\_RCVBUF and SO\_SNDBUF should be bootstrap childOption, not option |  Major | Shuffle | Reynold Xin | Reynold Xin |
| [SPARK-3477](https://issues.apache.org/jira/browse/SPARK-3477) | Clean up code in Yarn Client / ClientBase |  Major | YARN | Andrew Or | Andrew Or |
| [SPARK-3453](https://issues.apache.org/jira/browse/SPARK-3453) | Refactor Netty module to use BlockTransferService |  Major | Shuffle, Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-3361](https://issues.apache.org/jira/browse/SPARK-3361) | Expand PEP 8 checks to include EC2 script and Python examples |  Minor | Build | Nicholas Chammas | Nicholas Chammas |
| [SPARK-3281](https://issues.apache.org/jira/browse/SPARK-3281) | Remove Netty specific code in BlockManager |  Major | Shuffle, Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-3248](https://issues.apache.org/jira/browse/SPARK-3248) | Hooks for adding strategies to the planner |  Blocker | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-3198](https://issues.apache.org/jira/browse/SPARK-3198) | Remove the id property from the TreeNode API |  Major | SQL | Cheng Hao | Cheng Hao |
| [SPARK-3187](https://issues.apache.org/jira/browse/SPARK-3187) | Refactor and cleanup Yarn allocator code |  Minor | YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-3135](https://issues.apache.org/jira/browse/SPARK-3135) | Avoid memory copy in TorrentBroadcast serialization |  Major | Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-3076](https://issues.apache.org/jira/browse/SPARK-3076) | Gracefully report build timeouts in Jenkins |  Minor | Build | Nicholas Chammas | Nicholas Chammas |
| [SPARK-3049](https://issues.apache.org/jira/browse/SPARK-3049) | Make sure client doesn't block when server/connection has error(s) |  Major | Shuffle, Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-3018](https://issues.apache.org/jira/browse/SPARK-3018) | Release all ManagedBuffers upon task completion/failure |  Major | Shuffle, Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-3017](https://issues.apache.org/jira/browse/SPARK-3017) | Implement unit/integration tests for connection failures |  Major | Shuffle, Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-3016](https://issues.apache.org/jira/browse/SPARK-3016) | Client should be able to put blocks in addition to fetch blocks |  Major | Shuffle, Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-3002](https://issues.apache.org/jira/browse/SPARK-3002) | Maintains a connection pool and reuse clients in BlockClientFactory |  Major | Shuffle, Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-2938](https://issues.apache.org/jira/browse/SPARK-2938) | Support SASL authentication in Netty network module |  Blocker | Shuffle, Spark Core | Reynold Xin | Aaron Davidson |
| [SPARK-2933](https://issues.apache.org/jira/browse/SPARK-2933) | Refactor and cleanup Yarn AM code |  Minor | YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-2912](https://issues.apache.org/jira/browse/SPARK-2912) | Jenkins should include the commit hash in his messages |  Major | Build | Nicholas Chammas | Nicholas Chammas |
| [SPARK-2848](https://issues.apache.org/jira/browse/SPARK-2848) | Shade Guava in Spark deliverables |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-2811](https://issues.apache.org/jira/browse/SPARK-2811) | update algebird to 0.8.1 |  Major | Build, Spark Core | Anand Avati | Adam Pingel |
| [SPARK-2809](https://issues.apache.org/jira/browse/SPARK-2809) | update chill to version 0.5.0 |  Major | Build, Spark Core | Anand Avati | Guoqiang Li |
| [SPARK-2805](https://issues.apache.org/jira/browse/SPARK-2805) | Update akka to version 2.3.4 |  Major | Build, Spark Core | Anand Avati | Anand Avati |
| [SPARK-2288](https://issues.apache.org/jira/browse/SPARK-2288) | Hide ShuffleBlockManager behind ShuffleManager |  Major | Block Manager, Shuffle | Raymond Liu | Raymond Liu |
| [SPARK-1719](https://issues.apache.org/jira/browse/SPARK-1719) | spark.executor.extraLibraryPath isn't applied on yarn |  Major | YARN | Thomas Graves | Guoqiang Li |
| [SPARK-1069](https://issues.apache.org/jira/browse/SPARK-1069) | Provide binary compatibility in Spark 1.X releases |  Major | . | Patrick Cogan |  |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-4711](https://issues.apache.org/jira/browse/SPARK-4711) | MLlib optimization: docs should suggest how to choose optimizer |  Trivial | Documentation, MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-4580](https://issues.apache.org/jira/browse/SPARK-4580) | Document random forests and boosting in programming guide |  Critical | Documentation, MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-4481](https://issues.apache.org/jira/browse/SPARK-4481) | Some comments for `updateStateByKey` are wrong |  Major | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-4363](https://issues.apache.org/jira/browse/SPARK-4363) | The Broadcast example is out of date |  Trivial | Documentation | Shixiong Zhu | Shixiong Zhu |
| [SPARK-4344](https://issues.apache.org/jira/browse/SPARK-4344) | spark.yarn.user.classpath.first is undocumented |  Trivial | . | Arun Ahuja |  |
| [SPARK-4040](https://issues.apache.org/jira/browse/SPARK-4040) | Update spark documentation for local mode and spark-streaming. |  Major | Documentation | jay vyas | jay vyas |
| [SPARK-3556](https://issues.apache.org/jira/browse/SPARK-3556) | Monitoring and debugging improvements (Spark 1.2) |  Major | Spark Core, Web UI | Josh Rosen | Josh Rosen |
| [SPARK-3526](https://issues.apache.org/jira/browse/SPARK-3526) | Docs section on data locality |  Major | Documentation | Andrew Ash | Andrew Ash |
| [SPARK-3356](https://issues.apache.org/jira/browse/SPARK-3356) | Document when RDD elements' ordering within partitions is nondeterministic |  Major | Documentation | Matei Zaharia | Sean Owen |
| [SPARK-3318](https://issues.apache.org/jira/browse/SPARK-3318) | The documentation for addFiles is wrong |  Trivial | . | holdenk | Holden Karau |
| [SPARK-2706](https://issues.apache.org/jira/browse/SPARK-2706) | Enable Spark to support Hive 0.13 |  Major | SQL | Chunjun Xiao | Zhan Zhang |
| [SPARK-2558](https://issues.apache.org/jira/browse/SPARK-2558) | Mention --queue argument in YARN documentation |  Trivial | YARN | Matei Zaharia |  |
| [SPARK-2420](https://issues.apache.org/jira/browse/SPARK-2420) | Dependency changes for compatibility with Hive |  Major | Build | Xuefu Zhang |  |
| [SPARK-4108](https://issues.apache.org/jira/browse/SPARK-4108) | Fix uses of @deprecated in catalyst dataTypes |  Trivial | SQL | Anant Daksh Asthana |  |
| [SPARK-3857](https://issues.apache.org/jira/browse/SPARK-3857) | Create a join package for various join operators |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-3832](https://issues.apache.org/jira/browse/SPARK-3832) | Upgrade Breeze dependency to 0.10 |  Major | MLlib | DB Tsai | DB Tsai |
| [SPARK-2932](https://issues.apache.org/jira/browse/SPARK-2932) | Move MasterFailureTest out of "main" source directory |  Trivial | Streaming | Marcelo Vanzin |  |
| [SPARK-2902](https://issues.apache.org/jira/browse/SPARK-2902) | Change default options to be more agressive |  Major | SQL | Cheng Lian | Michael Armbrust |
| [SPARK-1297](https://issues.apache.org/jira/browse/SPARK-1297) | Upgrade HBase dependency to 0.98.0 |  Minor | . | Ted Yu | Ted Yu |


