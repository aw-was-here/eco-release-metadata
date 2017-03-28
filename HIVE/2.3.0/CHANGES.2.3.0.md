
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

## Release 2.3.0 - Unreleased (as of 2017-03-28)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-12274](https://issues.apache.org/jira/browse/HIVE-12274) | Increase width of columns used for general configuration in the metastore. |  Major | Metastore | Elliot West | Naveen Gangam |
| [HIVE-12299](https://issues.apache.org/jira/browse/HIVE-12299) | Hive Column Data Type definition in schema limited to 4000 characters - too small |  Major | Hive | Lakshmi Ramakrishnan | Naveen Gangam |
| [HIVE-14145](https://issues.apache.org/jira/browse/HIVE-14145) | Too small length of column 'PARAM\_VALUE' in table 'SERDE\_PARAMS' |  Major | Metastore | Oleksiy Sayankin | Oleksiy Sayankin |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-14801](https://issues.apache.org/jira/browse/HIVE-14801) | improve TestPartitionNameWhitelistValidation stability |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-16274](https://issues.apache.org/jira/browse/HIVE-16274) | Support tuning of NDV of columns using lower/upper bounds |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-9815](https://issues.apache.org/jira/browse/HIVE-9815) | Metastore column"SERDE\_PARAMS"."PARAM\_VALUE"  limited to 4000 bytes |  Critical | Metastore | Naveen Gangam | Naveen Gangam |
| [HIVE-15249](https://issues.apache.org/jira/browse/HIVE-15249) | HIve 2.1.0 is throwing InvalidObjectException(message:Invalid column type name is too long |  Major | Hive | vishal.rajan | Naveen Gangam |
| [HIVE-16188](https://issues.apache.org/jira/browse/HIVE-16188) | beeline should block the connection if given invalid database name. |  Minor | Hive | Pavas Garg | Sahil Takiar |


