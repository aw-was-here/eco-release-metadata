
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
# Apache Impala  Impala 3.1.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [IMPALA-6644](https://issues.apache.org/jira/browse/IMPALA-6644) | *Minor* | **Add last heartbeat timestamp into Statestore metric**

In the latest and previous versions, statestore in it's default logging reports only when it fails to send heartbeat to any host.

There is no way to confirm if Statestore is indeed continuing to heartbeat in all passing conditions, except for turning on debug logs, which becomes too noisy. But at the same time its important to know statestore is indeed heartbeating.

The suggestion here is to add a metric in statestore metric page and also print the same in log every once in a minute(or any configurable time-frequency), reporting the last heartbeat timestamp and last heartbeat host(optional).



