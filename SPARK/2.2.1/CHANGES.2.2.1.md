
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

## Release 2.2.1 - Unreleased (as of 2017-06-03)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-20861](https://issues.apache.org/jira/browse/SPARK-20861) | Pyspark CrossValidator & TrainValidationSplit should delegate parameter looping to estimators |  Minor | ML, PySpark | Bago Amirbekian | Bago Amirbekian |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-20140](https://issues.apache.org/jira/browse/SPARK-20140) | Remove hardcoded kinesis retry wait and max retries |  Major | DStreams | Yash Sharma | Yash Sharma |
| [SPARK-20756](https://issues.apache.org/jira/browse/SPARK-20756) | yarn-shuffle jar has references to unshaded guava and contains scala classes |  Major | YARN | Mark Grover | Mark Grover |
| [SPARK-20814](https://issues.apache.org/jira/browse/SPARK-20814) | Mesos scheduler does not respect spark.executor.extraClassPath configuration |  Critical | Mesos | Gene Pang | Marcelo Vanzin |
| [SPARK-20365](https://issues.apache.org/jira/browse/SPARK-20365) | Not so accurate classpath format for AM and Containers |  Minor | YARN | Saisai Shao |  |
| [SPARK-20922](https://issues.apache.org/jira/browse/SPARK-20922) | Unsafe deserialization in Spark LauncherConnection |  Major | Spark Submit | Aditya Sharad | Marcelo Vanzin |


