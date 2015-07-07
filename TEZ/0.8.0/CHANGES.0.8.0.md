
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
# Apache Tez Changelog

## Release 0.8.0 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2565](https://issues.apache.org/jira/browse/TEZ-2565) | Consider scanning unfinished tasks in VertexImpl::constructStatistics to reduce merge overhead |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2468](https://issues.apache.org/jira/browse/TEZ-2468) | Change master to build against Java 7 |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2048](https://issues.apache.org/jira/browse/TEZ-2048) | Remove VertexManagerPluginContext.getTaskContainer() |  Blocker | . | Bikas Saha | Bikas Saha |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2599](https://issues.apache.org/jira/browse/TEZ-2599) | Dont send obsoleted data movement events to tasks |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2588](https://issues.apache.org/jira/browse/TEZ-2588) | Improper argument name |  Trivial | . | Jeff Zhang | Gabor Liptak |
| [TEZ-2575](https://issues.apache.org/jira/browse/TEZ-2575) | Handle KeyValue pairs size which do not fit in a single block |  Major | . | Saikat | Saikat |
| [TEZ-2561](https://issues.apache.org/jira/browse/TEZ-2561) | Port for TaskAttemptListenerImpTezDag should be configurable |  Major | . | Johannes Zillmann | Jeff Zhang |
| [TEZ-2478](https://issues.apache.org/jira/browse/TEZ-2478) | Move OneToOne routing to store events in Tasks |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2463](https://issues.apache.org/jira/browse/TEZ-2463) | Update site for 0.7.0 release |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2454](https://issues.apache.org/jira/browse/TEZ-2454) | Change FetcherOrderedGroup to work as Callables instead of blocking threads |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2450](https://issues.apache.org/jira/browse/TEZ-2450) | support async http clients in ordered & unordered inputs |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2446](https://issues.apache.org/jira/browse/TEZ-2446) | Tez UI: Add tezVersion details when downloading timeline data for offline use |  Major | . | Rajesh Balamohan | Prakash Ramachandran |
| [TEZ-2419](https://issues.apache.org/jira/browse/TEZ-2419) | Inputs/Outputs should inform the Processor about Interrupts when interrupted during a blocking Op |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2296](https://issues.apache.org/jira/browse/TEZ-2296) | Add option to print counters for tez-examples |  Minor | . | Jeff Zhang | Saikat |
| [TEZ-2198](https://issues.apache.org/jira/browse/TEZ-2198) | Fix sorter spill counts |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2076](https://issues.apache.org/jira/browse/TEZ-2076) | Tez framework to extract/analyze data stored in ATS for specific dag |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1961](https://issues.apache.org/jira/browse/TEZ-1961) | Remove misleading exception "No running dag" from AM logs |  Critical | . | Siddharth Seth | Jeff Zhang |
| [TEZ-1752](https://issues.apache.org/jira/browse/TEZ-1752) | Inputs / Outputs in the Runtime library should be interruptable |  Major | . | Siddharth Seth | Rajesh Balamohan |
| [TEZ-1314](https://issues.apache.org/jira/browse/TEZ-1314) | Port MAPREDUCE-5821 to Tez |  Major | . | Siddharth Seth | Rajesh Balamohan |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2579](https://issues.apache.org/jira/browse/TEZ-2579) | Incorrect comparison of TaskAttemptId |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2570](https://issues.apache.org/jira/browse/TEZ-2570) | Fix license header issue for eps image files |  Trivial | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2568](https://issues.apache.org/jira/browse/TEZ-2568) | V\_INPUT\_DATA\_INFORMATION may happen after vertex is initialized |  Blocker | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2567](https://issues.apache.org/jira/browse/TEZ-2567) | Tez UI: download dag data does not work within ambari |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2566](https://issues.apache.org/jira/browse/TEZ-2566) | Allow TaskAttemptFinishedEvent without TaskAttemptStartedEvent when it is KILLED/FAILED |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2559](https://issues.apache.org/jira/browse/TEZ-2559) | tez-ui fails compilation due to version dependency of frontend-maven-plugin |  Major | . | Rajesh Balamohan | Prakash Ramachandran |
| [TEZ-2558](https://issues.apache.org/jira/browse/TEZ-2558) | Upload additional Tez images |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2554](https://issues.apache.org/jira/browse/TEZ-2554) | Tez UI: View log link does not correctly propagate login crendential to read log from yarn web. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2552](https://issues.apache.org/jira/browse/TEZ-2552) | CRC errors can cause job to run for very long time in large jobs |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2548](https://issues.apache.org/jira/browse/TEZ-2548) | TezClient submitDAG can hang if the AM is in the process of shutting down |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2547](https://issues.apache.org/jira/browse/TEZ-2547) | Tez UI: Download Data fails on secure, cross-origin clusters |  Critical | UI | Jonathan Eagles | Jonathan Eagles |
| [TEZ-2545](https://issues.apache.org/jira/browse/TEZ-2545) | It is not necessary to start the vertex group commit when DAG is in TERMINATING |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2542](https://issues.apache.org/jira/browse/TEZ-2542) | TezDAGID fromString array length check |  Minor | . | Vasanth kumar RJ | Vasanth kumar RJ |
| [TEZ-2541](https://issues.apache.org/jira/browse/TEZ-2541) | DAGClientImpl enable TimelineClient check is wrong. |  Major | . | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2538](https://issues.apache.org/jira/browse/TEZ-2538) | ADDITIONAL\_SPILL\_COUNT wrongly populated for DefaultSorter with multiple partitions |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2537](https://issues.apache.org/jira/browse/TEZ-2537) | mapreduce.map.env and mapreduce.reduce.env need to fall back to mapred.child.env for compatibility |  Major | . | Jonathan Eagles | Rohini Palaniswamy |
| [TEZ-2534](https://issues.apache.org/jira/browse/TEZ-2534) | Error handling summary event when shutting down AM |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2533](https://issues.apache.org/jira/browse/TEZ-2533) | AM deadlock when shutdown |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2527](https://issues.apache.org/jira/browse/TEZ-2527) | Tez UI: Application hangs on entering erroneous RegEx in counter table search box. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2523](https://issues.apache.org/jira/browse/TEZ-2523) | Tez UI: derive applicationId from dag/vertex id instead of relying on json data |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2509](https://issues.apache.org/jira/browse/TEZ-2509) | YarnTaskSchedulerService should not try to allocate containers if AM is shutting down |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2506](https://issues.apache.org/jira/browse/TEZ-2506) | TestAysncHttpConnection failing |  Major | . | Siddharth Seth | Rajesh Balamohan |
| [TEZ-2504](https://issues.apache.org/jira/browse/TEZ-2504) | Tez UI: tables - show status column without scrolling, numeric 0 shown as Not available |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2503](https://issues.apache.org/jira/browse/TEZ-2503) | findbugs version isn't reported properly in test-patch report |  Minor | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2490](https://issues.apache.org/jira/browse/TEZ-2490) | TEZ-2450 breaks Hadoop 2.2 and 2.4 compatability |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2489](https://issues.apache.org/jira/browse/TEZ-2489) | Disable warn log for Timeline ACL error when tez.allow.disabled.timeline-domains set to true |  Major | . | Hitesh Shah | Chang Li |
| [TEZ-2486](https://issues.apache.org/jira/browse/TEZ-2486) | Update tez website to include links based on http://www.apache.org/foundation/marks/pmcs.html#navigation |  Critical | . | Hitesh Shah | Gabor Liptak |
| [TEZ-2482](https://issues.apache.org/jira/browse/TEZ-2482) | Tez UI: Mouse events not working on IE11 |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2481](https://issues.apache.org/jira/browse/TEZ-2481) | Tez UI: graphical view does not render properly on IE11 |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2475](https://issues.apache.org/jira/browse/TEZ-2475) | Tez local mode hanging in big testsuite |  Major | . | André Kelpe | Siddharth Seth |
| [TEZ-2473](https://issues.apache.org/jira/browse/TEZ-2473) | Consider using RawLocalFileSystem in MapOutput.createDiskMapOutput |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2466](https://issues.apache.org/jira/browse/TEZ-2466) | tez-history-parser breaks hadoop 2.2 compatability |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2461](https://issues.apache.org/jira/browse/TEZ-2461) | tez-history-parser compile fails with hadoop-2.4 |  Major | . | Jeff Zhang | Rajesh Balamohan |
| [TEZ-2455](https://issues.apache.org/jira/browse/TEZ-2455) | Tez UI: Dag view caching, error handling and minor layout changes |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2453](https://issues.apache.org/jira/browse/TEZ-2453) | Tez UI: show the dagInfo is the application has set the same. |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2440](https://issues.apache.org/jira/browse/TEZ-2440) | Sorter should check for indexCacheList.size() in flush() |  Major | . | Rajesh Balamohan | Mit Desai |
| [TEZ-2423](https://issues.apache.org/jira/browse/TEZ-2423) | Tez UI: Remove Attempt Index column from task-\>attempts page |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2416](https://issues.apache.org/jira/browse/TEZ-2416) | Tez UI: Make tooltips display faster. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2406](https://issues.apache.org/jira/browse/TEZ-2406) | Tez UI: Display per-io counter columns in task and attempt pages under vertex |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2391](https://issues.apache.org/jira/browse/TEZ-2391) | TestVertexImpl timing out at times on jenkins builds |  Blocker | . | Hitesh Shah | Mit Desai |
| [TEZ-2378](https://issues.apache.org/jira/browse/TEZ-2378) | In case Fetcher (unordered) fails to do local fetch, log in debug mode to reduce log size |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2376](https://issues.apache.org/jira/browse/TEZ-2376) | Remove TaskAttemptEventType.TA\_DIAGNOSTICS\_UPDATE |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2291](https://issues.apache.org/jira/browse/TEZ-2291) | TEZ UI: Improper vertex name in tables. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-1970](https://issues.apache.org/jira/browse/TEZ-1970) | Fix javadoc warnings in SortMergeJoinExample |  Major | . | Hitesh Shah | Mit Desai |
| [TEZ-1883](https://issues.apache.org/jira/browse/TEZ-1883) | Change findbugs version to 3.x |  Minor | . | Hitesh Shah | Siddharth Seth |
| [TEZ-1529](https://issues.apache.org/jira/browse/TEZ-1529) | ATS and TezClient integration  in secure kerberos enabled cluster |  Blocker | . | Prakash Ramachandran | Prakash Ramachandran |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2549](https://issues.apache.org/jira/browse/TEZ-2549) | Reduce Counter Load on the Timeline Server |  Major | . | Jonathan Eagles | Jason Lowe |
| [TEZ-2511](https://issues.apache.org/jira/browse/TEZ-2511) | Add exitCode to diagnostics when container fails |  Major | . | Jeff Zhang | Jeff Zhang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2546](https://issues.apache.org/jira/browse/TEZ-2546) | Tez UI: Fetch hive query text from timeline if dagInfo is not set |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2513](https://issues.apache.org/jira/browse/TEZ-2513) | Tez UI: Allow filtering by DAG ID on All dags table |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2447](https://issues.apache.org/jira/browse/TEZ-2447) | Tez UI: Generic changes based on feedbacks. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2436](https://issues.apache.org/jira/browse/TEZ-2436) | Tez UI: Add cancel button in column selector. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2422](https://issues.apache.org/jira/browse/TEZ-2422) | Update version on master to 0.8.0 |  Major | . | Siddharth Seth | Siddharth Seth |


