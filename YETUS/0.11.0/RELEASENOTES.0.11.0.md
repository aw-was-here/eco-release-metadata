
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
# Apache Yetus  0.11.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [YETUS-868](https://issues.apache.org/jira/browse/YETUS-868) | *Critical* | **Patch modifying the excludes file should force a re-read**

<!-- markdown -->
Developers:  The content of several files and internal structures have changed such that a leading './' on filenames will no longer be present.  The root module will remain identified as '.', however.


---

* [YETUS-870](https://issues.apache.org/jira/browse/YETUS-870) | *Trivial* | **remove support for PYLINT\_OPTIONS**

<!-- markdown -->
The --pylint-options and PYLINT_OPTIONS environment variable have been removed.  Personalities and command lines that still use that feature must switch to using a .pylintrc file instead.


---

* [YETUS-873](https://issues.apache.org/jira/browse/YETUS-873) | *Major* | **Error on unprocessed options/parameters**

<!-- markdown -->
Users:

precommit's commands (docker-cleanup, qbt, smart-apply-patch, test-patch) will now exit with an error if they are given a double-dashed option that is unknown.  Using `--ignore-unknown-options=true` option will return to the previous behavior.  Non double-dashed parameters continue to be considered the patch location.

This option will be removed in a future release.

Developers:

This patch adds the `delete_parameter` routine.  It should be called to remove an option from the variable that is being used to track which parameters have been processed.  The internals of this tracking are still very much in flux and may change in the future.


---

* [YETUS-858](https://issues.apache.org/jira/browse/YETUS-858) | *Major* | **Add support for golang**

<!-- markdown -->
Go support should be considered highly experimental.  Some features are only available if Go module support has been turned on and actively in use.  Be aware that due to go.mod being updated as part of the build, the repository will be cleaned and git checkout'd again between runs if `--resetrepo` or its equivalent has been turned on.  Running without destructive git operations may result in skewed results.


---

* [YETUS-885](https://issues.apache.org/jira/browse/YETUS-885) | *Major* | **Support more function formats in shelldocs**

<!-- markdown -->
shelldocs now a much larger variety of shell function definition formats.


---

* [YETUS-896](https://issues.apache.org/jira/browse/YETUS-896) | *Major* | **Add an emoji column to the github vote table**

<!-- markdown -->

GitHub users can now pass `--github-use-emoji-vote` and the vote table will use emoji hearts to indicate +1/0/-0/-1 rather than text.



