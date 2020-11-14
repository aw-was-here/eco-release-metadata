
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
# Apache Oozie Changelog

## Release 5.3.0 - Unreleased (as of 2020-11-14)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-3066](https://issues.apache.org/jira/browse/OOZIE-3066) | Possibility to set retry-max globally |  Major | . | Gézapeti | Qs Bao |
| [OOZIE-3305](https://issues.apache.org/jira/browse/OOZIE-3305) | Prometheus /metrics http endpoint for monitoring integration |  Major | monitoring | Hari Sekhon | Qs Bao |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-3555](https://issues.apache.org/jira/browse/OOZIE-3555) | Remove unnecessary StandardCharsets.UTF\_8.name() calls |  Major | core | Zsombor Gegesy | Zsombor Gegesy |
| [OOZIE-3549](https://issues.apache.org/jira/browse/OOZIE-3549) | Add back support for truststore passwords |  Major | . | Andras Salamon | Mate Juhasz |
| [OOZIE-3579](https://issues.apache.org/jira/browse/OOZIE-3579) | [docs] Fix typos in coordinator documentation |  Minor | docs | Qs Bao | Qs Bao |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-3559](https://issues.apache.org/jira/browse/OOZIE-3559) | Code generation encoding error in fluent-job-api |  Major | fluent-job | duan xiong | duan xiong |
| [OOZIE-3536](https://issues.apache.org/jira/browse/OOZIE-3536) | Invalid configuration tag \<additionalparam\> in maven-javadoc-plugin |  Major | build | duan xiong | duan xiong |
| [OOZIE-3491](https://issues.apache.org/jira/browse/OOZIE-3491) | Confusing System ID error message |  Minor | . | Andras Salamon | Mate Juhasz |
| [OOZIE-3561](https://issues.apache.org/jira/browse/OOZIE-3561) | Forkjoin validation is slow when there are many actions in chain |  Critical | core | Dénes Bodó | Dénes Bodó |
| [OOZIE-3538](https://issues.apache.org/jira/browse/OOZIE-3538) | Invalid \<perCoreThreadCount\> value is pom.xml |  Major | build | duan xiong | duan xiong |
| [OOZIE-3557](https://issues.apache.org/jira/browse/OOZIE-3557) | [build] Update required minimum maven version |  Major | . | Andras Salamon | Andras Salamon |
| [OOZIE-3566](https://issues.apache.org/jira/browse/OOZIE-3566) | Wrong numbers provided by Oozie monitoring webservices.requests sampler |  Major | . | Maxim Kolesnikov | Maxim Kolesnikov |
| [OOZIE-3571](https://issues.apache.org/jira/browse/OOZIE-3571) | Wrong log string substitution in CredentialsProviderFactory class |  Minor | core | Adam Arvai | Adam Arvai |
| [OOZIE-3573](https://issues.apache.org/jira/browse/OOZIE-3573) | Fix oozie-default.xml descriptions |  Minor | . | Andras Salamon | Adam Arvai |
| [OOZIE-3578](https://issues.apache.org/jira/browse/OOZIE-3578) | MapReduce counters cannot be used over 120 |  Critical | core | Dénes Bodó | Dénes Bodó |
| [OOZIE-3569](https://issues.apache.org/jira/browse/OOZIE-3569) | SSH Action should add checking success file |  Major | . | Junfan Zhang | Junfan Zhang |
| [OOZIE-3551](https://issues.apache.org/jira/browse/OOZIE-3551) | Spark shouldn't obtain tokens withing the Spark action |  Major | . | Liz Szilagyi | Liz Szilagyi |
| [OOZIE-3590](https://issues.apache.org/jira/browse/OOZIE-3590) | Fix missing log expression parameter in SLACalculatorMemory |  Major | core | Junfan Zhang | Junfan Zhang |
| [OOZIE-3589](https://issues.apache.org/jira/browse/OOZIE-3589) | Avoid calling copyActionData method multiple times in ReRunXCommand |  Major | core | Junfan Zhang | Junfan Zhang |
| [OOZIE-3584](https://issues.apache.org/jira/browse/OOZIE-3584) | Fork-join action issue when action param cannot be resolved |  Major | core | Janos Makai | Janos Makai |
| [OOZIE-3592](https://issues.apache.org/jira/browse/OOZIE-3592) | Do not print misleading SecurityException for successful jobs |  Major | . | Mate Juhasz | Mate Juhasz |
| [OOZIE-3586](https://issues.apache.org/jira/browse/OOZIE-3586) | Oozie spark actions using --keytab fail due to duplicate dist. cache |  Major | . | Janos Makai | Janos Makai |
| [OOZIE-3601](https://issues.apache.org/jira/browse/OOZIE-3601) | Upgrade quartz to 2.3.2 |  Major | . | Andras Salamon | dengliming |
| [OOZIE-3608](https://issues.apache.org/jira/browse/OOZIE-3608) | Coordinator emits wrong WARN about TimeZones |  Minor | coordinator | Lars Francke | Lars Francke |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [OOZIE-3575](https://issues.apache.org/jira/browse/OOZIE-3575) | Add credential support for cloud file systems |  Major | core | Mate Juhasz | Mate Juhasz |
| [OOZIE-3574](https://issues.apache.org/jira/browse/OOZIE-3574) | JavaAction create incorrect fileSystem instance in addActionLibs method |  Major | . | Junfan Zhang | Junfan Zhang |


