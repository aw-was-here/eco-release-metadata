
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
# Hadoop HDFS 2.1.1-beta Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HDFS-5118](https://issues.apache.org/jira/browse/HDFS-5118) | *Major* | **Provide testing support for DFSClient to drop RPC responses**

Used for testing when NameNode HA is enabled. Users can use a new configuration property "dfs.client.test.drop.namenode.response.number" to specify the number of responses that DFSClient will drop in each RPC call. This feature can help testing functionalities such as NameNode retry cache.



