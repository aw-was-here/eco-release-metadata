
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
# Apache Spark  1.5.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [SPARK-10398](https://issues.apache.org/jira/browse/SPARK-10398) | *Minor* | **Migrate Spark download page to use new lua mirroring scripts**

From infra team :

If you refer to www.apache.org/dyn/closer.cgi, please refer to
www.apache.org/dyn/closer.lua instead from now on.

Any non-conforming CGI scripts are no longer enabled, and are all
rewritten to go to our new mirror system.


---

* [SPARK-10354](https://issues.apache.org/jira/browse/SPARK-10354) | *Minor* | **First cost RDD shouldn't be cached in k-means\|\| and the following cost RDD should use MEMORY\_AND\_DISK**

The first RDD doesn't need to be cached, other cost RDDs should use MEMORY\_AND\_DISK to avoid recomputing.


---

* [SPARK-10348](https://issues.apache.org/jira/browse/SPARK-10348) | *Major* | **Improve Spark ML user guide**

improve ml-guide:

* replace `ML Dataset` by `DataFrame` to simplify the abstraction
* remove links to Scala API doc in the main guide
* change ML algorithms to pipeline components


---

* [SPARK-10331](https://issues.apache.org/jira/browse/SPARK-10331) | *Major* | **Update user guide to address minor comments during code review**

Clean-up user guides to address some minor comments in:

https://github.com/apache/spark/pull/8304
https://github.com/apache/spark/pull/8487

Some code examples were introduced in 1.2 before `createDataFrame`. We should switch to that.



