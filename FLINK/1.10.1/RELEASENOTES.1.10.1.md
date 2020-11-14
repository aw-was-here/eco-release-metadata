
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
# Apache Flink  1.10.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [FLINK-16913](https://issues.apache.org/jira/browse/FLINK-16913) | *Blocker* | **ReadableConfigToConfigurationAdapter#getEnum throws UnsupportedOperationException**

Starting from 1.11 the StateBackendFactory#createFromConfig interface now takes ReadableConfig instead of Configuration. A configuration class is still a valid argument to that method, as it implements the ReadableConfig interface. Implementors of custom StateBackends should adjust their implementations.


---

* [FLINK-16683](https://issues.apache.org/jira/browse/FLINK-16683) | *Blocker* | **Remove scripts for starting Flink on Windows**

Flink no longer supports starting clusters with .bat scripts. Users should instead use environments like WSL or Cygwin and work with the .sh scripts.



