
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
# Apache Yetus  0.4.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [YETUS-390](https://issues.apache.org/jira/browse/YETUS-390) | *Major* | **qbt needs an "abbreviated email" mode**

<!-- markdown -->

Users:

* `--brief-report-file` allows for the creation of a much smaller, plain-text friendly report. See the qbt documentation for more information.
* Filtered tests now show up as orange in those reports that support color.  Previously they were blue.

Developers:

* The `add_vote_table` API no longer accepts a null vote.
* The vote table time is now in raw seconds rather than a display-able time.
* Filtered subsystems will put -0 in the vote table if they failed instead of always putting 0.  If they do not fail (0 or +1), that vote is now kept.
* `module_status` now allows to update a module's status without requiring providing the other parameters.


---

* [YETUS-341](https://issues.apache.org/jira/browse/YETUS-341) | *Major* | **docker cleanup in sentinel mode doesn't know about Created**

Developers:

This changes the ordering of the DOCKER\_CONTAINER\_PURGE array.


---

* [YETUS-309](https://issues.apache.org/jira/browse/YETUS-309) | *Major* | **pylint plugin false positives**

The precommit plugin for pylint now ignores messages at the INFO level, which includes locally disabled warnings.


---

* [YETUS-461](https://issues.apache.org/jira/browse/YETUS-461) | *Minor* | **Allow specifying exclusions for whitespace report**

<!-- markdown -->
Apache Yetus Precommit users can specify a list of filename regexes to ignore when checking for whitespace errors with the new command line arguments:

* `--whitespace-eol-ignore-list` to skip end-of-line whitespace checks
* `--whitespace-tabs-ignore-list` to skip checking for tabs



