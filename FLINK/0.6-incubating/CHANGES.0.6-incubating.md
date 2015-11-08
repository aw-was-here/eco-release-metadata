
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
# Apache Flink Changelog

## Release 0.6-incubating - 2014-08-22

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-1007](https://issues.apache.org/jira/browse/FLINK-1007) | Clean up and refactor on Scala and Java code |  Minor | Scala API | Henry Saputra | Henry Saputra |
| [FLINK-998](https://issues.apache.org/jira/browse/FLINK-998) | NettyConnectionManager does not close connections |  Critical | Distributed Runtime | Ufuk Celebi | Ufuk Celebi |
| [FLINK-994](https://issues.apache.org/jira/browse/FLINK-994) | Replace DataInput and DataOutput of IOReadableWritable with DataInputView and DataOutputView |  Major | . | Till Rohrmann | Till Rohrmann |
| [FLINK-977](https://issues.apache.org/jira/browse/FLINK-977) | Wrong error message when TaskManager cannot connect to Jobmanager |  Critical | TaskManager | Stephan Ewen | Robert Metzger |
| [FLINK-957](https://issues.apache.org/jira/browse/FLINK-957) | Throw exception if solution set is CoGrouped on the wrong key. |  Major | Java API | Stephan Ewen | Stephan Ewen |
| [FLINK-934](https://issues.apache.org/jira/browse/FLINK-934) | Job and TaskManager startup scripts always set JVM heap size |  Major | . | Ufuk Celebi | Ufuk Celebi |
| [FLINK-928](https://issues.apache.org/jira/browse/FLINK-928) | Add information about connected TaskManagers to Web frontend |  Minor | Webfrontend | Robert Metzger | Jonathan Hasenburg |
| [FLINK-907](https://issues.apache.org/jira/browse/FLINK-907) | Implement AvroOutputFormat |  Major | . | GitHub Import | Mingliang Qi |
| [FLINK-875](https://issues.apache.org/jira/browse/FLINK-875) | Optimizer introduces Unnecessary Sort in Iterations |  Major | . | GitHub Import | Stephan Ewen |
| [FLINK-852](https://issues.apache.org/jira/browse/FLINK-852) | DistributedCache doesn't preserve executable flag |  Major | . | GitHub Import | Chesnay Schepler |
| [FLINK-849](https://issues.apache.org/jira/browse/FLINK-849) | Add Tab in Webfrontend that lists all configuration values |  Major | . | GitHub Import | Jonathan Hasenburg |
| [FLINK-826](https://issues.apache.org/jira/browse/FLINK-826) | Adapt CollectionInputFormat to work with non-serializable objects |  Major | . | GitHub Import |  |
| [FLINK-777](https://issues.apache.org/jira/browse/FLINK-777) | The Hadoop Compatibility has been refactored and extended to support the new Java API. |  Major | . | GitHub Import | Timo Walther |
| [FLINK-711](https://issues.apache.org/jira/browse/FLINK-711) | Webclient with Apache Software License |  Major | Webfrontend | GitHub Import | Jonathan Hasenburg |
| [FLINK-701](https://issues.apache.org/jira/browse/FLINK-701) | Change new Java API functions to SAMs |  Major | Java API | GitHub Import | Kostas Tzoumas |
| [FLINK-361](https://issues.apache.org/jira/browse/FLINK-361) | Remote Jobmanager option for "cancel" and "list" option of CLI client |  Major | . | GitHub Import | Stephan Ewen |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-1054](https://issues.apache.org/jira/browse/FLINK-1054) | Windows: JM web interface job analze view does not show task details on |  Minor | Webfrontend | Fabian Hueske | Robert Metzger |
| [FLINK-1046](https://issues.apache.org/jira/browse/FLINK-1046) | Flink Client does not return after running a job with an accumulator |  Major | . | Robert Metzger | Stephan Ewen |
| [FLINK-1039](https://issues.apache.org/jira/browse/FLINK-1039) | POJO expression keys do not work for groupReduce functions |  Major | Java API | Stephan Ewen | Stephan Ewen |
| [FLINK-1037](https://issues.apache.org/jira/browse/FLINK-1037) | Projects wiki page link in contribution page is broken |  Trivial | Documentation | Gomathivinayagam Muthuvinayagam | Robert Metzger |
| [FLINK-1031](https://issues.apache.org/jira/browse/FLINK-1031) | Eclipse M2E cannot compile project |  Critical | Build System | Stephan Ewen | Stephan Ewen |
| [FLINK-1026](https://issues.apache.org/jira/browse/FLINK-1026) | WordCount POJO fails with null pointer exception |  Critical | Java API | Stephan Ewen | Aljoscha Krettek |
| [FLINK-1022](https://issues.apache.org/jira/browse/FLINK-1022) | Fix doc link in how-to-contribute page to point to right coding\_guidelines |  Major | . | Henry Saputra | Henry Saputra |
| [FLINK-1010](https://issues.apache.org/jira/browse/FLINK-1010) | Conflicting Scala Versions |  Major | Build System | Stephan Ewen | Till Rohrmann |
| [FLINK-1000](https://issues.apache.org/jira/browse/FLINK-1000) | Job fails because an IndexOutOfBoundsException |  Major | . | Bastian Köcher | Robert Waury |
| [FLINK-996](https://issues.apache.org/jira/browse/FLINK-996) | NullPointerException while translating union node |  Major | . | Till Rohrmann | Till Rohrmann |
| [FLINK-990](https://issues.apache.org/jira/browse/FLINK-990) | Scala API: Compiler Hints are not forwarded |  Major | . | Till Rohrmann | Till Rohrmann |
| [FLINK-985](https://issues.apache.org/jira/browse/FLINK-985) | Update config.md of the user docs |  Major | . | Stephan Ewen | Stephan Ewen |
| [FLINK-966](https://issues.apache.org/jira/browse/FLINK-966) | Missing java-src directory in packaged examples directory |  Minor | Build System | Ufuk Celebi |  |
| [FLINK-950](https://issues.apache.org/jira/browse/FLINK-950) | Tests sometimes fail due to deleted temp files |  Major | . | Stephan Ewen | Stephan Ewen |
| [FLINK-944](https://issues.apache.org/jira/browse/FLINK-944) | Serialization problem of CollectionInputFormat |  Major | . | Till Rohrmann | Till Rohrmann |
| [FLINK-943](https://issues.apache.org/jira/browse/FLINK-943) | Configured values with double quotes are not parsed correctly in bash scripts |  Major | . | Ufuk Celebi |  |
| [FLINK-941](https://issues.apache.org/jira/browse/FLINK-941) | Possible deadlock after increasing my data set size |  Major | . | Bastian Köcher | Stephan Ewen |
| [FLINK-935](https://issues.apache.org/jira/browse/FLINK-935) | Bug in Optimizer when reusing work across iterations |  Major | Optimizer | Stephan Ewen | Stephan Ewen |
| [FLINK-932](https://issues.apache.org/jira/browse/FLINK-932) | Create Semantic Properties from Project Joins |  Major | . | Stephan Ewen | Sebastian Kunert |
| [FLINK-929](https://issues.apache.org/jira/browse/FLINK-929) | Impossible to pass double with configuration |  Major | Java API | Jonas Traub | Robert Metzger |
| [FLINK-927](https://issues.apache.org/jira/browse/FLINK-927) | Task Cancellation in CompactingHashTable fails |  Major | . | Robert Metzger | Robert Waury |
| [FLINK-922](https://issues.apache.org/jira/browse/FLINK-922) | coGroup ordering NullPointerException |  Major | . | Bastian Köcher | Sebastian Kunert |
| [FLINK-919](https://issues.apache.org/jira/browse/FLINK-919) | Added configuration subsection in webinterface |  Major | Webfrontend | GitHub Import | Jonathan Hasenburg |
| [FLINK-917](https://issues.apache.org/jira/browse/FLINK-917) | Rename netty IO Thread count parameters |  Major | . | GitHub Import | Ufuk Celebi |
| [FLINK-916](https://issues.apache.org/jira/browse/FLINK-916) | Implement AvroOutputFormat |  Critical | . | GitHub Import | Mingliang Qi |
| [FLINK-911](https://issues.apache.org/jira/browse/FLINK-911) | Add test for broken type extraction in with Java 6 JVM. |  Major | . | GitHub Import | Timo Walther |
| [FLINK-900](https://issues.apache.org/jira/browse/FLINK-900) | Webclient does not show System.out messages |  Major | . | GitHub Import | Robert Metzger |
| [FLINK-887](https://issues.apache.org/jira/browse/FLINK-887) | Improve JobManager heap space memory configuration for YARN |  Major | YARN Client | GitHub Import | Robert Metzger |
| [FLINK-882](https://issues.apache.org/jira/browse/FLINK-882) | DistCache: executable flag, directories |  Major | . | GitHub Import | Chesnay Schepler |
| [FLINK-836](https://issues.apache.org/jira/browse/FLINK-836) | Integration of the CachedBuildSideMatchDriver into the optimizer |  Major | . | GitHub Import | Markus Holzemer |
| [FLINK-815](https://issues.apache.org/jira/browse/FLINK-815) | Improve partitioning hash function |  Major | . | GitHub Import |  |
| [FLINK-808](https://issues.apache.org/jira/browse/FLINK-808) | Remove cloud code |  Major | . | GitHub Import |  |
| [FLINK-795](https://issues.apache.org/jira/browse/FLINK-795) | Possibly extend the cost model of the optimizer |  Major | . | GitHub Import | Markus Holzemer |
| [FLINK-782](https://issues.apache.org/jira/browse/FLINK-782) | Parametrize aggregators and convergence criteria |  Major | . | GitHub Import | Stephan Ewen |
| [FLINK-731](https://issues.apache.org/jira/browse/FLINK-731) | Provide a way to parametrize aggregators and convergence criteria |  Major | . | GitHub Import | Stephan Ewen |
| [FLINK-475](https://issues.apache.org/jira/browse/FLINK-475) | Adjust Webclient Plan display to handle Programs with Broadcast Variables |  Major | . | GitHub Import | Jonathan Hasenburg |
| [FLINK-33](https://issues.apache.org/jira/browse/FLINK-33) | [GitHub] Rework instance configuration. |  Major | . | GitHub Import |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-1624](https://issues.apache.org/jira/browse/FLINK-1624) | Build of old sources fails due to git-commit-id plugin |  Minor | . | Maximilian Michels | Maximilian Michels |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-1023](https://issues.apache.org/jira/browse/FLINK-1023) | Provide Iterable instead of Iterator to grouped functions |  Trivial | Java API | Ufuk Celebi | Stephan Ewen |


