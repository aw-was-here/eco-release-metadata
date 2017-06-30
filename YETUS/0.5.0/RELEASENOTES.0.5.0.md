
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
# Apache Yetus  0.5.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [YETUS-471](https://issues.apache.org/jira/browse/YETUS-471) | *Major* | **Add possibility to skip the source check for Findbugs**

<!-- markdown -->
Users of Apache Yetus Test Patch who wish to run the findbugs check on all changed modules rather than just those that have changed source files can now pass `--findbugs-skip-maven-source-check`.


---

* [YETUS-509](https://issues.apache.org/jira/browse/YETUS-509) | *Major* | **Remove maven-eclipse plugin support**

We have removed testing of the maven-eclipse plugin as it has been deprecated for several years now.


---

* [YETUS-512](https://issues.apache.org/jira/browse/YETUS-512) | *Blocker* | **Switch default docker image over to Xenial**

This patch switches the default image over to Ubuntu 16.04 LTS, OpenJDK 8, and Ruby 2.3.



