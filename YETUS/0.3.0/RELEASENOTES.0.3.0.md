
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
# Apache Yetus  0.3.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [YETUS-337](https://issues.apache.org/jira/browse/YETUS-337) | *Major* | **Upgrade version of pylint used in Dockerfile**

The default precommit Dockerfile now relies on pip to grab an up-to-date version of pylint, rather than rely on the version shipped in dpkg.


---

* [YETUS-322](https://issues.apache.org/jira/browse/YETUS-322) | *Major* | **flip verify\_ result codes**

This changes various verify\_ functions such that 0 is always yes/true and 1 is always no/false.  This should make it easier/more obvious what test is being performed in if statements.  Be aware that this will likely break any personalities or plug-ins that were written against previous versions.


---

* [YETUS-300](https://issues.apache.org/jira/browse/YETUS-300) | *Blocker* | **CHANGED\_FILES, CHANGED\_MODULES, etc should really be arrays**

<!-- markdown -->
Users:

* precommit should now have much better support for source trees with files that have spaces in them.

Devs:

* this patch completely changes CHANGED\_FILES, CHANGED\_MODULES, and USER\_MODULES\_LIST to be arrays instead of strings.  Personalities, plug-ins, etc, that use these will need to be updated appropriately.


---

* [YETUS-303](https://issues.apache.org/jira/browse/YETUS-303) | *Major* | **better sorting options for releasedocmaker**

Releasedocmaker now supports sorting issues based either on resolution date or issue id. The default remains the same: release date in oldest-first order.

See the docs for more information.



