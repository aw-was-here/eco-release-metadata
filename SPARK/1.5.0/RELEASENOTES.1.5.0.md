
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
# Apache Spark  1.5.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [SPARK-10578](https://issues.apache.org/jira/browse/SPARK-10578) | *Major* | **pyspark.ml.classification.RandomForestClassifer does not return `rawPrediction` column**

To use `pyspark.ml.classification.RandomForestClassifer` with `BinaryClassificationEvaluator`, a column called `rawPrediction` needs to be returned by the `RandomForestClassifer`. 
The PySpark documentation example of `logisticsRegression`outputs the `rawPrediction` column but not `RandomForestClassifier`.

Therefore, one is unable to use `RandomForestClassifier` with the evaluator nor put it in a pipeline with cross validation.

A relevant piece of code showing how to reproduce the bug can be found at:
https://gist.github.com/karenyyng/cf61ae655b032f754bfb

A relevant post due to this possible bug can also be found at:
http://apache-spark-user-list.1001560.n3.nabble.com/Issue-with-running-CrossValidator-with-RandomForestClassifier-on-dataset-td23791.html


---

* [SPARK-6936](https://issues.apache.org/jira/browse/SPARK-6936) | *Major* | **SQLContext.sql() caused deadlock in multi-thread env**

Doing (the same query) in more than one threads with SQLConext.sql may lead to deadlock. Here is a way to reproduce it (since this is multi-thread issue, the reproduction may or may not be so easy).

1. Register a relatively big table.

2.  Create two different classes and in the classes, do the same query in a method and put the results in a set and print out the set size.

3.  Create two threads to use an object from each class in the run method. Start the threads. For my tests,  it can have a deadlock just in a few runs.



