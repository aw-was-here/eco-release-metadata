
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
# Apache Orc Changelog

## Release 1.6.3 - 2020-04-26



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-574](https://issues.apache.org/jira/browse/ORC-574) | Performance: Use const references for string statistics min and max to avoid copy construction |  Major | C++ | David Zanter | David Zanter |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-27](https://issues.apache.org/jira/browse/ORC-27) | C++ reader does not read dates correctly prior to 1583 |  Minor | . | Aliaksei Sandryhaila | Owen O'Malley |
| [ORC-556](https://issues.apache.org/jira/browse/ORC-556) | ConvertTreeReader can incorrectly be applied on columns of the same primitive type |  Major | . | Ratandeep Ratti | Shardul Mahadik |
| [ORC-586](https://issues.apache.org/jira/browse/ORC-586) | [C++] Memory leak in StructColumnReader |  Major | . | Zoltán Borók-Nagy | Zoltán Borók-Nagy |
| [ORC-589](https://issues.apache.org/jira/browse/ORC-589) | [C++] ORC doesn't check for negative dictionary entry lengths anymore |  Major | . | Zoltán Borók-Nagy | Zoltán Borók-Nagy |
| [ORC-578](https://issues.apache.org/jira/browse/ORC-578) | IllegalArgumentException: Can't use LongColumnVector to read proleptic Gregorian dates. |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-610](https://issues.apache.org/jira/browse/ORC-610) | Updated Copyright year in the NOTICE file |  Minor | documentation | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-613](https://issues.apache.org/jira/browse/ORC-613) | OrcMapredRecordReader mis-reuse struct object when actual children schema differs |  Major | Java | Lei Sun | Lei Sun |
| [ORC-621](https://issues.apache.org/jira/browse/ORC-621) | Need reader fix for ORC-569 |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-616](https://issues.apache.org/jira/browse/ORC-616) | In Patched Base encoding, the value of headerThirdByte goes beyond the range of byte |  Critical | Java | Ruochen Zou | Ruochen Zou |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-576](https://issues.apache.org/jira/browse/ORC-576) | Improve LICENSE file |  Major | . | Owen O'Malley | Owen O'Malley |


