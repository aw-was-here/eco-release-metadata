
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
# Hadoop Changelog

## Release 2.0.4-alpha - 2013-04-25

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-4649](https://issues.apache.org/jira/browse/HDFS-4649) | Webhdfs cannot list large directories |  Blocker | namenode, security, webhdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-4646](https://issues.apache.org/jira/browse/HDFS-4646) | createNNProxyWithClientProtocol ignores configured timeout value |  Minor | namenode | Jagane Sundar | Jagane Sundar |
| [HDFS-4581](https://issues.apache.org/jira/browse/HDFS-4581) | DataNode#checkDiskError should not be called on network errors |  Major | datanode | Rohit Kochar | Rohit Kochar |
| [HDFS-4576](https://issues.apache.org/jira/browse/HDFS-4576) | Webhdfs authentication issues |  Major | webhdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-4571](https://issues.apache.org/jira/browse/HDFS-4571) | WebHDFS should not set the service hostname on the server side |  Major | webhdfs | Alejandro Abdelnur | Alejandro Abdelnur |
| [HDFS-3344](https://issues.apache.org/jira/browse/HDFS-3344) | Unreliable corrupt blocks counting in TestProcessCorruptBlocks |  Major | namenode | Tsz Wo Nicholas Sze | Kihwal Lee |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-4577](https://issues.apache.org/jira/browse/HDFS-4577) | Webhdfs operations should declare if authentication is required |  Major | webhdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-4567](https://issues.apache.org/jira/browse/HDFS-4567) | Webhdfs does not need a token for token operations |  Major | webhdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-4566](https://issues.apache.org/jira/browse/HDFS-4566) | Webdhfs token cancelation should use authentication |  Major | webhdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-4560](https://issues.apache.org/jira/browse/HDFS-4560) | Webhdfs cannot use tokens obtained by another user |  Major | webhdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-4548](https://issues.apache.org/jira/browse/HDFS-4548) | Webhdfs doesn't renegotiate SPNEGO token |  Blocker | . | Daryn Sharp | Daryn Sharp |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


