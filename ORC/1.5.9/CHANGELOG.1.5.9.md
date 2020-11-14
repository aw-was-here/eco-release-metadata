
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

## Release 1.5.9 - 2020-01-30



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-574](https://issues.apache.org/jira/browse/ORC-574) | Performance: Use const references for string statistics min and max to avoid copy construction |  Major | C++ | David Zanter | David Zanter |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-27](https://issues.apache.org/jira/browse/ORC-27) | C++ reader does not read dates correctly prior to 1583 |  Minor | . | Aliaksei Sandryhaila | Owen O'Malley |
| [ORC-552](https://issues.apache.org/jira/browse/ORC-552) | Fix compilation of C++ Reader.cc on centos 6. |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-578](https://issues.apache.org/jira/browse/ORC-578) | IllegalArgumentException: Can't use LongColumnVector to read proleptic Gregorian dates. |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-594](https://issues.apache.org/jira/browse/ORC-594) | Fix compatibility with ORC 1.5.8 on OrcTail.getStripeStatistics |  Major | . | Owen O'Malley | Owen O'Malley |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-576](https://issues.apache.org/jira/browse/ORC-576) | Improve LICENSE file |  Major | . | Owen O'Malley | Owen O'Malley |


