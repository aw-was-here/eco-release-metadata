
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
# Apache HBase  0.94.15 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-10001](https://issues.apache.org/jira/browse/HBASE-10001) | *Minor* | **Add a coprocessor to help testing the performances without taking into account the i/o**

New coprocessor to help analysing the performances of the cluster. This coprocessor drops all the writes on the server side, allowing the measure the client and network performances without any limitation on the disk i/o. For a table created like this: create 'usertable', {NAME =\> 'f1', VERSIONS =\> 1}  . You can then add the coprocessor with this command:
alter 'usertable', 'coprocessor' =\> '\|org.apache.hadoop.hbase.tool.WriteSinkCoprocessor\|'


---

* [HBASE-10010](https://issues.apache.org/jira/browse/HBASE-10010) | *Major* | **eliminate the put latency spike on the new log file beginning**

Forward port of a 0.89fb patch where we issue sync on WAL file construction to force immediate setup of write pipeline (and do it outside of locks so don't hold up writes during setup).



