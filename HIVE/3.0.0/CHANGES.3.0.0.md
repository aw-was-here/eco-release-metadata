
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

## Release 3.0.0 - Unreleased (as of 2017-03-28)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-16281](https://issues.apache.org/jira/browse/HIVE-16281) | Upgrade master branch to JDK8 |  Major | Hive | Aihua Xu | Aihua Xu |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-16242](https://issues.apache.org/jira/browse/HIVE-16242) | Run BeeLine tests parallel |  Major | Testing Infrastructure | Peter Vary | Peter Vary |
| [HIVE-16152](https://issues.apache.org/jira/browse/HIVE-16152) | TestBeeLineDriver logging improvements |  Major | Testing Infrastructure | Peter Vary | Peter Vary |
| [HIVE-12274](https://issues.apache.org/jira/browse/HIVE-12274) | Increase width of columns used for general configuration in the metastore. |  Major | Metastore | Elliot West | Naveen Gangam |
| [HIVE-12299](https://issues.apache.org/jira/browse/HIVE-12299) | Hive Column Data Type definition in schema limited to 4000 characters - too small |  Major | Hive | Lakshmi Ramakrishnan | Naveen Gangam |
| [HIVE-14145](https://issues.apache.org/jira/browse/HIVE-14145) | Too small length of column 'PARAM\_VALUE' in table 'SERDE\_PARAMS' |  Major | Metastore | Oleksiy Sayankin | Oleksiy Sayankin |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-15644](https://issues.apache.org/jira/browse/HIVE-15644) | Collect LLAP's JVM metrics via Hive's JvmPauseMonitor |  Major | Hive | Wei Zheng | Wei Zheng |
| [HIVE-9815](https://issues.apache.org/jira/browse/HIVE-9815) | Metastore column"SERDE\_PARAMS"."PARAM\_VALUE"  limited to 4000 bytes |  Critical | Metastore | Naveen Gangam | Naveen Gangam |
| [HIVE-15249](https://issues.apache.org/jira/browse/HIVE-15249) | HIve 2.1.0 is throwing InvalidObjectException(message:Invalid column type name is too long |  Major | Hive | vishal.rajan | Naveen Gangam |
| [HIVE-16188](https://issues.apache.org/jira/browse/HIVE-16188) | beeline should block the connection if given invalid database name. |  Minor | Hive | Pavas Garg | Sahil Takiar |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-16276](https://issues.apache.org/jira/browse/HIVE-16276) | Fix NoSuchMethodError: com.amazonaws.services.s3.transfer.TransferManagerConfiguration.setMultipartUploadThreshold(I)V |  Major | Druid integration | Sahil Takiar | Jesus Camacho Rodriguez |


