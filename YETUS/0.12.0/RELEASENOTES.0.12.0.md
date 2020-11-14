
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
# Apache Yetus  0.12.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [YETUS-915](https://issues.apache.org/jira/browse/YETUS-915) | *Critical* | **Update GitHub vote emojis for usability by color blind folks**

<!-- markdown -->

When configured to use emoji for plugin votes when posting feedback to GitHub, Yetus now ensures that those emojis have different shapes to designate meaning instead of just color differences.

This change should allow users who have color-blindness to differentiate between meanings while scanning the result column.


---

* [YETUS-919](https://issues.apache.org/jira/browse/YETUS-919) | *Minor* | **Support extra Docker build-args**

<!-- markdown -->
Adds a function `add_docker_build_arg` taking a key or key and value to export to the Docker build via `--build-arg`


---

* [YETUS-936](https://issues.apache.org/jira/browse/YETUS-936) | *Blocker* | **test-patch.sh does not do gradle**

<!-- markdown -->
Gradle support has been modified to support modern gradle layouts.  As such, this is an incompatible change for gradle.  Bootstrapping gradle is no longer supported; gradlew is expected to be there.  Patches that wish to upgrade gradle are now expected to just be a patch against the gradle components in the repo.

* checkstyle should now work
* $HOME/.gradle is no longer imported into docker containers to prevent cache corruption
* a new <plugin>_postcleanup has been added. In the case of gradle, this now shuts down the gradle daemon
* two new core routines have been added (escape_html/unescape_html) to cover some basic HTML entity resolution. These are not exhaustive but cover the most common ones seen.  
* GRADLE_ARGS is now GRADLEW_ARGS to match the functionality change.


---

* [YETUS-943](https://issues.apache.org/jira/browse/YETUS-943) | *Minor* | **Test patch fails to extract version information from a JDK11 jvm**

<!-- markdown -->
This patch alters `report_jvm_version` to extract JVM vendor and version information from Java system properties. It now returns a string that is the concatenation of verdor and runtime versions.


---

* [YETUS-955](https://issues.apache.org/jira/browse/YETUS-955) | *Major* | **Update many of the binaries in Dockerfile**

<!-- markdown -->
Many of the versions of tools in the bundled Dockerfile have been upgraded.  Note that the configuration for those binaries may or may not be backward compatible.

Also, the default the 'pylint' binary in the bundled Dockerfile has been switched to pylint3 to reflect that cpython version 2 is no longer supported upstream.  Setting `--pylint=pylint2` on the test-patch command line will use the older version of pylint, similar to previous releases.



