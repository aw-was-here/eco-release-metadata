
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

## Release 0.94.20 - 2014-05-29



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11008](https://issues.apache.org/jira/browse/HBASE-11008) | Align bulk load, flush, and compact to require Action.CREATE |  Major | security | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-11119](https://issues.apache.org/jira/browse/HBASE-11119) | Update ExportSnapShot to optionally not use a tmp file on external file system |  Minor | snapshots | Ted Malaska | Ted Malaska |
| [HBASE-11128](https://issues.apache.org/jira/browse/HBASE-11128) | Add -target option to ExportSnapshot to export with a different name |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11134](https://issues.apache.org/jira/browse/HBASE-11134) | Add a -list-snapshots option to SnapshotInfo |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10958](https://issues.apache.org/jira/browse/HBASE-10958) | [dataloss] Bulk loading with seqids can prevent some log entries from being replayed |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-11143](https://issues.apache.org/jira/browse/HBASE-11143) | Improve replication metrics |  Major | Replication | Lars Hofhansl | Lars Hofhansl |
| [HBASE-11188](https://issues.apache.org/jira/browse/HBASE-11188) | "Inconsistent configuration" for SchemaMetrics is always shown |  Major | metrics | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-11110](https://issues.apache.org/jira/browse/HBASE-11110) | Ability to load FilterList class is dependent on context classloader |  Major | . | Gabriel Reid | Gabriel Reid |
| [HBASE-11225](https://issues.apache.org/jira/browse/HBASE-11225) | Backport fix for HBASE-10417 'index is not incremented in PutSortReducer#reduce()' |  Minor | . | Ted Yu | Gustavo Anatoly |
| [HBASE-11212](https://issues.apache.org/jira/browse/HBASE-11212) | Fix increment index in KeyValueSortReducer |  Minor | . | Gustavo Anatoly | Gustavo Anatoly |
| [HBASE-11247](https://issues.apache.org/jira/browse/HBASE-11247) | [0.94] update maven-site-plugin to 3.3 |  Major | build, site | Lars Hofhansl | Lars Hofhansl |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10936](https://issues.apache.org/jira/browse/HBASE-10936) | Add zeroByte encoding test |  Minor | test | Lars Hofhansl |  |


