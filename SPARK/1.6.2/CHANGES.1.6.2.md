
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

## Release 1.6.2 - Unreleased (as of 2016-05-12)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-11515](https://issues.apache.org/jira/browse/SPARK-11515) | QuantileDiscretizer should take random seed |  Minor | ML | Joseph K. Bradley | Yu Ishikawa |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-13599](https://issues.apache.org/jira/browse/SPARK-13599) | Groovy-all ends up in spark-assembly if hive profile set |  Minor | Build | Steve Loughran | Steve Loughran |
| [SPARK-13663](https://issues.apache.org/jira/browse/SPARK-13663) | Upgrade Snappy Java to 1.1.2.1 |  Minor | Spark Core | Ted Yu | Y Y |
| [SPARK-13810](https://issues.apache.org/jira/browse/SPARK-13810) | Add Port Configuration Suggestions on Bind Exceptions |  Minor | Spark Core | Bjorn Jonsson | Bjorn Jonsson |
| [SPARK-14058](https://issues.apache.org/jira/browse/SPARK-14058) | Incorrect docstring in Window.orderBy |  Trivial | PySpark | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-14107](https://issues.apache.org/jira/browse/SPARK-14107) | PySpark spark.ml GBT algs need seed Param |  Minor | ML, PySpark | Joseph K. Bradley | Seth Hendrickson |
| [SPARK-14149](https://issues.apache.org/jira/browse/SPARK-14149) | Log exceptions in tryOrIOException |  Major | Spark Core | Reynold Xin | Reynold Xin |
| [SPARK-14242](https://issues.apache.org/jira/browse/SPARK-14242) | avoid too many copies in network when a network frame is large |  Major | Input/Output, Spark Core | Zhang, Liye | Zhang, Liye |
| [SPARK-14787](https://issues.apache.org/jira/browse/SPARK-14787) | Upgrade Joda-Time library from 2.9 to 2.9.3 |  Trivial | SQL | Hyukjin Kwon | Hyukjin Kwon |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-13023](https://issues.apache.org/jira/browse/SPARK-13023) | Check for presence of 'root' module after computing test\_modules, not changed\_modules |  Major | Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-13444](https://issues.apache.org/jira/browse/SPARK-13444) | QuantileDiscretizer chooses bad splits on large DataFrames |  Major | MLlib | Oliver Pierson | Oliver Pierson |
| [SPARK-12941](https://issues.apache.org/jira/browse/SPARK-12941) | Spark-SQL JDBC Oracle dialect fails to map string datatypes to Oracle VARCHAR datatype |  Major | Spark Core | Jose Martinez Poblete | Thomas Sebastian |
| [SPARK-13522](https://issues.apache.org/jira/browse/SPARK-13522) | Executor should kill itself when it's unable to heartbeat to the driver more than N times |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-13652](https://issues.apache.org/jira/browse/SPARK-13652) | TransportClient.sendRpcSync returns wrong results |  Major | . | huangyu | Shixiong Zhu |
| [SPARK-13705](https://issues.apache.org/jira/browse/SPARK-13705) | UpdateStateByKey Operation documentation incorrectly refers to StatefulNetworkWordCount |  Trivial | Documentation | Rishi | Rishi |
| [SPARK-13648](https://issues.apache.org/jira/browse/SPARK-13648) | org.apache.spark.sql.hive.client.VersionsSuite fails NoClassDefFoundError on IBM JDK |  Minor | SQL | Tim Preece | Tim Preece |
| [SPARK-13711](https://issues.apache.org/jira/browse/SPARK-13711) | Apache Spark driver stopping JVM when master not available |  Major | Spark Core | Era | Shixiong Zhu |
| [SPARK-13755](https://issues.apache.org/jira/browse/SPARK-13755) | Escape quotes in SQL plan visualization node labels |  Major | SQL | Josh Rosen | Josh Rosen |
| [SPARK-13631](https://issues.apache.org/jira/browse/SPARK-13631) | getPreferredLocations race condition in spark 1.6.0? |  Major | Scheduler | Andy Sloane | Andy Sloane |
| [SPARK-13242](https://issues.apache.org/jira/browse/SPARK-13242) | Moderately complex `when` expression causes code generation failure |  Major | SQL | Joe Halliwell | Davies Liu |
| [SPARK-13327](https://issues.apache.org/jira/browse/SPARK-13327) | colnames()\<- allows invalid column names |  Major | SparkR | Oscar D. Lara Yejas | Oscar D. Lara Yejas |
| [SPARK-13207](https://issues.apache.org/jira/browse/SPARK-13207) | \_SUCCESS should not break partition discovery |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-13803](https://issues.apache.org/jira/browse/SPARK-13803) | Standalone master does not balance cluster-mode drivers across workers |  Major | Deploy, Spark Core | Brian Wongchaowart | Nan Zhu |
| [SPARK-13642](https://issues.apache.org/jira/browse/SPARK-13642) | Properly handle signal kill of ApplicationMaster |  Major | YARN | Saisai Shao | Saisai Shao |
| [SPARK-13901](https://issues.apache.org/jira/browse/SPARK-13901) | We get wrong logdebug information when jump to the next locality level. |  Trivial | Scheduler, Spark Core | yaoyin | yaoyin |
| [SPARK-13958](https://issues.apache.org/jira/browse/SPARK-13958) | Executor OOM due to unbounded growth of pointer array in Sorter |  Major | Shuffle, Spark Core | Sital Kedia | Sital Kedia |
| [SPARK-13772](https://issues.apache.org/jira/browse/SPARK-13772) | DataType mismatch about decimal |  Major | SQL | cen yuhai | cen yuhai |
| [SPARK-14006](https://issues.apache.org/jira/browse/SPARK-14006) | Builds of 1.6 branch fail R style check |  Major | SparkR, Tests | Yin Huai | Sun Rui |
| [SPARK-13806](https://issues.apache.org/jira/browse/SPARK-13806) | SQL round() produces incorrect results for negative values |  Major | SQL | Mark Hamstra | Davies Liu |
| [SPARK-14074](https://issues.apache.org/jira/browse/SPARK-14074) | Use fixed version of install\_github in SparkR build |  Minor | Build, SparkR | Xiangrui Meng | Sun Rui |
| [SPARK-14187](https://issues.apache.org/jira/browse/SPARK-14187) | Incorrect use of binarysearch in SparseMatrix |  Minor | MLlib | Chenliang Xu | Chenliang Xu |
| [SPARK-13622](https://issues.apache.org/jira/browse/SPARK-13622) | Issue creating level db file for YARN shuffle service if URI is used in yarn.nodemanager.local-dirs |  Minor | YARN | Nicolas Fraison | Nicolas Fraison |
| [SPARK-14219](https://issues.apache.org/jira/browse/SPARK-14219) | Fix `pickRandomVertex` not to fall into infinite loops for graphs with one vertex |  Major | GraphX | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-14232](https://issues.apache.org/jira/browse/SPARK-14232) | Event timeline on job page doesn't show if an executor is removed with multiple line reason |  Minor | Web UI | Carson Wang | Carson Wang |
| [SPARK-11507](https://issues.apache.org/jira/browse/SPARK-11507) | Error thrown when using BlockMatrix.add |  Minor | MLlib | Kareem Alhazred | yuhao yang |
| [SPARK-11327](https://issues.apache.org/jira/browse/SPARK-11327) | spark-dispatcher doesn't pass along some spark properties |  Major | Mesos | Alan Braithwaite | Jo Voordeckers |
| [SPARK-13845](https://issues.apache.org/jira/browse/SPARK-13845) | BlockStatus and StreamBlockId keep on growing result driver OOM |  Major | Spark Core | jeanlyn | jeanlyn |
| [SPARK-14368](https://issues.apache.org/jira/browse/SPARK-14368) | Support python.spark.worker.memory with upper-case unit |  Trivial | PySpark | Masahiro TANAKA | Yong Tang |
| [SPARK-14243](https://issues.apache.org/jira/browse/SPARK-14243) | updatedBlockStatuses does not update correctly when removing blocks |  Major | Spark Core | jeanlyn | jeanlyn |
| [SPARK-14322](https://issues.apache.org/jira/browse/SPARK-14322) | Use treeAggregate instead of reduce in OnlineLDAOptimizer |  Major | ML, MLlib | Joseph K. Bradley | yuhao yang |
| [SPARK-14468](https://issues.apache.org/jira/browse/SPARK-14468) | Always enable OutputCommitCoordinator |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-14454](https://issues.apache.org/jira/browse/SPARK-14454) | Better exception handling while marking tasks as failed |  Major | Spark Core | Sameer Agarwal | Sameer Agarwal |
| [SPARK-14357](https://issues.apache.org/jira/browse/SPARK-14357) | Tasks that fail due to CommitDeniedException (a side-effect of speculation) can cause job failure |  Critical | Spark Core | Jason Moore | Jason Moore |
| [SPARK-13352](https://issues.apache.org/jira/browse/SPARK-13352) | BlockFetch does not scale well on large block |  Critical | Block Manager, Spark Core | Davies Liu | Zhang, Liye |
| [SPARK-14298](https://issues.apache.org/jira/browse/SPARK-14298) | LDA should support disable checkpoint |  Minor | ML, MLlib | Yanbo Liang | Yanbo Liang |
| [SPARK-14563](https://issues.apache.org/jira/browse/SPARK-14563) | SQLTransformer.transformSchema is not implemented correctly |  Major | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-14363](https://issues.apache.org/jira/browse/SPARK-14363) | Executor OOM due to a memory leak in Sorter |  Major | Shuffle | Sital Kedia | Sital Kedia |
| [SPARK-14665](https://issues.apache.org/jira/browse/SPARK-14665) | PySpark StopWordsRemover default stopwords are Java object |  Minor | ML, PySpark | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-13227](https://issues.apache.org/jira/browse/SPARK-13227) | Risky apply() in OpenHashMap |  Minor | Spark Core | Nan Zhu | Nan Zhu |
| [SPARK-14679](https://issues.apache.org/jira/browse/SPARK-14679) | UI DAG visualization causes OOM generating data |  Major | Web UI | Ryan Blue | Ryan Blue |
| [SPARK-14739](https://issues.apache.org/jira/browse/SPARK-14739) | Vectors.parse doesn't handle dense vectors of size 0 and sparse vectors with no indices |  Major | MLlib, PySpark | Maciej Szymkiewicz | Arash Parsa |
| [SPARK-14159](https://issues.apache.org/jira/browse/SPARK-14159) | StringIndexerModel sets output column metadata incorrectly |  Minor | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-14671](https://issues.apache.org/jira/browse/SPARK-14671) | Pipeline.setStages needs to handle Array non-covariance |  Minor | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-14965](https://issues.apache.org/jira/browse/SPARK-14965) | StructType throws exception for missing field |  Minor | SQL | Gregory Hart | Gregory Hart |
| [SPARK-14757](https://issues.apache.org/jira/browse/SPARK-14757) | Incorrect behavior of Join operation in Spqrk SQL JOIN : "false" in the left table is joined to "null" on the right table |  Major | SQL | HUANG Hong | Reynold Xin |
| [SPARK-14915](https://issues.apache.org/jira/browse/SPARK-14915) | Tasks that fail due to CommitDeniedException (a side-effect of speculation) can cause job to never complete |  Critical | . | Jason Moore | Jason Moore |
| [SPARK-13566](https://issues.apache.org/jira/browse/SPARK-13566) | Deadlock between MemoryStore and BlockManager |  Major | Block Manager, Spark Core | cen yuhai | cen yuhai |
| [SPARK-15209](https://issues.apache.org/jira/browse/SPARK-15209) | Web UI's timeline visualizations fails to render if descriptions contain single quotes |  Major | Web UI | Josh Rosen | Josh Rosen |
| [SPARK-14495](https://issues.apache.org/jira/browse/SPARK-14495) | Distinct aggregation cannot be used in the having clause |  Major | SQL | Yin Huai | Xin Wu |
| [SPARK-15260](https://issues.apache.org/jira/browse/SPARK-15260) | UnifiedMemoryManager could be in bad state if any exception happen while evicting blocks |  Major | Spark Core | Davies Liu | Andrew Or |
| [SPARK-15262](https://issues.apache.org/jira/browse/SPARK-15262) | race condition in killing an executor and reregistering an executor |  Major | Spark Core | Shixiong Zhu | Andrew Or |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-14618](https://issues.apache.org/jira/browse/SPARK-14618) | RegressionEvaluator doc out of date |  Minor | Documentation, ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-15223](https://issues.apache.org/jira/browse/SPARK-15223) | spark.executor.logs.rolling.maxSize wrongly referred to as spark.executor.logs.rolling.size.maxBytes |  Minor | Documentation | Philipp Hoffmann | Philipp Hoffmann |


