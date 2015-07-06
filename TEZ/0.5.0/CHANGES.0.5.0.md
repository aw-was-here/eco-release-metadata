
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
| [TEZ-1417](https://issues.apache.org/jira/browse/TEZ-1417) | Rename \*Configurer |  Blocker | . | Siddharth Seth | Siddharth Seth |
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
| [TEZ-1279](https://issues.apache.org/jira/browse/TEZ-1279) | Rename \*EdgeConfiguration to \*EdgeConfigurer |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1278](https://issues.apache.org/jira/browse/TEZ-1278) | TezClient#waitTillReady() should not swallow interrupts |  Blocker | . | Johannes Zillmann | Johannes Zillmann |
| [TEZ-1272](https://issues.apache.org/jira/browse/TEZ-1272) | Change YARNRunner to make use of EdgeConfigurations |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1269](https://issues.apache.org/jira/browse/TEZ-1269) | TaskScheduler prematurely releases containers |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1266](https://issues.apache.org/jira/browse/TEZ-1266) | Create \*EdgeConfigurer.createDefaultCustomEdge() and force setting partitioners |  Major | . | Bikas Saha | Siddharth Seth |
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


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


