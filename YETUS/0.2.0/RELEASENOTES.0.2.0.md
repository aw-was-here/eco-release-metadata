
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
# Apache Yetus  0.2.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [YETUS-241](https://issues.apache.org/jira/browse/YETUS-241) | *Major* | **revamp parameterized site**

**WARNING: No release note provided for this important issue.**


---

* [YETUS-214](https://issues.apache.org/jira/browse/YETUS-214) | *Major* | **release doc maker should have option to specify output directory**

Allow specifying of output directory in releasedocmaker


---

* [YETUS-187](https://issues.apache.org/jira/browse/YETUS-187) | *Blocker* | **maven javac/javadoc can't use calcdiffs**

The calcdiff function has been changed to be pluggable to allow for a variety of difference calculators to allow for greater accuracy when more information is available.  As a result, this fixes some (but not all!) instances where pre-existing errors were reported as new in some reports.


---

* [YETUS-62](https://issues.apache.org/jira/browse/YETUS-62) | *Major* | **add auto-formatting of usage options**

<!-- markdown -->
test-patch and smart-apply-patch now have variable size output to match the screen dimensions when printing the usage information.  As a result, the `plugin\_usage` functions now use the `yetus\_add\_option` to add options to output. Plug-ins written to use raw echos will still work, but the output will be strange looking.



