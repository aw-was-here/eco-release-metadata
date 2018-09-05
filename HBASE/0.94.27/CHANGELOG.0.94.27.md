
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
# Apache HBase Changelog

## Release 0.94.27 - 2015-03-25



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12223](https://issues.apache.org/jira/browse/HBASE-12223) | MultiTableInputFormatBase.getSplits is too slow |  Minor | Client | shanwen | YuanBo Peng |
| [HBASE-12720](https://issues.apache.org/jira/browse/HBASE-12720) | Make InternalScan LimitedPrivate |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-11195](https://issues.apache.org/jira/browse/HBASE-11195) | Potentially improve block locality during major compaction for old regions |  Major | . | churro morales | churro morales |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12792](https://issues.apache.org/jira/browse/HBASE-12792) | [backport] HBASE-5835: Catch and handle NotServingRegionException when close region attempt fails |  Trivial | hbck | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-12801](https://issues.apache.org/jira/browse/HBASE-12801) | Failed to truncate a table while maintaing binary region boundaries |  Minor | shell | Liu Shaohui | Liu Shaohui |
| [HBASE-10528](https://issues.apache.org/jira/browse/HBASE-10528) | DefaultBalancer selects plans to move regions onto draining nodes |  Major | . | churro morales | churro morales |
| [HBASE-12968](https://issues.apache.org/jira/browse/HBASE-12968) | [0.94]SecureServer should not ignore CallQueueSize |  Major | . | hongyu bi | hongyu bi |
| [HBASE-13039](https://issues.apache.org/jira/browse/HBASE-13039) | Add patchprocess/\* to .gitignore to fix builds of branches |  Major | build | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13131](https://issues.apache.org/jira/browse/HBASE-13131) | ReplicationAdmin leaks connections if there's an error in the constructor |  Critical | Replication | Sean Busbey | Sean Busbey |
| [HBASE-13229](https://issues.apache.org/jira/browse/HBASE-13229) | Specify bash for local-regionservers.sh and local-master-backup.sh |  Minor | scripts | Gustavo Anatoly | Gustavo Anatoly |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12776](https://issues.apache.org/jira/browse/HBASE-12776) | SpliTransaction: Log number of files to be split |  Minor | . | Lars Hofhansl | Lars Hofhansl |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13020](https://issues.apache.org/jira/browse/HBASE-13020) | Add 'patchprocess/\*' to RAT excludes on all branches |  Major | . | Andrew Purtell | Andrew Purtell |


