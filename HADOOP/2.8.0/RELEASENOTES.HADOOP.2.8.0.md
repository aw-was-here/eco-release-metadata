
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
# Hadoop HADOOP 2.8.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HADOOP-11746](https://issues.apache.org/jira/browse/HADOOP-11746) | *Major* | **rewrite test-patch.sh**

* test-patch.sh now has new output that is different than the previous versions
* test-patch.sh is now pluggable via the test-patch.d directory, with checkstyle and shellcheck tests included
* JIRA comments now use much more markup to improve readability
* test-patch.sh now supports either a file name, a URL, or a JIRA issue as input in developer mode
* If part of the patch testing code is changed, test-patch.sh will now attempt to re-executing itself using the new version.
* Some logic to try and reduce the amount of unnecessary tests.  For example, patches that only modify markdown should not run the Java compilation tests.
* Plugins for checkstyle, shellcheck, and whitespace now execute as necessary.
* New test code for mvn site
* A breakdown of the times needed to execute certain blocks as well as a total runtime is now reported to assist in fixing long running tests and optimize the entire process.
* Several new options
  * --resetrepo will put test-patch.sh in destructive mode, similar to a normal Jenkins run
  * --testlist allows one to provide a comma delimited list of test subsystems to forcibly execute
  * --modulelist to provide a comma delimited list of module tests to execute in addition to the ones that are automatically detected
  * --offline mode to attempt to stop connecting to the Internet for certain operations
* test-patch.sh now defaults to the POSIX equivalents on Solaris and Illumos-based operating systems
* shelldocs.py may be used to generate test-patch.sh API information
* FindBugs output is now listed on the JIRA comment
* lots of general code cleanup, including attempts to remove any local state files to reduce potential race conditions
* Some logic to determine if a patch is for a given major branch using several strategies as well as a particular git ref (using git+ref as part of the name).
* Some logic to determine if a patch references a particular JIRA issue.
* Unit tests are only flagged as necessary with native or Java code, since Hadoop has no framework in place yet for other types of unit tests.
* test-patch now exits with a failure status if problems arise trying to do git checkouts.  Previously the exit code was success.


---

* [HADOOP-11660](https://issues.apache.org/jira/browse/HADOOP-11660) | *Minor* | **Add support for hardware crc of HDFS checksums on ARM aarch64 architecture**

Add support for aarch64 CRC instructions


---

* [HADOOP-11226](https://issues.apache.org/jira/browse/HADOOP-11226) | *Major* | **Add a configuration to set ipc.Client's traffic class with IPTOS\_LOWDELAY\|IPTOS\_RELIABILITY**

Use low latency TCP connections for hadoop IPC


---

* [HADOOP-9477](https://issues.apache.org/jira/browse/HADOOP-9477) | *Major* | **Add posixGroups support for LDAP groups mapping service**

Add posixGroups support for LDAP groups mapping service. The change in LDAPGroupMapping is compatible with previous scenario. In LDAP, the group mapping between {{posixAccount}} and {{posixGroup}} is different from the general LDAPGroupMapping, one of the differences is the {{"memberUid"}} will be used to mapping {{posixAccount}} and {{posixGroup}}. The feature will handle the mapping in internal when configuration {{hadoop.security.group.mapping.ldap.search.filter.user}} is set as "posixAccount" and {{hadoop.security.group.mapping.ldap.search.filter.group}} is "posixGroup".


---

* [HADOOP-7713](https://issues.apache.org/jira/browse/HADOOP-7713) | *Trivial* | **dfs -count -q should label output column**

Added -v option to fs -count command to display a header record in the report.



