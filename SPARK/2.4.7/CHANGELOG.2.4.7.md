
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

## Release 2.4.7 - 2020-09-12



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-32609](https://issues.apache.org/jira/browse/SPARK-32609) | Incorrect exchange reuse with DataSourceV2 |  Major | SQL | Mingjia Liu | Mingjia Liu |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-31889](https://issues.apache.org/jira/browse/SPARK-31889) | Docker release script does not allocate enough memory to reliably publish |  Critical | Build | Holden Karau | Holden Karau |
| [SPARK-31860](https://issues.apache.org/jira/browse/SPARK-31860) | Only push release tags on success |  Major | Build | Holden Karau | Holden Karau |
| [SPARK-31954](https://issues.apache.org/jira/browse/SPARK-31954) | delete duplicate test cases in hivequerysuite |  Minor | SQL, Tests | philipse | philipse |
| [SPARK-32073](https://issues.apache.org/jira/browse/SPARK-32073) | Drop R \< 3.5 support |  Major | R | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32089](https://issues.apache.org/jira/browse/SPARK-32089) | Upgrade R version to 4.0.2 in the release DockerFile |  Major | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32428](https://issues.apache.org/jira/browse/SPARK-32428) | [EXAMPLES] Make BinaryClassificationMetricsExample consistently print the metrics on driver's stdout |  Trivial | Examples | Itsuki Toyota | Itsuki Toyota |
| [SPARK-32397](https://issues.apache.org/jira/browse/SPARK-32397) | Snapshot artifacts can have differing timestamps, making it hard to consume |  Minor | Build | Holden Karau | Holden Karau |
| [SPARK-32560](https://issues.apache.org/jira/browse/SPARK-32560) | improve exception message |  Minor | SQL | philipse | philipse |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-28818](https://issues.apache.org/jira/browse/SPARK-28818) | FrequentItems applies an incorrect schema to the resulting dataframe when nulls are present |  Minor | SQL | Matt Hawes | Matt Hawes |
| [SPARK-31511](https://issues.apache.org/jira/browse/SPARK-31511) | Make BytesToBytesMap iterator() thread-safe |  Major | SQL | Herman van Hövell | Herman van Hövell |
| [SPARK-31854](https://issues.apache.org/jira/browse/SPARK-31854) | Different results of query execution with wholestage codegen on and off |  Major | SQL | Pasha Finkeshteyn | Takeshi Yamamuro |
| [SPARK-31903](https://issues.apache.org/jira/browse/SPARK-31903) | toPandas with Arrow enabled doesn't show metrics in Query UI. |  Major | PySpark, R | Takuya Ueshin | Takuya Ueshin |
| [SPARK-31923](https://issues.apache.org/jira/browse/SPARK-31923) | Event log cannot be generated when some internal accumulators use unexpected types |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-31941](https://issues.apache.org/jira/browse/SPARK-31941) | Handling the exception in SparkUI for getSparkUser method |  Minor | Spark Core | Saurabh Chawla | Saurabh Chawla |
| [SPARK-31935](https://issues.apache.org/jira/browse/SPARK-31935) | Hadoop file system config should be effective in data source options |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-31967](https://issues.apache.org/jira/browse/SPARK-31967) | Loading jobs UI page takes 40 seconds |  Blocker | Web UI | Gengliang Wang | Gengliang Wang |
| [SPARK-31968](https://issues.apache.org/jira/browse/SPARK-31968) | write.partitionBy() creates duplicate subdirectories when user provides duplicate columns |  Major | SQL | Xuzhou Qin | JinxinTang |
| [SPARK-31997](https://issues.apache.org/jira/browse/SPARK-31997) | Should drop test\_udtf table when SingleSessionSuite completed |  Minor | Tests | Yang Jie | Yang Jie |
| [SPARK-32000](https://issues.apache.org/jira/browse/SPARK-32000) | Fix the flaky testcase for partially launched task in barrier-mode. |  Minor | Spark Core, Tests | Kousuke Saruta | wuyi |
| [SPARK-31871](https://issues.apache.org/jira/browse/SPARK-31871) | Display the canvas element icon for sorting column |  Minor | Spark Core, Web UI | liucht-inspur | liucht-inspur |
| [SPARK-31980](https://issues.apache.org/jira/browse/SPARK-31980) | Spark sequence() fails if start and end of range are identical dates |  Minor | SQL | Dave DeCaprio | JinxinTang |
| [SPARK-32034](https://issues.apache.org/jira/browse/SPARK-32034) | Port HIVE-14817: Shutdown the SessionManager timeoutChecker thread properly upon shutdown |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-32044](https://issues.apache.org/jira/browse/SPARK-32044) | [SS] 2.4 Kafka continuous processing print mislead initial offsets log |  Trivial | Structured Streaming | Zhongwei Zhu | Zhongwei Zhu |
| [SPARK-31918](https://issues.apache.org/jira/browse/SPARK-31918) | SparkR CRAN check gives a warning with R 4.0.0 on OSX |  Blocker | SparkR | Shivaram Venkataraman | Hyukjin Kwon |
| [SPARK-32028](https://issues.apache.org/jira/browse/SPARK-32028) | App id link in history summary page point to wrong application attempt |  Minor | Web UI | Zhen Li | Zhen Li |
| [SPARK-32098](https://issues.apache.org/jira/browse/SPARK-32098) | Use iloc for positional slicing instead of direct slicing in createDataFrame with Arrow |  Critical | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32115](https://issues.apache.org/jira/browse/SPARK-32115) | Incorrect results for SUBSTRING when overflow |  Blocker | SQL | Yuanjian Li | Yuanjian Li |
| [SPARK-32131](https://issues.apache.org/jira/browse/SPARK-32131) | Fix AnalysisException messages at UNION/INTERSECT/EXCEPT/MINUS operations |  Minor | SQL | philipse | philipse |
| [SPARK-32167](https://issues.apache.org/jira/browse/SPARK-32167) | nullability of GetArrayStructFields is incorrect |  Blocker | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-32214](https://issues.apache.org/jira/browse/SPARK-32214) | The type conversion function generated in makeFromJava for "other"  type uses a wrong variable. |  Minor | SQL | Kousuke Saruta | Kousuke Saruta |
| [SPARK-32024](https://issues.apache.org/jira/browse/SPARK-32024) | Disk usage tracker went negative in HistoryServerDiskManager |  Minor | Web UI | Zhen Li | Zhen Li |
| [SPARK-32035](https://issues.apache.org/jira/browse/SPARK-32035) | Inconsistent AWS environment variables in documentation |  Minor | Documentation | Ondrej Kokes | Richard Joerger |
| [SPARK-32238](https://issues.apache.org/jira/browse/SPARK-32238) | Use Utils.getSimpleName to avoid hitting Malformed class name in ScalaUDF |  Minor | SQL | wuyi | wuyi |
| [SPARK-32300](https://issues.apache.org/jira/browse/SPARK-32300) | toPandas with no partitions should work |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32344](https://issues.apache.org/jira/browse/SPARK-32344) | Unevaluable expr is set to FIRST/LAST ignoreNullsExpr in distinct aggregates |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-32377](https://issues.apache.org/jira/browse/SPARK-32377) | CaseInsensitiveMap should be deterministic for addition |  Major | SQL | Girish A Pandit | Dongjoon Hyun |
| [SPARK-32379](https://issues.apache.org/jira/browse/SPARK-32379) | docker based spark release script should use correct CRAN repo. |  Blocker | Build | Prashant Sharma | Prashant Sharma |
| [SPARK-32003](https://issues.apache.org/jira/browse/SPARK-32003) | Shuffle files for lost executor are not unregistered if fetch failure occurs after executor is lost |  Major | Scheduler | Wing Yew Poon | Wing Yew Poon |
| [SPARK-32364](https://issues.apache.org/jira/browse/SPARK-32364) | Use CaseInsensitiveMap for DataFrameReader/Writer options |  Major | SQL | Girish A Pandit | Dongjoon Hyun |
| [SPARK-32280](https://issues.apache.org/jira/browse/SPARK-32280) | AnalysisException thrown when query contains several JOINs |  Major | PySpark | David Lindelöf | wuyi |
| [SPARK-32372](https://issues.apache.org/jira/browse/SPARK-32372) | "Resolved attribute(s) XXX missing" after dudup conflict references |  Major | SQL | wuyi | wuyi |
| [SPARK-32556](https://issues.apache.org/jira/browse/SPARK-32556) | Fix release script to uri encode the user provided passwords. |  Major | Build, Project Infra | Prashant Sharma | Prashant Sharma |
| [SPARK-31703](https://issues.apache.org/jira/browse/SPARK-31703) | Changes made by SPARK-26985 break reading parquet files correctly in BigEndian architectures (AIX + LinuxPPC64) |  Blocker | Spark Core | Michail Giannakopoulos | Tin Hang To |
| [SPARK-32625](https://issues.apache.org/jira/browse/SPARK-32625) | Log error message when falling back to interpreter mode |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-32672](https://issues.apache.org/jira/browse/SPARK-32672) | Data corruption in some cached compressed boolean columns |  Blocker | SQL | Robert Joseph Evans | Robert Joseph Evans |
| [SPARK-32693](https://issues.apache.org/jira/browse/SPARK-32693) | Compare two dataframes with same schema except nullable property |  Minor | SQL | david bernuau | L. C. Hsieh |
| [SPARK-32771](https://issues.apache.org/jira/browse/SPARK-32771) | The example of expressions.Aggregator in Javadoc / Scaladoc is wrong |  Minor | docs | Kousuke Saruta | Kousuke Saruta |
| [SPARK-32810](https://issues.apache.org/jira/browse/SPARK-32810) | CSV/JSON data sources should avoid globbing paths when inferring schema |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-32812](https://issues.apache.org/jira/browse/SPARK-32812) | Run tests script for Python fails in certain environments |  Major | PySpark, Tests | Haejoon Lee | Haejoon Lee |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-31966](https://issues.apache.org/jira/browse/SPARK-31966) | Flaky test: pyspark.mllib.tests.test\_streaming\_algorithms StreamingLogisticRegressionWithSGDTests.test\_training\_and\_prediction |  Minor | MLlib, PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32318](https://issues.apache.org/jira/browse/SPARK-32318) | Add a test case to EliminateSortsSuite for protecting ORDER BY in DISTRIBUTE BY |  Minor | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-32367](https://issues.apache.org/jira/browse/SPARK-32367) | Fix typo of parameter in KubernetesTestComponents |  Trivial | Kubernetes | merrily01 | merrily01 |
| [SPARK-32249](https://issues.apache.org/jira/browse/SPARK-32249) | Run Github Actions builds in other branches as well |  Major | Project Infra | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-32695](https://issues.apache.org/jira/browse/SPARK-32695) | Add 'build' and 'project/build.properties' into cache key of SBT and Zinc |  Major | Project Infra | Hyukjin Kwon | Hyukjin Kwon |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-32674](https://issues.apache.org/jira/browse/SPARK-32674) | Add suggestion for parallel directory listing in tuning doc |  Minor | Documentation | Chao Sun | Chao Sun |


