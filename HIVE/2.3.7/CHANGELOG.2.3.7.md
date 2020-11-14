
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
# Apache Hive Changelog

## Release 2.3.7 - 2020-04-18



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-22249](https://issues.apache.org/jira/browse/HIVE-22249) | Support Parquet through HCatalog |  Major | . | Jay Green-Stevens | Jay Green-Stevens |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-21980](https://issues.apache.org/jira/browse/HIVE-21980) | Parsing time can be high in case of deeply nested subqueries |  Major | Parser | Zoltan Haindrich | Zoltan Haindrich |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-21508](https://issues.apache.org/jira/browse/HIVE-21508) | ClassCastException when initializing HiveMetaStoreClient on JDK10 or newer |  Major | Clients | Adar Dembo | Ana Jalba |
| [HIVE-23086](https://issues.apache.org/jira/browse/HIVE-23086) | Two tests fail on branch-2.3 |  Major | Test | Alan Gates | Alan Gates |
| [HIVE-23807](https://issues.apache.org/jira/browse/HIVE-23807) | Wrong results with vectorization enabled |  Major | Vectorization | Vineet Garg | Vineet Garg |


