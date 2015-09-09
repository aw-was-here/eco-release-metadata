
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

## Release 0.8.0-alpha - 2015-09-01

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
| [TEZ-2719](https://issues.apache.org/jira/browse/TEZ-2719) | Consider reducing logs in unordered fetcher with shared-fetch option |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2645](https://issues.apache.org/jira/browse/TEZ-2645) | Provide standard analyzers for job analysis |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2627](https://issues.apache.org/jira/browse/TEZ-2627) | Support for Tez Job Priorities |  Major | . | Saikat | Saikat |
| [TEZ-2613](https://issues.apache.org/jira/browse/TEZ-2613) | Fetcher(unordered) using List to store InputAttemptIdentifier can lead to some inefficiency during remove() operation |  Major | . | Saikat | Saikat |
| [TEZ-2599](https://issues.apache.org/jira/browse/TEZ-2599) | Dont send obsoleted data movement events to tasks |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2588](https://issues.apache.org/jira/browse/TEZ-2588) | Improper argument name |  Trivial | . | Jeff Zhang | Gabor Liptak |
| [TEZ-2575](https://issues.apache.org/jira/browse/TEZ-2575) | Handle KeyValue pairs size which do not fit in a single block in PipelinedSorter |  Major | . | Saikat | Saikat |
| [TEZ-2561](https://issues.apache.org/jira/browse/TEZ-2561) | Port for TaskAttemptListenerImpTezDag should be configurable |  Major | . | Johannes Zillmann | Jeff Zhang |
| [TEZ-2496](https://issues.apache.org/jira/browse/TEZ-2496) | Consider scheduling tasks in ShuffleVertexManager based on the partition sizes from the source |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2478](https://issues.apache.org/jira/browse/TEZ-2478) | Move OneToOne routing to store events in Tasks |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2463](https://issues.apache.org/jira/browse/TEZ-2463) | Update site for 0.7.0 release |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2454](https://issues.apache.org/jira/browse/TEZ-2454) | Change FetcherOrderedGroup to work as Callables instead of blocking threads |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2450](https://issues.apache.org/jira/browse/TEZ-2450) | support async http clients in ordered & unordered inputs |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2446](https://issues.apache.org/jira/browse/TEZ-2446) | Tez UI: Add tezVersion details when downloading timeline data for offline use |  Major | . | Rajesh Balamohan | Prakash Ramachandran |
| [TEZ-2419](https://issues.apache.org/jira/browse/TEZ-2419) | Inputs/Outputs should inform the Processor about Interrupts when interrupted during a blocking Op |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2296](https://issues.apache.org/jira/browse/TEZ-2296) | Add option to print counters for tez-examples |  Minor | . | Jeff Zhang | Saikat |
| [TEZ-2211](https://issues.apache.org/jira/browse/TEZ-2211) | Tez UI: Allow users to configure timezone |  Major | UI | Jonathan Eagles | Jonathan Eagles |
| [TEZ-2198](https://issues.apache.org/jira/browse/TEZ-2198) | Fix sorter spill counts |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2172](https://issues.apache.org/jira/browse/TEZ-2172) | FetcherOrderedGrouped using List to store InputAttemptIdentifier can lead to some inefficiency during remove() operation |  Major | . | Rajesh Balamohan | Saikat |
| [TEZ-2076](https://issues.apache.org/jira/browse/TEZ-2076) | Tez framework to extract/analyze data stored in ATS for specific dag |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1961](https://issues.apache.org/jira/browse/TEZ-1961) | Remove misleading exception "No running dag" from AM logs |  Critical | . | Siddharth Seth | Jeff Zhang |
| [TEZ-1752](https://issues.apache.org/jira/browse/TEZ-1752) | Inputs / Outputs in the Runtime library should be interruptable |  Major | . | Siddharth Seth | Rajesh Balamohan |
| [TEZ-1314](https://issues.apache.org/jira/browse/TEZ-1314) | Port MAPREDUCE-5821 to Tez |  Major | . | Siddharth Seth | Rajesh Balamohan |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2743](https://issues.apache.org/jira/browse/TEZ-2743) | TezContainerLauncher logging tokens |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2740](https://issues.apache.org/jira/browse/TEZ-2740) | Create a reconfigureVertex alias for deprecated setVertexParallelism API |  Blocker | . | Bikas Saha | Bikas Saha |
| [TEZ-2730](https://issues.apache.org/jira/browse/TEZ-2730) | tez-api missing dependency on org.codehaus.jettison for json |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2699](https://issues.apache.org/jira/browse/TEZ-2699) | Internalize strings in ATF parser |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2692](https://issues.apache.org/jira/browse/TEZ-2692) | bugfixes & enhancements related to job parser and analyzer |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2687](https://issues.apache.org/jira/browse/TEZ-2687) | ATS History shutdown happens before the min-held containers are released |  Major | . | Gopal V | Jeff Zhang |
| [TEZ-2684](https://issues.apache.org/jira/browse/TEZ-2684) | ShuffleVertexManager.parsePartitionStats throws IllegalStateException: Stats should be initialized |  Major | . | Wei Zheng | Rajesh Balamohan |
| [TEZ-2683](https://issues.apache.org/jira/browse/TEZ-2683) | TestHttpConnection::testAsyncHttpConnectionInterrupt fails in certain environments |  Major | . | Hitesh Shah | Rajesh Balamohan |
| [TEZ-2663](https://issues.apache.org/jira/browse/TEZ-2663) | SessionNotRunning exceptions are wrapped in a ServiceException from a dying AM |  Major | . | Gopal V | Hitesh Shah |
| [TEZ-2636](https://issues.apache.org/jira/browse/TEZ-2636) | MRInput and MultiMRInput should work for cases when there are 0 physical inputs |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2635](https://issues.apache.org/jira/browse/TEZ-2635) | Limit number of attempts being downloaded in unordered fetch |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2632](https://issues.apache.org/jira/browse/TEZ-2632) | A -Paws and -Pazure build profiles for hadoop-{aws,azure} inclusion |  Major | . | Gopal V | Gopal V |
| [TEZ-2630](https://issues.apache.org/jira/browse/TEZ-2630) | TezChild receives IP address instead of FQDN |  Critical | . | Rajat Jain | Hitesh Shah |
| [TEZ-2629](https://issues.apache.org/jira/browse/TEZ-2629) | LimitExceededException in Tez client when DAG has exceeds the default max counters |  Major | . | Jason Dere | Siddharth Seth |
| [TEZ-2623](https://issues.apache.org/jira/browse/TEZ-2623) | Fix module dependencies related to hadoop-auth |  Major | . | Rajat Jain | Rajat Jain |
| [TEZ-2616](https://issues.apache.org/jira/browse/TEZ-2616) | Fix build warning by undefined version of maven-findbugs-plugin |  Major | . | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [TEZ-2610](https://issues.apache.org/jira/browse/TEZ-2610) | Swimlane for DAGs that use containers from previous DAGs |  Major | UI | Yi Zhang | Gopal V |
| [TEZ-2602](https://issues.apache.org/jira/browse/TEZ-2602) | Throwing EOFException when launching MR job |  Major | . | Tsuyoshi Ozawa | Rajesh Balamohan |
| [TEZ-2600](https://issues.apache.org/jira/browse/TEZ-2600) | When used with HDFS federation(viewfs) ,tez will throw a error |  Major | . | Xiaowei Wang | Xiaowei Wang |
| [TEZ-2579](https://issues.apache.org/jira/browse/TEZ-2579) | Incorrect comparison of TaskAttemptId |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2570](https://issues.apache.org/jira/browse/TEZ-2570) | Fix license header issue for eps image files |  Trivial | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2568](https://issues.apache.org/jira/browse/TEZ-2568) | V\_INPUT\_DATA\_INFORMATION may happen after vertex is initialized |  Blocker | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2567](https://issues.apache.org/jira/browse/TEZ-2567) | Tez UI: download dag data does not work within ambari |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2566](https://issues.apache.org/jira/browse/TEZ-2566) | Allow TaskAttemptFinishedEvent without TaskAttemptStartedEvent when it is KILLED/FAILED |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2560](https://issues.apache.org/jira/browse/TEZ-2560) | fix tex-ui build for maven 3.3+ |  Major | . | Prakash Ramachandran | Prakash Ramachandran |
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
| [TEZ-2311](https://issues.apache.org/jira/browse/TEZ-2311) | AM can hang if kill received while recovering from previous attempt |  Major | . | Jason Lowe | Jeff Zhang |
| [TEZ-2291](https://issues.apache.org/jira/browse/TEZ-2291) | TEZ UI: Improper vertex name in tables. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2239](https://issues.apache.org/jira/browse/TEZ-2239) | Update Tez UI docs to explain how to configure history url for YARN |  Critical | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1970](https://issues.apache.org/jira/browse/TEZ-1970) | Fix javadoc warnings in SortMergeJoinExample |  Major | . | Hitesh Shah | Mit Desai |
| [TEZ-1883](https://issues.apache.org/jira/browse/TEZ-1883) | Change findbugs version to 3.x |  Minor | . | Hitesh Shah | Siddharth Seth |
| [TEZ-1529](https://issues.apache.org/jira/browse/TEZ-1529) | ATS and TezClient integration  in secure kerberos enabled cluster |  Blocker | . | Prakash Ramachandran | Prakash Ramachandran |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2736](https://issues.apache.org/jira/browse/TEZ-2736) | Pre-merge: Update CHANGES.txt and version in branch |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2735](https://issues.apache.org/jira/browse/TEZ-2735) | rebase 08/21 |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2731](https://issues.apache.org/jira/browse/TEZ-2731) | Fix Tez GenericCounter performance bottleneck |  Major | . | Gopal V | Gopal V |
| [TEZ-2727](https://issues.apache.org/jira/browse/TEZ-2727) | Fix findbugs warnings |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2721](https://issues.apache.org/jira/browse/TEZ-2721) | rebase 08/14 |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2714](https://issues.apache.org/jira/browse/TEZ-2714) | Fix comments from review - part 3 |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2713](https://issues.apache.org/jira/browse/TEZ-2713) | Add tests for node handling when there's multiple schedulers |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2708](https://issues.apache.org/jira/browse/TEZ-2708) | renames for tez-2003 changes |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2707](https://issues.apache.org/jira/browse/TEZ-2707) | Fix comments from reviews - part 2 |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2703](https://issues.apache.org/jira/browse/TEZ-2703) | TEZ-2003 build fails |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2701](https://issues.apache.org/jira/browse/TEZ-2701) | Add time at which container was allocated to attempt |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2698](https://issues.apache.org/jira/browse/TEZ-2698) | rebase 08/05 |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2694](https://issues.apache.org/jira/browse/TEZ-2694) | Add TaskConcurrencyAnalyzer |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2690](https://issues.apache.org/jira/browse/TEZ-2690) | Add critical path analyser |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2678](https://issues.apache.org/jira/browse/TEZ-2678) | Fix comments from reviews - part 1 |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2675](https://issues.apache.org/jira/browse/TEZ-2675) | Add javadocs for new pluggable components, fix problems reported by jenkins |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2670](https://issues.apache.org/jira/browse/TEZ-2670) | Remove TaskAttempt holder used within TezTaskCommunicator |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2657](https://issues.apache.org/jira/browse/TEZ-2657) | Add tests for client side changes - specifying plugins, etc |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2653](https://issues.apache.org/jira/browse/TEZ-2653) | Change service contexts to expose a user specified payload instead of the AM configuration |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2652](https://issues.apache.org/jira/browse/TEZ-2652) | Cleanup the way services are specified for an AM and vertices |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2651](https://issues.apache.org/jira/browse/TEZ-2651) | Pluggable services should not extend AbstractService |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2650](https://issues.apache.org/jira/browse/TEZ-2650) | Timing details on Vertex state changes |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2647](https://issues.apache.org/jira/browse/TEZ-2647) | Add input causality dependency for attempts |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2646](https://issues.apache.org/jira/browse/TEZ-2646) | Add scheduling casual dependency for attempts |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2626](https://issues.apache.org/jira/browse/TEZ-2626) | Fix log lines with DEBUG in messages, consolidate TEZ-2003 TODOs |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2621](https://issues.apache.org/jira/browse/TEZ-2621) | rebase 07/14 |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2549](https://issues.apache.org/jira/browse/TEZ-2549) | Reduce Counter Load on the Timeline Server |  Major | . | Jonathan Eagles | Jason Lowe |
| [TEZ-2526](https://issues.apache.org/jira/browse/TEZ-2526) | TEZ-2003 build is broken |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [TEZ-2511](https://issues.apache.org/jira/browse/TEZ-2511) | Add exitCode to diagnostics when container fails |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2508](https://issues.apache.org/jira/browse/TEZ-2508) | rebase 06/01 |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2502](https://issues.apache.org/jira/browse/TEZ-2502) | TezTaskRunner2 not killing tasks properly in all situations |  Major | . | Sergey Shelukhin | Siddharth Seth |
| [TEZ-2495](https://issues.apache.org/jira/browse/TEZ-2495) | Inform TaskCommunicaor about Task and Container termination reasons |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2471](https://issues.apache.org/jira/browse/TEZ-2471) | NPE in LogicalIOProcessorRuntimeTask while printing thread info |  Major | . | Prasanth Jayachandran | Siddharth Seth |
| [TEZ-2465](https://issues.apache.org/jira/browse/TEZ-2465) | Retrun the status of a kill request in TaskRunner2 |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2443](https://issues.apache.org/jira/browse/TEZ-2443) | TaskRunner2 should call abort, NPEs while cleaning up tasks |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2441](https://issues.apache.org/jira/browse/TEZ-2441) | Add tests for TezTaskRunner2 |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2438](https://issues.apache.org/jira/browse/TEZ-2438) | tez-tools version in the branch is incorrect |  Major | . | Sergey Shelukhin | Siddharth Seth |
| [TEZ-2434](https://issues.apache.org/jira/browse/TEZ-2434) | Allow tasks to be killed |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2433](https://issues.apache.org/jira/browse/TEZ-2433) | rebase 05/08 |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2420](https://issues.apache.org/jira/browse/TEZ-2420) | TaskRunner returning before executing the task |  Blocker | . | Sergey Shelukhin | Siddharth Seth |
| [TEZ-2414](https://issues.apache.org/jira/browse/TEZ-2414) | LogicalIOProcessorRuntimeTask, RuntimeTask, TezTaskRunner should handle interrupts & carry out necessary cleanups |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2388](https://issues.apache.org/jira/browse/TEZ-2388) | Send dag identifier as part of the fetcher request string |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2381](https://issues.apache.org/jira/browse/TEZ-2381) | Fixes after rebase 04/28 |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2361](https://issues.apache.org/jira/browse/TEZ-2361) | Propagate dag completion to TaskCommunicator |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2347](https://issues.apache.org/jira/browse/TEZ-2347) | Expose additional information in TaskCommunicatorContext |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2302](https://issues.apache.org/jira/browse/TEZ-2302) | Allow TaskCommunicators to subscribe for Vertex updates |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2285](https://issues.apache.org/jira/browse/TEZ-2285) | Allow TaskCommunicators to indicate task/container liveness |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2284](https://issues.apache.org/jira/browse/TEZ-2284) | Separate TaskReporter into an interface |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2283](https://issues.apache.org/jira/browse/TEZ-2283) | Fixes after rebase 04/07 |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2241](https://issues.apache.org/jira/browse/TEZ-2241) | Miscellaneous fixes after last reabse |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2187](https://issues.apache.org/jira/browse/TEZ-2187) | Allow the TaskCommunicator to report failed / killed attempts |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2175](https://issues.apache.org/jira/browse/TEZ-2175) | Task priority should be available to the TaskCommunicator plugin |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2139](https://issues.apache.org/jira/browse/TEZ-2139) | Change version in branch TEZ-2003 |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2138](https://issues.apache.org/jira/browse/TEZ-2138) | Fix minor bugs in adding default scheduler, getting launchers |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2131](https://issues.apache.org/jira/browse/TEZ-2131) | Add additional tests for tasks running in the AM |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2126](https://issues.apache.org/jira/browse/TEZ-2126) | Add unit tests for verifying multiple schedulers, launchers, communicators |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2125](https://issues.apache.org/jira/browse/TEZ-2125) | Create a task communicator for local mode. Allow tasks to run in the AM |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2124](https://issues.apache.org/jira/browse/TEZ-2124) | Change Node tracking to work per external container source |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2123](https://issues.apache.org/jira/browse/TEZ-2123) | Fix component managers to use pluggable components |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2122](https://issues.apache.org/jira/browse/TEZ-2122) | Setup pluggable components at AM/Vertex level |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2117](https://issues.apache.org/jira/browse/TEZ-2117) | Add a manager for ContainerLaunchers running in the AM |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2090](https://issues.apache.org/jira/browse/TEZ-2090) | Add some tests for jobs running in external services |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2019](https://issues.apache.org/jira/browse/TEZ-2019) | Temporarily allow the scheduler and launcher to be specified via configuration |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2006](https://issues.apache.org/jira/browse/TEZ-2006) | Task communication plane needs to be pluggable |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2005](https://issues.apache.org/jira/browse/TEZ-2005) | Define basic interface for pluggable TaskSchedulers |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2004](https://issues.apache.org/jira/browse/TEZ-2004) | Define basic interface for pluggable ContainerLaunchers |  Major | . | Siddharth Seth | Siddharth Seth |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2749](https://issues.apache.org/jira/browse/TEZ-2749) | TaskInfo in history parser should not depend on the apache directory project |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2748](https://issues.apache.org/jira/browse/TEZ-2748) | Fix master build against hadoop-2.2 |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2734](https://issues.apache.org/jira/browse/TEZ-2734) | Add a test to verify the filename generated by OnDiskMerge |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2633](https://issues.apache.org/jira/browse/TEZ-2633) | Allow VertexManagerPlugins to receive and report based on attempts instead of tasks |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2546](https://issues.apache.org/jira/browse/TEZ-2546) | Tez UI: Fetch hive query text from timeline if dagInfo is not set |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2513](https://issues.apache.org/jira/browse/TEZ-2513) | Tez UI: Allow filtering by DAG ID on All dags table |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2464](https://issues.apache.org/jira/browse/TEZ-2464) | Move older releases to dist archive |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2447](https://issues.apache.org/jira/browse/TEZ-2447) | Tez UI: Generic changes based on feedbacks. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2436](https://issues.apache.org/jira/browse/TEZ-2436) | Tez UI: Add cancel button in column selector. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2422](https://issues.apache.org/jira/browse/TEZ-2422) | Update version on master to 0.8.0 |  Major | . | Siddharth Seth | Siddharth Seth |


