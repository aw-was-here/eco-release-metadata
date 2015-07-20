
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
# Apache Hadoop Yetus  HADOOP-12111 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HADOOP-12156](https://issues.apache.org/jira/browse/HADOOP-12156) | *Major* | **modernize smart-apply-patch**

This is an incompatible change with previous versions of smart-apply-patch due to the dryrun facility being moved from a parameter to an option.


---

* [HADOOP-12135](https://issues.apache.org/jira/browse/HADOOP-12135) | *Major* | **cleanup releasedocmaker**

This version is incompatible with the version currently in Hadoop trunk, as this version requires the project to be specified and will only produce one set of files per release, rather than one per subproject.


---

* [HADOOP-12113](https://issues.apache.org/jira/browse/HADOOP-12113) | *Major* | **update test-patch branch to latest code**

The following changes have occurred vs. the release currently shipping with Hadoop:


MAJOR: 
* Documentation

A first pass at some documentation in markdown format covering beginner, advanced, some architecture/design thoughts, and a glossary covering terms.

* De-Hadoop-ification / Personalities / Modules

By far, the largest change was a significant rewrite to create a core engine to enable pulling out most/all of the Hadoop-specific settings into a separate file.  This was done in order to support many projects with different source layouts to use effectively the test-patch code base.  As a result, the internals now use a concept of modules to dictate what to do where rather than assuming that the root of the source repo is a valid location.

Project specific logic has been pushed into plugins we call 'personalities'.  Personalities allow projects to dictate flags and ordering as well as perform other actions as needed before tests execute.  As a result, there are several early personalities for various projects included.

* Docker support

Initial support for test-patch to switch to a dedicated docker container during execution, including the ability to provide a custom Dockerfile. 

* Multiple build systems

Support for ant with the groundwork laid to support more.  An early version of a pig personality is included to use this functionality.

* Multiple JDKs

It is possible to specify multiple JDKs to run supported tests. Built-in tests that support multiple JDKs are javac, javadoc, and unit.  

* Multiple bug system support

Preliminary work to enable supporting bug tracking systems beyond Apache's JIRA system has been introduced. A prototype github PR support plugin is bundled. Additionally, large parts of the JIRA support have been pulled out into a separate plugin.

* API and variable renames/cleanups

Many, many changes to the names of variables and functions to be less Hadoop-specific and just overall better.  As a result, this is a breaking change for any plugins written against the old bits. 

Additionally, many interface stabilities have changed as a result.

MINOR:

* A compile+install has been added as the first test step to populate the maven repo with the current code base, skipping over any failed compiles. This will help stabilize build predictability in between runs with different patches.

* findbugs and ASF license checks have been moved to plug-ins

* smart-apply-patch has a stray rm fixed.

* File names of generated test logs, etc, that use the core engine are now consistent across tests.

* JIRA output is now colored across the entire line, making it easier to spot failing tests.

* Warn about old versions of shellcheck, because there are some false positives with it.

* New files are now handled properly.

* Deleted modules and files should be handled better.

* Off-by-one errors in the git diff line listing should fix false positives in a few reports.

* whitespace now errors on tabs in files not named Makefile.

* xml files are now validated.

* bash version check has been added to prevent running on older versions.

* Some tests now default to a summary report rather than listing all results.

* In order to prepare for eventual split, many defaults have been changed to be yetus-specific rather than Hadoop specific.

* Eliminated egrep usage in favor of grep -E

* Many additions/cleanups to report output.

* Plugins can now add output to the usage message.

* test-patch temp directory has been renamed.

* wget errors are more specific now.



