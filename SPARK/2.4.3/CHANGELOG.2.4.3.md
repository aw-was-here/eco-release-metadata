
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

## Release 2.4.3 - 2019-05-07



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-27469](https://issues.apache.org/jira/browse/SPARK-27469) | Update Commons BeanUtils to 1.9.3 |  Minor | Spark Core | Sean R. Owen | Sean R. Owen |
| [SPARK-27563](https://issues.apache.org/jira/browse/SPARK-27563) | automatically get the latest Spark versions in HiveExternalCatalogVersionsSuite |  Major | SQL | Wenchen Fan | Wenchen Fan |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-25535](https://issues.apache.org/jira/browse/SPARK-25535) | Work around bad error checking in commons-crypto |  Major | Spark Core | Marcelo Masiero Vanzin | Marcelo Masiero Vanzin |
| [SPARK-26891](https://issues.apache.org/jira/browse/SPARK-26891) | Flaky test:YarnSchedulerBackendSuite."RequestExecutors reflects node blacklist and is serializable" |  Major | Spark Core, YARN | Attila Zsolt Piros | Attila Zsolt Piros |
| [SPARK-24935](https://issues.apache.org/jira/browse/SPARK-24935) | Problem with Executing Hive UDF's from Spark 2.2 Onwards |  Major | SQL | Parth Gandhi | Parth Gandhi |
| [SPARK-27496](https://issues.apache.org/jira/browse/SPARK-27496) | RPC should send back the fatal errors |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-27544](https://issues.apache.org/jira/browse/SPARK-27544) | Fix Python test script to work on Scala-2.12 build |  Minor | PySpark, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-27550](https://issues.apache.org/jira/browse/SPARK-27550) | Fix \`test-dependencies.sh\` not to use \`kafka-0-8\` profile for Scala-2.12 |  Minor | Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-27494](https://issues.apache.org/jira/browse/SPARK-27494) | Null keys/values don't work in Kafka source v2 |  Major | Structured Streaming | Shixiong Zhu | Genmao Yu |
| [SPARK-27539](https://issues.apache.org/jira/browse/SPARK-27539) | Fix inaccurate aggregate outputRows estimation with column containing null values |  Major | SQL | peng bo | peng bo |


