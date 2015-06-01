
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
# Changelog

## Release 0.8.0 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2468](https://issues.apache.org/jira/browse/TEZ-2468) | Change master to build against Java 7 |  Major | . | Siddharth Seth | Siddharth Seth |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2478](https://issues.apache.org/jira/browse/TEZ-2478) | Move OneToOne routing to store events in Tasks |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2463](https://issues.apache.org/jira/browse/TEZ-2463) | Update site for 0.7.0 release |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2454](https://issues.apache.org/jira/browse/TEZ-2454) | Change FetcherOrderedGroup to work as Callables instead of blocking threads |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2450](https://issues.apache.org/jira/browse/TEZ-2450) | support async http clients in ordered & unordered inputs |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2446](https://issues.apache.org/jira/browse/TEZ-2446) | Tez UI: Add tezVersion details when downloading timeline data for offline use |  Major | . | Rajesh Balamohan | Prakash Ramachandran |
| [TEZ-2419](https://issues.apache.org/jira/browse/TEZ-2419) | Inputs/Outputs should inform the Processor about Interrupts when interrupted during a blocking Op |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2198](https://issues.apache.org/jira/browse/TEZ-2198) | Fix sorter spill counts |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2076](https://issues.apache.org/jira/browse/TEZ-2076) | Tez framework to extract/analyze data stored in ATS for specific dag |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1752](https://issues.apache.org/jira/browse/TEZ-1752) | Inputs / Outputs in the Runtime library should be interruptable |  Major | . | Siddharth Seth | Rajesh Balamohan |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2504](https://issues.apache.org/jira/browse/TEZ-2504) | Tez UI: tables - show status column without scrolling, numeric 0 shown as Not available |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2503](https://issues.apache.org/jira/browse/TEZ-2503) | findbugs version isn't reported properly in test-patch report |  Minor | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2490](https://issues.apache.org/jira/browse/TEZ-2490) | TEZ-2450 breaks Hadoop 2.2 and 2.4 compatability |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2482](https://issues.apache.org/jira/browse/TEZ-2482) | Tez UI: Mouse events not working on IE11 |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2481](https://issues.apache.org/jira/browse/TEZ-2481) | Tez UI: graphical view does not render properly on IE11 |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2466](https://issues.apache.org/jira/browse/TEZ-2466) | tez-history-parser breaks hadoop 2.2 compatability |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2461](https://issues.apache.org/jira/browse/TEZ-2461) | tez-history-parser compile fails with hadoop-2.4 |  Major | . | Jeff Zhang | Rajesh Balamohan |
| [TEZ-2455](https://issues.apache.org/jira/browse/TEZ-2455) | Tez UI: Dag view caching, error handling and minor layout changes |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2453](https://issues.apache.org/jira/browse/TEZ-2453) | Tez UI: show the dagInfo is the application has set the same. |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2440](https://issues.apache.org/jira/browse/TEZ-2440) | Sorter should check for indexCacheList.size() in flush() |  Major | . | Rajesh Balamohan | Mit Desai |
| [TEZ-2423](https://issues.apache.org/jira/browse/TEZ-2423) | Tez UI: Remove Attempt Index column from task-\>attempts page |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2416](https://issues.apache.org/jira/browse/TEZ-2416) | Tez UI: Make tooltips display faster. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2406](https://issues.apache.org/jira/browse/TEZ-2406) | Tez UI: Display per-io counter columns in task and attempt pages under vertex |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-1970](https://issues.apache.org/jira/browse/TEZ-1970) | Fix javadoc warnings in SortMergeJoinExample |  Major | . | Hitesh Shah | Mit Desai |
| [TEZ-1883](https://issues.apache.org/jira/browse/TEZ-1883) | Change findbugs version to 3.x |  Minor | . | Hitesh Shah | Siddharth Seth |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2447](https://issues.apache.org/jira/browse/TEZ-2447) | Tez UI: Generic changes based on feedbacks. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2436](https://issues.apache.org/jira/browse/TEZ-2436) | Tez UI: Add cancel button in column selector. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2422](https://issues.apache.org/jira/browse/TEZ-2422) | Update version on master to 0.8.0 |  Major | . | Siddharth Seth | Siddharth Seth |


