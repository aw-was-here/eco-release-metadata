
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

## Release Impala 2.13.0 - Unreleased (as of 2018-03-22)



### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-6615](https://issues.apache.org/jira/browse/IMPALA-6615) | An insert query using a CTE does not show the expected output when executed in Impala-shell |  Trivial | Clients | Luis E Martinez-Poblete | Fredy Wijaya |
| [IMPALA-6619](https://issues.apache.org/jira/browse/IMPALA-6619) | Alter table recover partitions creates unneeded partitions when faces percent sign |  Major | Frontend | Miklos Szurap | Fredy Wijaya |
| [IMPALA-5315](https://issues.apache.org/jira/browse/IMPALA-5315) | Cast to timestamp fails for YYYY-M-D format |  Major | Backend | Greg Rahn | Vincent Tran |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-6630](https://issues.apache.org/jira/browse/IMPALA-6630) | Test casting from timestamp to string with leading and trailing whitespace |  Minor | Backend | Tim Armstrong | Vincent Tran |


