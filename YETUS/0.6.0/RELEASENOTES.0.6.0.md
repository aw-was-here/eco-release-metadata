
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
# Apache Yetus  0.6.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [YETUS-560](https://issues.apache.org/jira/browse/YETUS-560) | *Major* | **Fix option name inconsistency: build-url-patchdir vs build-url-artifacts**

<!-- markdown -->

Test Patch's cli help text now correctly refers to the `--build-url-artifacts` option.


---

* [YETUS-545](https://issues.apache.org/jira/browse/YETUS-545) | *Blocker* | **Hadoop personality: clean up some OS X & Windows issues**

<!-- markdown -->
* OS X now uses the brew --prefix option to figure out where Homebrew might be installed for dependencies
* Windows requires hadoop-common's native libraries to always be compiled


---

* [YETUS-510](https://issues.apache.org/jira/browse/YETUS-510) | *Critical* | **Build Tool report should include version**

Build tools that come as a part of Apache Yetus Test Patch now include their version information in the report output in the notes table.


---

* [YETUS-553](https://issues.apache.org/jira/browse/YETUS-553) | *Minor* | **Add configuration options for junit plugin**

<!-- markdown -->

The Yetus Test Patch plugin for parsing JUnit results, `junit`, now accepts two cli options:

* `--junit-test-output` location relative to module directory to search for junit results.
* `--junit-test-prefix` package name to strip off of tests

See the cli help via `test-patch --plugin=junit --help` for more information, defaults, etc.


---

* [YETUS-534](https://issues.apache.org/jira/browse/YETUS-534) | *Major* | **Provide a way to set snappy and isal location in hadoop personality**

<!-- markdown -->

Personalities for Apache Yetus Test Patch can now accept cli options by defining a `personality_parse_args` function.

The exemplar personality for Apache Hadoop now has options to define an installation prefix for the isal, openssl, and snappy libaries used in its building of native artifacts.



