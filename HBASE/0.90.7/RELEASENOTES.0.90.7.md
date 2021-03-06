
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
# Apache HBase  0.90.7 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-3691](https://issues.apache.org/jira/browse/HBASE-3691) | *Critical* | **Add compressor support for 'snappy', google's compressor**

Added support for Google's Snappy compression codec.


---

* [HBASE-5904](https://issues.apache.org/jira/browse/HBASE-5904) | *Blocker* | **is\_enabled from shell returns differently from pre- and post- HBASE-5155**

This reverts a patch included in 0.90.6 that broke compatibility.



