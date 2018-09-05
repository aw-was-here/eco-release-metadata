
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
# Apache Impala Changelog

## Release Impala 0.5 - 2013-02-04



### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-24](https://issues.apache.org/jira/browse/IMPALA-24) | built-in function DATEDIFF returns wrong results |  Critical | . | Greg Rahn | Skye Wanderman-Milne |
| [IMPALA-38](https://issues.apache.org/jira/browse/IMPALA-38) | backend client connections not being cached causes an observable latency in secure clusters. |  Major | . | Ishaan Joshi | Marcel Kornacker |
| [IMPALA-30](https://issues.apache.org/jira/browse/IMPALA-30) | Concurrent queries fail due to "java.lang.IllegalStateException: Table object has not been been initialised : \`PARTITIONS\`" |  Major | . | Marcel Kornacker | Lenni Kuff |
| [IMPALA-47](https://issues.apache.org/jira/browse/IMPALA-47) | Impalad won't start under address sanitizer with Kerberos enabled |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-11](https://issues.apache.org/jira/browse/IMPALA-11) | impala cluster hung |  Major | . | yangwei | Henry Robinson |


