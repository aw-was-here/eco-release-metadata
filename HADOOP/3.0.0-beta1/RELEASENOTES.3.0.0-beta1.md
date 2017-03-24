
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
# Apache Hadoop  3.0.0-beta1 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HADOOP-13817](https://issues.apache.org/jira/browse/HADOOP-13817) | *Minor* | **Add a finite shell command timeout to ShellBasedUnixGroupsMapping**

A new introduced configuration key "hadoop.security.groups.shell.command.timeout" allows applying a finite wait timeout over the 'id' commands launched by the ShellBasedUnixGroupsMapping plugin. Values specified can be in any valid time duration units: https://hadoop.apache.org/docs/current/api/org/apache/hadoop/conf/Configuration.html#getTimeDuration-java.lang.String-long-java.util.concurrent.TimeUnit-

Value defaults to 0, indicating infinite wait (preserving existing behaviour).


---

* [HADOOP-14213](https://issues.apache.org/jira/browse/HADOOP-14213) | *Major* | **Move Configuration runtime check for hadoop-site.xml to initialization**

Move the check for hadoop-site.xml to static initialization of the Configuration class.



