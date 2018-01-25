
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

* [FLINK-6951](https://issues.apache.org/jira/browse/FLINK-6951) | *Critical* | **Incompatible versions of httpcomponents jars for Flink kinesis connector**

**WARNING: No release note provided for this change.**



