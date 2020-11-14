
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
# Apache Sentry Changelog

## Release 2.3.0 - Unreleased (as of 2020-11-14)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-2540](https://issues.apache.org/jira/browse/SENTRY-2540) | Only use SELECT action for filter SHOW DATABASES and SHOW TABLES command based on configuration |  Major | . | Na Li | Na Li |
| [SENTRY-2422](https://issues.apache.org/jira/browse/SENTRY-2422) | HMS synchronization is causing multiple entries of the same ID in SENTRY\_HMS\_NOTIFICATION\_ID |  Major | Core | Brian Towles | Na Li |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-2545](https://issues.apache.org/jira/browse/SENTRY-2545) | Rolling back Privilege Cache to SimplePrivilegeCache does not work |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2557](https://issues.apache.org/jira/browse/SENTRY-2557) | Queries are running too slow after when there are more than 4k roles |  Critical | sentrystore | Kalyan Kalvagadda | Kalyan Kalvagadda |
| [SENTRY-2558](https://issues.apache.org/jira/browse/SENTRY-2558) | Issue in creating full snapshot when the storage descriptor for a table is null. |  Major | . | Kalyan Kalvagadda | Kalyan Kalvagadda |


