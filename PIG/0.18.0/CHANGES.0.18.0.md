
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
# Apache Pig Changelog

## Release 0.18.0 - Unreleased (as of 2017-08-28)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-5216](https://issues.apache.org/jira/browse/PIG-5216) | Customizable Error Handling for Loaders in Pig |  Major | . | Iris Zeng | Iris Zeng |
| [PIG-5251](https://issues.apache.org/jira/browse/PIG-5251) | Bump joda-time to 2.9.9 |  Major | . | Artem Ervits | Artem Ervits |
| [PIG-5237](https://issues.apache.org/jira/browse/PIG-5237) | Fix DOT file parsing to enable DOT-based physical plan testing |  Minor | tools | Adam Szita | Jakov Rabinovits |
| [PIG-5157](https://issues.apache.org/jira/browse/PIG-5157) | Upgrade to Spark 2.0 |  Major | spark | Nandor Kollar | Nandor Kollar |
| [PIG-5264](https://issues.apache.org/jira/browse/PIG-5264) | Remove deprecated keys from PigConfiguration |  Minor | . | Nandor Kollar | Nandor Kollar |
| [PIG-5288](https://issues.apache.org/jira/browse/PIG-5288) | Improve performance of PigTextRawBytesComparator |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-5282](https://issues.apache.org/jira/browse/PIG-5282) | Upgade to Java 8 |  Major | . | Nandor Kollar | Satish Subhashrao Saley |
| [PIG-5268](https://issues.apache.org/jira/browse/PIG-5268) | Review of org.apache.pig.backend.hadoop.datastorage.HDataStorage |  Trivial | data | BELUGA BEHR | BELUGA BEHR |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-5244](https://issues.apache.org/jira/browse/PIG-5244) | Several unit tests are failing in Tez mode after merging spark branch |  Major | tez | Nandor Kollar | Nandor Kollar |
| [PIG-5225](https://issues.apache.org/jira/browse/PIG-5225) | Several unit tests are not annotated with @Test |  Major | . | Nandor Kollar | Nandor Kollar |
| [PIG-4700](https://issues.apache.org/jira/browse/PIG-4700) | Enable progress reporting for Tasks in Tez |  Major | . | Rohini Palaniswamy | Satish Subhashrao Saley |
| [PIG-4548](https://issues.apache.org/jira/browse/PIG-4548) | Records Lost With Specific Combination of Commands and Streaming Function |  Major | . | Steve T | Koji Noguchi |
| [PIG-5263](https://issues.apache.org/jira/browse/PIG-5263) | Using wildcard doesn't work with OrcStorage |  Minor | . | Satish Subhashrao Saley | Satish Subhashrao Saley |
| [PIG-5269](https://issues.apache.org/jira/browse/PIG-5269) | MapReduceLauncher and MRJobStats imports org.python.google.common.collect.Lists instead of org.google.common.collect.Lists |  Major | . | Nandor Kollar | Nandor Kollar |
| [PIG-5270](https://issues.apache.org/jira/browse/PIG-5270) | Typo in Pig Logging |  Minor | data | Andrew Hutton | Andrew Hutton |
| [PIG-4767](https://issues.apache.org/jira/browse/PIG-4767) | Partition filter not pushed down when filter clause references variable from another load path |  Major | . | Anthony Hsu | Koji Noguchi |
| [PIG-5274](https://issues.apache.org/jira/browse/PIG-5274) | TestEvalPipelineLocal#testSetLocationCalledInFE is failing in spark mode after PIG-5157 |  Major | . | Nandor Kollar | Nandor Kollar |
| [PIG-3655](https://issues.apache.org/jira/browse/PIG-3655) | BinStorage and InterStorage approach to record markers is broken |  Major | . | Jeff Plaisance | Adam Szita |
| [PIG-5276](https://issues.apache.org/jira/browse/PIG-5276) | building "jar" should not call "clean" |  Minor | build | Koji Noguchi | Nandor Kollar |
| [PIG-5278](https://issues.apache.org/jira/browse/PIG-5278) | Unit test failures because of PIG-5264 |  Major | . | Satish Subhashrao Saley | Nandor Kollar |
| [PIG-5284](https://issues.apache.org/jira/browse/PIG-5284) | Fix flakyness introduced by PIG-3655 |  Major | . | Adam Szita | Adam Szita |
| [PIG-5254](https://issues.apache.org/jira/browse/PIG-5254) | Hit Ctrl-D to quit grunt shell fail |  Major | impl | Daniel Dai | Weijun Qian |
| [PIG-5283](https://issues.apache.org/jira/browse/PIG-5283) | Configuration is not passed to SparkPigSplits on the backend |  Major | spark | Adam Szita | Adam Szita |
| [PIG-5287](https://issues.apache.org/jira/browse/PIG-5287) | bump jython to 2.7.1 |  Minor | . | Artem Ervits | Artem Ervits |
| [PIG-5294](https://issues.apache.org/jira/browse/PIG-5294) | Spark unit tests are always run in spark1 mode |  Major | build, spark | Adam Szita | Adam Szita |
| [PIG-5293](https://issues.apache.org/jira/browse/PIG-5293) | Suspicious code as missing \`this' for a member |  Major | . | JC | JC |


