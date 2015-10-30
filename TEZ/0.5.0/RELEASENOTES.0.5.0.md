
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
# Apache Tez  0.5.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [TEZ-1509](https://issues.apache.org/jira/browse/TEZ-1509) | *Major* | **Set a useful default value for java opts**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1500](https://issues.apache.org/jira/browse/TEZ-1500) | *Blocker* | **DAG should be created via a create method**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1472](https://issues.apache.org/jira/browse/TEZ-1472) | *Major* | **Separate method calls for creating InputDataInformationEvent with serialized/unserialized payloads**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1469](https://issues.apache.org/jira/browse/TEZ-1469) | *Blocker* | **AM/Session LRs are not shipped to vertices in new API use-case**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1465](https://issues.apache.org/jira/browse/TEZ-1465) | *Blocker* | **Update and document IntersectExample. Change name to JoinExample**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1450](https://issues.apache.org/jira/browse/TEZ-1450) | *Blocker* | **Documentation of TezConfiguration**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1449](https://issues.apache.org/jira/browse/TEZ-1449) | *Blocker* | **Change user payloads to work with a byte buffer**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1438](https://issues.apache.org/jira/browse/TEZ-1438) | *Blocker* | **Annotate add java doc for tez-runtime-library and tez-mapreduce**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1432](https://issues.apache.org/jira/browse/TEZ-1432) | *Blocker* | **TEZ\_AM\_CANCEL\_DELEGATION\_TOKEN is named inorrectly**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1427](https://issues.apache.org/jira/browse/TEZ-1427) | *Blocker* | **Change remaining classes that are using byte[] to UserPayload**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1426](https://issues.apache.org/jira/browse/TEZ-1426) | *Blocker* | **Create configuration helpers for ShuffleVertexManager and TezGrouping code**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1425](https://issues.apache.org/jira/browse/TEZ-1425) | *Blocker* | **Move constants to TezConstants**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1423](https://issues.apache.org/jira/browse/TEZ-1423) | *Major* | **Ability to pass custom properties to keySerializer for OnFileUnorderedPartitionedKVOutput**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1418](https://issues.apache.org/jira/browse/TEZ-1418) | *Blocker* | **Provide Default value for TEZ\_AM\_LAUNCH\_ENV and TEZ\_TASK\_LAUNCH**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1417](https://issues.apache.org/jira/browse/TEZ-1417) | *Blocker* | **Rename \*Configurer**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1416](https://issues.apache.org/jira/browse/TEZ-1416) | *Blocker* | **tez-api project javadoc/annotations review and clean up.**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1410](https://issues.apache.org/jira/browse/TEZ-1410) | *Blocker* | **DAGClient#waitForCompletion() methods should not swallow interrupts**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1407](https://issues.apache.org/jira/browse/TEZ-1407) | *Blocker* | **Move MRInput related methods out of MRHelpers and consolidate**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1400](https://issues.apache.org/jira/browse/TEZ-1400) | *Major* | **Reducers stuck when enabling auto-reduce parallelism (MRR case)**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1394](https://issues.apache.org/jira/browse/TEZ-1394) | *Major* | **Create example code for OrderedWordCount**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1390](https://issues.apache.org/jira/browse/TEZ-1390) | *Blocker* | **Replace byte[] with ByteBuffer as the type of user payload in the API**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1382](https://issues.apache.org/jira/browse/TEZ-1382) | *Blocker* | **Change ObjectRegistry API to allow for future extensions**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1372](https://issues.apache.org/jira/browse/TEZ-1372) | *Blocker* | **Fix preWarm to work after recent API changes**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1351](https://issues.apache.org/jira/browse/TEZ-1351) | *Major* | **MROutput needs a flush method to ensure data is materialized for FileOutputCommitter**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1347](https://issues.apache.org/jira/browse/TEZ-1347) | *Blocker* | **Consolidate MRHelpers**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1346](https://issues.apache.org/jira/browse/TEZ-1346) | *Blocker* | **Change Processor construction to make use of contexts**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1334](https://issues.apache.org/jira/browse/TEZ-1334) | *Blocker* | **Annotate all non public classes in tez-runtime-library with @private**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1320](https://issues.apache.org/jira/browse/TEZ-1320) | *Blocker* | **Remove getApplicationId from DAGClient**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1317](https://issues.apache.org/jira/browse/TEZ-1317) | *Blocker* | **Simplify MRinput/MROutput configuration**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1312](https://issues.apache.org/jira/browse/TEZ-1312) | *Blocker* | **rename vertex.addInput/Output() to vertex.addDataSource/Sink()**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1311](https://issues.apache.org/jira/browse/TEZ-1311) | *Blocker* | **get sharedobjectregistry from the context instead of a static**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1300](https://issues.apache.org/jira/browse/TEZ-1300) | *Major* | **Change default tez classpath to not include hadoop jars from the cluster**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1279](https://issues.apache.org/jira/browse/TEZ-1279) | *Major* | **Rename \*EdgeConfiguration to \*EdgeConfigurer**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1278](https://issues.apache.org/jira/browse/TEZ-1278) | *Blocker* | **TezClient#waitTillReady() should not swallow interrupts**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1272](https://issues.apache.org/jira/browse/TEZ-1272) | *Major* | **Change YARNRunner to make use of EdgeConfigurations**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1269](https://issues.apache.org/jira/browse/TEZ-1269) | *Major* | **TaskScheduler prematurely releases containers**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1266](https://issues.apache.org/jira/browse/TEZ-1266) | *Major* | **Create \*EdgeConfigurer.createDefaultCustomEdge() and force setting partitioners**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1246](https://issues.apache.org/jira/browse/TEZ-1246) | *Blocker* | **Replace constructors with create() methods for DAG, Vertex, Edge etc in the API**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1237](https://issues.apache.org/jira/browse/TEZ-1237) | *Blocker* | **Consolidate naming of API classes**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1234](https://issues.apache.org/jira/browse/TEZ-1234) | *Major* | **Replace Interfaces with Abstract classes for VertexManagerPlugin and EdgeManager**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1231](https://issues.apache.org/jira/browse/TEZ-1231) | *Blocker* | **Clean up TezRuntimeConfiguration**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1213](https://issues.apache.org/jira/browse/TEZ-1213) | *Major* | **Fix parameter naming in TezJobConfig**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1194](https://issues.apache.org/jira/browse/TEZ-1194) | *Blocker* | **Make TezUserPayload user facing for payload specification**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1169](https://issues.apache.org/jira/browse/TEZ-1169) | *Major* | **Allow numPhysicalInputs to be specified for RootInputs**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1137](https://issues.apache.org/jira/browse/TEZ-1137) | *Major* | **Move TezJobConfig to runtime-library and rename to TezRuntimeConfiguration**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1134](https://issues.apache.org/jira/browse/TEZ-1134) | *Major* | **InputInitializer and OutputCommitter implicitly use payloads of the input and output**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1133](https://issues.apache.org/jira/browse/TEZ-1133) | *Blocker* | **Remove unnecessary MRHelpers methods or make them private**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1132](https://issues.apache.org/jira/browse/TEZ-1132) | *Blocker* | **Consistent naming of Input and Outputs**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1131](https://issues.apache.org/jira/browse/TEZ-1131) | *Major* | **Simplify EdgeManager APIs**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1130](https://issues.apache.org/jira/browse/TEZ-1130) | *Major* | **Replace confusing names on Vertex API**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1127](https://issues.apache.org/jira/browse/TEZ-1127) | *Major* | **Add TEZ\_TASK\_JAVA\_OPTS and TEZ\_ENV configs to specify values from config**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1058](https://issues.apache.org/jira/browse/TEZ-1058) | *Blocker* | **Replace user land interfaces with abstract classes**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1057](https://issues.apache.org/jira/browse/TEZ-1057) | *Blocker* | **Replace interfaces with abstract classes for Processor/Input/Output classes**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1055](https://issues.apache.org/jira/browse/TEZ-1055) | *Blocker* | **Rename tez-mapreduce-examples to tez-examples**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1041](https://issues.apache.org/jira/browse/TEZ-1041) | *Blocker* | **Use VertexLocationHint consistently everywhere in the API**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1038](https://issues.apache.org/jira/browse/TEZ-1038) | *Major* | **Move TaskLocationHint outside of VertexLocationHint**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1025](https://issues.apache.org/jira/browse/TEZ-1025) | *Major* | **Rename tez.am.max.task.attempts to tez.am.task.max.failed.attempts**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1018](https://issues.apache.org/jira/browse/TEZ-1018) | *Major* | **VertexManagerPluginContext should enable assigning locality to scheduled tasks**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-960](https://issues.apache.org/jira/browse/TEZ-960) | *Minor* | **Typos in MRJobConfig**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-866](https://issues.apache.org/jira/browse/TEZ-866) | *Major* | **Add a TezMergedInputContext for MergedInputs**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-696](https://issues.apache.org/jira/browse/TEZ-696) | *Major* | **Remove implicit copying of processor payload to input and output**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-692](https://issues.apache.org/jira/browse/TEZ-692) | *Major* | **Unify job submission in either TezClient or TezSession**

**WARNING: No release note provided for this incompatible change.**



