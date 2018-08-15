
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
# Apache Impala Changelog

## Release Impala 2.5.4 - Unreleased (as of 2018-08-15)



### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-3930](https://issues.apache.org/jira/browse/IMPALA-3930) | Impala throws IllegalStateException when [SHUFFLE] inserting data into a partition while select subquery group by partition columns |  Critical | Frontend | Huaisi Xu | Alexander Behm |
| [IMPALA-2570](https://issues.apache.org/jira/browse/IMPALA-2570) | Insert into/overwrite [SHUFFLE] hint is not applied unless the partition is not specified |  Critical | Frontend | Peter Ebert | Alexander Behm |


