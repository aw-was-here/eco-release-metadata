
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
#  0.15.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [PIG-4519](https://issues.apache.org/jira/browse/PIG-4519) | *Minor* | **Correct link to Contribute page**

Correct link to Contribute page


---

* [PIG-2692](https://issues.apache.org/jira/browse/PIG-2692) | *Minor* | **Make the Pig unit faciliities more generalizable and update javadocs**

Added the ability to mock multiple aliases when running a job.
Added assertOutputAnyOrder to be order independent.
Added user docs for mocking.


---

* [PIG-2647](https://issues.apache.org/jira/browse/PIG-2647) | *Major* | **Split Combining drops splits with empty getLocations()**

Don't ignore unavailable blocks when combining input splits into PigSplits.



