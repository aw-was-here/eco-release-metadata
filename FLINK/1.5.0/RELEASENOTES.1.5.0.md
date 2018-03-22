
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
# Apache Flink  1.5.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [FLINK-8076](https://issues.apache.org/jira/browse/FLINK-8076) | *Major* | **Upgrade KinesisProducer to 0.10.6 to set properties approperiately**

The AWS KPL version used in the Kinesis connector has been upgraded to 0.10.6.


---

* [FLINK-7806](https://issues.apache.org/jira/browse/FLINK-7806) | *Minor* | **Move CurrentJobsOverviewHandler to jobs/overview**

REST API breaking change:
The jobs overview handler is now registered under /jobs/overview instead of /joboverview.


---

* [FLINK-7815](https://issues.apache.org/jira/browse/FLINK-7815) | *Minor* | **Remove grouping from MultipleJobsDetails**

REST API breaking changes:
The return type of the jobs overview handler is now a list of job details instead of the pre grouped view where we differentiate between running, finished, cancelled and failed jobs.


---

* [FLINK-8668](https://issues.apache.org/jira/browse/FLINK-8668) | *Major* | **Remove "hadoop classpath" from config.sh**

We removed the automatic hadoop classpath discovery via the hadoop binary. If you want Flink to pick up the Hadoop classpath you have to export HADOOP\_CLASSPATH. On cloud environments and most Hadoop distributions you would do {{export HADOOP\_CLASSPATH=\`hadoop classpath\`}}.


---

* [FLINK-8741](https://issues.apache.org/jira/browse/FLINK-8741) | *Blocker* | **KafkaFetcher09/010/011 uses wrong user code classloader**

Merged.

1.5.0: 2886a41728c0c13b3d01221c502a3e2a7014605d
1.4.2: 0396fc8c03a64f1281f2a535b2702188c5234f5c


---

* [FLINK-8859](https://issues.apache.org/jira/browse/FLINK-8859) | *Major* | **RocksDB backend should pass WriteOption to Rocks.put() when restoring**

Merged in 131daa28bf.


---

* [FLINK-8922](https://issues.apache.org/jira/browse/FLINK-8922) | *Major* | **Revert FLINK-8859 because it causes segfaults in testing**

Merged in a389b43581.


---

* [FLINK-6951](https://issues.apache.org/jira/browse/FLINK-6951) | *Critical* | **Incompatible versions of httpcomponents jars for Flink kinesis connector**

**WARNING: No release note provided for this change.**


---

* [FLINK-8459](https://issues.apache.org/jira/browse/FLINK-8459) | *Blocker* | **Implement cancelWithSavepoint in RestClusterClient**

The REST API to trigger the "cancel with savepoint" action has changed, and is not backwards compatible.



