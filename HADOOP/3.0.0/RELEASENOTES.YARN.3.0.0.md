
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
# Hadoop YARN 3.0.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [YARN-2428](https://issues.apache.org/jira/browse/YARN-2428) | *Trivial* | **LCE default banned user list should have yarn**

The user 'yarn' is no longer allowed to run tasks for security reasons.


---

* [YARN-2355](https://issues.apache.org/jira/browse/YARN-2355) | *Major* | **MAX\_APP\_ATTEMPTS\_ENV may no longer be a useful env var for a container**

Removed consumption of the MAX\_APP\_ATTEMPTS\_ENV environment variable



