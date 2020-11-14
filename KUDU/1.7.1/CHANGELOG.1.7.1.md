
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
# Apache Kudu Changelog

## Release 1.7.1 - 2018-06-07



### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2322](https://issues.apache.org/jira/browse/KUDU-2322) | Leader spews logs when follower falls behind log GC |  Critical | consensus | Todd Lipcon | Alexey Serbin |
| [KUDU-2342](https://issues.apache.org/jira/browse/KUDU-2342) | Non-voter replicas can be promoted and get stuck |  Blocker | tablet | Mostafa Mokhtar | Alexey Serbin |
| [KUDU-2367](https://issues.apache.org/jira/browse/KUDU-2367) | Leader replica sometimes reports follower's health status as FAILED instead of FAILED\_UNRECOVERABLE |  Major | tserver | Alexey Serbin | Alexey Serbin |
| [KUDU-2377](https://issues.apache.org/jira/browse/KUDU-2377) | Server fails to start up when RLIMIT\_NPROC is -1 |  Blocker | server | Adar Dembo | Adar Dembo |
| [KUDU-2379](https://issues.apache.org/jira/browse/KUDU-2379) | Spark generates a broken authentication credentials PB |  Blocker | java, spark | Todd Lipcon | Todd Lipcon |
| [KUDU-2412](https://issues.apache.org/jira/browse/KUDU-2412) | python client fails to compile in EL6 environments |  Major | . | Grant Henke | Grant Henke |
| [KUDU-2416](https://issues.apache.org/jira/browse/KUDU-2416) | Incorrect fallthrough in Java PartialRow.setMin for DECIMAL times |  Critical | java | Todd Lipcon | Grant Henke |


