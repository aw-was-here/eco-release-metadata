
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
# Apache Impala  Impala 2.11.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [IMPALA-5912](https://issues.apache.org/jira/browse/IMPALA-5912) | *Blocker* | **Impala gets SIGABRT while running expression tests**

Master build log:
...
[ RUN      ] ExprTest.TimestampFunctions
terminate called after throwing an instance of 'boost::exception\_detail::clone\_impl\<boost::exception\_detail::error\_info\_injector\<boost::gregorian::bad\_year\> \>'
  what():  Year is out of valid range: 1400..9999
Wrote minidump to /data/jenkins/workspace/impala-umbrella-build-and-test/repos/Impala/logs/be\_tests/minidumps/expr-test/a69b3367-2d13-4eb2-9b7106b1-91f5c055.dmp
Wrote minidump to /data/jenkins/workspace/impala-umbrella-build-and-test/repos/Impala/logs/be\_tests/minidumps/expr-test/a69b3367-2d13-4eb2-9b7106b1-91f5c055.dmp
...


---

* [IMPALA-6225](https://issues.apache.org/jira/browse/IMPALA-6225) | *Major* | **IMPALA-5599 broke a client software due to precision change in date-time string**

IMPALA-5599 changed the precision of Start Time and End Time date-time strings of query profiles  to microseconds. This ended up breaking compatibility with a management client software.

This JIRA is being raised to restore the precision to what it was (nanoseconds) , to address the breakage. Longer term, the interface contract between Impala and such client software will be made stricter and more efficient, and avoid having clients parse what are meant to be human-readable information.

The Impala testing also needs to be enhanced to ensure interface contracts are not broken.



