
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
# Hadoop YARN 2.7.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [YARN-3154](https://issues.apache.org/jira/browse/YARN-3154) | *Blocker* | **Should not upload partial logs for MR jobs or other "short-running' applications**

Applications which made use of the LogAggregationContext in their application will need to revisit this code in order to make sure that their logs continue to get rolled out.


---

* [YARN-2230](https://issues.apache.org/jira/browse/YARN-2230) | *Minor* | **Fix description of yarn.scheduler.maximum-allocation-vcores in yarn-default.xml (or code)**

I have modified the description of the yarn.scheduler.maximum-allocation-vcores setting in yarn-default.xml to be reflective of the actual behavior (throw InvalidRequestException when the limit is crossed).

Since this is a documentation change, I have not added any test cases.

Please review the patch, thanks!


---

* [YARN-1904](https://issues.apache.org/jira/browse/YARN-1904) | *Major* | **Uniform the XXXXNotFound messages from ClientRMService and ApplicationHistoryClientService**

I just committed this. Thanks Zhijie!



