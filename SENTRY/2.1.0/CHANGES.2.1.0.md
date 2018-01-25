
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

## Release 2.1.0 - Unreleased (as of 2018-01-25)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-2076](https://issues.apache.org/jira/browse/SENTRY-2076) | Some test artifacts are not defined at test scope |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [SENTRY-1951](https://issues.apache.org/jira/browse/SENTRY-1951) | Old SentryStore.retrieveFullPathsImage() should be removed |  Major | Sentry | Alexander Kolbasov | Arjun Mishra |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-2049](https://issues.apache.org/jira/browse/SENTRY-2049) | Remove hive-authz2 profile from the sentry-dist module |  Trivial | Sentry | Sergio Peña | Steve Moist |
| [SENTRY-379](https://issues.apache.org/jira/browse/SENTRY-379) | Db entities are not captured when firing failurehook for SentryAccessDeniedException |  Minor | . | Sravya Tirukkovalur |  |
| [SENTRY-2079](https://issues.apache.org/jira/browse/SENTRY-2079) | Sentry HA leader monitor does not work due to a mix of curator versions in the classpath |  Blocker | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-2082](https://issues.apache.org/jira/browse/SENTRY-2082) | Exclude javax.servlet-3.0.0.v201112011016.jar from Sentry dist |  Blocker | Sentry | Sergio Peña | Sergio Peña |
| [SENTRY-2084](https://issues.apache.org/jira/browse/SENTRY-2084) | Exclude javax.jms:jms from sentry distribution |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-2092](https://issues.apache.org/jira/browse/SENTRY-2092) | Drop Role log message shows "Creating role" |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2040](https://issues.apache.org/jira/browse/SENTRY-2040) | When getting Snapshots from HMS we need more logging around cases when a snapshot is not being received |  Major | Sentry | Arjun Mishra | Arjun Mishra |
| [SENTRY-2078](https://issues.apache.org/jira/browse/SENTRY-2078) | Have sentry server print an obvious INFO level log message when it becomes the writer |  Minor | Sentry | Arjun Mishra | Arjun Mishra |
| [SENTRY-1662](https://issues.apache.org/jira/browse/SENTRY-1662) | Constants java uses mutable collection |  Minor | Sentry | Alexander Kolbasov | Steve Moist |
| [SENTRY-2085](https://issues.apache.org/jira/browse/SENTRY-2085) | Sentry error handling exposes SentryGroupNotFoundException externally |  Major | . | Zach Amsden | Zach Amsden |
| [SENTRY-2120](https://issues.apache.org/jira/browse/SENTRY-2120) | Escape input string for error response message in LogLevelServlet |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2034](https://issues.apache.org/jira/browse/SENTRY-2034) | Add e2e tests for testing HMS notification processing. |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-1819](https://issues.apache.org/jira/browse/SENTRY-1819) | HMSFollower and friends do not belong in sentry.service.thrift |  Minor | Sentry | Alexander Kolbasov | Xinran Tinney |
| [SENTRY-2123](https://issues.apache.org/jira/browse/SENTRY-2123) | Specify code path of auth-generated thrift files for Javadoc and exclude them from Javadoc generation |  Major | Sentry | Na Li | Na Li |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-2094](https://issues.apache.org/jira/browse/SENTRY-2094) | Enable TestHDFSIntegrationWithHA tests |  Major | Sentry | Sergio Peña | Sergio Peña |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-2055](https://issues.apache.org/jira/browse/SENTRY-2055) | Update the pom file on master with the 2.1.0-SNAPSHOT. |  Major | Sentry | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [SENTRY-641](https://issues.apache.org/jira/browse/SENTRY-641) | Add binding for lily hbase indexer |  Major | . | Gregory Chanan | Mano Kovacs |
| [SENTRY-2023](https://issues.apache.org/jira/browse/SENTRY-2023) | Add sentry-shell support for hbase-indexer permissions |  Major | . | Mano Kovacs | Mano Kovacs |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SENTRY-2096](https://issues.apache.org/jira/browse/SENTRY-2096) | Fail unit tests at end during test-patch.py execution |  Major | Sentry | Na Li | Na Li |
| [SENTRY-2118](https://issues.apache.org/jira/browse/SENTRY-2118) | Document Configuration required to make Column authentication work |  Major | Sentry | Na Li | Na Li |


