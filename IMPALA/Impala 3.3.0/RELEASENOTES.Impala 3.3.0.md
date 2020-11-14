
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
# Apache Impala  Impala 3.3.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [IMPALA-9391](https://issues.apache.org/jira/browse/IMPALA-9391) | *Critical* | **Impala 3.3.0  can't support Transactional (ACID) tables**

IMPALA-8813  has already support  Create, Insert, and read Insert-only ACID tables

but,I created the hive table like this
{code:java}
CREATE TABLE test\_orc9 (
id INT,
name STRING
)
CLUSTERED BY (id)  INTO 5 BUCKETS
STORED AS ORC
TBLPROPERTIES("transactional"="true","transactional\_properties"="insert\_only","compress.mode"="SNAPPY")
;
{code}
Query sql: select \* from test\_orc9

Error: AnalysisException: Table ods.test\_orc9 not supported. Transactional (ACID) tables are only supported for read



