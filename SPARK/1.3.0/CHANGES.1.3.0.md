
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

## Release 1.3.0 - 2015-03-13

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-5769](https://issues.apache.org/jira/browse/SPARK-5769) | Set params in constructor and setParams() in Python ML pipeline API |  Major | ML, PySpark | Xiangrui Meng | Xiangrui Meng |
| [SPARK-5716](https://issues.apache.org/jira/browse/SPARK-5716) | Support TOK\_CHARSETLITERAL in HiveQl |  Major | SQL | Adrian Wang | Adrian Wang |
| [SPARK-5645](https://issues.apache.org/jira/browse/SPARK-5645) | Track local bytes read for shuffles - update UI |  Major | Spark Core | Kostas Sakellis | Kay Ousterhout |
| [SPARK-5513](https://issues.apache.org/jira/browse/SPARK-5513) | Add NMF option to the new ALS implementation |  Major | ML, MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-5491](https://issues.apache.org/jira/browse/SPARK-5491) | Chi-square feature selection |  Major | MLlib | Xiangrui Meng | Alexander Ulanov |
| [SPARK-5486](https://issues.apache.org/jira/browse/SPARK-5486) | Add validate function for BlockMatrix |  Major | MLlib | Burak Yavuz | Burak Yavuz |
| [SPARK-5414](https://issues.apache.org/jira/browse/SPARK-5414) | Add SparkListener implementation that allows users to receive all listener events in one method |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-5411](https://issues.apache.org/jira/browse/SPARK-5411) | Allow SparkListeners to be specified in SparkConf and loaded when creating SparkContext |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-5341](https://issues.apache.org/jira/browse/SPARK-5341) | Support maven coordinates in spark-shell and spark-submit |  Critical | Deploy, Spark Shell | Burak Yavuz | Burak Yavuz |
| [SPARK-5322](https://issues.apache.org/jira/browse/SPARK-5322) | Add transpose() to BlockMatrix |  Major | MLlib | Burak Yavuz | Burak Yavuz |
| [SPARK-5321](https://issues.apache.org/jira/browse/SPARK-5321) | Add transpose() method to Matrix |  Major | MLlib | Burak Yavuz | Burak Yavuz |
| [SPARK-5317](https://issues.apache.org/jira/browse/SPARK-5317) | Another straightforward way to set BoostingStrategy.defaultParams |  Minor | MLlib | peishenjia | peishenjia |
| [SPARK-5135](https://issues.apache.org/jira/browse/SPARK-5135) | Add support for describe [extended] table to DDL in SQLContext |  Minor | SQL | Li Sheng | Li Sheng |
| [SPARK-5116](https://issues.apache.org/jira/browse/SPARK-5116) | Add extractor for SparseVector and DenseVector in MLlib |  Minor | MLlib | Shuo Xiang | Shuo Xiang |
| [SPARK-5101](https://issues.apache.org/jira/browse/SPARK-5101) | Add common ML math functions |  Minor | MLlib | Xiangrui Meng | DB Tsai |
| [SPARK-5094](https://issues.apache.org/jira/browse/SPARK-5094) | Python API for gradient-boosted trees |  Critical | MLlib, PySpark | Xiangrui Meng | Kazuki Taniguchi |
| [SPARK-5015](https://issues.apache.org/jira/browse/SPARK-5015) | GaussianMixtureEM should take random seed parameter |  Critical | MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-5012](https://issues.apache.org/jira/browse/SPARK-5012) | Python API for Gaussian Mixture Model |  Critical | MLlib, PySpark | Xiangrui Meng | Meethu Mathew |
| [SPARK-4979](https://issues.apache.org/jira/browse/SPARK-4979) | Add streaming logistic regression |  Minor | MLlib, Streaming | Jeremy Freeman | Jeremy Freeman |
| [SPARK-4891](https://issues.apache.org/jira/browse/SPARK-4891) | Add exponential, log normal, and gamma distributions to data generator to PySpark's MLlib |  Minor | PySpark | RJ Nowling | RJ Nowling |
| [SPARK-4728](https://issues.apache.org/jira/browse/SPARK-4728) | Add exponential, log normal, and gamma distributions to data generator to MLlib |  Minor | MLlib | RJ Nowling | RJ Nowling |
| [SPARK-4625](https://issues.apache.org/jira/browse/SPARK-4625) | Support "Sort By" in both DSL & SimpleSQLParser |  Major | SQL | Cheng Hao | Cheng Hao |
| [SPARK-4586](https://issues.apache.org/jira/browse/SPARK-4586) | Python API for ML Pipeline |  Critical | ML, MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-4501](https://issues.apache.org/jira/browse/SPARK-4501) | Create build/mvn to automatically download maven/zinc/scalac |  Major | Build | Patrick Wendell | Brennon York |
| [SPARK-4494](https://issues.apache.org/jira/browse/SPARK-4494) | IDFModel.transform() add support for single vector |  Minor | MLlib | Jean-Philippe Quemener | Yu Ishikawa |
| [SPARK-4259](https://issues.apache.org/jira/browse/SPARK-4259) | Add Power Iteration Clustering Algorithm with Gaussian Similarity Function |  Major | MLlib | Fan Jiang | Fan Jiang |
| [SPARK-4172](https://issues.apache.org/jira/browse/SPARK-4172) | Progress API in Python |  Major | PySpark | Davies Liu | Davies Liu |
| [SPARK-4156](https://issues.apache.org/jira/browse/SPARK-4156) | Add expectation maximization for Gaussian mixture models to MLLib clustering |  Major | MLlib | Travis Galoppo | Travis Galoppo |
| [SPARK-4001](https://issues.apache.org/jira/browse/SPARK-4001) | Add FP-growth algorithm to Spark MLlib |  Major | MLlib | Jacky Li | Jacky Li |
| [SPARK-3278](https://issues.apache.org/jira/browse/SPARK-3278) | Isotonic regression |  Major | MLlib | Xiangrui Meng | Martin Zapletal |
| [SPARK-2663](https://issues.apache.org/jira/browse/SPARK-2663) | Support the GroupingSet/ROLLUP/CUBE |  Major | SQL | Cheng Hao | Cheng Hao |
| [SPARK-2309](https://issues.apache.org/jira/browse/SPARK-2309) | Generalize the binary logistic regression into multinomial logistic regression |  Critical | MLlib | DB Tsai | DB Tsai |
| [SPARK-1830](https://issues.apache.org/jira/browse/SPARK-1830) | Deploy failover, Make Persistence engine and LeaderAgent Pluggable. |  Major | Deploy | Prashant Sharma | Prashant Sharma |
| [SPARK-1405](https://issues.apache.org/jira/browse/SPARK-1405) | parallel Latent Dirichlet Allocation (LDA) atop of spark in MLlib |  Critical | MLlib | Xusen Yin | Joseph K. Bradley |
| [SPARK-874](https://issues.apache.org/jira/browse/SPARK-874) | Have a --wait flag in ./sbin/stop-all.sh that polls until Worker's are finished |  Minor | Deploy | Patrick Wendell | Ben Cook |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-6128](https://issues.apache.org/jira/browse/SPARK-6128) | Update Spark Streaming Guide for Spark 1.3 |  Critical | Documentation, Streaming | Tathagata Das | Tathagata Das |
| [SPARK-6058](https://issues.apache.org/jira/browse/SPARK-6058) | Log the error for the EXIT\_EXCEPTION\_USER\_CLASS exit code |  Minor | YARN | Shixiong Zhu | Shixiong Zhu |
| [SPARK-6037](https://issues.apache.org/jira/browse/SPARK-6037) | Avoiding duplicate Parquet schema merging |  Minor | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-6032](https://issues.apache.org/jira/browse/SPARK-6032) | Move ivy logging to System.err in --packages |  Minor | Spark Submit | Burak Yavuz | Burak Yavuz |
| [SPARK-5999](https://issues.apache.org/jira/browse/SPARK-5999) | Remove duplicate Literal matching block |  Minor | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-5943](https://issues.apache.org/jira/browse/SPARK-5943) | Update the API to remove several warns in building for Spark Streaming |  Minor | Build | Saisai Shao | Saisai Shao |
| [SPARK-5930](https://issues.apache.org/jira/browse/SPARK-5930) | Documented default of spark.shuffle.io.retryWait is confusing |  Trivial | Documentation | Andrew Or | Sean Owen |
| [SPARK-5902](https://issues.apache.org/jira/browse/SPARK-5902) | PipelineStage.transformSchema should be public, not private |  Minor | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-5864](https://issues.apache.org/jira/browse/SPARK-5864) | support .jar as python package |  Major | PySpark | Davies Liu | Davies Liu |
| [SPARK-5862](https://issues.apache.org/jira/browse/SPARK-5862) | Only transformUp the given plan once in HiveMetastoreCatalog |  Minor | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-5856](https://issues.apache.org/jira/browse/SPARK-5856) | In Maven build script, launch Zinc with more memory |  Blocker | Build | Patrick Wendell | Patrick Wendell |
| [SPARK-5806](https://issues.apache.org/jira/browse/SPARK-5806) | Organize sections in mllib-clustering.md |  Major | Documentation, MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-5804](https://issues.apache.org/jira/browse/SPARK-5804) | Explicitly manage cache in Crossvalidation k-fold loop |  Minor | ML | Peter Rudenko | Peter Rudenko |
| [SPARK-5803](https://issues.apache.org/jira/browse/SPARK-5803) | Use ArrayBuilder instead of ArrayBuffer for primitive types |  Major | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-5802](https://issues.apache.org/jira/browse/SPARK-5802) | Cache scaled data in GLM |  Major | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-5799](https://issues.apache.org/jira/browse/SPARK-5799) | Compute aggregation function on specified numeric columns |  Minor | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-5796](https://issues.apache.org/jira/browse/SPARK-5796) | Do not transform data on a last estimator in Pipeline |  Minor | ML | Peter Rudenko | Peter Rudenko |
| [SPARK-5789](https://issues.apache.org/jira/browse/SPARK-5789) | Throw a better error message if JsonRDD.parseJson encounters unrecoverable parsing errors. |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-5785](https://issues.apache.org/jira/browse/SPARK-5785) | Pyspark does not support narrow dependencies |  Major | PySpark | Imran Rashid | Davies Liu |
| [SPARK-5780](https://issues.apache.org/jira/browse/SPARK-5780) | The loggings of Python unittests are noisy and scaring in |  Major | PySpark | Davies Liu | Davies Liu |
| [SPARK-5778](https://issues.apache.org/jira/browse/SPARK-5778) | Throw if nonexistent "spark.metrics.conf" file is provided |  Minor | Spark Core | Ryan Williams | Ryan Williams |
| [SPARK-5758](https://issues.apache.org/jira/browse/SPARK-5758) | Use LongType as the default type for integers in JSON schema inference. |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-5757](https://issues.apache.org/jira/browse/SPARK-5757) | Use json4s instead of DataFrame.toJSON in model export |  Critical | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-5735](https://issues.apache.org/jira/browse/SPARK-5735) | Replace uses of EasyMock with Mockito |  Major | Tests | Patrick Wendell | Josh Rosen |
| [SPARK-5732](https://issues.apache.org/jira/browse/SPARK-5732) | Add an option to print the spark version in spark script |  Minor | Spark Submit | uncleGen | uncleGen |
| [SPARK-5723](https://issues.apache.org/jira/browse/SPARK-5723) | Change the default file format to Parquet for CTAS statements. |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-5717](https://issues.apache.org/jira/browse/SPARK-5717) | add sc.stop to LDA examples |  Trivial | MLlib | yuhao yang | yuhao yang |
| [SPARK-5714](https://issues.apache.org/jira/browse/SPARK-5714) | Refactor initial step of LDA to remove redundant operations |  Minor | MLlib | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-5709](https://issues.apache.org/jira/browse/SPARK-5709) | Add "EXPLAIN" support for DataFrame API for debugging purpose |  Major | SQL | Cheng Hao | Cheng Hao |
| [SPARK-5686](https://issues.apache.org/jira/browse/SPARK-5686) | Support `show current roles` |  Minor | SQL | Li Sheng | Li Sheng |
| [SPARK-5683](https://issues.apache.org/jira/browse/SPARK-5683) | Improve the json serialization for DataFrame API |  Minor | SQL | Cheng Hao | Cheng Hao |
| [SPARK-5671](https://issues.apache.org/jira/browse/SPARK-5671) | Bump jets3t version from 0.9.0 to 0.9.2 in hadoop-2.3 and hadoop-2.4 profiles |  Major | Build | Josh Rosen | Josh Rosen |
| [SPARK-5665](https://issues.apache.org/jira/browse/SPARK-5665) | Update netlib-java documentation |  Minor | Documentation | Sean Owen | Sam Halliday |
| [SPARK-5660](https://issues.apache.org/jira/browse/SPARK-5660) | Local Matrix apply should be public |  Minor | MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-5649](https://issues.apache.org/jira/browse/SPARK-5649) | Throw exception when can not apply datatype cast |  Major | SQL | Fei Wang | Fei Wang |
| [SPARK-5648](https://issues.apache.org/jira/browse/SPARK-5648) | support "alter ... unset tblproperties("key")" |  Major | SQL | Zhongshuai Pei | Zhongshuai Pei |
| [SPARK-5642](https://issues.apache.org/jira/browse/SPARK-5642) | Apply column pruning on unused aggregation fields |  Major | SQL | Adrian Wang | Adrian Wang |
| [SPARK-5633](https://issues.apache.org/jira/browse/SPARK-5633) | pyspark saveAsTextFile support for compression codec |  Minor | PySpark | Vladimir Vladimirov | Vladimir Vladimirov |
| [SPARK-5628](https://issues.apache.org/jira/browse/SPARK-5628) | Add option to return spark-ec2 version |  Minor | EC2 | Nicholas Chammas | Nicholas Chammas |
| [SPARK-5618](https://issues.apache.org/jira/browse/SPARK-5618) | Optimise utility code. |  Minor | Spark Core | Makoto Fukuhara | Makoto Fukuhara |
| [SPARK-5614](https://issues.apache.org/jira/browse/SPARK-5614) | Predicate pushdown through Generate |  Major | SQL | Lu Yan | Lu Yan |
| [SPARK-5608](https://issues.apache.org/jira/browse/SPARK-5608) | Improve SEO of Spark documentation site to let Google find latest docs |  Major | Documentation | Matei Zaharia | Matei Zaharia |
| [SPARK-5604](https://issues.apache.org/jira/browse/SPARK-5604) | Remove setCheckpointDir from LDA and tree Strategy |  Major | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-5601](https://issues.apache.org/jira/browse/SPARK-5601) | Make streaming algorithms Java-friendly |  Major | MLlib, Streaming | Xiangrui Meng | Xiangrui Meng |
| [SPARK-5592](https://issues.apache.org/jira/browse/SPARK-5592) | java.net.URISyntaxException when insert data to a partitioned table |  Major | SQL | Fei Wang | Fei Wang |
| [SPARK-5586](https://issues.apache.org/jira/browse/SPARK-5586) | Automatically provide sqlContext in Spark shell |  Blocker | Spark Shell, SQL | Patrick Wendell | Li Sheng |
| [SPARK-5549](https://issues.apache.org/jira/browse/SPARK-5549) | Define TaskContext interface in Scala |  Major | Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-5540](https://issues.apache.org/jira/browse/SPARK-5540) | Hide ALS.solveLeastSquares. |  Major | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-5536](https://issues.apache.org/jira/browse/SPARK-5536) | Wrap the old ALS to use the new ALS implementation. |  Major | ML, MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-5520](https://issues.apache.org/jira/browse/SPARK-5520) | Make FP-Growth implementation take generic item types |  Critical | MLlib | Xiangrui Meng | Jacky Li |
| [SPARK-5500](https://issues.apache.org/jira/browse/SPARK-5500) | Document that feeding hadoopFile into a shuffle operation will cause problems |  Critical | Documentation | Sandy Ryza | Sandy Ryza |
| [SPARK-5493](https://issues.apache.org/jira/browse/SPARK-5493) | Support proxy users under kerberos |  Major | Spark Core | Brock Noland | Marcelo Vanzin |
| [SPARK-5477](https://issues.apache.org/jira/browse/SPARK-5477) | Refactor stat.py in order to expand mllib.stat |  Major | MLlib, PySpark | Xiangrui Meng | Xiangrui Meng |
| [SPARK-5474](https://issues.apache.org/jira/browse/SPARK-5474) | curl should support URL redirection in build/mvn |  Major | Build | Guoqiang Li | Guoqiang Li |
| [SPARK-5473](https://issues.apache.org/jira/browse/SPARK-5473) | Expose SSH failures after status checks pass |  Minor | EC2 | Nicholas Chammas | Nicholas Chammas |
| [SPARK-5472](https://issues.apache.org/jira/browse/SPARK-5472) | Add support for reading from and writing to a JDBC database |  Blocker | SQL | Tor Myklebust | Tor Myklebust |
| [SPARK-5461](https://issues.apache.org/jira/browse/SPARK-5461) | Graph should have isCheckpointed, getCheckpointFiles methods |  Minor | GraphX | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-5460](https://issues.apache.org/jira/browse/SPARK-5460) | RandomForest should catch exceptions when removing checkpoint files |  Minor | MLlib | Joseph K. Bradley | Yuri Saito |
| [SPARK-5440](https://issues.apache.org/jira/browse/SPARK-5440) | Add toLocalIterator to pyspark rdd |  Major | PySpark | Michael Nazario | Michael Nazario |
| [SPARK-5430](https://issues.apache.org/jira/browse/SPARK-5430) | Move treeReduce and treeAggregate to core |  Major | MLlib, Spark Core | Xiangrui Meng | Xiangrui Meng |
| [SPARK-5424](https://issues.apache.org/jira/browse/SPARK-5424) | Make the new ALS implementation take generic ID types |  Major | ML, MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-5422](https://issues.apache.org/jira/browse/SPARK-5422) | Support sending to Graphite via UDP |  Minor | Spark Core | Ryan Williams | Ryan Williams |
| [SPARK-5419](https://issues.apache.org/jira/browse/SPARK-5419) | Fix the logic in Vectors.sqdist |  Major | MLlib | Xiangrui Meng | Liang-Chi Hsieh |
| [SPARK-5417](https://issues.apache.org/jira/browse/SPARK-5417) | Remove redundant executor-ID set() call |  Minor | Spark Core | Ryan Williams | Ryan Williams |
| [SPARK-5415](https://issues.apache.org/jira/browse/SPARK-5415) | Upgrade sbt to 0.13.7 |  Minor | Spark Core | Ryan Williams | Ryan Williams |
| [SPARK-5413](https://issues.apache.org/jira/browse/SPARK-5413) | Upgrade "metrics" dependency to 3.1.0 |  Critical | Spark Core | Ryan Williams | Ryan Williams |
| [SPARK-5403](https://issues.apache.org/jira/browse/SPARK-5403) | Ignore UserKnownHostsFile in SSH calls |  Major | EC2 | Grzegorz Dubicki | Grzegorz Dubicki |
| [SPARK-5402](https://issues.apache.org/jira/browse/SPARK-5402) | Log executor ID at executor-construction time |  Minor | Spark Core | Ryan Williams | Ryan Williams |
| [SPARK-5400](https://issues.apache.org/jira/browse/SPARK-5400) | Rename GaussianMixtureEM to GaussianMixture |  Minor | MLlib | Joseph K. Bradley | Travis Galoppo |
| [SPARK-5353](https://issues.apache.org/jira/browse/SPARK-5353) | Log failures in ExceutorClassLoader |  Minor | Spark Shell | Tobias Schlatter | Tobias Schlatter |
| [SPARK-5326](https://issues.apache.org/jira/browse/SPARK-5326) | Show fetch wait time as optional metric in the UI |  Minor | Web UI | Kay Ousterhout | Kay Ousterhout |
| [SPARK-5301](https://issues.apache.org/jira/browse/SPARK-5301) | Add missing linear algebra utilities to IndexedRowMatrix and CoordinateMatrix |  Major | MLlib | Reza Zadeh | Reza Zadeh |
| [SPARK-5296](https://issues.apache.org/jira/browse/SPARK-5296) | Predicate Pushdown (BaseRelation) to have an interface that will accept more filters |  Critical | SQL | Corey J. Nolet | Cheng Lian |
| [SPARK-5294](https://issues.apache.org/jira/browse/SPARK-5294) | Hide tables in AllStagePages for "Active Stages, Completed Stages and Failed Stages" when they are empty |  Major | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-5291](https://issues.apache.org/jira/browse/SPARK-5291) | Add timestamp and reason why an executor is removed to SparkListenerExecutorAdded and SparkListenerExecutorRemoved |  Major | Spark Core | Kousuke Saruta | Kousuke Saruta |
| [SPARK-5255](https://issues.apache.org/jira/browse/SPARK-5255) | Use python doc "note" for experimental tags in tree.py |  Trivial | MLlib, PySpark | Joseph K. Bradley | Kazuki Taniguchi |
| [SPARK-5234](https://issues.apache.org/jira/browse/SPARK-5234) | examples for ml don't have sparkContext.stop |  Trivial | ML | yuhao yang | yuhao yang |
| [SPARK-5228](https://issues.apache.org/jira/browse/SPARK-5228) | Hide tables for "Active Jobs/Completed Jobs/Failed Jobs" when they are empty |  Major | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-5207](https://issues.apache.org/jira/browse/SPARK-5207) | StandardScalerModel mean and variance re-use |  Major | MLlib | Octavian Geagla | Octavian Geagla |
| [SPARK-5200](https://issues.apache.org/jira/browse/SPARK-5200) | Disable web UI in Hive Thriftserver tests |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-5199](https://issues.apache.org/jira/browse/SPARK-5199) | Input metrics should show up for InputFormats that return CombineFileSplits |  Major | Spark Core | Sandy Ryza | Sandy Ryza |
| [SPARK-5188](https://issues.apache.org/jira/browse/SPARK-5188) | make-distribution.sh should support curl, not only wget to get Tachyon |  Major | Build | Kousuke Saruta | Kousuke Saruta |
| [SPARK-5173](https://issues.apache.org/jira/browse/SPARK-5173) | support python application running on yarn cluster mode |  Major | YARN | Lianhui Wang | Lianhui Wang |
| [SPARK-5157](https://issues.apache.org/jira/browse/SPARK-5157) | Configure more JVM options properly when we use ConcMarkSweepGC for AM. |  Trivial | YARN | Kousuke Saruta | Kousuke Saruta |
| [SPARK-5136](https://issues.apache.org/jira/browse/SPARK-5136) | Improve documentation around setting up Spark IntelliJ project |  Minor | Documentation | Ryan Williams | Sean Owen |
| [SPARK-5126](https://issues.apache.org/jira/browse/SPARK-5126) | No error log for a typo master url |  Minor | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-5122](https://issues.apache.org/jira/browse/SPARK-5122) | Remove Shark from spark-ec2 |  Minor | EC2 | Nicholas Chammas | Nicholas Chammas |
| [SPARK-5093](https://issues.apache.org/jira/browse/SPARK-5093) | Make network related timeouts consistent |  Major | Shuffle, Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-5088](https://issues.apache.org/jira/browse/SPARK-5088) | Use spark-class for running executors directly on mesos |  Minor | Deploy, Mesos | Jongyoul Lee | Jongyoul Lee |
| [SPARK-5078](https://issues.apache.org/jira/browse/SPARK-5078) | Allow setting Akka host name from env vars |  Critical | Spark Core | Michael Armbrust | Michael Armbrust |
| [SPARK-5063](https://issues.apache.org/jira/browse/SPARK-5063) | Display more helpful error messages for several invalid operations |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-5057](https://issues.apache.org/jira/browse/SPARK-5057) | Log message in failed askWithReply attempts |  Minor | Spark Core | Tao Wang | Tao Wang |
| [SPARK-5047](https://issues.apache.org/jira/browse/SPARK-5047) | Add Kafka to the Python Streaming API |  Major | PySpark, Streaming | Tathagata Das | Davies Liu |
| [SPARK-5040](https://issues.apache.org/jira/browse/SPARK-5040) | Support expressing unresolved attributes using $"attribute name" notation in SQL DSL |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-5031](https://issues.apache.org/jira/browse/SPARK-5031) | ml.LogisticRegression score column should be renamed probability |  Minor | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-5028](https://issues.apache.org/jira/browse/SPARK-5028) | Add total received and processed records metrics to Streaming UI |  Major | Streaming | Saisai Shao | Saisai Shao |
| [SPARK-5021](https://issues.apache.org/jira/browse/SPARK-5021) | GaussianMixtureEM should be faster for SparseVector input |  Major | MLlib | Joseph K. Bradley | Manoj Kumar |
| [SPARK-5020](https://issues.apache.org/jira/browse/SPARK-5020) | GaussianMixtureModel.predictMembership() should take an RDD only |  Critical | MLlib | Joseph K. Bradley | Travis Galoppo |
| [SPARK-5019](https://issues.apache.org/jira/browse/SPARK-5019) | Update GMM API to use MultivariateGaussian |  Minor | MLlib | Joseph K. Bradley | Travis Galoppo |
| [SPARK-5018](https://issues.apache.org/jira/browse/SPARK-5018) | Make MultivariateGaussian public |  Critical | MLlib | Joseph K. Bradley | Travis Galoppo |
| [SPARK-5017](https://issues.apache.org/jira/browse/SPARK-5017) | GaussianMixtureEM should use SVD for Gaussian initialization |  Major | MLlib | Joseph K. Bradley | Travis Galoppo |
| [SPARK-4995](https://issues.apache.org/jira/browse/SPARK-4995) | Replace Vector.toBreeze.activeIterator with foreachActive |  Minor | MLlib | Jakub Dubovsky | Jakub Dubovsky |
| [SPARK-4984](https://issues.apache.org/jira/browse/SPARK-4984) | add a pop-up containing the full for job description when it is very long |  Major | Web UI | Fei Wang | Fei Wang |
| [SPARK-4972](https://issues.apache.org/jira/browse/SPARK-4972) | Updated the scala doc for lasso and ridge regression for the change of LeastSquaresGradient |  Major | MLlib | DB Tsai | DB Tsai |
| [SPARK-4964](https://issues.apache.org/jira/browse/SPARK-4964) | Exactly-once + WAL-free Kafka Support in Spark Streaming |  Major | Streaming | Cody Koeninger | Cody Koeninger |
| [SPARK-4954](https://issues.apache.org/jira/browse/SPARK-4954) | Add spark version information in log for standalone mode |  Minor | Spark Core | Zhang, Liye | Zhang, Liye |
| [SPARK-4946](https://issues.apache.org/jira/browse/SPARK-4946) | Using AkkaUtils.askWithReply in MapOutputTracker.askTracker to reduce the chance of the communicating problem |  Minor | Spark Core | YanTang Zhai | YanTang Zhai |
| [SPARK-4942](https://issues.apache.org/jira/browse/SPARK-4942) | ML Transformers should allow output cols to be turned on,off |  Major | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-4937](https://issues.apache.org/jira/browse/SPARK-4937) | Adding optimization to simplify the filter condition |  Major | SQL | Fei Wang | Cheng Lian |
| [SPARK-4932](https://issues.apache.org/jira/browse/SPARK-4932) | Add help comments in Analytics |  Trivial | GraphX | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-4918](https://issues.apache.org/jira/browse/SPARK-4918) | Reuse Text in saveAsTextFile |  Minor | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-4896](https://issues.apache.org/jira/browse/SPARK-4896) | Don't redundantly copy executor dependencies in Utils.fetchFile |  Major | Spark Core | Josh Rosen | Ryan Williams |
| [SPARK-4890](https://issues.apache.org/jira/browse/SPARK-4890) | Upgrade Boto to 2.34.0; automatically download Boto from PyPi instead of packaging it |  Major | EC2 | Josh Rosen | Josh Rosen |
| [SPARK-4883](https://issues.apache.org/jira/browse/SPARK-4883) | Add a name to the directoryCleaner thread |  Minor | Shuffle | Shixiong Zhu | Shixiong Zhu |
| [SPARK-4881](https://issues.apache.org/jira/browse/SPARK-4881) | Use SparkConf#getBoolean instead of get().toBoolean |  Trivial | YARN | Kousuke Saruta | Kousuke Saruta |
| [SPARK-4880](https://issues.apache.org/jira/browse/SPARK-4880) | remove spark.locality.wait setting in examples/graphx/Analytics.scala |  Minor | Examples, GraphX | Ernest | Ernest |
| [SPARK-4874](https://issues.apache.org/jira/browse/SPARK-4874) | Report number of records read/written in a task |  Major | Spark Core, Web UI | Kostas Sakellis | Kostas Sakellis |
| [SPARK-4870](https://issues.apache.org/jira/browse/SPARK-4870) | Add version information to driver log |  Minor | Spark Core | Zhang, Liye | Zhang, Liye |
| [SPARK-4860](https://issues.apache.org/jira/browse/SPARK-4860) | Improve performance of sample() and  takeSample() on SchemaRDD |  Major | PySpark, SQL | Davies Liu | Ben Cook |
| [SPARK-4859](https://issues.apache.org/jira/browse/SPARK-4859) | Refactor LiveListenerBus and StreamingListenerBus |  Major | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-4793](https://issues.apache.org/jira/browse/SPARK-4793) | way to find assembly jar is too strict |  Minor | Deploy | Adrian Wang | Adrian Wang |
| [SPARK-4792](https://issues.apache.org/jira/browse/SPARK-4792) | Add some checks and messages on making local dir |  Minor | Spark Core | meiyoula | meiyoula |
| [SPARK-4767](https://issues.apache.org/jira/browse/SPARK-4767) | Add support for launching in a specified placement group to spark ec2 scripts. |  Trivial | EC2 | holdenk | Holden Karau |
| [SPARK-4764](https://issues.apache.org/jira/browse/SPARK-4764) | Ensure that files are fetched atomically |  Minor | Spark Core | Christophe Préaud | Christophe Préaud |
| [SPARK-4754](https://issues.apache.org/jira/browse/SPARK-4754) | ExecutorAllocationManager should not take in SparkContext |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-4749](https://issues.apache.org/jira/browse/SPARK-4749) | Allow initializing KMeans clusters using a seed |  Major | MLlib, PySpark | Nate Crosswhite | Nate Crosswhite |
| [SPARK-4743](https://issues.apache.org/jira/browse/SPARK-4743) | Use SparkEnv.serializer instead of closureSerializer in aggregateByKey and foldByKey |  Major | Spark Core | Ivan Vergiliev | Ivan Vergiliev |
| [SPARK-4714](https://issues.apache.org/jira/browse/SPARK-4714) | BlockManager should check whether blocks have already been removed Checking block is null or not after having gotten info.lock in remove block method |  Minor | Block Manager | SuYan | SuYan |
| [SPARK-4688](https://issues.apache.org/jira/browse/SPARK-4688) | Have a single shared network timeout in Spark |  Critical | Spark Core | Patrick Wendell | Varun Saxena |
| [SPARK-4682](https://issues.apache.org/jira/browse/SPARK-4682) | Consolidate various 'Clock' classes |  Major | Spark Core, Streaming | Josh Rosen | Sean Owen |
| [SPARK-4643](https://issues.apache.org/jira/browse/SPARK-4643) | Remove unneeded staging repositories from build |  Major | Build | Adrian Wang | Adrian Wang |
| [SPARK-4642](https://issues.apache.org/jira/browse/SPARK-4642) | Documents about running-on-YARN needs update |  Minor | Documentation | Masayoshi TSUZUKI | Masayoshi TSUZUKI |
| [SPARK-4632](https://issues.apache.org/jira/browse/SPARK-4632) | Upgrade MQTT dependency to use mqtt-client 1.0.1 |  Critical | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-4618](https://issues.apache.org/jira/browse/SPARK-4618) | Make foreign DDL commands options case-insensitive |  Major | SQL | Fei Wang | Fei Wang |
| [SPARK-4585](https://issues.apache.org/jira/browse/SPARK-4585) | Spark dynamic executor allocation shouldn't use maxExecutors as initial number |  Major | Spark Core, YARN | Chengxiang Li | Sandy Ryza |
| [SPARK-4570](https://issues.apache.org/jira/browse/SPARK-4570) | Add broadcast  join to left semi join |  Minor | SQL | XiaoJing wang | XiaoJing wang |
| [SPARK-4505](https://issues.apache.org/jira/browse/SPARK-4505) | Reduce the memory usage of CompactBuffer[T] when T is a primitive type |  Minor | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-4447](https://issues.apache.org/jira/browse/SPARK-4447) | Remove layers of abstraction in YARN code no longer needed after dropping yarn-alpha |  Critical | YARN | Sandy Ryza | Sandy Ryza |
| [SPARK-4409](https://issues.apache.org/jira/browse/SPARK-4409) | Additional (but limited) Linear Algebra Utils |  Major | MLlib | Burak Yavuz | Burak Yavuz |
| [SPARK-4406](https://issues.apache.org/jira/browse/SPARK-4406) | SVD should check for k \< 1 |  Minor | MLlib | Joseph K. Bradley | Manoj Kumar |
| [SPARK-4405](https://issues.apache.org/jira/browse/SPARK-4405) | Matrices.\* construction methods should check for rows x cols overflow |  Minor | MLlib | Joseph K. Bradley | Sean Owen |
| [SPARK-4397](https://issues.apache.org/jira/browse/SPARK-4397) | Reorganize 'implicit's to improve the API convenience |  Minor | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-4387](https://issues.apache.org/jira/browse/SPARK-4387) | Refactoring python profiling code to make it extensible |  Major | PySpark | Yandu Oppacher | Yandu Oppacher |
| [SPARK-4337](https://issues.apache.org/jira/browse/SPARK-4337) | Add ability to cancel pending requests to YARN |  Major | YARN | Sandy Ryza | Sandy Ryza |
| [SPARK-4329](https://issues.apache.org/jira/browse/SPARK-4329) | Add indexing feature for HistoryPage |  Major | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-4297](https://issues.apache.org/jira/browse/SPARK-4297) | Build warning fixes omnibus |  Minor | Build, Java API | Sean Owen | Sean Owen |
| [SPARK-4140](https://issues.apache.org/jira/browse/SPARK-4140) | Document the dynamic allocation feature |  Major | Spark Core, YARN | Andrew Or | Andrew Or |
| [SPARK-4136](https://issues.apache.org/jira/browse/SPARK-4136) | Under dynamic allocation, cancel outstanding executor requests when no longer needed |  Major | Spark Core, YARN | Sandy Ryza | Sandy Ryza |
| [SPARK-4057](https://issues.apache.org/jira/browse/SPARK-4057) | Use -agentlib instead of -Xdebug in sbt-launch-lib.bash for debugging |  Trivial | Build | Kousuke Saruta | Kousuke Saruta |
| [SPARK-4048](https://issues.apache.org/jira/browse/SPARK-4048) | Enhance and extend hadoop-provided profile |  Major | Build | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-3977](https://issues.apache.org/jira/browse/SPARK-3977) | Conversions between {Row, Coordinate}Matrix \<-\> BlockMatrix |  Major | MLlib | Reza Zadeh | Burak Yavuz |
| [SPARK-3975](https://issues.apache.org/jira/browse/SPARK-3975) | Block Matrix addition and multiplication |  Major | MLlib | Reza Zadeh | Burak Yavuz |
| [SPARK-3974](https://issues.apache.org/jira/browse/SPARK-3974) | Block matrix abstracitons and partitioners |  Major | MLlib | Reza Zadeh | Burak Yavuz |
| [SPARK-3883](https://issues.apache.org/jira/browse/SPARK-3883) | Provide SSL support for Akka and HttpServer based connections |  Major | Spark Core | Jacek Lewandowski | Jacek Lewandowski |
| [SPARK-3851](https://issues.apache.org/jira/browse/SPARK-3851) | Support for reading parquet files with different but compatible schema |  Blocker | SQL | Michael Armbrust | Cheng Lian |
| [SPARK-3726](https://issues.apache.org/jira/browse/SPARK-3726) | RandomForest: Support for bootstrap options |  Minor | MLlib | Joseph K. Bradley | Manoj Kumar |
| [SPARK-3722](https://issues.apache.org/jira/browse/SPARK-3722) | Spark on yarn docs work |  Minor | Documentation | Tao Wang | Tao Wang |
| [SPARK-3619](https://issues.apache.org/jira/browse/SPARK-3619) | Upgrade to Mesos 0.21 to work around MESOS-1688 |  Major | Mesos | Matei Zaharia | Jongyoul Lee |
| [SPARK-3541](https://issues.apache.org/jira/browse/SPARK-3541) | Improve ALS internal storage |  Major | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-3445](https://issues.apache.org/jira/browse/SPARK-3445) | Deprecate and later remove YARN alpha support |  Major | YARN | Patrick Wendell | Sandy Ryza |
| [SPARK-3428](https://issues.apache.org/jira/browse/SPARK-3428) | TaskMetrics for running tasks is missing GC time metrics |  Major | Spark Core | Andrew Ash | Sandy Ryza |
| [SPARK-3424](https://issues.apache.org/jira/browse/SPARK-3424) | KMeans Plus Plus is too slow |  Major | MLlib | Derrick Burns | Derrick Burns |
| [SPARK-3340](https://issues.apache.org/jira/browse/SPARK-3340) | Deprecate ADD\_JARS and ADD\_FILES |  Major | PySpark, Spark Core | Andrew Or | Andrey Zagrebin |
| [SPARK-3288](https://issues.apache.org/jira/browse/SPARK-3288) | All fields in TaskMetrics should be private and use getters/setters |  Major | Spark Core | Patrick Wendell | Ilya Ganelin |
| [SPARK-2996](https://issues.apache.org/jira/browse/SPARK-2996) | Standalone and Yarn have different settings for adding the user classpath first |  Major | Spark Core, YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-2945](https://issues.apache.org/jira/browse/SPARK-2945) | Allow specifying num of executors in the context configuration |  Major | Spark Core, YARN | Shay Rojansky | Tao Wang |
| [SPARK-2909](https://issues.apache.org/jira/browse/SPARK-2909) | Indexing for SparseVector in pyspark |  Minor | MLlib, PySpark | Joseph K. Bradley | Manoj Kumar |
| [SPARK-2672](https://issues.apache.org/jira/browse/SPARK-2672) | Support compression in wholeFile() |  Major | PySpark, Spark Core | Davies Liu | Davies Liu |
| [SPARK-2458](https://issues.apache.org/jira/browse/SPARK-2458) | Make failed application log visible on History Server |  Major | Web UI | Masayoshi TSUZUKI | Masayoshi TSUZUKI |
| [SPARK-2450](https://issues.apache.org/jira/browse/SPARK-2450) | Provide link to YARN executor logs on UI |  Major | Web UI, YARN | Bill Havanki | Kostas Sakellis |
| [SPARK-2261](https://issues.apache.org/jira/browse/SPARK-2261) | Spark application event logs are not very NameNode-friendly |  Minor | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-2165](https://issues.apache.org/jira/browse/SPARK-2165) | spark on yarn: add support for setting maxAppAttempts in the ApplicationSubmissionContext |  Major | YARN | Thomas Graves | Tao Wang |
| [SPARK-1714](https://issues.apache.org/jira/browse/SPARK-1714) | Take advantage of AMRMClient APIs to simplify logic in YarnAllocationHandler |  Major | YARN | Sandy Ryza | Sandy Ryza |
| [SPARK-1507](https://issues.apache.org/jira/browse/SPARK-1507) | Spark on Yarn: Add support for user to specify # cores for ApplicationMaster |  Major | YARN | Thomas Graves | Tao Wang |
| [SPARK-1450](https://issues.apache.org/jira/browse/SPARK-1450) | Specify the default zone in the EC2 script help |  Minor | EC2 | Tathagata Das | Sean Owen |
| [SPARK-1037](https://issues.apache.org/jira/browse/SPARK-1037) | the name of findTaskFromList & findTask in TaskSetManager.scala is confusing |  Minor | Spark Core | Nan Zhu | Ilya Ganelin |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-7044](https://issues.apache.org/jira/browse/SPARK-7044) | [Spark SQL] query would hang when using scripts in SQL statement |  Major | SQL | Yi Zhou | Cheng Hao |
| [SPARK-6182](https://issues.apache.org/jira/browse/SPARK-6182) | spark-parent pom needs to be published for both 2.10 and 2.11 |  Blocker | Build | Patrick Wendell | Sean Owen |
| [SPARK-6175](https://issues.apache.org/jira/browse/SPARK-6175) | Executor log links are using internal addresses in EC2; display `:0` when ephemeral ports are used |  Blocker | Web UI | Yin Huai | Josh Rosen |
| [SPARK-6149](https://issues.apache.org/jira/browse/SPARK-6149) | Spark SQL CLI doesn't work when compiled against Hive 12 with SBT because of runtime incompatibility issues caused by Guava 15 |  Critical | SQL | Cheng Lian | Cheng Lian |
| [SPARK-6144](https://issues.apache.org/jira/browse/SPARK-6144) | When in cluster mode using ADD JAR with a hdfs:// sourced jar will fail |  Blocker | Spark Core | Trystan Leftwich | Trystan Leftwich |
| [SPARK-6141](https://issues.apache.org/jira/browse/SPARK-6141) | Upgrade Breeze to 0.11 to fix convergence bug |  Critical | MLlib | DB Tsai | DB Tsai |
| [SPARK-6136](https://issues.apache.org/jira/browse/SPARK-6136) | Docker client library introduces Guava 17.0, which causes runtime binary incompatibilities |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-6134](https://issues.apache.org/jira/browse/SPARK-6134) | Fix wrong datatype for casting FloatType and default LongType value in defaultPrimitive |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-6121](https://issues.apache.org/jira/browse/SPARK-6121) | Python DataFrame type inference for LabeledPoint gets wrong type |  Critical | MLlib, PySpark, SQL | Joseph K. Bradley | Xiangrui Meng |
| [SPARK-6120](https://issues.apache.org/jira/browse/SPARK-6120) | DecisionTree.save uses too much Java heap space for default spark shell settings |  Major | MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-6114](https://issues.apache.org/jira/browse/SPARK-6114) | Explode on nested field fails |  Blocker | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-6082](https://issues.apache.org/jira/browse/SPARK-6082) | SparkSQL should fail gracefully when input data format doesn't match expectations |  Major | SQL | Kay Ousterhout | Cheng Lian |
| [SPARK-6080](https://issues.apache.org/jira/browse/SPARK-6080) | LogisticRegressionWithLBFGS in PySpark was assigned wrong "regType" parameter |  Major | MLlib, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-6074](https://issues.apache.org/jira/browse/SPARK-6074) | Assembly doesn't include pyspark sql files |  Blocker | PySpark, SQL | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-6073](https://issues.apache.org/jira/browse/SPARK-6073) | Need to refresh metastore cache after append data in CreateMetastoreDataSourceAsSelect |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-6070](https://issues.apache.org/jira/browse/SPARK-6070) | Yarn Shuffle Service jar packages too many dependencies |  Blocker | YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-6066](https://issues.apache.org/jira/browse/SPARK-6066) | Metadata in event log makes it very difficult for external libraries to parse event log |  Blocker | Spark Core | Kay Ousterhout | Andrew Or |
| [SPARK-6055](https://issues.apache.org/jira/browse/SPARK-6055) | Memory leak in pyspark sql due to incorrect equality check |  Blocker | PySpark, SQL | Davies Liu | Davies Liu |
| [SPARK-6052](https://issues.apache.org/jira/browse/SPARK-6052) | In JSON schema inference, we should always set containsNull of an ArrayType to true |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-6050](https://issues.apache.org/jira/browse/SPARK-6050) | Spark on YARN does not work --executor-cores is specified |  Blocker | YARN | Mridul Muralidharan | Marcelo Vanzin |
| [SPARK-6048](https://issues.apache.org/jira/browse/SPARK-6048) | SparkConf.translateConfKey should not translate on set |  Blocker | Spark Core | Andrew Or | Andrew Or |
| [SPARK-6040](https://issues.apache.org/jira/browse/SPARK-6040) | Fix the percent bug in tablesample |  Major | SQL | Yadong Qi | Yadong Qi |
| [SPARK-6027](https://issues.apache.org/jira/browse/SPARK-6027) | Make KafkaUtils work in Python with kafka-assembly provided as --jar or maven package provided as --packages |  Critical | PySpark, Streaming | Tathagata Das | Tathagata Das |
| [SPARK-6024](https://issues.apache.org/jira/browse/SPARK-6024) | When a data source table has too many columns, it's schema cannot be stored in metastore. |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-6023](https://issues.apache.org/jira/browse/SPARK-6023) | ParquetConversions fails to replace the destination MetastoreRelation of an InsertIntoTable node to ParquetRelation2 |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-6018](https://issues.apache.org/jira/browse/SPARK-6018) | NoSuchMethodError in Spark app is swallowed by YARN AM |  Minor | YARN | Cheolsoo Park | Cheolsoo Park |
| [SPARK-6016](https://issues.apache.org/jira/browse/SPARK-6016) | Cannot read the parquet table after overwriting the existing table when spark.sql.parquet.cacheMetadata=true |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-6010](https://issues.apache.org/jira/browse/SPARK-6010) | Exception thrown when reading Spark SQL generated Parquet files with different but compatible schemas |  Blocker | SQL | Cheng Lian | Cheng Lian |
| [SPARK-6007](https://issues.apache.org/jira/browse/SPARK-6007) | Add numRows param in DataFrame.show |  Minor | SQL | Jacky Li | Jacky Li |
| [SPARK-5996](https://issues.apache.org/jira/browse/SPARK-5996) | DataFrame.collect() doesn't recognize UDTs |  Blocker | MLlib, SQL | Xiangrui Meng | Michael Armbrust |
| [SPARK-5993](https://issues.apache.org/jira/browse/SPARK-5993) | Published Kafka-assembly JAR was empty in 1.3.0-RC1 |  Blocker | Build, Streaming | Tathagata Das | Tathagata Das |
| [SPARK-5984](https://issues.apache.org/jira/browse/SPARK-5984) | TimSort broken |  Minor | Spark Core | Reynold Xin | Evan Yu |
| [SPARK-5982](https://issues.apache.org/jira/browse/SPARK-5982) | Remove Local Read Time |  Blocker | Spark Core | Kay Ousterhout | Kay Ousterhout |
| [SPARK-5979](https://issues.apache.org/jira/browse/SPARK-5979) | `--packages` should not exclude spark streaming assembly jars for kafka and flume |  Blocker | Deploy, Spark Submit | Burak Yavuz | Burak Yavuz |
| [SPARK-5976](https://issues.apache.org/jira/browse/SPARK-5976) | Factors returned by ALS do not have partitioners associated. |  Critical | ML, MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-5973](https://issues.apache.org/jira/browse/SPARK-5973) | zip two rdd with AutoBatchedSerializer will fail |  Blocker | PySpark | Davies Liu | Davies Liu |
| [SPARK-5968](https://issues.apache.org/jira/browse/SPARK-5968) | Parquet warning in spark-shell |  Critical | SQL | Michael Armbrust | Cheng Lian |
| [SPARK-5967](https://issues.apache.org/jira/browse/SPARK-5967) | JobProgressListener.stageIdToActiveJobIds never cleared |  Blocker | Streaming, Web UI | Tathagata Das | Tathagata Das |
| [SPARK-5965](https://issues.apache.org/jira/browse/SPARK-5965) | Spark UI does not show main class when running app in standalone cluster mode |  Blocker | Deploy | Tathagata Das | Andrew Or |
| [SPARK-5952](https://issues.apache.org/jira/browse/SPARK-5952) | Failure to lock metastore client in tableExists() |  Blocker | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-5951](https://issues.apache.org/jira/browse/SPARK-5951) | Remove unreachable driver memory properties in yarn client mode (YarnClientSchedulerBackend) |  Trivial | YARN | Shekhar Bansal | Shekhar Bansal |
| [SPARK-5950](https://issues.apache.org/jira/browse/SPARK-5950) | Insert array into a metastore table saved as parquet should work when using datasource api |  Blocker | SQL | Liang-Chi Hsieh | Yin Huai |
| [SPARK-5939](https://issues.apache.org/jira/browse/SPARK-5939) | Make FPGrowth example app take parameters |  Minor | MLlib | Jacky Li | Jacky Li |
| [SPARK-5937](https://issues.apache.org/jira/browse/SPARK-5937) | ClientSuite must set SPARK\_YARN\_MODE to true to ensure correct SparkHadoopUtil implementation is used. |  Major | Tests, YARN | Hari Shreedharan | Hari Shreedharan |
| [SPARK-5926](https://issues.apache.org/jira/browse/SPARK-5926) | [SQL] DataFrame.explain() return false result for DDL command |  Major | SQL | Yanbo Liang | Yanbo Liang |
| [SPARK-5910](https://issues.apache.org/jira/browse/SPARK-5910) | DataFrame.selectExpr("col as newName") does not work |  Blocker | SQL | Yin Huai | Michael Armbrust |
| [SPARK-5900](https://issues.apache.org/jira/browse/SPARK-5900) | Wrap the results returned by PIC and FPGrowth in case classes |  Major | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-5898](https://issues.apache.org/jira/browse/SPARK-5898) | Can't create DataFrame from Pandas data frame |  Critical | SQL | Michael Armbrust | Davies Liu |
| [SPARK-5896](https://issues.apache.org/jira/browse/SPARK-5896) | toDF in python doesn't work with tuple/list w/o names |  Critical | SQL | Michael Armbrust | Davies Liu |
| [SPARK-5889](https://issues.apache.org/jira/browse/SPARK-5889) | remove pid file in spark-daemon.sh after killing the process. |  Minor | Deploy | Zhan Zhang | Zhan Zhang |
| [SPARK-5878](https://issues.apache.org/jira/browse/SPARK-5878) | Python DataFrame.repartition() is broken |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-5875](https://issues.apache.org/jira/browse/SPARK-5875) | logical.Project should not be resolved if it contains aggregates or generators |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-5873](https://issues.apache.org/jira/browse/SPARK-5873) | Can't see partially analyzed plans |  Blocker | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-5872](https://issues.apache.org/jira/browse/SPARK-5872) | pyspark shell should start up with SQL/HiveContext |  Blocker | SQL | Michael Armbrust | Davies Liu |
| [SPARK-5871](https://issues.apache.org/jira/browse/SPARK-5871) | Explain in python should output using python |  Critical | SQL | Michael Armbrust | Davies Liu |
| [SPARK-5868](https://issues.apache.org/jira/browse/SPARK-5868) | Python UDFs broken by analysis check in HiveContext |  Blocker | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-5858](https://issues.apache.org/jira/browse/SPARK-5858) | Using first() to get feature size causes performance regression |  Critical | MLlib, PySpark | Xiangrui Meng | Xiangrui Meng |
| [SPARK-5852](https://issues.apache.org/jira/browse/SPARK-5852) | Fail to convert a newly created empty metastore parquet table to a data source parquet table. |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-5850](https://issues.apache.org/jira/browse/SPARK-5850) | Remove experimental label for Scala 2.11 and FlumePollingStream |  Blocker | Spark Core, Streaming | Patrick Wendell | Patrick Wendell |
| [SPARK-5849](https://issues.apache.org/jira/browse/SPARK-5849) | Handle more types of invalid JSON requests in SubmitRestProtocolMessage.parseAction |  Critical | Spark Submit | Josh Rosen | Josh Rosen |
| [SPARK-5848](https://issues.apache.org/jira/browse/SPARK-5848) | ConsoleProgressBar timer thread leaks SparkContext |  Major | Spark Shell | Matt Whelan | Matt Whelan |
| [SPARK-5846](https://issues.apache.org/jira/browse/SPARK-5846) | Spark SQL does not correctly set job description and scheduler pool |  Critical | SQL | Kay Ousterhout | Kay Ousterhout |
| [SPARK-5841](https://issues.apache.org/jira/browse/SPARK-5841) | Memory leak in DiskBlockManager |  Major | Block Manager | Matt Whelan | Matt Whelan |
| [SPARK-5840](https://issues.apache.org/jira/browse/SPARK-5840) | HiveContext cannot be serialized due to tuple extraction |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-5839](https://issues.apache.org/jira/browse/SPARK-5839) | HiveMetastoreCatalog does not recognize table names and aliases of data source tables. |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-5833](https://issues.apache.org/jira/browse/SPARK-5833) | Adds REFRESH TABLE command to refresh external data sources tables |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-5826](https://issues.apache.org/jira/browse/SPARK-5826) | JavaStreamingContext.fileStream cause Configuration NotSerializableException |  Critical | Streaming | Littlestar | Saisai Shao |
| [SPARK-5825](https://issues.apache.org/jira/browse/SPARK-5825) | Failure stopping Services while command line argument is too long |  Critical | Deploy | Cheng Hao | Cheng Hao |
| [SPARK-5824](https://issues.apache.org/jira/browse/SPARK-5824) | CTAS should set null format in hive-0.13.1 |  Major | SQL | Adrian Wang | Adrian Wang |
| [SPARK-5822](https://issues.apache.org/jira/browse/SPARK-5822) | Add add-source goal in Scala plugin for Eclipse |  Minor | Build | Gang Li | Gang Li |
| [SPARK-5816](https://issues.apache.org/jira/browse/SPARK-5816) | Add huge backward compatibility warning in DriverWrapper |  Critical | Deploy, Spark Core | Andrew Or | Andrew Or |
| [SPARK-5815](https://issues.apache.org/jira/browse/SPARK-5815) | Deprecate SVDPlusPlus APIs that expose DoubleMatrix from JBLAS |  Major | GraphX | Xiangrui Meng | Sean Owen |
| [SPARK-5810](https://issues.apache.org/jira/browse/SPARK-5810) | Maven Coordinate Inclusion failing in pySpark |  Blocker | Deploy, PySpark | Burak Yavuz | Josh Rosen |
| [SPARK-5795](https://issues.apache.org/jira/browse/SPARK-5795) | api.java.JavaPairDStream.saveAsNewAPIHadoopFiles may not friendly to java |  Critical | Streaming | Littlestar | Sean Owen |
| [SPARK-5788](https://issues.apache.org/jira/browse/SPARK-5788) | Capture exceptions in Python write thread |  Blocker | PySpark | Davies Liu | Davies Liu |
| [SPARK-5775](https://issues.apache.org/jira/browse/SPARK-5775) | GenericRow cannot be cast to SpecificMutableRow when nested data and partitioned table |  Blocker | SQL | Ayoub Benali | Cheng Lian |
| [SPARK-5767](https://issues.apache.org/jira/browse/SPARK-5767) | Migrate Parquet data source to the write support of data source API |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-5762](https://issues.apache.org/jira/browse/SPARK-5762) | Shuffle write time is incorrect for sort-based shuffle |  Major | Spark Core | Kay Ousterhout | Kay Ousterhout |
| [SPARK-5761](https://issues.apache.org/jira/browse/SPARK-5761) | Revamp StandaloneRestProtocolSuite |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-5760](https://issues.apache.org/jira/browse/SPARK-5760) | StandaloneRestClient/Server error behavior is incorrect |  Critical | Spark Core | Andrew Or | Andrew Or |
| [SPARK-5759](https://issues.apache.org/jira/browse/SPARK-5759) | ExecutorRunnable should catch YarnException while NMClient start container |  Major | YARN | Lianhui Wang | Lianhui Wang |
| [SPARK-5751](https://issues.apache.org/jira/browse/SPARK-5751) | Flaky test: o.a.s.sql.hive.thriftserver.HiveThriftServer2Suite sometimes times out |  Critical | SQL | Cheng Lian | Cheng Lian |
| [SPARK-5749](https://issues.apache.org/jira/browse/SPARK-5749) | Fix Bash word splitting bugs in compute-classpath.sh |  Major | Build | Nicholas Chammas | Venkata Ramana G |
| [SPARK-5746](https://issues.apache.org/jira/browse/SPARK-5746) | Check invalid cases for the write path of data source API |  Blocker | SQL | Cheng Lian | Cheng Lian |
| [SPARK-5741](https://issues.apache.org/jira/browse/SPARK-5741) | Support the path contains comma in HiveContext |  Major | SQL | Yadong Qi | Yadong Qi |
| [SPARK-5733](https://issues.apache.org/jira/browse/SPARK-5733) | Error Link in Pagination of HistroyPage when showing Incomplete Applications |  Minor | Web UI | Liangliang Gu | Liangliang Gu |
| [SPARK-5731](https://issues.apache.org/jira/browse/SPARK-5731) | Flaky test: o.a.s.streaming.kafka.DirectKafkaStreamSuite.basic stream receiving with multiple topics and smallest starting offset |  Blocker | Streaming, Tests | Patrick Wendell | Tathagata Das |
| [SPARK-5729](https://issues.apache.org/jira/browse/SPARK-5729) | Potential NPE in StandaloneRestServer if user specifies bad path |  Critical | Spark Core | Andrew Or | Andrew Or |
| [SPARK-5728](https://issues.apache.org/jira/browse/SPARK-5728) | MQTTStreamSuite leaves behind ActiveMQ database files |  Trivial | Streaming, Tests | Sean Owen | Sean Owen |
| [SPARK-5725](https://issues.apache.org/jira/browse/SPARK-5725) | ParquetRelation2.equals throws when compared with non-Parquet relations |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-5703](https://issues.apache.org/jira/browse/SPARK-5703) | AllJobsPage throws empty.max error |  Critical | Spark Core | Andrew Or | Andrew Or |
| [SPARK-5701](https://issues.apache.org/jira/browse/SPARK-5701) | Only set ShuffleReadMetrics when task does a shuffle |  Minor | Spark Core | Kay Ousterhout | Kay Ousterhout |
| [SPARK-5700](https://issues.apache.org/jira/browse/SPARK-5700) | Bump jets3t version from 0.9.2 to 0.9.3 in hadoop-2.3 and hadoop-2.4 profiles |  Major | SQL, Tests | Cheng Lian | Cheng Lian |
| [SPARK-5699](https://issues.apache.org/jira/browse/SPARK-5699) | Thrift server test suites are not executed even if SQL code is touched |  Major | Tests | Cheng Lian | Cheng Lian |
| [SPARK-5698](https://issues.apache.org/jira/browse/SPARK-5698) | Dynamic allocation: do not allow user to request a negative delta |  Critical | Spark Core, YARN | Andrew Or | Andrew Or |
| [SPARK-5696](https://issues.apache.org/jira/browse/SPARK-5696) | HiveThriftServer2Suite fails because of extra log4j.properties in the driver classpath |  Critical | SQL | Cheng Lian | Cheng Lian |
| [SPARK-5691](https://issues.apache.org/jira/browse/SPARK-5691) | Preventing duplicate registering of an application has incorrect logic |  Major | Deploy | Matt Cheah | Matthew Cheah |
| [SPARK-5690](https://issues.apache.org/jira/browse/SPARK-5690) | Flaky test: o.a.s.deploy.rest.StandaloneRestSubmitSuite.simple submit until completion |  Critical | Tests | Patrick Wendell | Andrew Or |
| [SPARK-5679](https://issues.apache.org/jira/browse/SPARK-5679) | Flaky tests in o.a.s.metrics.InputOutputMetricsSuite: input metrics with interleaved reads and input metrics with mixed read method |  Critical | Spark Core, Tests | Patrick Wendell | Josh Rosen |
| [SPARK-5672](https://issues.apache.org/jira/browse/SPARK-5672) | Don't return `ERROR 500` when have missing args |  Minor | Web UI | Kirill A. Korinskiy | Kirill A. Korinskiy |
| [SPARK-5667](https://issues.apache.org/jira/browse/SPARK-5667) | Remove version from spark-ec2 example. |  Trivial | Documentation | Miguel Peralvo | Miguel Peralvo |
| [SPARK-5664](https://issues.apache.org/jira/browse/SPARK-5664) | Restore stty settings when exiting for launching spark-shell from SBT |  Major | Build | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-5662](https://issues.apache.org/jira/browse/SPARK-5662) | Flaky test: org.apache.spark.streaming.kafka.KafkaDirectStreamSuite.multi topic stream |  Critical | Streaming | Patrick Wendell | Tathagata Das |
| [SPARK-5661](https://issues.apache.org/jira/browse/SPARK-5661) | function hasShutdownDeleteTachyonDir should use shutdownDeleteTachyonPaths to determine whether contains file |  Minor | Spark Core | xukun | xukun |
| [SPARK-5655](https://issues.apache.org/jira/browse/SPARK-5655) | YARN Auxiliary Shuffle service can't access shuffle files on Hadoop cluster configured in secure mode |  Critical | YARN | Andrew Rowson | Andrew Rowson |
| [SPARK-5653](https://issues.apache.org/jira/browse/SPARK-5653) | in ApplicationMaster rename isDriver to isClusterMode |  Major | YARN | Lianhui Wang | Lianhui Wang |
| [SPARK-5636](https://issues.apache.org/jira/browse/SPARK-5636) | Lower dynamic allocation add interval |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-5619](https://issues.apache.org/jira/browse/SPARK-5619) | Support 'show roles' in HiveContext |  Major | SQL | Yadong Qi | Yadong Qi |
| [SPARK-5617](https://issues.apache.org/jira/browse/SPARK-5617) | test failure of SQLQuerySuite |  Major | SQL | Fei Wang | Fei Wang |
| [SPARK-5613](https://issues.apache.org/jira/browse/SPARK-5613) | YarnClientSchedulerBackend fails to get application report when yarn restarts |  Minor | YARN | Kashish Jain | Kashish Jain |
| [SPARK-5609](https://issues.apache.org/jira/browse/SPARK-5609) | PythonMLlibAPI trainGaussianMixture seed should use Java type |  Trivial | MLlib, PySpark | Joseph K. Bradley | Xiangrui Meng |
| [SPARK-5607](https://issues.apache.org/jira/browse/SPARK-5607) | NullPointerException in objenesis |  Major | Tests | Reynold Xin | Patrick Wendell |
| [SPARK-5606](https://issues.apache.org/jira/browse/SPARK-5606) | Support plus sign in HiveContext |  Major | SQL | Yadong Qi | Yadong Qi |
| [SPARK-5600](https://issues.apache.org/jira/browse/SPARK-5600) | Sort order of unfinished apps can be wrong in History Server |  Minor | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-5593](https://issues.apache.org/jira/browse/SPARK-5593) | Replace BlockManager listener with Executor listener in ExecutorAllocationListener |  Major | Spark Core | Lianhui Wang | Lianhui Wang |
| [SPARK-5585](https://issues.apache.org/jira/browse/SPARK-5585) | Flaky test: Python regression |  Critical | MLlib | Patrick Wendell | Davies Liu |
| [SPARK-5582](https://issues.apache.org/jira/browse/SPARK-5582) | History server does not list anything if log root contains an empty directory |  Minor | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-5570](https://issues.apache.org/jira/browse/SPARK-5570) | No docs stating that `new SparkConf().set("spark.driver.memory", ...) will not work |  Minor | Documentation | Tathagata Das | Ilya Ganelin |
| [SPARK-5557](https://issues.apache.org/jira/browse/SPARK-5557) | Servlet API classes now missing after jetty shading |  Blocker | Spark Core | Guoqiang Li | Patrick Wendell |
| [SPARK-5555](https://issues.apache.org/jira/browse/SPARK-5555) | Enable UISeleniumSuite tests |  Major | Web UI | Josh Rosen | Josh Rosen |
| [SPARK-5548](https://issues.apache.org/jira/browse/SPARK-5548) | Flaky test: o.a.s.util.AkkaUtilsSuite.remote fetch ssl on - untrusted server |  Critical | Spark Core | Patrick Wendell | Jacek Lewandowski |
| [SPARK-5546](https://issues.apache.org/jira/browse/SPARK-5546) | Improve path to Kafka assembly when trying Kafka Python API |  Blocker | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-5543](https://issues.apache.org/jira/browse/SPARK-5543) | Remove unused import JsonUtil from from org.apache.spark.util.JsonProtocol.scala which fails builds with older versions of hadoop-core |  Minor | Spark Core | Nathan McCarthy | Nathan McCarthy |
| [SPARK-5542](https://issues.apache.org/jira/browse/SPARK-5542) | Decouple publishing, packaging, and tagging in release script |  Major | Build | Patrick Wendell | Patrick Wendell |
| [SPARK-5538](https://issues.apache.org/jira/browse/SPARK-5538) | CachedTableSuite failure due to unpersisting RDDs in a non-blocking way |  Critical | SQL | Cheng Lian | Reynold Xin |
| [SPARK-5534](https://issues.apache.org/jira/browse/SPARK-5534) | EdgeRDD, VertexRDD getStorageLevel return bad values |  Major | GraphX | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-5532](https://issues.apache.org/jira/browse/SPARK-5532) | Repartitioning DataFrame causes saveAsParquetFile to fail with VectorUDT |  Critical | MLlib, SQL | Joseph K. Bradley | Michael Armbrust |
| [SPARK-5530](https://issues.apache.org/jira/browse/SPARK-5530) | ApplicationMaster can't kill executor when using dynamicAllocation |  Critical | Spark Core | meiyoula | meiyoula |
| [SPARK-5515](https://issues.apache.org/jira/browse/SPARK-5515) | Build fails with spark-ganglia-lgpl profile |  Blocker | Build | Kousuke Saruta | Kousuke Saruta |
| [SPARK-5509](https://issues.apache.org/jira/browse/SPARK-5509) | EqualTo operator doesn't handle binary type properly |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-5504](https://issues.apache.org/jira/browse/SPARK-5504) | ScalaReflection.convertToCatalyst should support nested arrays |  Minor | SQL | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-5496](https://issues.apache.org/jira/browse/SPARK-5496) | Allow both "classification" and "Classification" in Algo for trees |  Major | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-5492](https://issues.apache.org/jira/browse/SPARK-5492) | Thread statistics can break with older Hadoop versions |  Blocker | Spark Core | Patrick Wendell | Sandy Ryza |
| [SPARK-5470](https://issues.apache.org/jira/browse/SPARK-5470) | use defaultClassLoader of Serializer to load classes of classesToRegister in KryoSerializer |  Major | Spark Core | Lianhui Wang | Lianhui Wang |
| [SPARK-5466](https://issues.apache.org/jira/browse/SPARK-5466) | Build Error caused by Guava shading in Spark |  Blocker | Build | Jian Zhou | Marcelo Vanzin |
| [SPARK-5464](https://issues.apache.org/jira/browse/SPARK-5464) | Calling help() on a Python DataFrame fails with "cannot resolve column name \_\_name\_\_" error |  Blocker | PySpark, SQL | Josh Rosen | Josh Rosen |
| [SPARK-5462](https://issues.apache.org/jira/browse/SPARK-5462) | Catalyst UnresolvedException "Invalid call to qualifiers on unresolved object" error when accessing fields in DataFrames returned from sqlCtx.sql() |  Blocker | SQL | Josh Rosen | Josh Rosen |
| [SPARK-5458](https://issues.apache.org/jira/browse/SPARK-5458) | Refer to aggregateByKey instead of combineByKey in docs |  Trivial | Documentation | Sandy Ryza | Sandy Ryza |
| [SPARK-5457](https://issues.apache.org/jira/browse/SPARK-5457) | Add missing DSL for ApproxCountDistinct. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-5454](https://issues.apache.org/jira/browse/SPARK-5454) | [SQL] Self join with ArrayType columns problems |  Blocker | SQL | Pierre Borckmans | Michael Armbrust |
| [SPARK-5444](https://issues.apache.org/jira/browse/SPARK-5444) | 'spark.blockManager.port' conflict in netty service |  Major | Block Manager | SaintBacchus | SaintBacchus |
| [SPARK-5441](https://issues.apache.org/jira/browse/SPARK-5441) | SerDeUtil Pair RDD to python conversion doesn't accept empty RDDs |  Major | PySpark | Michael Nazario | Michael Nazario |
| [SPARK-5437](https://issues.apache.org/jira/browse/SPARK-5437) | DriverSuite and SparkSubmitSuite incorrect timeout behavior |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-5434](https://issues.apache.org/jira/browse/SPARK-5434) | Preserve spaces in path to spark-ec2 |  Minor | EC2 | Nicholas Chammas | Nicholas Chammas |
| [SPARK-5425](https://issues.apache.org/jira/browse/SPARK-5425) | ConcurrentModificationException during SparkConf creation |  Major | Spark Core | Jacek Lewandowski | Jacek Lewandowski |
| [SPARK-5416](https://issues.apache.org/jira/browse/SPARK-5416) | Initialize Executor.threadPool before ExecutorSource |  Minor | Spark Core | Ryan Williams | Ryan Williams |
| [SPARK-5406](https://issues.apache.org/jira/browse/SPARK-5406) | LocalLAPACK mode in RowMatrix.computeSVD should have much smaller upper bound |  Minor | MLlib | yuhao yang | yuhao yang |
| [SPARK-5401](https://issues.apache.org/jira/browse/SPARK-5401) | Executor ID should be set before MetricsSystem is created |  Major | Spark Core | Ryan Williams | Ryan Williams |
| [SPARK-5396](https://issues.apache.org/jira/browse/SPARK-5396) | Syntax error in spark scripts on windows. |  Critical | Spark Shell | Vladimir Protsenko | Masayoshi TSUZUKI |
| [SPARK-5395](https://issues.apache.org/jira/browse/SPARK-5395) | Large number of Python workers causing resource depletion |  Major | PySpark | Sven Krasser | Davies Liu |
| [SPARK-5388](https://issues.apache.org/jira/browse/SPARK-5388) | Provide a stable application submission gateway in standalone cluster mode |  Blocker | Spark Core | Andrew Or | Andrew Or |
| [SPARK-5384](https://issues.apache.org/jira/browse/SPARK-5384) | Vectors.sqdist return inconsistent result for sparse/dense vectors when the vectors have different lengths |  Minor | MLlib | yuhao yang | yuhao yang |
| [SPARK-5380](https://issues.apache.org/jira/browse/SPARK-5380) | There will be an ArrayIndexOutOfBoundsException if the format of the source file is wrong |  Minor | GraphX | Leo\_lh | Leo\_lh |
| [SPARK-5363](https://issues.apache.org/jira/browse/SPARK-5363) | Spark 1.2 freeze without error notification |  Blocker | PySpark | Tassilo Klein | Davies Liu |
| [SPARK-5361](https://issues.apache.org/jira/browse/SPARK-5361) | Multiple Java RDD \<-\> Python RDD conversions not working correctly |  Major | PySpark | Winston Chen | Winston Chen |
| [SPARK-5357](https://issues.apache.org/jira/browse/SPARK-5357) | Upgrade from commons-codec 1.5 |  Minor | Spark Core | Matthew Whelan | Matt Whelan |
| [SPARK-5355](https://issues.apache.org/jira/browse/SPARK-5355) | SparkConf is not thread-safe |  Blocker | Spark Core | Davies Liu | Davies Liu |
| [SPARK-5345](https://issues.apache.org/jira/browse/SPARK-5345) | Flaky test: o.a.s.deploy.history.FsHistoryProviderSuite |  Critical | Deploy, Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-5344](https://issues.apache.org/jira/browse/SPARK-5344) | HistoryServer cannot recognize that inprogress file was renamed to completed file |  Major | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-5343](https://issues.apache.org/jira/browse/SPARK-5343) | ShortestPaths traverses backwards |  Major | GraphX | Michael Malak | Brennon York |
| [SPARK-5339](https://issues.apache.org/jira/browse/SPARK-5339) | build/mvn doesn't work because of invalid URL for maven's tgz. |  Blocker | Build | Kousuke Saruta | Kousuke Saruta |
| [SPARK-5336](https://issues.apache.org/jira/browse/SPARK-5336) | spark.executor.cores must not be less than spark.task.cpus |  Major | YARN | Tao Wang | Tao Wang |
| [SPARK-5335](https://issues.apache.org/jira/browse/SPARK-5335) | Destroying cluster in VPC with "--delete-groups" fails to remove security groups |  Major | EC2 | Vladimir Grigor | Vladimir Grigor |
| [SPARK-5333](https://issues.apache.org/jira/browse/SPARK-5333) | [Mesos] MesosTaskLaunchData occurs BufferUnderflowException |  Blocker | Mesos | Jongyoul Lee | Jongyoul Lee |
| [SPARK-5329](https://issues.apache.org/jira/browse/SPARK-5329) | UIWorkloadGenerator should stop SparkContext. |  Major | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-5324](https://issues.apache.org/jira/browse/SPARK-5324) | Results of describe can't be queried |  Major | SQL | Michael Armbrust | Li Sheng |
| [SPARK-5308](https://issues.apache.org/jira/browse/SPARK-5308) | MD5 / SHA1 hash format doesn't match standard Maven output |  Minor | Build | Kuldeep | Sean Owen |
| [SPARK-5307](https://issues.apache.org/jira/browse/SPARK-5307) | Add utility to help with NotSerializableException debugging |  Major | Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-5297](https://issues.apache.org/jira/browse/SPARK-5297) | JavaStreamingContext.fileStream won't work because type info isn't propagated |  Major | Streaming | Leonidas Fegaras | Saisai Shao |
| [SPARK-5282](https://issues.apache.org/jira/browse/SPARK-5282) | RowMatrix easily gets int overflow in the memory size warning |  Trivial | MLlib | yuhao yang | yuhao yang |
| [SPARK-5278](https://issues.apache.org/jira/browse/SPARK-5278) | check ambiguous reference to fields in Spark SQL is incompleted |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-5275](https://issues.apache.org/jira/browse/SPARK-5275) | pyspark.streaming is not included in assembly jar |  Blocker | PySpark | Davies Liu | Davies Liu |
| [SPARK-5268](https://issues.apache.org/jira/browse/SPARK-5268) | CoarseGrainedExecutorBackend exits for irrelevant DisassociatedEvent |  Major | Spark Core | Nan Zhu | Nan Zhu |
| [SPARK-5252](https://issues.apache.org/jira/browse/SPARK-5252) | Streaming StatefulNetworkWordCount example hangs |  Major | Examples, PySpark, Streaming | Lutz Buech | Davies Liu |
| [SPARK-5239](https://issues.apache.org/jira/browse/SPARK-5239) | JdbcRDD throws "java.lang.AbstractMethodError: oracle.jdbc.driver.xxxxxx.isClosed()Z" |  Minor | Spark Core | Gankun Luo | Gankun Luo |
| [SPARK-5231](https://issues.apache.org/jira/browse/SPARK-5231) | History Server shows wrong job submission time. |  Major | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-5227](https://issues.apache.org/jira/browse/SPARK-5227) | InputOutputMetricsSuite "input metrics when reading text file with multiple splits" test fails in branch-1.2 SBT Jenkins build w/hadoop1.0 and hadoop2.0 profiles |  Blocker | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-5224](https://issues.apache.org/jira/browse/SPARK-5224) | parallelize list/ndarray is really slow |  Blocker | PySpark | Davies Liu | Davies Liu |
| [SPARK-5223](https://issues.apache.org/jira/browse/SPARK-5223) | Use pickle instead of MapConvert and ListConvert in MLlib Python API |  Critical | MLlib, PySpark | Davies Liu | Davies Liu |
| [SPARK-5219](https://issues.apache.org/jira/browse/SPARK-5219) | Race condition in TaskSchedulerImpl and TaskSetManager |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-5211](https://issues.apache.org/jira/browse/SPARK-5211) | Restore HiveMetastoreTypes.toDataType |  Critical | SQL | Yin Huai | Yin Huai |
| [SPARK-5202](https://issues.apache.org/jira/browse/SPARK-5202) | HiveContext doesn't support the Variables Substitution |  Major | SQL | Cheng Hao | Cheng Hao |
| [SPARK-5201](https://issues.apache.org/jira/browse/SPARK-5201) | ParallelCollectionRDD.slice(seq, numSlices) has int overflow when dealing with inclusive range |  Major | Spark Core | Xianjin YE | Xianjin YE |
| [SPARK-5195](https://issues.apache.org/jira/browse/SPARK-5195) | when hive table is query with alias  the cache data  lose effectiveness. |  Major | SQL | yixiaohua | yixiaohua |
| [SPARK-5187](https://issues.apache.org/jira/browse/SPARK-5187) | CACHE TABLE AS SELECT fails with Hive UDFs |  Blocker | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-5176](https://issues.apache.org/jira/browse/SPARK-5176) | Thrift server fails with confusing error message when deploy-mode is cluster |  Major | SQL | Tom Panning | Tom Panning |
| [SPARK-5172](https://issues.apache.org/jira/browse/SPARK-5172) | spark-examples-\*\*\*.jar shades a wrong Hadoop distribution |  Minor | Build | Shixiong Zhu | Sean Owen |
| [SPARK-5169](https://issues.apache.org/jira/browse/SPARK-5169) | fetch the correct max attempts |  Major | YARN | Tao Wang | Tao Wang |
| [SPARK-5153](https://issues.apache.org/jira/browse/SPARK-5153) | Flaky test: o.a.s.streaming.kafka.ReliableKafkaStreamSuite |  Critical | Streaming | Nan Zhu | Tathagata Das |
| [SPARK-5143](https://issues.apache.org/jira/browse/SPARK-5143) | spark-network-yarn 2.11 depends on spark-network-shuffle 2.10 |  Blocker | Build | Aniket Bhatnagar | Sean Owen |
| [SPARK-5141](https://issues.apache.org/jira/browse/SPARK-5141) | CaseInsensitiveMap throws "java.io.NotSerializableException" |  Minor | SQL | Gankun Luo | Gankun Luo |
| [SPARK-5132](https://issues.apache.org/jira/browse/SPARK-5132) | The name for get stage info atempt ID from Json was wrong |  Minor | Spark Core, Web UI | SuYan | SuYan |
| [SPARK-5130](https://issues.apache.org/jira/browse/SPARK-5130) | yarn-cluster mode should not be considered as client mode in spark-submit |  Major | Deploy | Tao Wang | Tao Wang |
| [SPARK-5119](https://issues.apache.org/jira/browse/SPARK-5119) | java.lang.ArrayIndexOutOfBoundsException on trying to train decision tree model |  Major | ML, MLlib | Vivek Kulkarni | Kai Sasaki |
| [SPARK-5108](https://issues.apache.org/jira/browse/SPARK-5108) | Need to make jackson dependency version consistent with hadoop-2.6.0. |  Major | Build | Zhan Zhang | Zhan Zhang |
| [SPARK-5096](https://issues.apache.org/jira/browse/SPARK-5096) | SparkBuild.scala assumes you are at the spark root dir |  Major | Build | Michael Armbrust | Michael Armbrust |
| [SPARK-5089](https://issues.apache.org/jira/browse/SPARK-5089) | Vector conversion broken for non-float64 arrays |  Major | MLlib, PySpark | Jeremy Freeman | Jeremy Freeman |
| [SPARK-5069](https://issues.apache.org/jira/browse/SPARK-5069) | Race condition in TaskSchedulerImpl.dagScheduler |  Minor | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-5052](https://issues.apache.org/jira/browse/SPARK-5052) | com.google.common.base.Optional binary has a wrong method signatures |  Major | Spark Core | Elmer Garduno | Elmer Garduno |
| [SPARK-5035](https://issues.apache.org/jira/browse/SPARK-5035) | Streaming ReceiverMessage trait should extend Serializable |  Critical | Streaming | Josh Rosen | Josh Rosen |
| [SPARK-5032](https://issues.apache.org/jira/browse/SPARK-5032) | MimaExcludes should not exclude GraphX |  Major | GraphX | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-5006](https://issues.apache.org/jira/browse/SPARK-5006) | spark.port.maxRetries doesn't work |  Major | Deploy | Tao Wang | Tao Wang |
| [SPARK-4998](https://issues.apache.org/jira/browse/SPARK-4998) | "train" methods in object DecisionTree cannot work when using java reflection |  Major | MLlib | Liu Jiongzhou | Liu Jiongzhou |
| [SPARK-4994](https://issues.apache.org/jira/browse/SPARK-4994) | Cleanup removed executors' ShuffleInfo in yarn shuffle service |  Major | Spark Core | Lianhui Wang | Lianhui Wang |
| [SPARK-4990](https://issues.apache.org/jira/browse/SPARK-4990) | Search SPARK\_CONF\_DIR first when --properties-file is not specified |  Minor | Deploy | Tao Wang | Tao Wang |
| [SPARK-4989](https://issues.apache.org/jira/browse/SPARK-4989) | wrong application configuration cause cluster down in standalone mode |  Critical | Deploy, Spark Core | Zhang, Liye | Zhang, Liye |
| [SPARK-4986](https://issues.apache.org/jira/browse/SPARK-4986) | Graceful shutdown for Spark Streaming does not work in Standalone cluster mode |  Blocker | Streaming | Jesper Lundgren | Jesper Lundgren |
| [SPARK-4983](https://issues.apache.org/jira/browse/SPARK-4983) | Add sleep() before tagging EC2 instances to allow instance metadata to propagate |  Minor | EC2 | Nicholas Chammas | Gen TANG |
| [SPARK-4973](https://issues.apache.org/jira/browse/SPARK-4973) | Local directory in the driver of client-mode continues remaining even if application finished when external shuffle is enabled |  Major | Block Manager, Spark Core | Kousuke Saruta | Kousuke Saruta |
| [SPARK-4966](https://issues.apache.org/jira/browse/SPARK-4966) | The MemoryOverhead value is not correct |  Major | YARN | meiyoula | meiyoula |
| [SPARK-4963](https://issues.apache.org/jira/browse/SPARK-4963) | SchemaRDD.sample may return wrong results |  Major | SQL | Cheng Lian | Yanbo Liang |
| [SPARK-4959](https://issues.apache.org/jira/browse/SPARK-4959) | Attributes are case sensitive when using a select query from a projection |  Blocker | SQL | Andy Konwinski | Cheng Hao |
| [SPARK-4955](https://issues.apache.org/jira/browse/SPARK-4955) | Dynamic allocation doesn't work in YARN cluster mode |  Blocker | YARN | Chengxiang Li | Lianhui Wang |
| [SPARK-4953](https://issues.apache.org/jira/browse/SPARK-4953) | Fix the description of building Spark with YARN |  Major | Documentation | Kousuke Saruta | Kousuke Saruta |
| [SPARK-4952](https://issues.apache.org/jira/browse/SPARK-4952) | Handle ConcurrentModificationExceptions in SparkEnv.environmentDetails |  Major | Spark Core, YARN | Guoqiang Li | Guoqiang Li |
| [SPARK-4951](https://issues.apache.org/jira/browse/SPARK-4951) | A busy executor may be killed when dynamicAllocation is enabled |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-4939](https://issues.apache.org/jira/browse/SPARK-4939) | Python updateStateByKey example hang in local mode |  Blocker | PySpark, Spark Core, Streaming | Davies Liu | Davies Liu |
| [SPARK-4923](https://issues.apache.org/jira/browse/SPARK-4923) | Add Developer API to REPL to allow re-publishing the REPL jar |  Critical | Build, Spark Shell | Peng Cheng | Chip Senkbeil |
| [SPARK-4914](https://issues.apache.org/jira/browse/SPARK-4914) | Two sets of datanucleus versions left in lib\_managed after running dev/run-tests |  Minor | Build | Cheng Lian | Cheng Lian |
| [SPARK-4908](https://issues.apache.org/jira/browse/SPARK-4908) | Spark SQL built for Hive 13 fails under concurrent metadata queries |  Blocker | SQL | David Ross | Cheng Lian |
| [SPARK-4907](https://issues.apache.org/jira/browse/SPARK-4907) | Inconsistent loss and gradient in LeastSquaresGradient compared with R |  Major | MLlib | DB Tsai | DB Tsai |
| [SPARK-4905](https://issues.apache.org/jira/browse/SPARK-4905) | Flaky test: o.a.s.streaming.flume.FlumeStreamSuite.flume input stream |  Critical | Streaming | Josh Rosen | Hari Shreedharan |
| [SPARK-4901](https://issues.apache.org/jira/browse/SPARK-4901) | Hot fix for the BytesWritable.copyBytes not exists in Hadoop1 |  Minor | SQL | Cheng Hao | Cheng Hao |
| [SPARK-4900](https://issues.apache.org/jira/browse/SPARK-4900) | MLlib SingularValueDecomposition ARPACK IllegalStateException |  Minor | MLlib | Mike Beyer | Sean Owen |
| [SPARK-4887](https://issues.apache.org/jira/browse/SPARK-4887) | Fix a bad unittest in LogisticRegressionSuite |  Major | MLlib | DB Tsai | DB Tsai |
| [SPARK-4882](https://issues.apache.org/jira/browse/SPARK-4882) | PySpark broadcast breaks when using KryoSerializer |  Major | PySpark | Fi | Josh Rosen |
| [SPARK-4877](https://issues.apache.org/jira/browse/SPARK-4877) | userClassPathFirst doesn't handle user classes inheriting from parent |  Major | Spark Core | Stephen Haberman | Stephen Haberman |
| [SPARK-4865](https://issues.apache.org/jira/browse/SPARK-4865) | Include temporary tables in SHOW TABLES |  Blocker | SQL | Misha Chernetsov | Yin Huai |
| [SPARK-4864](https://issues.apache.org/jira/browse/SPARK-4864) | Add documentation to Netty-based configs |  Major | Documentation | Aaron Davidson | Aaron Davidson |
| [SPARK-4856](https://issues.apache.org/jira/browse/SPARK-4856) | Null & empty string should not be considered as StringType at begining in Json schema inferring |  Major | SQL | Cheng Hao | Cheng Hao |
| [SPARK-4846](https://issues.apache.org/jira/browse/SPARK-4846) | When the vocabulary size is large, Word2Vec may yield "OutOfMemoryError: Requested array size exceeds VM limit" |  Minor | MLlib | Joseph Tang | Joseph Tang |
| [SPARK-4841](https://issues.apache.org/jira/browse/SPARK-4841) | Batch serializer bug in PySpark's RDD.zip |  Blocker | PySpark | Xiangrui Meng | Davies Liu |
| [SPARK-4837](https://issues.apache.org/jira/browse/SPARK-4837) | NettyBlockTransferService does not abide by spark.blockManager.port config option |  Blocker | Spark Core | Aaron Davidson | Aaron Davidson |
| [SPARK-4835](https://issues.apache.org/jira/browse/SPARK-4835) | Streaming saveAs\*HadoopFiles() methods may throw FileAlreadyExistsException during checkpoint recovery |  Critical | Streaming | Josh Rosen | Tathagata Das |
| [SPARK-4834](https://issues.apache.org/jira/browse/SPARK-4834) | Spark fails to clean up cache / lock files in local dirs |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-4832](https://issues.apache.org/jira/browse/SPARK-4832) | some other processes might take the daemon pid |  Minor | Deploy | Tao Wang | Tao Wang |
| [SPARK-4831](https://issues.apache.org/jira/browse/SPARK-4831) | Current directory always on classpath with spark-submit |  Minor | Deploy | Daniel Darabos | Daniel Darabos |
| [SPARK-4827](https://issues.apache.org/jira/browse/SPARK-4827) | Max iterations (100) reached for batch Resolution with deeply nested projects and project \*s |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-4826](https://issues.apache.org/jira/browse/SPARK-4826) | Possible flaky tests in WriteAheadLogBackedBlockRDDSuite: "java.lang.IllegalStateException: File exists and there is no append support!" |  Major | Streaming | Josh Rosen | Josh Rosen |
| [SPARK-4821](https://issues.apache.org/jira/browse/SPARK-4821) | pyspark.mllib.rand docs not generated correctly |  Major | Documentation, MLlib, PySpark | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-4818](https://issues.apache.org/jira/browse/SPARK-4818) | Join operation should use iterator/lazy evaluation |  Major | Spark Core | Johannes Simon | Shixiong Zhu |
| [SPARK-4814](https://issues.apache.org/jira/browse/SPARK-4814) | Enable assertions in SBT, Maven tests / AssertionError from Hive's LazyBinaryInteger |  Major | Spark Core, SQL | Sean Owen | Sean Owen |
| [SPARK-4812](https://issues.apache.org/jira/browse/SPARK-4812) | SparkPlan.codegenEnabled may be initialized to a wrong value |  Major | SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-4790](https://issues.apache.org/jira/browse/SPARK-4790) | Flaky test in ReceivedBlockTrackerSuite: "block addition, block to batch allocation, and cleanup with write ahead log" |  Major | Streaming | Josh Rosen | Tathagata Das |
| [SPARK-4772](https://issues.apache.org/jira/browse/SPARK-4772) | Accumulators leak memory, both temporarily and permanently |  Major | Spark Core | Nathan Kronenfeld | Nathan Kronenfeld |
| [SPARK-4771](https://issues.apache.org/jira/browse/SPARK-4771) | Document standalone --supervise feature |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-4770](https://issues.apache.org/jira/browse/SPARK-4770) | spark.scheduler.minRegisteredResourcesRatio documented default is incorrect for YARN |  Major | Documentation, YARN | Sandy Ryza | Sandy Ryza |
| [SPARK-4759](https://issues.apache.org/jira/browse/SPARK-4759) | Deadlock in complex spark job in local mode |  Critical | Spark Core | Davis Shepherd | Andrew Or |
| [SPARK-4755](https://issues.apache.org/jira/browse/SPARK-4755) | SQRT(negative value) should return null |  Major | SQL | Adrian Wang | Adrian Wang |
| [SPARK-4750](https://issues.apache.org/jira/browse/SPARK-4750) | Dynamic allocation - we need to synchronize kills |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-4737](https://issues.apache.org/jira/browse/SPARK-4737) | Prevent serialization errors from ever crashing the DAG scheduler |  Blocker | Spark Core | Patrick Wendell | Matthew Cheah |
| [SPARK-4735](https://issues.apache.org/jira/browse/SPARK-4735) | Spark SQL UDF doesn't support 0 arguments. |  Minor | SQL | Cheng Hao | Cheng Hao |
| [SPARK-4730](https://issues.apache.org/jira/browse/SPARK-4730) | Warn against deprecated YARN settings |  Major | YARN | Andrew Or | Andrew Or |
| [SPARK-4719](https://issues.apache.org/jira/browse/SPARK-4719) | Consolidate various narrow dep RDD classes with MapPartitionsRDD |  Major | Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-4697](https://issues.apache.org/jira/browse/SPARK-4697) | System properties should override environment variables |  Major | YARN | Tao Wang | Tao Wang |
| [SPARK-4691](https://issues.apache.org/jira/browse/SPARK-4691) | Restructure a few lines in shuffle code |  Minor | Shuffle | maji2014 | maji2014 |
| [SPARK-4687](https://issues.apache.org/jira/browse/SPARK-4687) | SparkContext#addFile doesn't keep file folder information |  Major | Spark Core | Jimmy Xiang | Sandy Ryza |
| [SPARK-4664](https://issues.apache.org/jira/browse/SPARK-4664) | Overflow of `maxFrameSizeBytes` |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-4660](https://issues.apache.org/jira/browse/SPARK-4660) | JavaSerializer uses wrong classloader |  Critical | Spark Core | Piotr Kołaczkowski | Piotr Kołaczkowski |
| [SPARK-4606](https://issues.apache.org/jira/browse/SPARK-4606) | SparkSubmitDriverBootstrapper does not propagate EOF to child JVM |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-4601](https://issues.apache.org/jira/browse/SPARK-4601) | Call site of jobs generated by streaming incorrect in Spark UI |  Major | Streaming | Tathagata Das | Tathagata Das |
| [SPARK-4595](https://issues.apache.org/jira/browse/SPARK-4595) | Spark MetricsServlet is not worked because of initialization ordering |  Blocker | Spark Core | Saisai Shao | Saisai Shao |
| [SPARK-4579](https://issues.apache.org/jira/browse/SPARK-4579) | Scheduling Delay appears negative |  Major | Web UI | Arun Ahuja | Sean Owen |
| [SPARK-4571](https://issues.apache.org/jira/browse/SPARK-4571) | History server shows negative time |  Major | Spark Core | Andrew Or | Masayoshi TSUZUKI |
| [SPARK-4569](https://issues.apache.org/jira/browse/SPARK-4569) | Rename "externalSorting" in Aggregator |  Trivial | Shuffle | Sandy Ryza | Ilya Ganelin |
| [SPARK-4553](https://issues.apache.org/jira/browse/SPARK-4553) | query for parquet table with string fields in spark sql hive get binary result |  Blocker | SQL | Fei Wang | Cheng Lian |
| [SPARK-4547](https://issues.apache.org/jira/browse/SPARK-4547) | OOM when making bins in BinaryClassificationMetrics |  Minor | MLlib | Sean Owen | Sean Owen |
| [SPARK-4520](https://issues.apache.org/jira/browse/SPARK-4520) | SparkSQL exception when reading certain columns from a parquet file |  Critical | SQL | sadhan sood | sadhan sood |
| [SPARK-4512](https://issues.apache.org/jira/browse/SPARK-4512) | Unresolved Attribute Exception for sort by |  Major | SQL | Cheng Hao | Cheng Hao |
| [SPARK-4507](https://issues.apache.org/jira/browse/SPARK-4507) | PR merge script should support closing multiple JIRA tickets |  Minor | Project Infra | Josh Rosen | Takayuki Hasegawa |
| [SPARK-4504](https://issues.apache.org/jira/browse/SPARK-4504) | run-example fails if multiple example jars present in target folder |  Minor | Examples | Venkata Ramana G | Venkata Ramana G |
| [SPARK-4493](https://issues.apache.org/jira/browse/SPARK-4493) | Don't pushdown Eq, NotEq, Lt, LtEq, Gt and GtEq predicates with nulls for Parquet |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-4465](https://issues.apache.org/jira/browse/SPARK-4465) | runAsSparkUser doesn't affect TaskRunner in Mesos environment at all. |  Critical | Deploy, Input/Output, Mesos | Jongyoul Lee | Jongyoul Lee |
| [SPARK-4461](https://issues.apache.org/jira/browse/SPARK-4461) | Pass java options to yarn master to handle system properties correctly. |  Major | YARN | Zhan Zhang | Zhan Zhang |
| [SPARK-4430](https://issues.apache.org/jira/browse/SPARK-4430) | Apache RAT Checks fail spuriously on test files |  Major | Build | Ryan Williams | Sean Owen |
| [SPARK-4377](https://issues.apache.org/jira/browse/SPARK-4377) | ZooKeeperPersistenceEngine: java.lang.IllegalStateException: Trying to deserialize a serialized ActorRef without an ActorSystem in scope. |  Blocker | Deploy, Spark Core | Josh Rosen | Prashant Sharma |
| [SPARK-4298](https://issues.apache.org/jira/browse/SPARK-4298) | The spark-submit cannot read Main-Class from Manifest. |  Major | Spark Core | Milan Straka | Brennon York |
| [SPARK-4296](https://issues.apache.org/jira/browse/SPARK-4296) | Throw "Expression not in GROUP BY" when using same expression in group by clause and  select clause |  Blocker | SQL | Shixiong Zhu | Cheng Lian |
| [SPARK-4282](https://issues.apache.org/jira/browse/SPARK-4282) | Stopping flag in YarnClientSchedulerBackend should be volatile |  Major | YARN | Kousuke Saruta | Kousuke Saruta |
| [SPARK-4267](https://issues.apache.org/jira/browse/SPARK-4267) | Failing to launch jobs on Spark on YARN with Hadoop 2.5.0 or later |  Blocker | YARN | Tsuyoshi Ozawa | Sean Owen |
| [SPARK-4215](https://issues.apache.org/jira/browse/SPARK-4215) | Allow requesting executors only on Yarn (for now) |  Critical | Spark Core, YARN | Andrew Or | Andrew Or |
| [SPARK-4180](https://issues.apache.org/jira/browse/SPARK-4180) | SparkContext constructor should throw exception if another SparkContext is already running |  Blocker | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-4161](https://issues.apache.org/jira/browse/SPARK-4161) | Spark shell class path is not correctly set if "spark.driver.extraClassPath" is set in defaults.conf |  Major | Spark Shell | Shay Seng | Guoqiang Li |
| [SPARK-4159](https://issues.apache.org/jira/browse/SPARK-4159) | Maven build doesn't run JUnit test suites |  Critical | Build | Patrick Wendell | Sean Owen |
| [SPARK-4092](https://issues.apache.org/jira/browse/SPARK-4092) | Input metrics don't work for coalesce()'d RDD's |  Critical | Spark Core | Patrick Wendell | Kostas Sakellis |
| [SPARK-4079](https://issues.apache.org/jira/browse/SPARK-4079) | Snappy bundled with Spark does not work on older Linux distributions |  Major | Spark Core | Marcelo Vanzin | Kostas Sakellis |
| [SPARK-4033](https://issues.apache.org/jira/browse/SPARK-4033) | Integer overflow when SparkPi is called with more than 25000 slices |  Major | Examples | SaintBacchus | SaintBacchus |
| [SPARK-4014](https://issues.apache.org/jira/browse/SPARK-4014) | TaskContext.attemptId returns taskId |  Minor | Spark Core | Yin Huai | Josh Rosen |
| [SPARK-4005](https://issues.apache.org/jira/browse/SPARK-4005) | handle message replies in receive instead of in the individual private methods |  Major | Spark Core | Zhang, Liye | Zhang, Liye |
| [SPARK-3955](https://issues.apache.org/jira/browse/SPARK-3955) | Different versions between jackson-mapper-asl and jackson-core-asl |  Major | Build, Spark Core, SQL | Jongyoul Lee | Jongyoul Lee |
| [SPARK-3926](https://issues.apache.org/jira/browse/SPARK-3926) | result of JavaRDD collectAsMap() is not serializable |  Major | Java API | Antoine Amend | Sean Owen |
| [SPARK-3891](https://issues.apache.org/jira/browse/SPARK-3891) | Support Hive Percentile UDAF with array of percentile values |  Major | SQL | Anand Mohan Tumuluri | Venkata Ramana G |
| [SPARK-3852](https://issues.apache.org/jira/browse/SPARK-3852) | Document spark.driver.extra\* configs |  Major | Documentation | Andrew Or | Sean Owen |
| [SPARK-3787](https://issues.apache.org/jira/browse/SPARK-3787) | Assembly jar name is wrong when we build with sbt omitting -Dhadoop.version |  Major | Build | Kousuke Saruta | Kousuke Saruta |
| [SPARK-3782](https://issues.apache.org/jira/browse/SPARK-3782) | Direct use of log4j in AkkaUtils interferes with certain logging configurations |  Major | Spark Core | Martin Gilday | Sean Owen |
| [SPARK-3779](https://issues.apache.org/jira/browse/SPARK-3779) | yarn spark.yarn.applicationMaster.waitTries config should be changed to a time period |  Major | YARN | Thomas Graves | Sandy Ryza |
| [SPARK-3778](https://issues.apache.org/jira/browse/SPARK-3778) | newAPIHadoopRDD doesn't properly pass credentials for secure hdfs on yarn |  Blocker | Spark Core | Thomas Graves | Thomas Graves |
| [SPARK-3698](https://issues.apache.org/jira/browse/SPARK-3698) | Case sensitive check in spark sql is incompleted. |  Major | SQL | Wenchen Fan | Michael Armbrust |
| [SPARK-3688](https://issues.apache.org/jira/browse/SPARK-3688) | LogicalPlan can't resolve column correctlly |  Major | SQL | Yi Tian | Yi Tian |
| [SPARK-3607](https://issues.apache.org/jira/browse/SPARK-3607) | ConnectionManager threads.max configs on the thread pools don't work |  Minor | Spark Core | Thomas Graves | Ilya Ganelin |
| [SPARK-3575](https://issues.apache.org/jira/browse/SPARK-3575) | Hive Schema is ignored when using convertMetastoreParquet |  Blocker | SQL | Michael Armbrust | Cheng Lian |
| [SPARK-3365](https://issues.apache.org/jira/browse/SPARK-3365) | Failure to save Lists to Parquet |  Blocker | SQL | Michael Armbrust | Cheng Lian |
| [SPARK-3290](https://issues.apache.org/jira/browse/SPARK-3290) | No unpersist callls in SVDPlusPlus |  Major | GraphX | Dou Wenjuan | Sean Owen |
| [SPARK-3060](https://issues.apache.org/jira/browse/SPARK-3060) | spark-shell.cmd doesn't accept application options in Windows OS |  Major | Windows | Masayoshi TSUZUKI | Masayoshi TSUZUKI |
| [SPARK-3039](https://issues.apache.org/jira/browse/SPARK-3039) | Spark assembly for new hadoop API (hadoop 2) contains avro-mapred for hadoop 1 API |  Critical | Build, Input/Output, Spark Core | Bertrand Bossy | Bertrand Bossy |
| [SPARK-2984](https://issues.apache.org/jira/browse/SPARK-2984) | FileNotFoundException on \_temporary directory |  Critical | Spark Core | Andrew Ash | Josh Rosen |
| [SPARK-2757](https://issues.apache.org/jira/browse/SPARK-2757) | Add Mima test for Spark Sink after 1.1.0 is released |  Major | Streaming | Hari Shreedharan | Hari Shreedharan |
| [SPARK-2472](https://issues.apache.org/jira/browse/SPARK-2472) | Spark SQL Thrift server sometimes assigns wrong job group name |  Minor | SQL | Cheng Lian | Kay Ousterhout |
| [SPARK-2313](https://issues.apache.org/jira/browse/SPARK-2313) | PySpark should accept port via a command line argument rather than STDIN |  Major | PySpark | Patrick Wendell | Josh Rosen |
| [SPARK-2075](https://issues.apache.org/jira/browse/SPARK-2075) | Anonymous classes are missing from Spark distribution |  Critical | Build, Spark Core | Paul R. Brown | Shixiong Zhu |
| [SPARK-1955](https://issues.apache.org/jira/browse/SPARK-1955) | VertexRDD can incorrectly assume index sharing |  Minor | GraphX | Ankur Dave | Brennon York |
| [SPARK-1953](https://issues.apache.org/jira/browse/SPARK-1953) | yarn client mode Application Master memory size is same as driver memory size |  Major | YARN | Thomas Graves | Tao Wang |
| [SPARK-1934](https://issues.apache.org/jira/browse/SPARK-1934) | "this" reference escape to "selectorThread" during construction in ConnectionManager |  Minor | Spark Core | Shixiong Zhu | Sean Owen |
| [SPARK-1911](https://issues.apache.org/jira/browse/SPARK-1911) | Warn users if their assembly jars are not built with Java 6 |  Major | Documentation | Andrew Or | Sean Owen |
| [SPARK-1825](https://issues.apache.org/jira/browse/SPARK-1825) | Windows Spark fails to work with Linux YARN |  Major | YARN | Taeyun Kim | Masayoshi TSUZUKI |
| [SPARK-1600](https://issues.apache.org/jira/browse/SPARK-1600) | flaky "recovery with file input stream" test in streaming.CheckpointSuite |  Major | Streaming | Nan Zhu | Josh Rosen |
| [SPARK-1302](https://issues.apache.org/jira/browse/SPARK-1302) | httpd doesn't start in spark-ec2 (cc2.8xlarge) |  Minor | EC2 | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-960](https://issues.apache.org/jira/browse/SPARK-960) | JobCancellationSuite "two jobs sharing the same stage" is broken |  Major | Spark Core | Mark Hamstra | Sean Owen |
| [SPARK-794](https://issues.apache.org/jira/browse/SPARK-794) | Remove sleep() in ClusterScheduler.stop |  Major | Scheduler | Matei Zaharia | Brennon York |
| [SPARK-785](https://issues.apache.org/jira/browse/SPARK-785) | ClosureCleaner not invoked on most PairRDDFunctions |  Major | Spark Core | Matei Zaharia | Sean Owen |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-5083](https://issues.apache.org/jira/browse/SPARK-5083) | Flaky test: o.a.s.scheduler.TaskResultGetterSuite |  Critical | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-5067](https://issues.apache.org/jira/browse/SPARK-5067) | testTaskInfo doesn't compare SparkListenerApplicationStart.appId |  Minor | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-4855](https://issues.apache.org/jira/browse/SPARK-4855) | Python tests for hypothesis testing |  Minor | MLlib, PySpark | Joseph K. Bradley | Ben Cook |
| [SPARK-4631](https://issues.apache.org/jira/browse/SPARK-4631) | Add real unit test for MQTT |  Critical | Streaming | Tathagata Das | Iulian Dragos |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-6097](https://issues.apache.org/jira/browse/SPARK-6097) | Support model save/load in Python's tree models |  Major | MLlib, PySpark | Xiangrui Meng | Xiangrui Meng |
| [SPARK-6053](https://issues.apache.org/jira/browse/SPARK-6053) | Support model save/load in Python's ALS. |  Minor | MLlib, PySpark | Xiangrui Meng | Xiangrui Meng |
| [SPARK-5994](https://issues.apache.org/jira/browse/SPARK-5994) | Python DataFrame documentation fixes |  Blocker | SQL | Reynold Xin | Davies Liu |
| [SPARK-5985](https://issues.apache.org/jira/browse/SPARK-5985) | sortBy -\> orderBy in Python |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-5935](https://issues.apache.org/jira/browse/SPARK-5935) | Accept MapType in the schema provided to a JSON dataset. |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-5904](https://issues.apache.org/jira/browse/SPARK-5904) | DataFrame methods with varargs do not work in Java |  Blocker | Java API, SQL | Joseph K. Bradley | Reynold Xin |
| [SPARK-5859](https://issues.apache.org/jira/browse/SPARK-5859) | fix Data Frame Python API |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-5853](https://issues.apache.org/jira/browse/SPARK-5853) | Schema support in Row |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-5765](https://issues.apache.org/jira/browse/SPARK-5765) | word split problem in run-example and compute-classpath |  Major | Examples | Venkata Ramana G | Venkata Ramana G |
| [SPARK-5752](https://issues.apache.org/jira/browse/SPARK-5752) | Don't implicitly convert RDDs directly to DataFrames |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-5734](https://issues.apache.org/jira/browse/SPARK-5734) | Allow creating a DataFrame from local Python data |  Major | SQL | Reynold Xin | Davies Liu |
| [SPARK-5704](https://issues.apache.org/jira/browse/SPARK-5704) | createDataFrame replace applySchema/inferSchema |  Major | PySpark, SQL | Davies Liu | Davies Liu |
| [SPARK-5702](https://issues.apache.org/jira/browse/SPARK-5702) | Allow short names for built-in data sources |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-5678](https://issues.apache.org/jira/browse/SPARK-5678) | DataFrame.to\_pandas |  Major | SQL | Reynold Xin | Davies Liu |
| [SPARK-5677](https://issues.apache.org/jira/browse/SPARK-5677) | Python DataFrame API remaining tasks |  Major | SQL | Reynold Xin | Davies Liu |
| [SPARK-5675](https://issues.apache.org/jira/browse/SPARK-5675) | XyzType companion object should subclass XyzType |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-5658](https://issues.apache.org/jira/browse/SPARK-5658) | Finalize DDL and write support APIs |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-5643](https://issues.apache.org/jira/browse/SPARK-5643) | Add a show method to print the content of a DataFrame in columnar format |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-5639](https://issues.apache.org/jira/browse/SPARK-5639) | Support DataFrame.renameColumn |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-5638](https://issues.apache.org/jira/browse/SPARK-5638) | Add a config flag to disable eager analysis of DataFrames |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-5612](https://issues.apache.org/jira/browse/SPARK-5612) | Move DataFrame implicit functions into SQLContext.implicits |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-5605](https://issues.apache.org/jira/browse/SPARK-5605) | Allow using String to specify colum name in DSL aggregate functions |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-5603](https://issues.apache.org/jira/browse/SPARK-5603) | Preinsert casting and renaming rule is needed in the Analyzer |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-5602](https://issues.apache.org/jira/browse/SPARK-5602) | Better support for creating DataFrame from local data collection |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-5598](https://issues.apache.org/jira/browse/SPARK-5598) | Model import/export for ALS |  Major | MLlib | Joseph K. Bradley | Xiangrui Meng |
| [SPARK-5597](https://issues.apache.org/jira/browse/SPARK-5597) | Model import/export for DecisionTree and ensembles |  Major | MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-5596](https://issues.apache.org/jira/browse/SPARK-5596) | Model import/export for GLMs and Naive Bayes |  Major | MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-5595](https://issues.apache.org/jira/browse/SPARK-5595) | In memory data cache should be invalidated after insert into/overwrite |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-5588](https://issues.apache.org/jira/browse/SPARK-5588) | support select/filter by SQL expression for Python DataFrame |  Critical | PySpark, SQL | Davies Liu | Davies Liu |
| [SPARK-5579](https://issues.apache.org/jira/browse/SPARK-5579) | Provide support for project using SQL expression |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-5578](https://issues.apache.org/jira/browse/SPARK-5578) | Provide a convenient way for Scala users to use UDFs |  Blocker | SQL | Reynold Xin | Reynold Xin |
| [SPARK-5577](https://issues.apache.org/jira/browse/SPARK-5577) | Create a convenient way for Python users to register SQL UDFs |  Major | SQL | Reynold Xin | Davies Liu |
| [SPARK-5573](https://issues.apache.org/jira/browse/SPARK-5573) | Support explode in DataFrame DSL |  Blocker | SQL | Reynold Xin | Michael Armbrust |
| [SPARK-5568](https://issues.apache.org/jira/browse/SPARK-5568) | Python API for the write support of the data source API |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-5554](https://issues.apache.org/jira/browse/SPARK-5554) | Add more tests and docs for DataFrame Python API |  Blocker | PySpark, SQL | Davies Liu | Davies Liu |
| [SPARK-5551](https://issues.apache.org/jira/browse/SPARK-5551) | Create type alias for SchemaRDD for source backward compatibility |  Blocker | SQL | Reynold Xin | Reynold Xin |
| [SPARK-5518](https://issues.apache.org/jira/browse/SPARK-5518) | Error messages for plans with invalid AttributeReferences |  Blocker | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-5514](https://issues.apache.org/jira/browse/SPARK-5514) | collect should call executeCollect |  Blocker | SQL | Reynold Xin | Reynold Xin |
| [SPARK-5501](https://issues.apache.org/jira/browse/SPARK-5501) | Write support for the data source API |  Blocker | SQL | Yin Huai | Yin Huai |
| [SPARK-5469](https://issues.apache.org/jira/browse/SPARK-5469) | Break sql.py into multiple files |  Major | SQL | Reynold Xin | Davies Liu |
| [SPARK-5468](https://issues.apache.org/jira/browse/SPARK-5468) | Remove Python LocalHiveContext |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-5448](https://issues.apache.org/jira/browse/SPARK-5448) | Make CacheManager a concrete class and field in SQLContext |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-5447](https://issues.apache.org/jira/browse/SPARK-5447) | Replace reference to SchemaRDD with DataFrame |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-5445](https://issues.apache.org/jira/browse/SPARK-5445) | Make sure DataFrame expressions are usable in Java |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-5420](https://issues.apache.org/jira/browse/SPARK-5420) | Cross-langauge load/store functions for creating and saving DataFrames |  Blocker | SQL | Patrick Wendell | Yin Huai |
| [SPARK-5323](https://issues.apache.org/jira/browse/SPARK-5323) | Row shouldn't extend Seq |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-5287](https://issues.apache.org/jira/browse/SPARK-5287) | Add defaultSizeOf to every data type |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-5279](https://issues.apache.org/jira/browse/SPARK-5279) | Use java.math.BigDecimal as the exposed Decimal type |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-5274](https://issues.apache.org/jira/browse/SPARK-5274) | Stabilize UDFRegistration API |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-5258](https://issues.apache.org/jira/browse/SPARK-5258) | Clean up exposed classes in sql.hive package |  Blocker | SQL | Reynold Xin | Reynold Xin |
| [SPARK-5247](https://issues.apache.org/jira/browse/SPARK-5247) | Enable javadoc/scaladoc for public classes in catalyst project |  Blocker | SQL | Reynold Xin | Michael Armbrust |
| [SPARK-5245](https://issues.apache.org/jira/browse/SPARK-5245) | Move Decimal from types.decimal to types package |  Major | SQL | Reynold Xin | Adrian Wang |
| [SPARK-5217](https://issues.apache.org/jira/browse/SPARK-5217) | Spark UI should report pending stages during job execution on AllStagesPage. |  Major | Spark Core, Web UI | Prashant Sharma | Prashant Sharma |
| [SPARK-5214](https://issues.apache.org/jira/browse/SPARK-5214) | Add EventLoop and change DAGScheduler to an EventLoop |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-5193](https://issues.apache.org/jira/browse/SPARK-5193) | Make Spark SQL API usable in Java and remove the Java-specific API |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-5183](https://issues.apache.org/jira/browse/SPARK-5183) | Document data source API |  Critical | Documentation, SQL | Yin Huai | Michael Armbrust |
| [SPARK-5168](https://issues.apache.org/jira/browse/SPARK-5168) | Make SQLConf a field rather than mixin in SQLContext |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-5167](https://issues.apache.org/jira/browse/SPARK-5167) | Move Row into sql package and make it usable for Java |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-5128](https://issues.apache.org/jira/browse/SPARK-5128) | Add stable log1pExp impl |  Major | MLlib | Xiangrui Meng | DB Tsai |
| [SPARK-5123](https://issues.apache.org/jira/browse/SPARK-5123) | Stabilize Spark SQL data type API |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-5097](https://issues.apache.org/jira/browse/SPARK-5097) | Adding data frame APIs to SchemaRDD |  Critical | SQL | Reynold Xin | Reynold Xin |
| [SPARK-5087](https://issues.apache.org/jira/browse/SPARK-5087) | Merge yarn.Client and yarn.ClientBase |  Major | YARN | Sandy Ryza | Sandy Ryza |
| [SPARK-4948](https://issues.apache.org/jira/browse/SPARK-4948) | Use pssh instead of bash-isms and remove unnecessary operations |  Minor | EC2 | Nicholas Chammas | Nicholas Chammas |
| [SPARK-4947](https://issues.apache.org/jira/browse/SPARK-4947) | Use EC2 status checks to know when to test SSH availability |  Minor | EC2 | Nicholas Chammas | Nicholas Chammas |
| [SPARK-4912](https://issues.apache.org/jira/browse/SPARK-4912) | Persistent data source tables |  Blocker | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-4789](https://issues.apache.org/jira/browse/SPARK-4789) | Standardize ML Prediction APIs |  Major | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-4787](https://issues.apache.org/jira/browse/SPARK-4787) | Clean up SparkContext after DAGScheduler initialization errors |  Major | Spark Core | Jacky Li | Dale Richardson |
| [SPARK-4574](https://issues.apache.org/jira/browse/SPARK-4574) | Adding support for defining schema in foreign DDL commands. |  Blocker | SQL | Fei Wang | Fei Wang |
| [SPARK-4508](https://issues.apache.org/jira/browse/SPARK-4508) | Native Date type for SQL92 Date |  Major | SQL | Adrian Wang | Adrian Wang |
| [SPARK-4338](https://issues.apache.org/jira/browse/SPARK-4338) | Remove yarn-alpha support |  Major | YARN | Sandy Ryza | Sandy Ryza |
| [SPARK-3299](https://issues.apache.org/jira/browse/SPARK-3299) | [SQL] Public API in SQLContext to list tables |  Minor | SQL | Evan Chan | Bill Bejeck |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-6111](https://issues.apache.org/jira/browse/SPARK-6111) | Fixed usage string in documentation for kafka\_wordcount.py example |  Trivial | Streaming | Kenneth Myers | Kenneth Myers |
| [SPARK-6083](https://issues.apache.org/jira/browse/SPARK-6083) | Make Python API example consistent in NaiveBayes |  Minor | Documentation, MLlib | Manoj Kumar | Manoj Kumar |
| [SPARK-6033](https://issues.apache.org/jira/browse/SPARK-6033) | the description abou the "spark.worker.cleanup.enabled" is not matched with the code |  Minor | Documentation | pengxu | pengxu |
| [SPARK-5980](https://issues.apache.org/jira/browse/SPARK-5980) | Add GradientBoostedTrees Python examples to ML guide |  Minor | Documentation, MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-5974](https://issues.apache.org/jira/browse/SPARK-5974) | Add save/load to examples in ML guide |  Minor | Documentation, MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-5958](https://issues.apache.org/jira/browse/SPARK-5958) | Update block matrix user guide |  Minor | Documentation, MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-5944](https://issues.apache.org/jira/browse/SPARK-5944) | Python release docs say SNAPSHOT + Author is missing |  Minor | Documentation | Nicholas Chammas | Davies Liu |
| [SPARK-5912](https://issues.apache.org/jira/browse/SPARK-5912) | Programming guide for feature selection |  Major | Documentation, MLlib | Joseph K. Bradley | Alexander Ulanov |
| [SPARK-5897](https://issues.apache.org/jira/browse/SPARK-5897) | Add PIC code example to user guide |  Major | Documentation, MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-5892](https://issues.apache.org/jira/browse/SPARK-5892) | Clean up ML, MLlib docs for 1.3 release |  Minor | Documentation, ML, MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-5867](https://issues.apache.org/jira/browse/SPARK-5867) | Update spark.ml docs with DataFrame, Python examples |  Major | Documentation, ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-5827](https://issues.apache.org/jira/browse/SPARK-5827) | Add missing imports in the example of SQLContext |  Trivial | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-5811](https://issues.apache.org/jira/browse/SPARK-5811) | Documentation for --packages and --repositories on Spark Shell |  Critical | Deploy, Spark Shell | Burak Yavuz | Burak Yavuz |
| [SPARK-5805](https://issues.apache.org/jira/browse/SPARK-5805) | Fix the type error in the final example given in MLlib - Clustering documentation |  Minor | Documentation, MLlib | Emre Sevinç | Emre Sevinç |
| [SPARK-5800](https://issues.apache.org/jira/browse/SPARK-5800) | Streaming. Change linked files according the selected language |  Minor | Documentation | Gaspar Muñoz | Gaspar Muñoz |
| [SPARK-5730](https://issues.apache.org/jira/browse/SPARK-5730) | Group methods in the generated doc for spark.ml algorithms. |  Major | Documentation, ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-5620](https://issues.apache.org/jira/browse/SPARK-5620) | Group methods in generated unidoc |  Major | Documentation, ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-5539](https://issues.apache.org/jira/browse/SPARK-5539) | User guide for LDA |  Major | Documentation, MLlib | Xiangrui Meng | Joseph K. Bradley |
| [SPARK-5537](https://issues.apache.org/jira/browse/SPARK-5537) | Expand user guide for multinomial logistic regression |  Major | Documentation, MLlib | Xiangrui Meng | DB Tsai |
| [SPARK-5519](https://issues.apache.org/jira/browse/SPARK-5519) | Add user guide for FP-Growth |  Major | Documentation, MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-5507](https://issues.apache.org/jira/browse/SPARK-5507) | Add user guide for block matrix and its operations |  Major | Documentation, MLlib | Xiangrui Meng | Burak Yavuz |
| [SPARK-5503](https://issues.apache.org/jira/browse/SPARK-5503) | Example code for Power Iteration Clustering |  Major | Documentation, Examples, MLlib | Xiangrui Meng | Stephen Boesch |
| [SPARK-5502](https://issues.apache.org/jira/browse/SPARK-5502) | User guide for isotonic regression |  Major | Documentation, MLlib | Xiangrui Meng | Martin Zapletal |
| [SPARK-5254](https://issues.apache.org/jira/browse/SPARK-5254) | Update the user guide to make clear that spark.mllib is not being deprecated |  Major | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-5013](https://issues.apache.org/jira/browse/SPARK-5013) | User guide for Gaussian Mixture Model |  Major | Documentation, MLlib | Xiangrui Meng | Travis Galoppo |
| [SPARK-4931](https://issues.apache.org/jira/browse/SPARK-4931) | Fix the messy format about log4j in running-on-yarn.md |  Trivial | Documentation, YARN | Shixiong Zhu | Shixiong Zhu |
| [SPARK-4915](https://issues.apache.org/jira/browse/SPARK-4915) | Wrong classname of external shuffle service in the doc for dynamic allocation |  Major | Documentation, YARN | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [SPARK-4889](https://issues.apache.org/jira/browse/SPARK-4889) | HistoryServer documentation refers to non-existent spark-history-server.sh script |  Minor | Documentation | Ryan Williams | Ryan Williams |
| [SPARK-4884](https://issues.apache.org/jira/browse/SPARK-4884) | Improve documentation for Partition.scala |  Trivial | Spark Core | Madhu Siddalingaiah | Madhu Siddalingaiah |
| [SPARK-4822](https://issues.apache.org/jira/browse/SPARK-4822) | Use sphinx tags for Python doc annotations |  Minor | Documentation, PySpark | Joseph K. Bradley | Kai Sasaki |
| [SPARK-4733](https://issues.apache.org/jira/browse/SPARK-4733) | Add missing prameter comments in ShuffleDependency |  Trivial | Spark Core | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-4481](https://issues.apache.org/jira/browse/SPARK-4481) | Some comments for `updateStateByKey` are wrong |  Major | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-4437](https://issues.apache.org/jira/browse/SPARK-4437) | Docs for difference between WholeTextFileRecordReader and WholeCombineFileRecordReader |  Major | Documentation | Andrew Ash | Davies Liu |
| [SPARK-4147](https://issues.apache.org/jira/browse/SPARK-4147) | Reduce log4j dependency |  Major | Spark Core | Tobias Pfeiffer | Sean Owen |
| [SPARK-3663](https://issues.apache.org/jira/browse/SPARK-3663) | Document SPARK\_LOG\_DIR and SPARK\_PID\_DIR |  Major | Documentation | Andrew Ash | Andrew Ash |
| [SPARK-6163](https://issues.apache.org/jira/browse/SPARK-6163) | jsonFile should be backed by the data source API |  Critical | SQL | Yin Huai | Yin Huai |
| [SPARK-5599](https://issues.apache.org/jira/browse/SPARK-5599) | Audit MLlib public APIs for 1.3 |  Major | ML, MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-5166](https://issues.apache.org/jira/browse/SPARK-5166) | Stabilize Spark SQL APIs |  Blocker | SQL | Reynold Xin | Reynold Xin |
| [SPARK-3996](https://issues.apache.org/jira/browse/SPARK-3996) | Shade Jetty in Spark deliverables |  Major | Spark Core | Mingyu Kim | Patrick Wendell |
| [SPARK-1182](https://issues.apache.org/jira/browse/SPARK-1182) | Sort the configuration parameters in configuration.md |  Minor | Documentation | Reynold Xin | Brennon York |


