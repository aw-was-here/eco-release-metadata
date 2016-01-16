
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

## Release 2.0.0 - Unreleased (as of 2016-01-16)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-12016](https://issues.apache.org/jira/browse/SPARK-12016) | word2vec load model can't use findSynonyms to get words |  Major | PySpark | yuangang.liu | Liang-Chi Hsieh |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-12796](https://issues.apache.org/jira/browse/SPARK-12796) | initial prototype: projection/filter/range |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-12785](https://issues.apache.org/jira/browse/SPARK-12785) | Implement columnar in memory representation |  Major | SQL | Nong Li | Nong Li |
| [SPARK-12542](https://issues.apache.org/jira/browse/SPARK-12542) | Support intersect/except in Hive SQL |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-12541](https://issues.apache.org/jira/browse/SPARK-12541) | Support rollup/cube in SQL query |  Major | SQL | Davies Liu | Apache Spark |
| [SPARK-12538](https://issues.apache.org/jira/browse/SPARK-12538) | bucketed table support |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-12394](https://issues.apache.org/jira/browse/SPARK-12394) | Support writing out pre-hash-partitioned data and exploit that in join optimizations to avoid shuffle (i.e. bucketing in Hive) |  Major | SQL | Reynold Xin | Nong Li |
| [SPARK-12321](https://issues.apache.org/jira/browse/SPARK-12321) | JSON format for logical/physical execution plans |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11774](https://issues.apache.org/jira/browse/SPARK-11774) | Implement "struct", "encode","decode" in SparkR |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-11713](https://issues.apache.org/jira/browse/SPARK-11713) | Initial RDD for updateStateByKey for pyspark |  Major | PySpark | David Watson | Bryan Cutler |
| [SPARK-11206](https://issues.apache.org/jira/browse/SPARK-11206) | Support SQL UI on the history server |  Major | SQL, Web UI | Carson Wang | Carson Wang |
| [SPARK-10809](https://issues.apache.org/jira/browse/SPARK-10809) | Single-document topicDistributions method for LocalLDAModel |  Minor | MLlib | Joseph K. Bradley | yuhao yang |
| [SPARK-10359](https://issues.apache.org/jira/browse/SPARK-10359) | Enumerate Spark's dependencies in a file and diff against it for new pull requests |  Major | Build, Project Infra | Patrick Wendell | Josh Rosen |
| [SPARK-9843](https://issues.apache.org/jira/browse/SPARK-9843) | Catalyst: Allow adding custom optimizers |  Major | SQL | Robert Kruszewski | Robert Kruszewski |
| [SPARK-9516](https://issues.apache.org/jira/browse/SPARK-9516) | Improve Thread Dump page |  Minor | Web UI | Nan Zhu | Nan Zhu |
| [SPARK-6990](https://issues.apache.org/jira/browse/SPARK-6990) | Add Java linting script |  Minor | Project Infra | Josh Rosen | Dmitry Erastov |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-12856](https://issues.apache.org/jira/browse/SPARK-12856) | speed up hashCode of unsafe array |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-12840](https://issues.apache.org/jira/browse/SPARK-12840) | Support passing arbitrary objects (not just expressions) into code generated classes |  Major | . | Davies Liu | Davies Liu |
| [SPARK-12788](https://issues.apache.org/jira/browse/SPARK-12788) | Simplify BooleanEquality by using casts |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-12761](https://issues.apache.org/jira/browse/SPARK-12761) | Clean up duplicated code in scala 2.11 repl.Main |  Trivial | Spark Shell | Jakob Odersky | Jakob Odersky |
| [SPARK-12735](https://issues.apache.org/jira/browse/SPARK-12735) | Move spark-ec2 scripts to AMPLab |  Major | EC2 | Reynold Xin | Reynold Xin |
| [SPARK-12730](https://issues.apache.org/jira/browse/SPARK-12730) | De-duplicate some test code in BlockManagerSuite |  Major | Tests | Josh Rosen | Josh Rosen |
| [SPARK-12701](https://issues.apache.org/jira/browse/SPARK-12701) | Logging FileAppender should use join to ensure thread is finished |  Minor | Spark Core | Bryan Cutler | Bryan Cutler |
| [SPARK-12663](https://issues.apache.org/jira/browse/SPARK-12663) | More informative error message in MLUtils.loadLibSVMFile |  Minor | MLlib | Robert Dodier | Robert Dodier |
| [SPARK-12645](https://issues.apache.org/jira/browse/SPARK-12645) | SparkR support hash function |  Major | SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-12643](https://issues.apache.org/jira/browse/SPARK-12643) | Set lib directory for antlr |  Minor | Build | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-12642](https://issues.apache.org/jira/browse/SPARK-12642) | improve the hash expression to be decoupled from unsafe row |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-12636](https://issues.apache.org/jira/browse/SPARK-12636) | Expose API on UnsafeRowRecordReader to just run on files |  Major | SQL | Nong Li | Nong Li |
| [SPARK-12608](https://issues.apache.org/jira/browse/SPARK-12608) | Remove submitJobThreadPool since submitJob doesn't create a separate thread to wait for the job result |  Major | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-12603](https://issues.apache.org/jira/browse/SPARK-12603) | PySpark MLlib GaussianMixtureModel should support single instance predict/predictSoft |  Minor | MLlib, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-12599](https://issues.apache.org/jira/browse/SPARK-12599) | Remove the use of the deprecated callUDF in MLlib |  Major | MLlib, SQL | Reynold Xin | Reynold Xin |
| [SPARK-12585](https://issues.apache.org/jira/browse/SPARK-12585) | The numFields of UnsafeRow should not changed by pointTo() |  Major | . | Davies Liu | Apache Spark |
| [SPARK-12580](https://issues.apache.org/jira/browse/SPARK-12580) | Remove string concatenations from usage and extended in @ExpressionDescription |  Minor | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-12564](https://issues.apache.org/jira/browse/SPARK-12564) | Improve missing column AnalysisException |  Minor | SQL | Michael Armbrust | Xiao Li |
| [SPARK-12549](https://issues.apache.org/jira/browse/SPARK-12549) | UDFs' input type specification should take Option[Seq[DataType]] rather than Seq[DataType] |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-12547](https://issues.apache.org/jira/browse/SPARK-12547) | Tighten scala style checker enforcement for UDF registration |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-12537](https://issues.apache.org/jira/browse/SPARK-12537) | Add option to accept quoting of all character backslash quoting mechanism |  Major | SQL | Cazen Lee | Cazen Lee |
| [SPARK-12515](https://issues.apache.org/jira/browse/SPARK-12515) | Minor clarification on DataFrameReader.jdbc doc |  Trivial | Documentation, SQL | Felix Cheung | Felix Cheung |
| [SPARK-12510](https://issues.apache.org/jira/browse/SPARK-12510) | Refactor ActorReceiver to support Java |  Major | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-12500](https://issues.apache.org/jira/browse/SPARK-12500) | Fix Tachyon deprecations; pull Tachyon dependency into one class |  Minor | Spark Core | Sean Owen | Sean Owen |
| [SPARK-12498](https://issues.apache.org/jira/browse/SPARK-12498) | BooleanSimplification cleanup |  Minor | SQL | Cheng Lian | Cheng Lian |
| [SPARK-12490](https://issues.apache.org/jira/browse/SPARK-12490) | Don't use Javascript for web UI's paginated table navigation controls |  Major | Web UI | Josh Rosen | Josh Rosen |
| [SPARK-12475](https://issues.apache.org/jira/browse/SPARK-12475) | Upgrade Zinc from 0.3.5.3 to 0.3.9 |  Major | Build, Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-12471](https://issues.apache.org/jira/browse/SPARK-12471) | Spark daemons should log their pid in the log file |  Major | Spark Core | Nong Li | Nong Li |
| [SPARK-12450](https://issues.apache.org/jira/browse/SPARK-12450) | Un-persist broadcasted variables in KMeans |  Minor | MLlib | RJ Nowling | RJ Nowling |
| [SPARK-12440](https://issues.apache.org/jira/browse/SPARK-12440) | Avoid setCheckpointDir warning when filesystem is not local |  Trivial | Spark Core | Pierre Borckmans | Pierre Borckmans |
| [SPARK-12438](https://issues.apache.org/jira/browse/SPARK-12438) | Add SQLUserDefinedType support for encoder |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-12411](https://issues.apache.org/jira/browse/SPARK-12411) | Reconsider executor heartbeats rpc timeout |  Major | Spark Core | Nong Li | Nong Li |
| [SPARK-12409](https://issues.apache.org/jira/browse/SPARK-12409) | JDBC AND operator push down |  Minor | SQL | Huaxin Gao | Takeshi Yamamuro |
| [SPARK-12400](https://issues.apache.org/jira/browse/SPARK-12400) | Avoid writing a shuffle file if a partition has no output (empty) |  Major | Shuffle | Reynold Xin | Saisai Shao |
| [SPARK-12398](https://issues.apache.org/jira/browse/SPARK-12398) | Smart truncation of DataFrame / Dataset toString |  Major | SQL | Reynold Xin | Dilip Biswal |
| [SPARK-12397](https://issues.apache.org/jira/browse/SPARK-12397) | Improve error messages for data sources when they are not found |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-12392](https://issues.apache.org/jira/browse/SPARK-12392) | Optimize a location order of broadcast blocks by considering preferred local hosts |  Major | Spark Core | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-12391](https://issues.apache.org/jira/browse/SPARK-12391) | JDBC OR operator push down |  Minor | SQL | Huaxin Gao | Takeshi Yamamuro |
| [SPARK-12388](https://issues.apache.org/jira/browse/SPARK-12388) | Change default compressor to LZ4 |  Minor | SQL | Davies Liu | Davies Liu |
| [SPARK-12387](https://issues.apache.org/jira/browse/SPARK-12387) | JDBC  IN operator push down |  Minor | SQL | Huaxin Gao | Takeshi Yamamuro |
| [SPARK-12374](https://issues.apache.org/jira/browse/SPARK-12374) | Improve performance of Range APIs via adding logical/physical operators |  Critical | SQL | Xiao Li | Apache Spark |
| [SPARK-12368](https://issues.apache.org/jira/browse/SPARK-12368) | Better doc for the binary classification evaluator' metricName |  Minor | Documentation, ML | Benjamin Fradet | Benjamin Fradet |
| [SPARK-12364](https://issues.apache.org/jira/browse/SPARK-12364) | Add ML example for SparkR |  Major | ML, SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-12361](https://issues.apache.org/jira/browse/SPARK-12361) | Should set PYSPARK\_DRIVER\_PYTHON before python test |  Minor | PySpark, Tests | Jeff Zhang | Jeff Zhang |
| [SPARK-12349](https://issues.apache.org/jira/browse/SPARK-12349) | Make spark.ml PCAModel load backwards compatible |  Minor | ML | Joseph K. Bradley | Sean Owen |
| [SPARK-12332](https://issues.apache.org/jira/browse/SPARK-12332) | Typo in ResetSystemProperties.scala's comments |  Trivial | Tests | holdenk | holdenk |
| [SPARK-12331](https://issues.apache.org/jira/browse/SPARK-12331) | R^2 for regression through the origin |  Minor | ML | Imran Younus | Imran Younus |
| [SPARK-12317](https://issues.apache.org/jira/browse/SPARK-12317) | Support configurate value for AUTO\_BROADCASTJOIN\_THRESHOLD and SHUFFLE\_TARGET\_POSTSHUFFLE\_INPUT\_SIZE with unit(e.g. kb/mb/gb) in SQLConf |  Minor | SQL | Yadong Qi | kevin yu |
| [SPARK-12315](https://issues.apache.org/jira/browse/SPARK-12315) | isnotnull operator not pushed down for JDBC datasource. |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-12314](https://issues.apache.org/jira/browse/SPARK-12314) | isnull operator not pushed down for JDBC datasource. |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-12309](https://issues.apache.org/jira/browse/SPARK-12309) | Use sqlContext from MLlibTestSparkContext for spark.ml test suites |  Major | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-12304](https://issues.apache.org/jira/browse/SPARK-12304) | Make Spark Streaming web UI display more friendly Receiver graphs |  Minor | Streaming | Liwei Lin | Liwei Lin |
| [SPARK-12295](https://issues.apache.org/jira/browse/SPARK-12295) | Manage the memory used by window function |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-12294](https://issues.apache.org/jira/browse/SPARK-12294) | Support UnsafeRow in HiveTableScan |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-12293](https://issues.apache.org/jira/browse/SPARK-12293) | Support UnsafeRow in LocalTableScan |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-12292](https://issues.apache.org/jira/browse/SPARK-12292) | Support UnsafeRow in Generate |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-12290](https://issues.apache.org/jira/browse/SPARK-12290) | Change the default value in SparkPlan |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-12289](https://issues.apache.org/jira/browse/SPARK-12289) | Support UnsafeRow in TakeOrderedAndProject/Limit |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-12288](https://issues.apache.org/jira/browse/SPARK-12288) | Support UnsafeRow in Coalesce/Except/Intersect |  Major | SQL | Davies Liu | Xiao Li |
| [SPARK-12287](https://issues.apache.org/jira/browse/SPARK-12287) | Support UnsafeRow in MapPartitions/MapGroups/CoGroup |  Major | SQL | Davies Liu | Xiao Li |
| [SPARK-12284](https://issues.apache.org/jira/browse/SPARK-12284) | Output UnsafeRow from window function |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-12273](https://issues.apache.org/jira/browse/SPARK-12273) | Spark Streaming Web UI does not list Receivers in order |  Minor | Streaming, Web UI | Liwei Lin | Liwei Lin |
| [SPARK-12269](https://issues.apache.org/jira/browse/SPARK-12269) | Update aws-java-sdk version |  Minor | Streaming | Brian London | Brian London |
| [SPARK-12263](https://issues.apache.org/jira/browse/SPARK-12263) | IllegalStateException: Memory can't be 0 for SPARK\_WORKER\_MEMORY without unit |  Trivial | Documentation | Jacek Laskowski | Neelesh Srinivas Salian |
| [SPARK-12249](https://issues.apache.org/jira/browse/SPARK-12249) | JDBC non-equality comparison operator not pushed down. |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-12241](https://issues.apache.org/jira/browse/SPARK-12241) | Improve failure reporting in Yarn client obtainTokenForHBase() |  Minor | YARN | Steve Loughran | Steve Loughran |
| [SPARK-12228](https://issues.apache.org/jira/browse/SPARK-12228) | Use in-memory for execution hive's derby metastore |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-12213](https://issues.apache.org/jira/browse/SPARK-12213) | Query with only one distinct should not having on expand |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-12166](https://issues.apache.org/jira/browse/SPARK-12166) | Unset hadoop related environment in testing |  Minor | Tests | Jeff Zhang | Jeff Zhang |
| [SPARK-12164](https://issues.apache.org/jira/browse/SPARK-12164) | [SQL] Display the binary/encoded values |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-12150](https://issues.apache.org/jira/browse/SPARK-12150) | numPartitions argument to sqlContext.range()  should be optional |  Minor | SQL | Henri DF | Xiao Li |
| [SPARK-12130](https://issues.apache.org/jira/browse/SPARK-12130) | Replace shuffleManagerClass with shortShuffleMgrNames in ExternalShuffleBlockResolver |  Major | Shuffle, YARN | Lianhui Wang | Lianhui Wang |
| [SPARK-12115](https://issues.apache.org/jira/browse/SPARK-12115) | Change numPartitions() in RDD to be "getNumPartitions" to be consistent with pyspark/scala |  Major | SparkR | Sun Rui | Yanbo Liang |
| [SPARK-12105](https://issues.apache.org/jira/browse/SPARK-12105) | Add a DataFrame.show() with argument for output PrintStream |  Minor | SQL | Dean Wampler | Jean-Baptiste Onofré |
| [SPARK-12103](https://issues.apache.org/jira/browse/SPARK-12103) | Clarify documentation of KafkaUtils createStream with multiple topics |  Minor | Documentation, Streaming | Dan Dutrow | Cody Koeninger |
| [SPARK-12096](https://issues.apache.org/jira/browse/SPARK-12096) | remove the old constraint in word2vec |  Trivial | MLlib | yuhao yang | yuhao yang |
| [SPARK-12080](https://issues.apache.org/jira/browse/SPARK-12080) | Kryo - Support multiple user registrators |  Minor | Spark Core | Rotem Shaul | Rotem Shaul |
| [SPARK-12074](https://issues.apache.org/jira/browse/SPARK-12074) | Avoid memory copy involving ByteBuffer.wrap(ByteArrayOutputStream.toByteArray) |  Major | Spark Core | Ted Yu | Ted Yu |
| [SPARK-12060](https://issues.apache.org/jira/browse/SPARK-12060) | Avoid memory copy in JavaSerializerInstance.serialize |  Critical | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-12057](https://issues.apache.org/jira/browse/SPARK-12057) | Prevent failure on corrupt JSON records |  Minor | SQL | Ian Macalinao | Yin Huai |
| [SPARK-12054](https://issues.apache.org/jira/browse/SPARK-12054) | Consider nullable in codegen |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-12044](https://issues.apache.org/jira/browse/SPARK-12044) | Fix usage of isnan, isNaN |  Major | SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-12032](https://issues.apache.org/jira/browse/SPARK-12032) | Filter can't be pushed down to correct Join because of bad order of Join |  Critical | SQL | Davies Liu | Davies Liu |
| [SPARK-11988](https://issues.apache.org/jira/browse/SPARK-11988) | Update JPMML to 1.2.7 |  Minor | ML, MLlib | Sean Owen | Sean Owen |
| [SPARK-11983](https://issues.apache.org/jira/browse/SPARK-11983) | remove all unused codegen fallback traits |  Minor | SQL | Adrian Wang | Adrian Wang |
| [SPARK-11982](https://issues.apache.org/jira/browse/SPARK-11982) | Improve performance of CartesianProduct |  Minor | SQL | Davies Liu | Davies Liu |
| [SPARK-11929](https://issues.apache.org/jira/browse/SPARK-11929) | spark-shell log level customization is lost if user provides a log4j.properties file |  Minor | Spark Core, Spark Shell | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-11904](https://issues.apache.org/jira/browse/SPARK-11904) | pyspark reduceByKeyAndWindow with invFunc=None requires checkpointing |  Major | PySpark | David Tolpin | David Tolpin |
| [SPARK-11903](https://issues.apache.org/jira/browse/SPARK-11903) | Deprecate make-distribution.sh --skip-java-test |  Minor | Build | Nicholas Chammas | Nicholas Chammas |
| [SPARK-11898](https://issues.apache.org/jira/browse/SPARK-11898) | Use broadcast for the global tables in Word2Vec |  Major | MLlib | yuhao yang | yuhao yang |
| [SPARK-11884](https://issues.apache.org/jira/browse/SPARK-11884) | Drop multiple columns in the DataFrame API |  Minor | Spark Core | Ted Yu | Ted Yu |
| [SPARK-11878](https://issues.apache.org/jira/browse/SPARK-11878) | Eliminate distribute by in case group by is present with exactly the same grouping expressions |  Minor | SQL | Yash Datta | Yash Datta |
| [SPARK-11824](https://issues.apache.org/jira/browse/SPARK-11824) | WebUI throws console error for descriptions with 'bad' HTML |  Minor | SQL, Web UI | Andy Robb | Sean Owen |
| [SPARK-11717](https://issues.apache.org/jira/browse/SPARK-11717) | Ignore R session and history files from git |  Trivial | SparkR | Kai Sasaki | Kai Sasaki |
| [SPARK-11692](https://issues.apache.org/jira/browse/SPARK-11692) | Support for Parquet logical types, JSON and BSON (embedded types) |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-11592](https://issues.apache.org/jira/browse/SPARK-11592) | flush spark-sql command line history to history file |  Minor | SQL | Adrian Wang | Adrian Wang |
| [SPARK-11531](https://issues.apache.org/jira/browse/SPARK-11531) | PySpark SparseVector: improve error message for bad indices |  Trivial | MLlib, PySpark | Urvish Parikh | Rekha Joshi |
| [SPARK-11530](https://issues.apache.org/jira/browse/SPARK-11530) | Return eigenvalues with PCA model |  Minor | ML, MLlib | Christos Iraklis Tsatsoulis | Sean Owen |
| [SPARK-11439](https://issues.apache.org/jira/browse/SPARK-11439) | Optimization of creating sparse feature without dense one |  Minor | ML | Kai Sasaki | Nakul Jindal |
| [SPARK-11259](https://issues.apache.org/jira/browse/SPARK-11259) | Params.validateParams() should be called automatically |  Minor | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-11164](https://issues.apache.org/jira/browse/SPARK-11164) | Add InSet pushdown filter back for Parquet |  Major | SQL | Liang-Chi Hsieh | Xiao Li |
| [SPARK-11155](https://issues.apache.org/jira/browse/SPARK-11155) | Stage summary json should include stage duration |  Minor | Web UI | Imran Rashid | Xin Ren |
| [SPARK-11044](https://issues.apache.org/jira/browse/SPARK-11044) | Parquet writer version fixed as version1 |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-10991](https://issues.apache.org/jira/browse/SPARK-10991) | LogisticRegressionTrainingSummary should dynamically add prediction col if there is no prediction col set |  Minor | ML | holdenk | holdenk |
| [SPARK-10477](https://issues.apache.org/jira/browse/SPARK-10477) | using DSL in ColumnPruningSuite to improve readablity |  Trivial | SQL, Tests | Wenchen Fan | Wenchen Fan |
| [SPARK-10299](https://issues.apache.org/jira/browse/SPARK-10299) | word2vec should allow users to specify the window size |  Minor | MLlib | holdenk | holdenk |
| [SPARK-10180](https://issues.apache.org/jira/browse/SPARK-10180) | JDBCRDD does not process EqualNullSafe filter. |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-10158](https://issues.apache.org/jira/browse/SPARK-10158) | ALS should print better errors when given Long IDs |  Minor | ML, MLlib, PySpark | Joseph K. Bradley | Bryan Cutler |
| [SPARK-10123](https://issues.apache.org/jira/browse/SPARK-10123) | Cannot set "--deploy-mode" in default configuration |  Minor | Spark Core | Marcelo Vanzin | Saisai Shao |
| [SPARK-9383](https://issues.apache.org/jira/browse/SPARK-9383) | Merge script should reset back to previous ref instead of detached commit |  Trivial | Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-8745](https://issues.apache.org/jira/browse/SPARK-8745) | Remove GenerateProjection |  Major | SQL | Reynold Xin | Davies Liu |
| [SPARK-7727](https://issues.apache.org/jira/browse/SPARK-7727) | Avoid inner classes in RuleExecutor |  Major | SQL | Santiago M. Mola | Stephan Kessler |
| [SPARK-7675](https://issues.apache.org/jira/browse/SPARK-7675) | PySpark spark.ml Params type conversions |  Minor | ML, PySpark | Joseph K. Bradley | holdenk |
| [SPARK-5273](https://issues.apache.org/jira/browse/SPARK-5273) | Improve documentation examples for LinearRegression |  Minor | Documentation | Dev Lakhani | Sean Owen |
| [SPARK-4117](https://issues.apache.org/jira/browse/SPARK-4117) | Spark on Yarn handle AM being told command from RM |  Major | YARN | Thomas Graves | Devaraj K |
| [SPARK-2930](https://issues.apache.org/jira/browse/SPARK-2930) | clarify docs on using webhdfs with spark.yarn.access.namenodes |  Trivial | Documentation, YARN | Thomas Graves | Thomas Graves |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-12842](https://issues.apache.org/jira/browse/SPARK-12842) | Add Hadoop 2.7 build profile |  Major | Build | Josh Rosen | Josh Rosen |
| [SPARK-12821](https://issues.apache.org/jira/browse/SPARK-12821) | Style checker should run when some configuration files for style are modified but any source files are not. |  Minor | Project Infra | Kousuke Saruta | Kousuke Saruta |
| [SPARK-12805](https://issues.apache.org/jira/browse/SPARK-12805) | Outdated details in doc related to Mesos run modes |  Minor | Documentation | Luc Bourlier | Luc Bourlier |
| [SPARK-12784](https://issues.apache.org/jira/browse/SPARK-12784) | Spark UI IndexOutOfBoundsException with dynamic allocation |  Major | Web UI, YARN | Thomas Graves | Shixiong Zhu |
| [SPARK-12744](https://issues.apache.org/jira/browse/SPARK-12744) | Inconsistent behavior parsing JSON with unix timestamp values |  Minor | SQL | Anatoliy Plastinin | Anatoliy Plastinin |
| [SPARK-12742](https://issues.apache.org/jira/browse/SPARK-12742) | org.apache.spark.sql.hive.LogicalPlanToSQLSuite failure due to Table already exists |  Major | SQL | Fei Wang | Fei Wang |
| [SPARK-12736](https://issues.apache.org/jira/browse/SPARK-12736) | Standalone Master cannot be started due to NoClassDefFoundError: org/spark-project/guava/collect/Maps |  Major | Deploy, Spark Core | Jacek Laskowski | Jacek Laskowski |
| [SPARK-12734](https://issues.apache.org/jira/browse/SPARK-12734) | Fix Netty exclusions and use Maven Enforcer to prevent bug from being reintroduced |  Major | Build, Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-12708](https://issues.apache.org/jira/browse/SPARK-12708) | Sorting task error in Stages Page when yarn mode |  Minor | Web UI | Koyo Yoshida | Koyo Yoshida |
| [SPARK-12690](https://issues.apache.org/jira/browse/SPARK-12690) | NullPointerException in UnsafeInMemorySorter.free() |  Minor | Spark Core | Carson Wang | Carson Wang |
| [SPARK-12685](https://issues.apache.org/jira/browse/SPARK-12685) | word2vec trainWordsCount gets overflow |  Minor | MLlib | yuhao yang | yuhao yang |
| [SPARK-12678](https://issues.apache.org/jira/browse/SPARK-12678) | MapPartitionsRDD should clear reference to prev RDD |  Minor | Spark Core | Guillaume Poulin | Guillaume Poulin |
| [SPARK-12673](https://issues.apache.org/jira/browse/SPARK-12673) | Prepending base URI of job description is missing |  Major | Web UI | Saisai Shao | Saisai Shao |
| [SPARK-12662](https://issues.apache.org/jira/browse/SPARK-12662) | Add a local sort operator to DataFrame used by randomSplit |  Major | Documentation, SQL | Yin Huai | Sameer Agarwal |
| [SPARK-12659](https://issues.apache.org/jira/browse/SPARK-12659) | NPE when spill in CartisianProduct |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-12655](https://issues.apache.org/jira/browse/SPARK-12655) | GraphX does not unpersist RDDs |  Minor | GraphX | Alexander Pivovarov | Jason C Lee |
| [SPARK-12654](https://issues.apache.org/jira/browse/SPARK-12654) | sc.wholeTextFiles with spark.hadoop.cloneConf=true fails on secure Hadoop |  Major | Spark Core | Thomas Graves | Thomas Graves |
| [SPARK-12652](https://issues.apache.org/jira/browse/SPARK-12652) | Upgrade py4j to the incoming version 0.9.1 |  Major | PySpark | Shixiong Zhu | Shixiong Zhu |
| [SPARK-12638](https://issues.apache.org/jira/browse/SPARK-12638) | Parameter explaination not very accurate for rdd function "aggregate" |  Trivial | Documentation, Spark Core | Tommy Yu | Tommy Yu |
| [SPARK-12625](https://issues.apache.org/jira/browse/SPARK-12625) | SparkR is using deprecated APIs |  Blocker | SparkR, SQL | Reynold Xin | Felix Cheung |
| [SPARK-12617](https://issues.apache.org/jira/browse/SPARK-12617) | socket descriptor leak killing streaming app |  Critical | PySpark, Streaming | Antony Mayi | Shixiong Zhu |
| [SPARK-12612](https://issues.apache.org/jira/browse/SPARK-12612) | Add missing Hadoop profiles to dev/run-tests-\*.py scripts |  Major | Build, Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-12611](https://issues.apache.org/jira/browse/SPARK-12611) | test\_infer\_schema\_to\_local depended on old handling of missing value in row |  Trivial | SQL, Tests | holdenk | holdenk |
| [SPARK-12598](https://issues.apache.org/jira/browse/SPARK-12598) | Bug in setMinPartitions function of StreamFileInputFormat |  Minor | Spark Core | Darek Blasiak | Darek Blasiak |
| [SPARK-12591](https://issues.apache.org/jira/browse/SPARK-12591) | NullPointerException using checkpointed mapWithState with KryoSerializer |  Major | Streaming | Jan Uyttenhove | Shixiong Zhu |
| [SPARK-12589](https://issues.apache.org/jira/browse/SPARK-12589) | result row size is wrong in UnsafeRowParquetRecordReader |  Major | SQL | Wenchen Fan | Nong Li |
| [SPARK-12582](https://issues.apache.org/jira/browse/SPARK-12582) | IndexShuffleBlockResolverSuite fails in windows |  Major | Tests, Windows | yucai | yucai |
| [SPARK-12579](https://issues.apache.org/jira/browse/SPARK-12579) | User-specified JDBC driver should always take precedence |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-12562](https://issues.apache.org/jira/browse/SPARK-12562) | DataFrame.write.format("text") requires the column name to be called value |  Major | SQL | Michael Armbrust | Xiu (Joe) Guo |
| [SPARK-12558](https://issues.apache.org/jira/browse/SPARK-12558) | AnalysisException when multiple functions applied in GROUP BY clause |  Major | SQL | Maciej Bryński | Dilip Biswal |
| [SPARK-12533](https://issues.apache.org/jira/browse/SPARK-12533) | hiveContext.table() throws the wrong exception |  Major | SQL | Michael Armbrust | Thomas Sebastian |
| [SPARK-12530](https://issues.apache.org/jira/browse/SPARK-12530) | Build break at Spark-Master-Maven-Snapshots from #1293 |  Major | Build | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-12526](https://issues.apache.org/jira/browse/SPARK-12526) | `ifelse`, `when`, `otherwise` unable to take Column as value |  Major | SparkR | Sen Fang | Sen Fang |
| [SPARK-12525](https://issues.apache.org/jira/browse/SPARK-12525) | Fix compiler warnings in Kinesis ASL module due to @transient annotations |  Major | Streaming | Josh Rosen | Josh Rosen |
| [SPARK-12522](https://issues.apache.org/jira/browse/SPARK-12522) | Add the missing the document string for the SQL configuration |  Minor | SQL | Xiao Li | Xiao Li |
| [SPARK-12520](https://issues.apache.org/jira/browse/SPARK-12520) | Python API dataframe join returns wrong results on outer join |  Major | PySpark, SQL | Aravind  B | Xiao Li |
| [SPARK-12517](https://issues.apache.org/jira/browse/SPARK-12517) | No default RDD name for ones created by sc.textFile |  Minor | Spark Core | yaron weinsberg | yaron weinsberg |
| [SPARK-12513](https://issues.apache.org/jira/browse/SPARK-12513) | SocketReceiver hang in Netcat example |  Minor | Streaming | Shawn Guo | Shawn Guo |
| [SPARK-12512](https://issues.apache.org/jira/browse/SPARK-12512) | WithColumn does not work on multiple column with special character |  Major | SQL | JO EE | Xiu (Joe) Guo |
| [SPARK-12511](https://issues.apache.org/jira/browse/SPARK-12511) | streaming driver with checkpointing unable to finalize leading to OOM |  Critical | PySpark, Streaming | Antony Mayi | Shixiong Zhu |
| [SPARK-12509](https://issues.apache.org/jira/browse/SPARK-12509) | Fix error messages for DataFrame correlation and covariance |  Minor | Documentation, SQL | Narine Kokhlikyan | Narine Kokhlikyan |
| [SPARK-12508](https://issues.apache.org/jira/browse/SPARK-12508) | Fix multiple bugs in pr\_public\_classes.sh script |  Trivial | Project Infra | Josh Rosen | Apache Spark |
| [SPARK-12504](https://issues.apache.org/jira/browse/SPARK-12504) | JDBC data source credentials are not masked in the data frame explain output. |  Major | SQL | Suresh Thalamati | Apache Spark |
| [SPARK-12502](https://issues.apache.org/jira/browse/SPARK-12502) | Script /dev/run-tests fails when IBM Java is used |  Minor | Tests | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-12499](https://issues.apache.org/jira/browse/SPARK-12499) | make\_distribution should not override MAVEN\_OPTS |  Minor | Build | Adrian Bridgett | Adrian Bridgett |
| [SPARK-12489](https://issues.apache.org/jira/browse/SPARK-12489) | Fix minor issues found by Findbugs |  Minor | MLlib, Spark Core, SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-12478](https://issues.apache.org/jira/browse/SPARK-12478) | Dataset fields of product types can't be null |  Major | SQL | Cheng Lian | Apache Spark |
| [SPARK-12477](https://issues.apache.org/jira/browse/SPARK-12477) | [SQL] Tungsten projection fails for null values in array fields |  Major | SQL | Pierre Borckmans | Pierre Borckmans |
| [SPARK-12470](https://issues.apache.org/jira/browse/SPARK-12470) | Incorrect calculation of row size in o.a.s.sql.catalyst.expressions.codegen.GenerateUnsafeRowJoiner |  Minor | SQL | Pete Robbins | Pete Robbins |
| [SPARK-12466](https://issues.apache.org/jira/browse/SPARK-12466) | Harmless Master NPE in tests |  Major | Deploy, Tests | Andrew Or | Andrew Or |
| [SPARK-12453](https://issues.apache.org/jira/browse/SPARK-12453) | Spark Streaming Kinesis Example broken due to wrong AWS Java SDK version |  Critical | Streaming | Martin Schade | Brian London |
| [SPARK-12442](https://issues.apache.org/jira/browse/SPARK-12442) | Build testing failed |  Blocker | Build | Xiao Li | Reynold Xin |
| [SPARK-12441](https://issues.apache.org/jira/browse/SPARK-12441) | Fixing missingInput in all Logical/Physical operators |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-12439](https://issues.apache.org/jira/browse/SPARK-12439) | Fix toCatalystArray and MapObjects |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-12424](https://issues.apache.org/jira/browse/SPARK-12424) | The implementation of ParamMap#filter is wrong. |  Major | ML | Kousuke Saruta | Kousuke Saruta |
| [SPARK-12421](https://issues.apache.org/jira/browse/SPARK-12421) | Fix copy() method of GenericRow |  Minor | SQL | doepfner | Herman van Hovell |
| [SPARK-12399](https://issues.apache.org/jira/browse/SPARK-12399) | Display correct error message when accessing REST API with an unknown app Id |  Minor | Web UI | Carson Wang | Carson Wang |
| [SPARK-12396](https://issues.apache.org/jira/browse/SPARK-12396) | Once driver client registered successfully,it still retry to connected to master. |  Minor | Spark Core | echo | echo |
| [SPARK-12395](https://issues.apache.org/jira/browse/SPARK-12395) | Result of DataFrame.join(usingColumns) could be wrong for outer join |  Blocker | SQL | Davies Liu | Davies Liu |
| [SPARK-12390](https://issues.apache.org/jira/browse/SPARK-12390) | Clean up unused serializer parameter in BlockManager |  Major | Block Manager, Spark Core | Andrew Or | Andrew Or |
| [SPARK-12380](https://issues.apache.org/jira/browse/SPARK-12380) | MLLib should use existing SQLContext instead create new one |  Major | MLlib, PySpark | Davies Liu | Davies Liu |
| [SPARK-12365](https://issues.apache.org/jira/browse/SPARK-12365) | Use ShutdownHookManager where Runtime.getRuntime.addShutdownHook() is called |  Minor | Spark Core | Ted Yu | Ted Yu |
| [SPARK-12353](https://issues.apache.org/jira/browse/SPARK-12353) | wrong output for countByValue and countByValueAndWindow |  Major | Documentation, Input/Output, PySpark, Streaming | Bo Jin | Saisai Shao |
| [SPARK-12350](https://issues.apache.org/jira/browse/SPARK-12350) | VectorAssembler#transform() initially throws an exception |  Major | Spark Core, Spark Shell | Jakob Odersky | Marcelo Vanzin |
| [SPARK-12340](https://issues.apache.org/jira/browse/SPARK-12340) | overstep the bounds of Int in SparkPlan.executeTake |  Major | SQL | QiangCai | QiangCai |
| [SPARK-12339](https://issues.apache.org/jira/browse/SPARK-12339) | NullPointerException on stage kill from web UI |  Major | Web UI | Jacek Laskowski | Alex Bozarth |
| [SPARK-12327](https://issues.apache.org/jira/browse/SPARK-12327) | lint-r checks fail with commented code |  Major | SparkR | Shivaram Venkataraman | Felix Cheung |
| [SPARK-12324](https://issues.apache.org/jira/browse/SPARK-12324) | The documentation sidebar does not collapse properly |  Minor | Documentation | Timothy Hunter | Timothy Hunter |
| [SPARK-12318](https://issues.apache.org/jira/browse/SPARK-12318) | Save mode in SparkR should be error by default |  Minor | SparkR | Jeff Zhang | Jeff Zhang |
| [SPARK-12311](https://issues.apache.org/jira/browse/SPARK-12311) | [CORE] Restore previous value of "os.arch" property in test suites after forcing to set specific value to "os.arch" property |  Minor | Spark Core | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-12300](https://issues.apache.org/jira/browse/SPARK-12300) | Fix schema inferance on local collections |  Minor | PySpark, SQL | holdenk | holdenk |
| [SPARK-12298](https://issues.apache.org/jira/browse/SPARK-12298) | Infinite loop in DataFrame.sortWithinPartitions(String, String\*) |  Major | SQL | Ankur Dave | Ankur Dave |
| [SPARK-12275](https://issues.apache.org/jira/browse/SPARK-12275) | No plan for BroadcastHint in some condition |  Major | SQL | yucai | yucai |
| [SPARK-12271](https://issues.apache.org/jira/browse/SPARK-12271) | Improve error message for Dataset.as[] when the schema is incompatible. |  Major | SQL | Nong Li | Apache Spark |
| [SPARK-12268](https://issues.apache.org/jira/browse/SPARK-12268) | pyspark shell uses execfile which breaks python3 compatibility |  Major | PySpark | Erik Selin | Erik Selin |
| [SPARK-12231](https://issues.apache.org/jira/browse/SPARK-12231) | Failed to generate predicate Error when using dropna |  Major | PySpark, SQL | yahsuan, chang | kevin yu |
| [SPARK-12222](https://issues.apache.org/jira/browse/SPARK-12222) | deserialize RoaringBitmap using Kryo serializer throw Buffer underflow exception |  Major | Spark Core | Fei Wang | Fei Wang |
| [SPARK-12218](https://issues.apache.org/jira/browse/SPARK-12218) | Invalid splitting of nested AND expressions in Data Source filter API |  Blocker | SQL | Irakli Machabeli | Yin Huai |
| [SPARK-12186](https://issues.apache.org/jira/browse/SPARK-12186) | stage web URI will redirect to the wrong location if it is the first URI from the application to be requested from the history server |  Minor | Web UI | Rohit Agarwal | Rohit Agarwal |
| [SPARK-12158](https://issues.apache.org/jira/browse/SPARK-12158) | [R] [SQL] Fix 'sample' functions that break R unit test cases |  Critical | SparkR, SQL | Xiao Li | Xiao Li |
| [SPARK-12142](https://issues.apache.org/jira/browse/SPARK-12142) | Can't request executor when container allocator is not ready |  Major | Spark Core | meiyoula | meiyoula |
| [SPARK-12136](https://issues.apache.org/jira/browse/SPARK-12136) | rddToFileName does not properly handle prefix and suffix parameters |  Minor | Streaming | Brian Webb | Bo Meng |
| [SPARK-12132](https://issues.apache.org/jira/browse/SPARK-12132) | Cltr-C should clear current line in pyspark shell |  Major | PySpark | Davies Liu | Davies Liu |
| [SPARK-12131](https://issues.apache.org/jira/browse/SPARK-12131) | Cannot create ExpressionEncoder for Array[T] where T is a nested class |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-12112](https://issues.apache.org/jira/browse/SPARK-12112) | Upgrade to SBT 0.13.9 |  Major | Build | Josh Rosen | Josh Rosen |
| [SPARK-12109](https://issues.apache.org/jira/browse/SPARK-12109) | Expressions's simpleString should delegate to its toString |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-12107](https://issues.apache.org/jira/browse/SPARK-12107) | Update spark-ec2 versions |  Minor | EC2 | Nicholas Chammas | Nicholas Chammas |
| [SPARK-12104](https://issues.apache.org/jira/browse/SPARK-12104) | collect() does not handle multiple columns with same name |  Critical | SparkR | Hossein Falaki | Sun Rui |
| [SPARK-12102](https://issues.apache.org/jira/browse/SPARK-12102) | Cast a non-nullable struct field to a nullable field during analysis |  Major | SQL | Yin Huai | Dilip Biswal |
| [SPARK-12091](https://issues.apache.org/jira/browse/SPARK-12091) | [PySpark] Removal of the JAVA-specific deserialized storage levels |  Minor | PySpark | Xiao Li | Xiao Li |
| [SPARK-12090](https://issues.apache.org/jira/browse/SPARK-12090) | Coalesce does not consider shuffle in PySpark |  Major | . | Davies Liu | Davies Liu |
| [SPARK-12088](https://issues.apache.org/jira/browse/SPARK-12088) | check connection.isClose before connection.getAutoCommit in JDBCRDD.close |  Minor | SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-12084](https://issues.apache.org/jira/browse/SPARK-12084) | Fix codes that uses ByteBuffer.array incorrectly |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-12082](https://issues.apache.org/jira/browse/SPARK-12082) | NettyBlockTransferSecuritySuite "security mismatch auth off on client" test is flaky |  Major | Tests | Josh Rosen | Josh Rosen |
| [SPARK-12062](https://issues.apache.org/jira/browse/SPARK-12062) | Master rebuilding historical SparkUI should be asynchronous |  Major | Deploy | Andrew Or | Bryan Cutler |
| [SPARK-12048](https://issues.apache.org/jira/browse/SPARK-12048) | JDBCRDD calls close() twice - SQLite then throws an exception |  Minor | SQL | R. H. | R. H. |
| [SPARK-12039](https://issues.apache.org/jira/browse/SPARK-12039) | HiveSparkSubmitSuite's SPARK-9757 Persist Parquet relation with decimal column is very flaky |  Major | SQL, Tests | Yin Huai | Yin Huai |
| [SPARK-12031](https://issues.apache.org/jira/browse/SPARK-12031) | Integer overflow when do sampling. |  Major | Spark Core | uncleGen | uncleGen |
| [SPARK-12028](https://issues.apache.org/jira/browse/SPARK-12028) | [SQL] get\_json\_object is unable to return a correct result for null literals |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-12026](https://issues.apache.org/jira/browse/SPARK-12026) | ChiSqTest gets slower and slower over time when number of features is large |  Major | MLlib | Hunter Kelly | yuhao yang |
| [SPARK-12019](https://issues.apache.org/jira/browse/SPARK-12019) | SparkR.init does not support character vector for sparkJars and sparkPackages |  Minor | SparkR | liushiqi9 | Felix Cheung |
| [SPARK-12010](https://issues.apache.org/jira/browse/SPARK-12010) | Spark JDBC requires support for column-name-free INSERT syntax |  Major | SQL | Christian Kurz | Christian Kurz |
| [SPARK-12006](https://issues.apache.org/jira/browse/SPARK-12006) | GaussianMixture.train crashes if an initial model is not None |  Major | MLlib, PySpark | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-12003](https://issues.apache.org/jira/browse/SPARK-12003) | Expanded star  should use field name as column name |  Major | . | Davies Liu | Davies Liu |
| [SPARK-12001](https://issues.apache.org/jira/browse/SPARK-12001) | StreamingContext cannot be completely stopped if the stop() call is interrupted |  Major | Streaming | Josh Rosen | Josh Rosen |
| [SPARK-11994](https://issues.apache.org/jira/browse/SPARK-11994) | Word2VecModel load and save cause SparkException when model is bigger than spark.kryoserializer.buffer.max |  Major | MLlib | Antonio Murgia | Antonio Murgia |
| [SPARK-11991](https://issues.apache.org/jira/browse/SPARK-11991) | spark\_ec2.py does not perform sanity checks on hostnames |  Major | EC2 | Jeremy Derr | Jeremy Derr |
| [SPARK-11969](https://issues.apache.org/jira/browse/SPARK-11969) | SQL UI does not work with PySpark |  Critical | SQL | Davies Liu | Davies Liu |
| [SPARK-11956](https://issues.apache.org/jira/browse/SPARK-11956) | Test failures potentially related to SPARK-11140 |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-11832](https://issues.apache.org/jira/browse/SPARK-11832) | Spark shell does not work from sbt with scala 2.11 |  Minor | Spark Shell | Jakob Odersky | Jakob Odersky |
| [SPARK-11762](https://issues.apache.org/jira/browse/SPARK-11762) | TransportResponseHandler should consider open streams when counting outstanding requests |  Minor | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-11715](https://issues.apache.org/jira/browse/SPARK-11715) | R support corr for Column Aggregration |  Minor | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-11619](https://issues.apache.org/jira/browse/SPARK-11619) | cannot use UDTF in DataFrame.selectExpr |  Minor | SQL | Wenchen Fan | Dilip Biswal |
| [SPARK-11511](https://issues.apache.org/jira/browse/SPARK-11511) | Creating an InputDStream but not using it throws NPE |  Major | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-11500](https://issues.apache.org/jira/browse/SPARK-11500) | Not deterministic order of columns when using merging schemas. |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-11497](https://issues.apache.org/jira/browse/SPARK-11497) | PySpark RowMatrix Constructor Has Type Erasure Issue |  Minor | MLlib, PySpark | Mike Dusenberry | Mike Dusenberry |
| [SPARK-11394](https://issues.apache.org/jira/browse/SPARK-11394) | PostgreDialect cannot handle BYTE types |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-11218](https://issues.apache.org/jira/browse/SPARK-11218) | `./sbin/start-slave.sh --help` should print out the help message |  Minor | Deploy | Jacek Laskowski | Charles Yeh |
| [SPARK-11193](https://issues.apache.org/jira/browse/SPARK-11193) | Spark 1.5+ Kinesis Streaming - ClassCastException when starting KinesisReceiver |  Major | Streaming | Phil Kallos | Jean-Baptiste Onofré |
| [SPARK-11043](https://issues.apache.org/jira/browse/SPARK-11043) | Hive Thrift Server will log warn "Couldn't find log associated with operation handle" |  Major | SQL | SaintBacchus | SaintBacchus |
| [SPARK-10582](https://issues.apache.org/jira/browse/SPARK-10582) | using dynamic-executor-allocation, if AM failed. the new AM will be started. But the new AM does not allocate executors to dirver |  Major | Spark Core | KaiXinXIaoLei | Saisai Shao |
| [SPARK-10116](https://issues.apache.org/jira/browse/SPARK-10116) | XORShiftRandom should generate uniform seeds |  Minor | Spark Core | Imran Rashid | Imran Rashid |
| [SPARK-9886](https://issues.apache.org/jira/browse/SPARK-9886) | Validate usages of Runtime.getRuntime.addShutdownHook |  Minor | Spark Core | Michel Lemay | Naveen Kumar Minchu |
| [SPARK-9844](https://issues.apache.org/jira/browse/SPARK-9844) | File appender race condition during SparkWorker shutdown |  Major | Spark Core | Alex Liu | Bryan Cutler |
| [SPARK-9026](https://issues.apache.org/jira/browse/SPARK-9026) | SimpleFutureAction.onComplete should not tie up a separate thread for each callback |  Major | Spark Core | Josh Rosen | Richard W. Eggert II |
| [SPARK-7615](https://issues.apache.org/jira/browse/SPARK-7615) | MLLIB Word2Vec wordVectors divided by Euclidean Norm equals to zero |  Minor | MLlib | Eric Li | Sean Owen |
| [SPARK-4514](https://issues.apache.org/jira/browse/SPARK-4514) | SparkContext localProperties does not inherit property updates across thread reuse |  Critical | Spark Core | Erik Erlandson | Richard W. Eggert II |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-12592](https://issues.apache.org/jira/browse/SPARK-12592) | TestHive.reset hides Spark testing logs |  Major | Tests | Cheng Lian | Cheng Lian |
| [SPARK-12446](https://issues.apache.org/jira/browse/SPARK-12446) | Add unit tests for JDBCRDD internal functions |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-12236](https://issues.apache.org/jira/browse/SPARK-12236) | JDBC filter tests all pass if filters are not really pushed down |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-11694](https://issues.apache.org/jira/browse/SPARK-11694) | Parquet logical types are not being tested properly |  Minor | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-11677](https://issues.apache.org/jira/browse/SPARK-11677) | ORC filter tests all pass if filters are actually not pushed down. |  Critical | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-11676](https://issues.apache.org/jira/browse/SPARK-11676) | Parquet filter tests all pass if filters are not really pushed down |  Critical | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-10248](https://issues.apache.org/jira/browse/SPARK-10248) | DAGSchedulerSuite should check there were no errors in EventProcessLoop |  Major | Spark Core | Imran Rashid | Imran Rashid |
| [SPARK-5882](https://issues.apache.org/jira/browse/SPARK-5882) | Add a test for GraphLoader.edgeListFile |  Trivial | GraphX | Takeshi Yamamuro | Takeshi Yamamuro |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-12833](https://issues.apache.org/jira/browse/SPARK-12833) | Initial import of databricks/spark-csv |  Major | SQL | Reynold Xin | Hossein Falaki |
| [SPARK-12830](https://issues.apache.org/jira/browse/SPARK-12830) | Java style: disallow trailing whitespaces |  Major | Build | Reynold Xin | Reynold Xin |
| [SPARK-12829](https://issues.apache.org/jira/browse/SPARK-12829) | Turn Java style checker on |  Major | Build | Reynold Xin | Reynold Xin |
| [SPARK-12819](https://issues.apache.org/jira/browse/SPARK-12819) | Deprecate TaskContext.isRunningLocally() |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-12813](https://issues.apache.org/jira/browse/SPARK-12813) | Eliminate serialization for back to back operations |  Critical | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-12791](https://issues.apache.org/jira/browse/SPARK-12791) | Simplify CaseWhen by breaking "branches" into "conditions" and "values" |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-12771](https://issues.apache.org/jira/browse/SPARK-12771) | Improve code generation for CaseWhen |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-12768](https://issues.apache.org/jira/browse/SPARK-12768) | Remove CaseKeyWhen expression |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-12762](https://issues.apache.org/jira/browse/SPARK-12762) | Add unit test for simplifying if expression |  Major | Optimizer, SQL | Reynold Xin | Reynold Xin |
| [SPARK-12756](https://issues.apache.org/jira/browse/SPARK-12756) | use hash expression in Exchange |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-12724](https://issues.apache.org/jira/browse/SPARK-12724) | SQL generation support for persisted data source relations |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-12716](https://issues.apache.org/jira/browse/SPARK-12716) | Executor UI improvement suggestions - Totals |  Major | Web UI | Alex Bozarth | Alex Bozarth |
| [SPARK-12707](https://issues.apache.org/jira/browse/SPARK-12707) | Remove submit python/R scripts through pyspark/sparkR |  Major | Spark Submit | Jeff Zhang | Jeff Zhang |
| [SPARK-12692](https://issues.apache.org/jira/browse/SPARK-12692) | Scala style: check no white space before comma |  Major | Project Infra | Kousuke Saruta | Kousuke Saruta |
| [SPARK-12687](https://issues.apache.org/jira/browse/SPARK-12687) | Support from clause surrounded by `()` |  Major | SQL | Davies Liu | Liang-Chi Hsieh |
| [SPARK-12681](https://issues.apache.org/jira/browse/SPARK-12681) | Split IdentifiersParser.g to avoid single huge java source |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-12667](https://issues.apache.org/jira/browse/SPARK-12667) | Remove block manager's internal "external block store" API |  Major | Block Manager, Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-12665](https://issues.apache.org/jira/browse/SPARK-12665) | Remove Vector, VectorSuite and GraphKryoRegistrator which are deprecated and no longer used |  Major | GraphX, Spark Core | Kousuke Saruta | Kousuke Saruta |
| [SPARK-12658](https://issues.apache.org/jira/browse/SPARK-12658) | Revert SPARK-12511 |  Major | PySpark | Shixiong Zhu | Shixiong Zhu |
| [SPARK-12657](https://issues.apache.org/jira/browse/SPARK-12657) | Revert SPARK-12617 |  Major | PySpark | Shixiong Zhu | Shixiong Zhu |
| [SPARK-12649](https://issues.apache.org/jira/browse/SPARK-12649) | support reading bucketed table |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-12644](https://issues.apache.org/jira/browse/SPARK-12644) | Basic support for vectorize/batch Parquet decoding |  Major | SQL | Nong Li | Nong Li |
| [SPARK-12641](https://issues.apache.org/jira/browse/SPARK-12641) | Remove unused code related to Hadoop 0.23 |  Minor | Spark Core | Kousuke Saruta | Kousuke Saruta |
| [SPARK-12627](https://issues.apache.org/jira/browse/SPARK-12627) | Remove SparkContext preferred locations constructor |  Blocker | Spark Core | Andrew Or | Reynold Xin |
| [SPARK-12618](https://issues.apache.org/jira/browse/SPARK-12618) | Clean up build warnings: 2.0.0 edition |  Minor | Spark Core, SQL, Streaming | Sean Owen | Sean Owen |
| [SPARK-12615](https://issues.apache.org/jira/browse/SPARK-12615) | Remove some deprecated APIs in RDD/SparkContext |  Major | Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-12604](https://issues.apache.org/jira/browse/SPARK-12604) | Java count(AprroxDistinct)ByKey methods return Scala Long not Java |  Minor | Java API, Spark Core | Sean Owen | Sean Owen |
| [SPARK-12600](https://issues.apache.org/jira/browse/SPARK-12600) | Remove deprecated methods in SQL / DataFrames |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-12593](https://issues.apache.org/jira/browse/SPARK-12593) | Convert basic resolved logical plans back to SQL query strings |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-12588](https://issues.apache.org/jira/browse/SPARK-12588) | Remove HTTPBroadcast |  Major | Spark Core | Josh Rosen | Reynold Xin |
| [SPARK-12578](https://issues.apache.org/jira/browse/SPARK-12578) | Parser should not silently ignore the distinct keyword used in an aggregate function when OVER clause is used |  Major | SQL | Reynold Xin | Liang-Chi Hsieh |
| [SPARK-12577](https://issues.apache.org/jira/browse/SPARK-12577) | better support of parentheses in partition by and order by clause of window function's over clause |  Major | SQL | Reynold Xin | Liang-Chi Hsieh |
| [SPARK-12576](https://issues.apache.org/jira/browse/SPARK-12576) | Enable expression parsing (used in DataFrames) |  Major | SQL | Reynold Xin | Herman van Hovell |
| [SPARK-12575](https://issues.apache.org/jira/browse/SPARK-12575) | Grammar parity with existing SQL parser |  Major | SQL | Reynold Xin | Herman van Hovell |
| [SPARK-12574](https://issues.apache.org/jira/browse/SPARK-12574) | Move parser from hive module to catalyst (or sql-core) module |  Major | SQL | Reynold Xin | Herman van Hovell |
| [SPARK-12573](https://issues.apache.org/jira/browse/SPARK-12573) | Add acknowledge that the parser was initially from Hive |  Major | SQL | Reynold Xin | Herman van Hovell |
| [SPARK-12572](https://issues.apache.org/jira/browse/SPARK-12572) | Initial import of the Hive parser |  Major | SQL | Reynold Xin | Nong Li |
| [SPARK-12568](https://issues.apache.org/jira/browse/SPARK-12568) | Add BINARY to Encoders |  Major | SQL | Michael Armbrust | Apache Spark |
| [SPARK-12561](https://issues.apache.org/jira/browse/SPARK-12561) | Remove JobLogger |  Major | Spark Core | Andrew Or | Reynold Xin |
| [SPARK-12539](https://issues.apache.org/jira/browse/SPARK-12539) | support writing bucketed table |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-12495](https://issues.apache.org/jira/browse/SPARK-12495) | use true as default value for propagateNull in NewInstance |  Major | SQL | Wenchen Fan | Apache Spark |
| [SPARK-12481](https://issues.apache.org/jira/browse/SPARK-12481) | Remove usage of Hadoop deprecated APIs and reflection that supported 1.x |  Major | Spark Core, SQL, Streaming | Sean Owen | Sean Owen |
| [SPARK-12480](https://issues.apache.org/jira/browse/SPARK-12480) | add Hash expression that can calculate hash value for a group of expressions |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-12456](https://issues.apache.org/jira/browse/SPARK-12456) | Add ExpressionDescription to misc functions |  Major | SQL | Yin Huai | Xiu (Joe) Guo |
| [SPARK-12393](https://issues.apache.org/jira/browse/SPARK-12393) | Add read.text and write.text for SparkR |  Major | SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-12371](https://issues.apache.org/jira/browse/SPARK-12371) | Make sure non-nullable arguments of NewInstance don't receive null input data |  Major | SQL | Cheng Lian | Apache Spark |
| [SPARK-12342](https://issues.apache.org/jira/browse/SPARK-12342) | Corr (Pearson correlation) should be nullable |  Major | SQL | Cheng Lian | Davies Liu |
| [SPARK-12341](https://issues.apache.org/jira/browse/SPARK-12341) | The "comment" field of DESCRIBE result set should be nullable |  Minor | SQL | Cheng Lian | Davies Liu |
| [SPARK-12336](https://issues.apache.org/jira/browse/SPARK-12336) | Outer join using multiple columns results in wrong nullability |  Major | SQL | Cheng Lian | Davies Liu |
| [SPARK-12335](https://issues.apache.org/jira/browse/SPARK-12335) | CentralMomentAgg should be nullable |  Major | SQL | Cheng Lian | Davies Liu |
| [SPARK-12320](https://issues.apache.org/jira/browse/SPARK-12320) | throw exception if the number of fields does not line up for Tuple encoder |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-12310](https://issues.apache.org/jira/browse/SPARK-12310) | Add write.json and write.parquet for SparkR |  Major | SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-12296](https://issues.apache.org/jira/browse/SPARK-12296) | Feature parity for pyspark.mllib StandardScalerModel |  Minor | MLlib, PySpark | Joseph K. Bradley | holdenk |
| [SPARK-12274](https://issues.apache.org/jira/browse/SPARK-12274) | WrapOption should not have type constraint for child |  Major | SQL | Wenchen Fan | Apache Spark |
| [SPARK-12252](https://issues.apache.org/jira/browse/SPARK-12252) | refactor MapObjects to make it less hacky |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-12215](https://issues.apache.org/jira/browse/SPARK-12215) | User guide section for KMeans in spark.ml |  Major | Documentation, ML | Joseph K. Bradley | Yu Ishikawa |
| [SPARK-12212](https://issues.apache.org/jira/browse/SPARK-12212) | Clarify the distinction between spark.mllib and spark.ml |  Major | Documentation | Timothy Hunter | Timothy Hunter |
| [SPARK-12199](https://issues.apache.org/jira/browse/SPARK-12199) | Follow-up: Refine example code in ml-features.md |  Major | Documentation | Xusen Yin | Xusen Yin |
| [SPARK-12174](https://issues.apache.org/jira/browse/SPARK-12174) | Slow test: BlockManagerSuite."SPARK-9591: getRemoteBytes from another location when Exception throw" |  Major | Tests | Josh Rosen | Josh Rosen |
| [SPARK-12152](https://issues.apache.org/jira/browse/SPARK-12152) | Speed up Scalastyle by only running one SBT command instead of four |  Major | Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-12146](https://issues.apache.org/jira/browse/SPARK-12146) | SparkR jsonFile should support multiple input files |  Major | SparkR | Yanbo Liang | Yanbo Liang |
| [SPARK-12041](https://issues.apache.org/jira/browse/SPARK-12041) | Add columnSimilarities to IndexedRowMatrix for PySpark |  Minor | MLlib, PySpark | Yanbo Liang | Kai Jiang |
| [SPARK-11978](https://issues.apache.org/jira/browse/SPARK-11978) | Move dataset\_example.py to examples/ml and rename to dataframe\_example.py |  Minor | ML, MLlib, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-11964](https://issues.apache.org/jira/browse/SPARK-11964) | Create user guide section explaining export/import |  Major | Documentation, ML | Joseph K. Bradley | Bill Chambers |
| [SPARK-11945](https://issues.apache.org/jira/browse/SPARK-11945) | Add computeCost to KMeansModel for PySpark spark.ml |  Minor | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-11925](https://issues.apache.org/jira/browse/SPARK-11925) | Add PySpark missing methods for ml.feature during Spark 1.6 QA |  Minor | ML, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-11815](https://issues.apache.org/jira/browse/SPARK-11815) | PySpark DecisionTreeClassifier & DecisionTreeRegressor should support setSeed |  Minor | MLlib, PySpark | Yanbo Liang | Yanbo Liang |
| [SPARK-11807](https://issues.apache.org/jira/browse/SPARK-11807) | Remove support for Hadoop \< 2.2 (i.e. Hadoop 1 and 2.0) |  Major | Build | Reynold Xin | Reynold Xin |
| [SPARK-11608](https://issues.apache.org/jira/browse/SPARK-11608) | ML 1.6 QA: Programming guide update and migration guide |  Major | Documentation, ML, MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-11605](https://issues.apache.org/jira/browse/SPARK-11605) | ML 1.6 QA: API: Java compatibility, docs |  Major | Documentation, Java API, ML, MLlib | Joseph K. Bradley | yuhao yang |
| [SPARK-11602](https://issues.apache.org/jira/browse/SPARK-11602) | ML 1.6 QA: API: New Scala APIs, docs |  Major | Documentation, ML, MLlib | Joseph K. Bradley | yuhao yang |
| [SPARK-11563](https://issues.apache.org/jira/browse/SPARK-11563) | Use RpcEnv to transfer generated classes in spark-shell |  Major | Spark Shell | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-11314](https://issues.apache.org/jira/browse/SPARK-11314) | Add service API and test service for Yarn Cluster schedulers |  Major | YARN | Steve Loughran | Steve Loughran |
| [SPARK-11199](https://issues.apache.org/jira/browse/SPARK-11199) | Improve R context management story and add getOrCreate |  Minor | SparkR | Felix Cheung | Hossein Falaki |
| [SPARK-11140](https://issues.apache.org/jira/browse/SPARK-11140) | Replace file server in driver with RPC-based alternative |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-11097](https://issues.apache.org/jira/browse/SPARK-11097) | Add connection established callback to lower level RPC layer so we don't need to check for new connections in NettyRpcHandler.receive |  Major | Spark Core | Reynold Xin | Shixiong Zhu |
| [SPARK-11031](https://issues.apache.org/jira/browse/SPARK-11031) | SparkR str() method on DataFrame objects |  Major | SparkR | Oscar D. Lara Yejas | Oscar D. Lara Yejas |
| [SPARK-10580](https://issues.apache.org/jira/browse/SPARK-10580) | Remove Bagel |  Major | GraphX | Sean Owen | Reynold Xin |
| [SPARK-9972](https://issues.apache.org/jira/browse/SPARK-9972) | Add `struct`, `encode` and `decode` function in SparkR |  Major | SparkR | Yu Ishikawa | Sun Rui |
| [SPARK-9694](https://issues.apache.org/jira/browse/SPARK-9694) | Add random seed Param to Scala CrossValidator |  Minor | ML | Joseph K. Bradley | Yanbo Liang |
| [SPARK-9690](https://issues.apache.org/jira/browse/SPARK-9690) | Add random seed Param to PySpark CrossValidator |  Minor | ML, PySpark | Martin Menestret | Martin Menestret |
| [SPARK-9622](https://issues.apache.org/jira/browse/SPARK-9622) | DecisionTreeRegressor: provide variance of prediction |  Minor | ML | Joseph K. Bradley | Yanbo Liang |
| [SPARK-9297](https://issues.apache.org/jira/browse/SPARK-9297) | covar\_pop and covar\_samp aggregate functions |  Major | SQL | Yin Huai | Liang-Chi Hsieh |
| [SPARK-9057](https://issues.apache.org/jira/browse/SPARK-9057) | Add Scala, Java and Python example to show DStream.transform |  Major | Streaming | Tathagata Das | Jeff Lam |
| [SPARK-8641](https://issues.apache.org/jira/browse/SPARK-8641) | Native Spark Window Functions |  Major | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-7995](https://issues.apache.org/jira/browse/SPARK-7995) | Remove AkkaRpcEnv and remove Akka from the dependencies of Core |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7689](https://issues.apache.org/jira/browse/SPARK-7689) | Remove TTL-based metadata cleaning (spark.cleaner.ttl) |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-6724](https://issues.apache.org/jira/browse/SPARK-6724) | Model import/export for FPGrowth |  Minor | MLlib | Joseph K. Bradley | Yanbo Liang |
| [SPARK-6518](https://issues.apache.org/jira/browse/SPARK-6518) | Add example code and user guide for bisecting k-means |  Major | Documentation, MLlib | Yu Ishikawa | Yu Ishikawa |
| [SPARK-6280](https://issues.apache.org/jira/browse/SPARK-6280) | Remove Akka systemName from Spark |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-4819](https://issues.apache.org/jira/browse/SPARK-4819) | Remove Guava's "Optional" from public API |  Major | Spark Core | Marcelo Vanzin | Sean Owen |
| [SPARK-3873](https://issues.apache.org/jira/browse/SPARK-3873) | Scala style: check import ordering |  Major | Project Infra | Reynold Xin | Marcelo Vanzin |
| [SPARK-2331](https://issues.apache.org/jira/browse/SPARK-2331) | SparkContext.emptyRDD should return RDD[T] not EmptyRDD[T] |  Minor | Spark Core | Ian Hummel | Reynold Xin |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-12758](https://issues.apache.org/jira/browse/SPARK-12758) | Add note to Spark SQL Migration section about SPARK-11724 |  Minor | SQL | Brandon Bradley | Brandon Bradley |
| [SPARK-12722](https://issues.apache.org/jira/browse/SPARK-12722) | Typo in Spark Pipeline example |  Trivial | Documentation | Tom Chan | Jeff Lam |
| [SPARK-12703](https://issues.apache.org/jira/browse/SPARK-12703) | Spark KMeans Documentation Python Api |  Minor | MLlib | Anton | Joseph K. Bradley |
| [SPARK-12570](https://issues.apache.org/jira/browse/SPARK-12570) | DecisionTreeRegressor: provide variance of prediction: user guide update |  Minor | Documentation, ML | Joseph K. Bradley | Yanbo Liang |
| [SPARK-12507](https://issues.apache.org/jira/browse/SPARK-12507) | Expose closeFileAfterWrite and allowBatching configurations for Streaming |  Minor | Documentation, Streaming | Shixiong Zhu | Apache Spark |
| [SPARK-12351](https://issues.apache.org/jira/browse/SPARK-12351) | Add documentation of submitting Mesos jobs with cluster mode |  Major | . | Timothy Chen | Timothy Chen |
| [SPARK-12286](https://issues.apache.org/jira/browse/SPARK-12286) | Support UnsafeRow in all SparkPlan (if possible) |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-12217](https://issues.apache.org/jira/browse/SPARK-12217) | Document invalid handling for StringIndexer |  Minor | ML | Benjamin Fradet | Benjamin Fradet |
| [SPARK-12211](https://issues.apache.org/jira/browse/SPARK-12211) | Incorrect version number in graphx doc for migration from 1.1 |  Minor | Documentation, GraphX | Andrew Ray | Andrew Ray |
| [SPARK-12159](https://issues.apache.org/jira/browse/SPARK-12159) | Add user guide section for IndexToString transformer |  Minor | ML | Joseph K. Bradley | Benjamin Fradet |
| [SPARK-12093](https://issues.apache.org/jira/browse/SPARK-12093) | Fix the error of comment in DDLParser |  Trivial | Documentation | Yadong Qi | Yadong Qi |
| [SPARK-11476](https://issues.apache.org/jira/browse/SPARK-11476) | Incorrect function referred to in MLib Random data generation documentation |  Minor | Documentation | Jason Blochowiak | Sean Owen |
| [SPARK-9571](https://issues.apache.org/jira/browse/SPARK-9571) | Improve expression function coverage |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-12640](https://issues.apache.org/jira/browse/SPARK-12640) | Add benchmarks to measure the speed ups of UnsafeRowParquetReaderReader. |  Minor | SQL | Nong Li | Nong Li |


