
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
# Apache Yetus  0.1.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [YETUS-28](https://issues.apache.org/jira/browse/YETUS-28) | *Major* | **if CHANGED\_FILES is corrupt, find\_changed\_modules never returns**

In building some unit tests, did a negative tests and hit this condition.  We should put a limit on how many times we loop in the find\_x\_dirs code.


---

* [YETUS-7](https://issues.apache.org/jira/browse/YETUS-7) | *Blocker* | **update top level LICENSE and NOTICE**

\* Name them LICENSE and NOTICE, per current policy preference
\* Update LICENSE to reflect any bundled 3rd party works
\* Update NOTICE with our project and any bundled 3rd party works



