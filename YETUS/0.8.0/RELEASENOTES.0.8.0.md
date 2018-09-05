
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
# Apache Yetus  0.8.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [YETUS-620](https://issues.apache.org/jira/browse/YETUS-620) | *Major* | **reject patches if they contain files with names/paths over a certain length**

The pathlen plugin has been added to precommit to flag file paths that are over a certain length (default is 240 characters).  This is to help projects that build on file systems such as FAT32 that have severe limits on such paths.


---

* [YETUS-609](https://issues.apache.org/jira/browse/YETUS-609) | *Blocker* | **releasedocmaker indexer uses wrong filename**

As a follow on to the work done in renaming CHANGES to CHANGELOG, the releasedocmaker readme/index files now expects the CHANGELOG when building.


---

* [YETUS-46](https://issues.apache.org/jira/browse/YETUS-46) | *Major* | **releasedocmaker should support JIRA authentication**

Support JIRA authentication in case of a 401 Unauthorized error


---

* [YETUS-643](https://issues.apache.org/jira/browse/YETUS-643) | *Critical* | **default custom maven repo should use workspace when in jenkins mode**

<!-- markdown -->
The default maven repo when:

* custom maven repos are enabled
* precommit is in jenkins mode

has been moved from the home directory to the workspace.


---

* [YETUS-657](https://issues.apache.org/jira/browse/YETUS-657) | *Blocker* | **volumes on non-existent files creates a directory**

<!-- markdown -->
In addition to fixing issues with Docker containers not creating certain reports if the files didn't previous exist, the brief report mode has had some internal and external code cleanup to make it consistent.  As a result, the plugin is now called as 'briefreport' instead of 'brieftext'.


---

* [YETUS-45](https://issues.apache.org/jira/browse/YETUS-45) | *Major* | **the test patch script should check for filenames that differ only in case**

Apache Yetus will no longer process patches that have filenames or directories that only differ by case.


---

* [YETUS-591](https://issues.apache.org/jira/browse/YETUS-591) | *Major* | **Match git SHA1 with github pull request #**

test-patch now supports the 'GHSHA:' string to use a way to locate the GitHub pull request to use.  This allows for various continuous integration systems that only expose the SHA rather than the pull request number ('GH:') to be used with test-patch.



