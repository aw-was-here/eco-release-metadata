
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

## Release 0.5.0 - 2014-09-03

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-1509](https://issues.apache.org/jira/browse/TEZ-1509) | Set a useful default value for java opts |  Major | . | Hitesh Shah | Bikas Saha |
| [TEZ-1500](https://issues.apache.org/jira/browse/TEZ-1500) | DAG should be created via a create method |  Blocker | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1472](https://issues.apache.org/jira/browse/TEZ-1472) | Separate method calls for creating InputDataInformationEvent with serialized/unserialized payloads |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1469](https://issues.apache.org/jira/browse/TEZ-1469) | AM/Session LRs are not shipped to vertices in new API use-case |  Blocker | . | Gopal V | Bikas Saha |
| [TEZ-1465](https://issues.apache.org/jira/browse/TEZ-1465) | Update and document IntersectExample. Change name to JoinExample |  Blocker | . | Bikas Saha | Bikas Saha |
| [TEZ-1450](https://issues.apache.org/jira/browse/TEZ-1450) | Documentation of TezConfiguration |  Blocker | . | Bikas Saha | Bikas Saha |
| [TEZ-1449](https://issues.apache.org/jira/browse/TEZ-1449) | Change user payloads to work with a byte buffer |  Blocker | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1438](https://issues.apache.org/jira/browse/TEZ-1438) | Annotate add java doc for tez-runtime-library and tez-mapreduce |  Blocker | . | Bikas Saha | Bikas Saha |
| [TEZ-1432](https://issues.apache.org/jira/browse/TEZ-1432) | TEZ\_AM\_CANCEL\_DELEGATION\_TOKEN is named inorrectly |  Blocker | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1427](https://issues.apache.org/jira/browse/TEZ-1427) | Change remaining classes that are using byte[] to UserPayload |  Blocker | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1426](https://issues.apache.org/jira/browse/TEZ-1426) | Create configuration helpers for ShuffleVertexManager and TezGrouping code |  Blocker | . | Bikas Saha | Rajesh Balamohan |
| [TEZ-1425](https://issues.apache.org/jira/browse/TEZ-1425) | Move constants to TezConstants |  Blocker | . | Bikas Saha | Bikas Saha |
| [TEZ-1423](https://issues.apache.org/jira/browse/TEZ-1423) | Ability to pass custom properties to keySerializer for OnFileUnorderedPartitionedKVOutput |  Major | . | Johannes Zillmann | Siddharth Seth |
| [TEZ-1418](https://issues.apache.org/jira/browse/TEZ-1418) | Provide Default value for TEZ\_AM\_LAUNCH\_ENV and TEZ\_TASK\_LAUNCH |  Blocker | . | Subroto Sanyal | Subroto Sanyal |
| [TEZ-1417](https://issues.apache.org/jira/browse/TEZ-1417) | Rename *Configurer |  Blocker | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1416](https://issues.apache.org/jira/browse/TEZ-1416) | tez-api project javadoc/annotations review and clean up. |  Blocker | . | Bikas Saha | Bikas Saha |
| [TEZ-1410](https://issues.apache.org/jira/browse/TEZ-1410) | DAGClient#waitForCompletion() methods should not swallow interrupts |  Blocker | . | Johannes Zillmann | Johannes Zillmann |
| [TEZ-1407](https://issues.apache.org/jira/browse/TEZ-1407) | Move MRInput related methods out of MRHelpers and consolidate |  Blocker | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1400](https://issues.apache.org/jira/browse/TEZ-1400) | Reducers stuck when enabling auto-reduce parallelism (MRR case) |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1394](https://issues.apache.org/jira/browse/TEZ-1394) | Create example code for OrderedWordCount |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1390](https://issues.apache.org/jira/browse/TEZ-1390) | Replace byte[] with ByteBuffer as the type of user payload in the API |  Blocker | . | Bikas Saha | Tsuyoshi Ozawa |
| [TEZ-1382](https://issues.apache.org/jira/browse/TEZ-1382) | Change ObjectRegistry API to allow for future extensions |  Blocker | . | Bikas Saha | Bikas Saha |
| [TEZ-1372](https://issues.apache.org/jira/browse/TEZ-1372) | Fix preWarm to work after recent API changes |  Blocker | . | Bikas Saha | Bikas Saha |
| [TEZ-1351](https://issues.apache.org/jira/browse/TEZ-1351) | MROutput needs a flush method to ensure data is materialized for FileOutputCommitter |  Major | . | Daniel Dai | Bikas Saha |
| [TEZ-1347](https://issues.apache.org/jira/browse/TEZ-1347) | Consolidate MRHelpers |  Blocker | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1346](https://issues.apache.org/jira/browse/TEZ-1346) | Change Processor construction to make use of contexts |  Blocker | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1334](https://issues.apache.org/jira/browse/TEZ-1334) | Annotate all non public classes in tez-runtime-library with @private |  Blocker | . | Bikas Saha | Hitesh Shah |
| [TEZ-1320](https://issues.apache.org/jira/browse/TEZ-1320) | Remove getApplicationId from DAGClient |  Blocker | . | Siddharth Seth | Jonathan Eagles |
| [TEZ-1317](https://issues.apache.org/jira/browse/TEZ-1317) | Simplify MRinput/MROutput configuration |  Blocker | . | Siddharth Seth | Bikas Saha |
| [TEZ-1312](https://issues.apache.org/jira/browse/TEZ-1312) | rename vertex.addInput/Output() to vertex.addDataSource/Sink() |  Blocker | . | Bikas Saha | Chen He |
| [TEZ-1311](https://issues.apache.org/jira/browse/TEZ-1311) | get sharedobjectregistry from the context instead of a static |  Blocker | . | Bikas Saha | Bikas Saha |
| [TEZ-1300](https://issues.apache.org/jira/browse/TEZ-1300) | Change default tez classpath to not include hadoop jars from the cluster |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1279](https://issues.apache.org/jira/browse/TEZ-1279) | Rename *EdgeConfiguration to *EdgeConfigurer |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1278](https://issues.apache.org/jira/browse/TEZ-1278) | TezClient#waitTillReady() should not swallow interrupts |  Blocker | . | Johannes Zillmann | Johannes Zillmann |
| [TEZ-1272](https://issues.apache.org/jira/browse/TEZ-1272) | Change YARNRunner to make use of EdgeConfigurations |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1269](https://issues.apache.org/jira/browse/TEZ-1269) | TaskScheduler prematurely releases containers |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1266](https://issues.apache.org/jira/browse/TEZ-1266) | Create *EdgeConfigurer.createDefaultCustomEdge() and force setting partitioners |  Major | . | Bikas Saha | Siddharth Seth |
| [TEZ-1246](https://issues.apache.org/jira/browse/TEZ-1246) | Replace constructors with create() methods for DAG, Vertex, Edge etc in the API |  Blocker | . | Bikas Saha | Siddharth Seth |
| [TEZ-1237](https://issues.apache.org/jira/browse/TEZ-1237) | Consolidate naming of API classes |  Blocker | . | Siddharth Seth | Bikas Saha |
| [TEZ-1234](https://issues.apache.org/jira/browse/TEZ-1234) | Replace Interfaces with Abstract classes for VertexManagerPlugin and EdgeManager |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1231](https://issues.apache.org/jira/browse/TEZ-1231) | Clean up TezRuntimeConfiguration |  Blocker | . | Siddharth Seth | Bikas Saha |
| [TEZ-1213](https://issues.apache.org/jira/browse/TEZ-1213) | Fix parameter naming in TezJobConfig |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1194](https://issues.apache.org/jira/browse/TEZ-1194) | Make TezUserPayload user facing for payload specification |  Blocker | . | Bikas Saha | Tsuyoshi Ozawa |
| [TEZ-1169](https://issues.apache.org/jira/browse/TEZ-1169) | Allow numPhysicalInputs to be specified for RootInputs |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1137](https://issues.apache.org/jira/browse/TEZ-1137) | Move TezJobConfig to runtime-library and rename to TezRuntimeConfiguration |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1134](https://issues.apache.org/jira/browse/TEZ-1134) | InputInitializer and OutputCommitter implicitly use payloads of the input and output |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1133](https://issues.apache.org/jira/browse/TEZ-1133) | Remove unnecessary MRHelpers methods or make them private |  Blocker | . | Bikas Saha | Chen He |
| [TEZ-1132](https://issues.apache.org/jira/browse/TEZ-1132) | Consistent naming of Input and Outputs |  Blocker | . | Bikas Saha | Bikas Saha |
| [TEZ-1131](https://issues.apache.org/jira/browse/TEZ-1131) | Simplify EdgeManager APIs |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1130](https://issues.apache.org/jira/browse/TEZ-1130) | Replace confusing names on Vertex API |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1127](https://issues.apache.org/jira/browse/TEZ-1127) | Add TEZ\_TASK\_JAVA\_OPTS and TEZ\_ENV configs to specify values from config |  Major | . | Pala M Muthaia | Bikas Saha |
| [TEZ-1058](https://issues.apache.org/jira/browse/TEZ-1058) | Replace user land interfaces with abstract classes |  Blocker | . | Bikas Saha | Bikas Saha |
| [TEZ-1057](https://issues.apache.org/jira/browse/TEZ-1057) | Replace interfaces with abstract classes for Processor/Input/Output classes |  Blocker | . | Bikas Saha | Bikas Saha |
| [TEZ-1055](https://issues.apache.org/jira/browse/TEZ-1055) | Rename tez-mapreduce-examples to tez-examples |  Blocker | . | Bikas Saha | Hitesh Shah |
| [TEZ-1041](https://issues.apache.org/jira/browse/TEZ-1041) | Use VertexLocationHint consistently everywhere in the API |  Blocker | . | Bikas Saha | Bikas Saha |
| [TEZ-1038](https://issues.apache.org/jira/browse/TEZ-1038) | Move TaskLocationHint outside of VertexLocationHint |  Major | . | Bikas Saha | Alexander Pivovarov |
| [TEZ-1025](https://issues.apache.org/jira/browse/TEZ-1025) | Rename tez.am.max.task.attempts to tez.am.task.max.failed.attempts |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1018](https://issues.apache.org/jira/browse/TEZ-1018) | VertexManagerPluginContext should enable assigning locality to scheduled tasks |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-960](https://issues.apache.org/jira/browse/TEZ-960) | Typos in MRJobConfig |  Minor | . | Vikram Dixit K | Chen He |
| [TEZ-866](https://issues.apache.org/jira/browse/TEZ-866) | Add a TezMergedInputContext for MergedInputs |  Major | . | Siddharth Seth | Bikas Saha |
| [TEZ-696](https://issues.apache.org/jira/browse/TEZ-696) | Remove implicit copying of processor payload to input and output |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-692](https://issues.apache.org/jira/browse/TEZ-692) | Unify job submission in either TezClient or TezSession |  Major | . | Bikas Saha | Bikas Saha |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-1332](https://issues.apache.org/jira/browse/TEZ-1332) | tez swimlanes UI tool |  Blocker | . | Gopal V | Gopal V |
| [TEZ-1242](https://issues.apache.org/jira/browse/TEZ-1242) | Logos for Tez |  Minor | . | Harshad Dhavale | Bikas Saha |
| [TEZ-684](https://issues.apache.org/jira/browse/TEZ-684) | Uber/Local modes for Tez |  Major | . | Chen He | Chen He |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-1517](https://issues.apache.org/jira/browse/TEZ-1517) | Avoid sending routed events via the AsyncDispatcher |  Critical | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1516](https://issues.apache.org/jira/browse/TEZ-1516) | Log transfer rate for Broadcast Fetch |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1501](https://issues.apache.org/jira/browse/TEZ-1501) | Add a test dag to generate load on the getTask RPC |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1430](https://issues.apache.org/jira/browse/TEZ-1430) | Javadoc generation should not generate docs for classes annotated as private |  Major | . | Siddharth Seth | Jonathan Eagles |
| [TEZ-1422](https://issues.apache.org/jira/browse/TEZ-1422) | Provide a way to hook in static address resolution when talking to AM from client |  Major | . | Johannes Zillmann | Johannes Zillmann |
| [TEZ-1409](https://issues.apache.org/jira/browse/TEZ-1409) | Change MRInputConfigurer, MROutputConfigurer to accept complete configurations |  Blocker | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1402](https://issues.apache.org/jira/browse/TEZ-1402) | MRoutput configurer should allow disabling the committer |  Blocker | . | Bikas Saha | Bikas Saha |
| [TEZ-1401](https://issues.apache.org/jira/browse/TEZ-1401) | Create DAG.addTaskLocalFiles() to add common local files for all vertices. |  Major | . | Bikas Saha |  |
| [TEZ-1388](https://issues.apache.org/jira/browse/TEZ-1388) | mvn site is slow and generates errors |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-1386](https://issues.apache.org/jira/browse/TEZ-1386) | Users should not need to setup TezGroupedInputFormat to enable grouping |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1355](https://issues.apache.org/jira/browse/TEZ-1355) | Only read host and port for OnFileSortedOutput and OnFileUnorderedKVOutput when data is generated |  Minor | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-1330](https://issues.apache.org/jira/browse/TEZ-1330) | Create a dist target which contains required jars |  Blocker | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1305](https://issues.apache.org/jira/browse/TEZ-1305) | Log job tracking url |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [TEZ-1299](https://issues.apache.org/jira/browse/TEZ-1299) | Get rid of unnecessary setter override in EntityDescriptors |  Minor | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1295](https://issues.apache.org/jira/browse/TEZ-1295) | Create a build target containing hadoop libraries |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1288](https://issues.apache.org/jira/browse/TEZ-1288) | Create FastTezSerialization as an optional feature |  Major | . | Gopal V | Rajesh Balamohan |
| [TEZ-1262](https://issues.apache.org/jira/browse/TEZ-1262) | Change Tez examples to make use of API changes in TEZ-1080 |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1260](https://issues.apache.org/jira/browse/TEZ-1260) | Allow KeyValueWriter to support writing list of values also |  Major | . | Rohini Palaniswamy | Rajesh Balamohan |
| [TEZ-1253](https://issues.apache.org/jira/browse/TEZ-1253) | Cleanup of VertexEventType ( some event types are never used ) |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1228](https://issues.apache.org/jira/browse/TEZ-1228) | Prototype IFile : Define a memory & merge optimized vertex-intermediate file format for Tez |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1218](https://issues.apache.org/jira/browse/TEZ-1218) | Make TaskScheduler as AbstractService rather than just an interface |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1196](https://issues.apache.org/jira/browse/TEZ-1196) | FaultToleranceTestRunner should allow passing generic options from cli |  Major | . | Karam Singh |  |
| [TEZ-1193](https://issues.apache.org/jira/browse/TEZ-1193) | Allow 'tez.lib.uris' to be overridden |  Minor | . | Oleg Zhurakousky | Oleg Zhurakousky |
| [TEZ-1172](https://issues.apache.org/jira/browse/TEZ-1172) | Allow multiple Root Inputs to be specified per Vertex |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1170](https://issues.apache.org/jira/browse/TEZ-1170) | Simplify Vertex Initializing transition |  Major | . | Siddharth Seth | Bikas Saha |
| [TEZ-1168](https://issues.apache.org/jira/browse/TEZ-1168) | Add a MultiMRInput |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1126](https://issues.apache.org/jira/browse/TEZ-1126) | Add data generator and validator for the intersect example |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1116](https://issues.apache.org/jira/browse/TEZ-1116) | Refactor YarnTezDAGChild |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1099](https://issues.apache.org/jira/browse/TEZ-1099) | Minor documentation improvement and Eclipse friendlyness |  Minor | . | Thiruvalluvan M. G. | Thiruvalluvan M. G. |
| [TEZ-1093](https://issues.apache.org/jira/browse/TEZ-1093) | Add an example for OnFileUnorderedPartitionedOutput |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1090](https://issues.apache.org/jira/browse/TEZ-1090) | Micro optimization - Remove duplicate updateProcessTree() in TaskCounterUpdater |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1076](https://issues.apache.org/jira/browse/TEZ-1076) | Allow events to be sent to InputInitializers |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1073](https://issues.apache.org/jira/browse/TEZ-1073) | RLE IFile merge() fastpath |  Minor | . | Gopal V | Gopal V |
| [TEZ-1039](https://issues.apache.org/jira/browse/TEZ-1039) | Add Container locality to TaskScheduler |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1032](https://issues.apache.org/jira/browse/TEZ-1032) | Allow specifying tasks/vertices to be profiled |  Major | . | Sergey Shelukhin | Rajesh Balamohan |
| [TEZ-802](https://issues.apache.org/jira/browse/TEZ-802) | Determination of Task Placement for 1-1 Edges |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-661](https://issues.apache.org/jira/browse/TEZ-661) | Implement a non-sorted partitioned output |  Major | . | Daniel Dai | Siddharth Seth |
| [TEZ-480](https://issues.apache.org/jira/browse/TEZ-480) | Create InputReady VertexManager |  Major | . | Bikas Saha | Bikas Saha |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-1631](https://issues.apache.org/jira/browse/TEZ-1631) | Session dag submission timeout can result in duplicate DAG submissions |  Major | . | Bikas Saha | Jeff Zhang |
| [TEZ-1512](https://issues.apache.org/jira/browse/TEZ-1512) | VertexImpl.getTask(int) can be CPU intensive when lots of tasks are present in the vertex |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1511](https://issues.apache.org/jira/browse/TEZ-1511) | MROutputConfigBuilder sets OutputFormat as String class if OutputFormat is not provided |  Blocker | . | Hitesh Shah | Bikas Saha |
| [TEZ-1510](https://issues.apache.org/jira/browse/TEZ-1510) | TezConfiguration should not add tez-site.xml as a default resource. |  Blocker | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1498](https://issues.apache.org/jira/browse/TEZ-1498) | Usage info is not printed when wrong number of arguments is provided for JoinExample |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1496](https://issues.apache.org/jira/browse/TEZ-1496) | Multi MR inputs can not be configured without accessing internal proto structures |  Blocker | . | Vikram Dixit K | Siddharth Seth |
| [TEZ-1493](https://issues.apache.org/jira/browse/TEZ-1493) | Tez examples sometimes fail in cases where AM recovery kicks in |  Blocker | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1492](https://issues.apache.org/jira/browse/TEZ-1492) | IFile RLE not kicking in due to bug in BufferUtils.compare() |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1490](https://issues.apache.org/jira/browse/TEZ-1490) | dagid reported is incorrect in TezClient.java |  Major | . | Prakash Ramachandran | Jonathan Eagles |
| [TEZ-1487](https://issues.apache.org/jira/browse/TEZ-1487) | Switch master to 0.6.0-SNAPSHOT |  Trivial | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1486](https://issues.apache.org/jira/browse/TEZ-1486) | TezUncheckedException when using dynamic partition pruning |  Major | . | Gunther Hagleitner | Siddharth Seth |
| [TEZ-1481](https://issues.apache.org/jira/browse/TEZ-1481) | Flaky test : org.apache.tez.dag.api.client.TestDAGClientHandler.testDAGClientHandler |  Major | . | Rajesh Balamohan | Alexander Pivovarov |
| [TEZ-1476](https://issues.apache.org/jira/browse/TEZ-1476) | DAGClient waitForCompletion output is confusing |  Critical | . | Siddharth Seth | Jonathan Eagles |
| [TEZ-1474](https://issues.apache.org/jira/browse/TEZ-1474) | detect missing native libraries for compression at the beginning of a task rather than at the end. |  Major | . | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-1466](https://issues.apache.org/jira/browse/TEZ-1466) | Fix JDK8 builds of tez |  Trivial | . | Gopal V | Gopal V |
| [TEZ-1463](https://issues.apache.org/jira/browse/TEZ-1463) | Remove dependency on private class org.apache.hadoop.util.StringUtils |  Major | . | Hitesh Shah | Alexander Pivovarov |
| [TEZ-1458](https://issues.apache.org/jira/browse/TEZ-1458) | org.apache.tez.common.security.Groups does not compile against hadoop-2.2.0 anymore |  Blocker | . | Johannes Zillmann | Hitesh Shah |
| [TEZ-1453](https://issues.apache.org/jira/browse/TEZ-1453) | Fix rat check for 0.5 |  Blocker | . | Bikas Saha | Bikas Saha |
| [TEZ-1452](https://issues.apache.org/jira/browse/TEZ-1452) | Add license and notice to jars |  Blocker | . | Bikas Saha | Bikas Saha |
| [TEZ-1448](https://issues.apache.org/jira/browse/TEZ-1448) | Make WeightedScalingMemoryDistributor as the default memory distributor |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1446](https://issues.apache.org/jira/browse/TEZ-1446) | Move the fetch code for local disk fetch from data movement event handlers to fetcher |  Major | . | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-1445](https://issues.apache.org/jira/browse/TEZ-1445) | Add more logging to catch shutdown handler race conditions |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1439](https://issues.apache.org/jira/browse/TEZ-1439) | IntersectDataGen/Example/Validate should move back to tez-examples. |  Blocker | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1437](https://issues.apache.org/jira/browse/TEZ-1437) | Switch 0.5.0 installs instructions with current install guide as part of release |  Blocker | . | Hitesh Shah | Bikas Saha |
| [TEZ-1436](https://issues.apache.org/jira/browse/TEZ-1436) | Fix javadoc warnings |  Major | . | Hitesh Shah | Jonathan Eagles |
| [TEZ-1435](https://issues.apache.org/jira/browse/TEZ-1435) | Fix unused imports |  Trivial | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1431](https://issues.apache.org/jira/browse/TEZ-1431) | Fix use of synchronized for certain functions in TezClient |  Blocker | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1415](https://issues.apache.org/jira/browse/TEZ-1415) | Merge various Util classes in Tez |  Major | . | Bikas Saha | Alexander Pivovarov |
| [TEZ-1414](https://issues.apache.org/jira/browse/TEZ-1414) | Disable TestTezClientUtils.testLocalResourceVisibility to make builds pass. |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1413](https://issues.apache.org/jira/browse/TEZ-1413) | Fix build for TestTezClientUtils.testLocalResourceVisibility |  Major | . | Bikas Saha | Prakash Ramachandran |
| [TEZ-1411](https://issues.apache.org/jira/browse/TEZ-1411) | Address initial feedback on swimlanes |  Blocker | . | Bikas Saha | Gopal V |
| [TEZ-1405](https://issues.apache.org/jira/browse/TEZ-1405) | TestSecureShuffle is slow |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1404](https://issues.apache.org/jira/browse/TEZ-1404) | groupCommitInProgress in RecoveryTransition of DAGImpl is not set correctly |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1403](https://issues.apache.org/jira/browse/TEZ-1403) | oah.mapred.Partitioner is not configured by JobConf |  Major | . | Navis | Navis |
| [TEZ-1395](https://issues.apache.org/jira/browse/TEZ-1395) | Fix failure in IFile handling of compressed data |  Major | . | Tsuyoshi Ozawa | Rajesh Balamohan |
| [TEZ-1393](https://issues.apache.org/jira/browse/TEZ-1393) | user.dir should not be reset in LocalMode |  Blocker | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1392](https://issues.apache.org/jira/browse/TEZ-1392) | MRRSleepJob fails |  Major | . | Jeff Zhang | Siddharth Seth |
| [TEZ-1391](https://issues.apache.org/jira/browse/TEZ-1391) | IGNORE\_LIB\_URIS is not taking affect in local mode |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1385](https://issues.apache.org/jira/browse/TEZ-1385) | Disk Direct fails for MapOutput when trying to use OnDiskMerger |  Critical | . | Jonathan Eagles | Prakash Ramachandran |
| [TEZ-1377](https://issues.apache.org/jira/browse/TEZ-1377) | Disable TestSecureShuffle until TEZ-1368 is fixed. |  Trivial | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1368](https://issues.apache.org/jira/browse/TEZ-1368) | TestSecureShuffle failing |  Blocker | . | Siddharth Seth | Rajesh Balamohan |
| [TEZ-1360](https://issues.apache.org/jira/browse/TEZ-1360) | Provide vertex parallelism to each vertex task |  Major | . | Johannes Zillmann | Gopal V |
| [TEZ-1354](https://issues.apache.org/jira/browse/TEZ-1354) | FilterByWordOutputProcessor always throws NPE |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-1352](https://issues.apache.org/jira/browse/TEZ-1352) | HADOOP\_CONF\_DIR should be in the classpath for containers |  Blocker | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1342](https://issues.apache.org/jira/browse/TEZ-1342) | tez.am.client.am.port-range not taking effect |  Major | . | Johannes Zillmann | Jeff Zhang |
| [TEZ-1341](https://issues.apache.org/jira/browse/TEZ-1341) | Regression: IFile append() has string concats leading to memory pressure |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1333](https://issues.apache.org/jira/browse/TEZ-1333) | Flaky test: TestOnFileSortedOutput fails in jenkins server with OOM |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1328](https://issues.apache.org/jira/browse/TEZ-1328) | Move EnvironmentUpdateUtils to tez-common |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1324](https://issues.apache.org/jira/browse/TEZ-1324) | OnFileSortedOutput: send host/port/pathComponent details only when one of the partitions has data |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1322](https://issues.apache.org/jira/browse/TEZ-1322) | OrderedWordCount broken in master branch |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1301](https://issues.apache.org/jira/browse/TEZ-1301) | Fix title of pages in docs. |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1296](https://issues.apache.org/jira/browse/TEZ-1296) | commons-math3 dependency |  Major | . | Rohini Palaniswamy | Bikas Saha |
| [TEZ-1276](https://issues.apache.org/jira/browse/TEZ-1276) | Remove unnecessary TaskAttemptEventType TA\_FAIL\_REQUEST |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1261](https://issues.apache.org/jira/browse/TEZ-1261) | ShuffleVertexManager auto parallelism is broken after TEZ-1131 |  Major | . | Daniel Dai | Bikas Saha |
| [TEZ-1258](https://issues.apache.org/jira/browse/TEZ-1258) | Remove JobStateInternal |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1257](https://issues.apache.org/jira/browse/TEZ-1257) | Error on empty partition when using OnFileUnorderedKVOutput and ShuffledMergedInput |  Blocker | . | Rohini Palaniswamy | Rajesh Balamohan |
| [TEZ-1251](https://issues.apache.org/jira/browse/TEZ-1251) | Fix website to not display latest snapshot version in header |  Critical | . | Hitesh Shah | Alexander Pivovarov |
| [TEZ-1247](https://issues.apache.org/jira/browse/TEZ-1247) | Allow DAG.verify() to be called multiple times |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1244](https://issues.apache.org/jira/browse/TEZ-1244) | Typos in RootInputDataInformationEvent docs |  Major | . | Hitesh Shah | Chen He |
| [TEZ-1229](https://issues.apache.org/jira/browse/TEZ-1229) | Inconsistent setup of vertex lib resource between session and non-session |  Major | . | Bikas Saha |  |
| [TEZ-1221](https://issues.apache.org/jira/browse/TEZ-1221) | Update timezone for rbalamohan in docs |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1214](https://issues.apache.org/jira/browse/TEZ-1214) | Diagnostics of Vertex is missing when constructing TimelineEntity |  Minor | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1208](https://issues.apache.org/jira/browse/TEZ-1208) | Log time taken to connect/getInputStream to a http source in fetcher |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1205](https://issues.apache.org/jira/browse/TEZ-1205) | Remove "profiling" keyword from APIs/configs |  Blocker | . | Hitesh Shah | Rajesh Balamohan |
| [TEZ-1199](https://issues.apache.org/jira/browse/TEZ-1199) | EdgeVertexName in EventMetaData can be null |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1192](https://issues.apache.org/jira/browse/TEZ-1192) | RejectedExecutionException during TezChild invocation |  Major | . | Oleg Zhurakousky | Oleg Zhurakousky |
| [TEZ-1178](https://issues.apache.org/jira/browse/TEZ-1178) | Duplicate ObjectRegistryImpls found in one TezChild |  Critical | . | Gopal V | Gopal V |
| [TEZ-1171](https://issues.apache.org/jira/browse/TEZ-1171) | Vertex remains in INITED state if all source vertices start while the vertex was in INITIALIZING state |  Major | . | Rajesh Balamohan | Bikas Saha |
| [TEZ-1164](https://issues.apache.org/jira/browse/TEZ-1164) | Only events for tasks should be buffered in Initializing state |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1163](https://issues.apache.org/jira/browse/TEZ-1163) | Tez Auto Reducer-parallelism throws Divide-by-Zero |  Minor | . | Gopal V | Rajesh Balamohan |
| [TEZ-1162](https://issues.apache.org/jira/browse/TEZ-1162) | Tez leaks CodecPool buffers |  Major | . | Gopal V | Gopal V |
| [TEZ-1161](https://issues.apache.org/jira/browse/TEZ-1161) | Minor fix to Simple History Logs, to allow mining by MR tasks |  Trivial | . | Gopal V | Gopal V |
| [TEZ-1154](https://issues.apache.org/jira/browse/TEZ-1154) | tez-mapreduce-examples should depend on yarn-api |  Trivial | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1151](https://issues.apache.org/jira/browse/TEZ-1151) | Vertex should stay in initializing state until custom vertex manager sets the parallelism |  Major | . | Daniel Dai | Bikas Saha |
| [TEZ-1145](https://issues.apache.org/jira/browse/TEZ-1145) | Vertices should not start if they have uninitialized custom edges |  Major | . | Daniel Dai | Bikas Saha |
| [TEZ-1143](https://issues.apache.org/jira/browse/TEZ-1143) | 1-1 source split event should be handled in Vertex.RUNNING and Vertex.INITED state |  Major | . | Daniel Dai | Bikas Saha |
| [TEZ-1140](https://issues.apache.org/jira/browse/TEZ-1140) | TestSecureShuffle leaves behind test data dirs |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1135](https://issues.apache.org/jira/browse/TEZ-1135) | ShuffledUnorderedKVInput handles empty partitions incorrectly |  Critical | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1128](https://issues.apache.org/jira/browse/TEZ-1128) | OnFileUnorderedPartitionedKVOutput does not handle partitioning correctly with the MRPartitioner |  Major | . | Rohini Palaniswamy | Siddharth Seth |
| [TEZ-1125](https://issues.apache.org/jira/browse/TEZ-1125) | Pre-warm broken |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1121](https://issues.apache.org/jira/browse/TEZ-1121) | Clean up avro dependencies |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1118](https://issues.apache.org/jira/browse/TEZ-1118) | Tez with container reuse reports negative CPU usage |  Major | . | Sergey Shelukhin | Gopal V |
| [TEZ-1112](https://issues.apache.org/jira/browse/TEZ-1112) | MROutput committer should be initialized from initialized OutputFormat |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [TEZ-1111](https://issues.apache.org/jira/browse/TEZ-1111) | TestMRHelpers fails if HADOOP\_COMMON\_HOME is defined in the shell env |  Major | . | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [TEZ-1105](https://issues.apache.org/jira/browse/TEZ-1105) | Fix docs to ensure users are aware of adding "*" for HADOOP\_CLASSPATH |  Trivial | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1102](https://issues.apache.org/jira/browse/TEZ-1102) | Abstract out connection management logic in shuffle code |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1097](https://issues.apache.org/jira/browse/TEZ-1097) | Tez assumes that the scratch directory has to be same as the default filesystem |  Major | . | Chuan Liu | Hitesh Shah |
| [TEZ-1091](https://issues.apache.org/jira/browse/TEZ-1091) | Respect keepAlive parameter when cleaning up Fetcher connections |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1089](https://issues.apache.org/jira/browse/TEZ-1089) | CompositeDataMovementEvent srcIndexEnd is not an index |  Major | . | Siddharth Seth | Chen He |
| [TEZ-1088](https://issues.apache.org/jira/browse/TEZ-1088) | Flaky Test: TestFaultTolerance.testInputFailureCausesRerunAttemptWithinMaxAttemptSuccess |  Major | . | Hitesh Shah | Tassapol Athiapinya |
| [TEZ-1087](https://issues.apache.org/jira/browse/TEZ-1087) | ShuffleManager fails with IllegalStateException |  Major | . | Cheolsoo Park | Cheolsoo Park |
| [TEZ-1085](https://issues.apache.org/jira/browse/TEZ-1085) | Tez job gets "Could not load native gpl library or native-lzo library" error |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [TEZ-1082](https://issues.apache.org/jira/browse/TEZ-1082) | reading errorstream in Fetcher throws NPE (when fetcher timesout to establish a connection) |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1079](https://issues.apache.org/jira/browse/TEZ-1079) | Make tez example jobs use the ToolRunner framework |  Major | . | Bikas Saha | Devaraj K |
| [TEZ-1074](https://issues.apache.org/jira/browse/TEZ-1074) | DAGAppMaster takes lots of CPU when running a reasonably large job in the cluster |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1065](https://issues.apache.org/jira/browse/TEZ-1065) | DAGStatus.getVertexStatus and other vertex related API's should maintain vertex order |  Major | . | Bikas Saha | Jeff Zhang |
| [TEZ-1053](https://issues.apache.org/jira/browse/TEZ-1053) | Refactor: Pass TaskLocationHint directly to the Scheduling logic |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1049](https://issues.apache.org/jira/browse/TEZ-1049) | Refactor - LocationHint need not be passed into TaskAttemptImpl's constructor |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1048](https://issues.apache.org/jira/browse/TEZ-1048) | NPE when previous task attempts fail without generating any data |  Major | . | Arpit Gupta | Siddharth Seth |
| [TEZ-1045](https://issues.apache.org/jira/browse/TEZ-1045) | TezMiniCluster tests can fail intermittently |  Critical | . | Bikas Saha | Bikas Saha |
| [TEZ-1040](https://issues.apache.org/jira/browse/TEZ-1040) | TezMerger hangs when io.sort.mb value is 1 |  Blocker | . | Rohini Palaniswamy | Siddharth Seth |
| [TEZ-1034](https://issues.apache.org/jira/browse/TEZ-1034) | Shuffling can sometimes hang with duplicate inputs for the same index |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1029](https://issues.apache.org/jira/browse/TEZ-1029) | Fetcher can fail to report input failed event upon connection error |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1028](https://issues.apache.org/jira/browse/TEZ-1028) | Handle killed tasks and attempts when handling recovery data |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1027](https://issues.apache.org/jira/browse/TEZ-1027) | orderedwordcount needs to respect tez.staging-dir property |  Trivial | . | Yesha Vora | Rekha Joshi |
| [TEZ-1023](https://issues.apache.org/jira/browse/TEZ-1023) | Tez runtime configuration changes by users are not propagated to the jobs |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1021](https://issues.apache.org/jira/browse/TEZ-1021) | TezClient cannot connect to AM in a secure cluster when launched via Oozie |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1020](https://issues.apache.org/jira/browse/TEZ-1020) | VertexImpl handling of task failed in SUCCEEDED state is incorrect. |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1015](https://issues.apache.org/jira/browse/TEZ-1015) | Dag failed with Invalid event: V\_ROUTE\_EVENT at RECOVERING |  Major | . | Arpit Gupta |  |
| [TEZ-1014](https://issues.apache.org/jira/browse/TEZ-1014) | Add a log message to indicate last AM attempt |  Trivial | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1011](https://issues.apache.org/jira/browse/TEZ-1011) | TestDAGRecovery timing out on jenkins builds. |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1010](https://issues.apache.org/jira/browse/TEZ-1010) | TestAMNodeMap.testSelfBlacklist fails intermittently |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1009](https://issues.apache.org/jira/browse/TEZ-1009) | Fixes in log file roll-over |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1007](https://issues.apache.org/jira/browse/TEZ-1007) | MRHelpers.addLog4jSystemProperties() duplicates code from TezClientUtils.addLog4jSystemProperties() |  Major | . | Bikas Saha | Thomas Jungblut |
| [TEZ-1005](https://issues.apache.org/jira/browse/TEZ-1005) | AM relocalization adds resources to the wrong classloader |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [TEZ-1004](https://issues.apache.org/jira/browse/TEZ-1004) | AM relocalization doesn't handle conflicting resources correctly |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [TEZ-1003](https://issues.apache.org/jira/browse/TEZ-1003) | Need a input that merges multiple ShuffleMergedInput from VertexGroup |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [TEZ-998](https://issues.apache.org/jira/browse/TEZ-998) | InvalidStateTransitonException: Invalid event: V\_INIT at INITED |  Major | . | Arpit Gupta | Hitesh Shah |
| [TEZ-997](https://issues.apache.org/jira/browse/TEZ-997) | Internal Errror in am logs during dag shutdown |  Major | . | Arpit Gupta |  |
| [TEZ-988](https://issues.apache.org/jira/browse/TEZ-988) | Enable KeepAlive in Tez Fetcher |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-919](https://issues.apache.org/jira/browse/TEZ-919) | Fix shutdown handling for Shuffle (regular and broadcast) |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-873](https://issues.apache.org/jira/browse/TEZ-873) | Allow MRInputLegacy to expose the individual input split |  Major | . | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [TEZ-817](https://issues.apache.org/jira/browse/TEZ-817) | TEZ\_LIB\_URI are always uploaded as public Local Resource |  Critical | . | Bikas Saha | Prakash Ramachandran |
| [TEZ-811](https://issues.apache.org/jira/browse/TEZ-811) | Update docs on how to contribute to Tez. |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-800](https://issues.apache.org/jira/browse/TEZ-800) | One-one edge with parallelism -1 fails if source vertex parallelism is not -1 as well |  Major | . | Rohini Palaniswamy | Bikas Saha |
| [TEZ-737](https://issues.apache.org/jira/browse/TEZ-737) | DAG name should be unique within a Tez Session |  Major | . | Hitesh Shah | Mohammad Kamrul Islam |
| [TEZ-657](https://issues.apache.org/jira/browse/TEZ-657) | Tez should process the Container exit status - specifically when the RM preempts a container |  Major | . | Siddharth Seth | Bikas Saha |
| [TEZ-387](https://issues.apache.org/jira/browse/TEZ-387) | Move DAGClientHandler into its own class |  Major | . | Bikas Saha | Jeff Zhang |
| [TEZ-106](https://issues.apache.org/jira/browse/TEZ-106) | TaskImpl does not hold any diagnostic information that can be emitted to history |  Major | . | Hitesh Shah | Jeff Zhang |
| [TEZ-37](https://issues.apache.org/jira/browse/TEZ-37) | TaskScheduler.addTaskRequest() should handle duplicate tasks |  Major | . | Bikas Saha | Bikas Saha |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-225](https://issues.apache.org/jira/browse/TEZ-225) | Tests for DAGClient |  Major | . | Bikas Saha | Jeff Zhang |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-1485](https://issues.apache.org/jira/browse/TEZ-1485) | Disable node blacklisting and ATS in AM for local mode |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-1471](https://issues.apache.org/jira/browse/TEZ-1471) | Additional supplement for TEZ local mode document |  Major | . | Chen He | Chen He |
| [TEZ-1443](https://issues.apache.org/jira/browse/TEZ-1443) | Publish javadocs for the 0.5.0 release to the website |  Major | . | Hitesh Shah | Bikas Saha |
| [TEZ-1442](https://issues.apache.org/jira/browse/TEZ-1442) | Publish release notes for 0.5.0 |  Major | . | Hitesh Shah | Bikas Saha |
| [TEZ-1441](https://issues.apache.org/jira/browse/TEZ-1441) | Update website to have a set of pages for 0.5.0 release |  Major | . | Hitesh Shah | Bikas Saha |
| [TEZ-1434](https://issues.apache.org/jira/browse/TEZ-1434) | Make only wait apis in TezClient to throw InterruptedException |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1429](https://issues.apache.org/jira/browse/TEZ-1429) | Avoid sysexit in the DAGAM in case of local mode |  Blocker | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1379](https://issues.apache.org/jira/browse/TEZ-1379) | EdgeConfigurers should accept a Partitioner configuration, accept parameters for compression and secure shuffle |  Blocker | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1365](https://issues.apache.org/jira/browse/TEZ-1365) | Session mode and ignore-lib-uris needs to be set for session mode |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1349](https://issues.apache.org/jira/browse/TEZ-1349) | Add documentation for LocalMode usage |  Blocker | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1338](https://issues.apache.org/jira/browse/TEZ-1338) | Support submission of multiple applications with LocalRunner from within the same JVM |  Blocker | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1326](https://issues.apache.org/jira/browse/TEZ-1326) | AMStartedEvent should not be recovery event |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1325](https://issues.apache.org/jira/browse/TEZ-1325) | RecoveryParser can find incorrect last DAG ID |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1321](https://issues.apache.org/jira/browse/TEZ-1321) | Remove @Private methods from DAGClient |  Blocker | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1319](https://issues.apache.org/jira/browse/TEZ-1319) | Remove methods annotated as @Private from TezClient |  Blocker | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1318](https://issues.apache.org/jira/browse/TEZ-1318) | Simplify Vertex constructor |  Blocker | . | Siddharth Seth | Bikas Saha |
| [TEZ-1309](https://issues.apache.org/jira/browse/TEZ-1309) | Use hflush instead of hsync in recovery log |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1304](https://issues.apache.org/jira/browse/TEZ-1304) | Create execution underlying framework abstraction layer |  Blocker | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-1298](https://issues.apache.org/jira/browse/TEZ-1298) | Add parameterized constructor capabilities in ReflectionUtils |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-1290](https://issues.apache.org/jira/browse/TEZ-1290) | Make graduation related changes |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1285](https://issues.apache.org/jira/browse/TEZ-1285) | Add Utility for Modifying Environment Variables |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-1238](https://issues.apache.org/jira/browse/TEZ-1238) | Display more clear diagnostics info on client side on task failures |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1216](https://issues.apache.org/jira/browse/TEZ-1216) | Clean up the staging directory when the application completes |  Critical | . | Mohammad Kamrul Islam | Hitesh Shah |
| [TEZ-1159](https://issues.apache.org/jira/browse/TEZ-1159) | Fix handling of corrupt or empty files in recovery data |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1158](https://issues.apache.org/jira/browse/TEZ-1158) | Disable multiple AM attempts if recovery is disabled. |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1119](https://issues.apache.org/jira/browse/TEZ-1119) | Support display of user payloads in Tez UI |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1114](https://issues.apache.org/jira/browse/TEZ-1114) | Fix encrypted shuffle |  Major | . | Hitesh Shah | Rajesh Balamohan |
| [TEZ-1106](https://issues.apache.org/jira/browse/TEZ-1106) | Tez framework should use a unique subdir for staging data |  Major | . | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [TEZ-1080](https://issues.apache.org/jira/browse/TEZ-1080) | Configuration for non MR based Inputs/Outputs |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1066](https://issues.apache.org/jira/browse/TEZ-1066) | Generate events to integrate with YARN timeline server |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1064](https://issues.apache.org/jira/browse/TEZ-1064) | Restore dagName Set for duplicate detection in recovered AMs. |  Major | . | Hitesh Shah | Jeff Zhang |
| [TEZ-1062](https://issues.apache.org/jira/browse/TEZ-1062) | Create SimpleProcessor for processors that only need to implement the run method |  Major | . | Bikas Saha | Mohammad Kamrul Islam |
| [TEZ-1024](https://issues.apache.org/jira/browse/TEZ-1024) | Fix determination of failed attempts in recovery |  Major | . | Bikas Saha | Jeff Zhang |
| [TEZ-1002](https://issues.apache.org/jira/browse/TEZ-1002) | No HISTORY event for CONTAINER\_STOP\_REQUEST |  Trivial | . | Gopal V | Gopal V |
| [TEZ-886](https://issues.apache.org/jira/browse/TEZ-886) | Add @Nullable annotation at API level |  Major | . | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [TEZ-870](https://issues.apache.org/jira/browse/TEZ-870) | LocalContainerLauncher improvement - error handling, multiple tasks, Tez events |  Blocker | . | Chen He | Siddharth Seth |
| [TEZ-857](https://issues.apache.org/jira/browse/TEZ-857) | Split Input/Output interfaces into Framework / User components |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-717](https://issues.apache.org/jira/browse/TEZ-717) | Client changes to allow local mode DAG submission |  Blocker | . | Siddharth Seth | Jonathan Eagles |
| [TEZ-708](https://issues.apache.org/jira/browse/TEZ-708) | Avoid asking for new containers in uber-local mode |  Major | . | Chen He | Jonathan Eagles |
| [TEZ-707](https://issues.apache.org/jira/browse/TEZ-707) | Create LocalContainerLauncher |  Blocker | . | Chen He | Chen He |
| [TEZ-700](https://issues.apache.org/jira/browse/TEZ-700) | Helper API's to monitor a DAG to completion |  Major | . | Bikas Saha | Mohammad Kamrul Islam |
| [TEZ-699](https://issues.apache.org/jira/browse/TEZ-699) | Have sensible defaults for java opts |  Major | . | Bikas Saha | Hitesh Shah |
| [TEZ-698](https://issues.apache.org/jira/browse/TEZ-698) | Make it easy to create and configure MRInput/MROutput and other inputs/outputs |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-695](https://issues.apache.org/jira/browse/TEZ-695) | Create Abstract class for Input/Processor/Output |  Major | . | Bikas Saha | Mohammad Kamrul Islam |
| [TEZ-671](https://issues.apache.org/jira/browse/TEZ-671) | Support View/Modify ACLs for DAGs |  Major | . | Siddharth Seth | Hitesh Shah |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-1475](https://issues.apache.org/jira/browse/TEZ-1475) | Fix HDFS commands in INSTALL.txt |  Major | . | Alexander Pivovarov | Bikas Saha |
| [TEZ-1461](https://issues.apache.org/jira/browse/TEZ-1461) | Add public key to KEYS |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1456](https://issues.apache.org/jira/browse/TEZ-1456) | Fix typo in TestIFile.testWithRLEMarker |  Trivial | . | Alexander Pivovarov | Rajesh Balamohan |
| [TEZ-1455](https://issues.apache.org/jira/browse/TEZ-1455) | Replace deprecated junit.framework.Assert with org.junit.Assert |  Trivial | . | Alexander Pivovarov | Alexander Pivovarov |
| [TEZ-1454](https://issues.apache.org/jira/browse/TEZ-1454) | Remove unused imports |  Trivial | . | Alexander Pivovarov | Alexander Pivovarov |
| [TEZ-1440](https://issues.apache.org/jira/browse/TEZ-1440) | Post-release tasks |  Major | . | Hitesh Shah | Bikas Saha |
| [TEZ-1420](https://issues.apache.org/jira/browse/TEZ-1420) | Remove LocalClientProtocolProviderTez.java LocalJobRunnerMetricsTez.java LocalJobRunnerTez.java |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1419](https://issues.apache.org/jira/browse/TEZ-1419) | Release link broken on website for 0.4.1 release |  Blocker | . | Siddharth Seth |  |
| [TEZ-1399](https://issues.apache.org/jira/browse/TEZ-1399) | Add an example to show session usage |  Blocker | . | Bikas Saha | Bikas Saha |
| [TEZ-1343](https://issues.apache.org/jira/browse/TEZ-1343) | Bypass the Fetcher and read directly from the local filesystem if source vertex ran on the same host |  Major | . | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-1306](https://issues.apache.org/jira/browse/TEZ-1306) | Remove unused ValuesIterator |  Major | . | Siddharth Seth | Jonathan Eagles |
| [TEZ-1219](https://issues.apache.org/jira/browse/TEZ-1219) | Update team list to match incubator status page. |  Major | . | Hitesh Shah |  |
| [TEZ-1139](https://issues.apache.org/jira/browse/TEZ-1139) | Add a test for IntersectDataGen and IntersectValidate |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1077](https://issues.apache.org/jira/browse/TEZ-1077) | Add unit tests for SortedMergedGroupedInput |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1042](https://issues.apache.org/jira/browse/TEZ-1042) | Stop re-routing stdout, stderr for tasks and AM |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-373](https://issues.apache.org/jira/browse/TEZ-373) | Create UserPayload class for internal code |  Major | . | Bikas Saha | Tsuyoshi Ozawa |


