
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
# Apache Spark  1.4.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [SPARK-7746](https://issues.apache.org/jira/browse/SPARK-7746) | *Major* | **SetFetchSize for JDBCRDD's prepareStatement**

The prepareStatement created internal to compute() method in JDBCRDD should have some options that the setFetchSize() can be set.  We found that the parameter can affect Oracle DB tremendously. With current implementation, we have no way to set the size.  

One of my team did his implementation, and we found 10X improvement by setting the size to a proper number.


---

* [SPARK-6994](https://issues.apache.org/jira/browse/SPARK-6994) | *Minor* | **Allow to fetch field values by name in sql.Row**

It looked weird that up to now there was no way in Spark's Scala API to access fields of `DataFrame/sql.Row` by name, only by their index.

This tries to solve this issue.



