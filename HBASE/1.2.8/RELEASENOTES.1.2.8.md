
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
# Apache HBase  1.2.8 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-17513](https://issues.apache.org/jira/browse/HBASE-17513) | *Critical* | **Thrift Server 1 uses different QOP settings than RPC and Thrift Server 2 and can easily be misconfigured so there is no encryption when the operator expects it.**

This change fixes an issue where users could have unintentionally configured the HBase Thrift1 server to run without wire-encryption, when they believed they had configured the Thrift1 server to do so.


---

* [HBASE-19901](https://issues.apache.org/jira/browse/HBASE-19901) | *Major* | **Up yetus proclimit on nightlies**

Pass to yetus a dockermemlimit of 20G and a proclimit of 10000. Defaults are 4G and 1G respectively.



