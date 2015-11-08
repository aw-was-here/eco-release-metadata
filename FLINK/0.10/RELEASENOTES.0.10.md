
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
# Apache Flink  0.10 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [FLINK-2456](https://issues.apache.org/jira/browse/FLINK-2456) | *Major* | **The flink-hbase module dependencies hadoop-2 specifies a repository ID**

In some special network environment, we can only use maven mirrors to download dependencies for mvn package.
It cannot complete construction using one mirror.
Error like:
[ERROR] Failed to execute goal on project flink-hbase: Could not resolve dependencies for project org.apache.flink:flink-hbase:jar:0.10-SNAPSHOT: Failure to find org.apache.hbase:hbase-server:jar:0.98.11-hadoop2 in http://mirrors.ibiblio.org/pub/mirrors/maven2 was cached in the local repository, resolution will not be reattempted until the update interval of ibiblio.org has elapsed or updates are forced -\> [Help 1]
We need to specify a repository ID to hadoop-2 plugin so that it can be downloaded over another mirror.
This will not affect the normal network environment.


---

* [FLINK-2394](https://issues.apache.org/jira/browse/FLINK-2394) | *Major* | **HadoopOutFormat OutputCommitter is default to FileOutputCommiter**

MongoOutputFormat does not write back in collection because the HadoopOutputFormat wrapper does not allow to set the MongoOutputCommiter and is set as default to FileOutputCommitter. Therefore, on close and globalFinalize execution the commit does not happen and mongo collection stays untouched. 

A simple solution would be to:

1 - create a constructor of HadoopOutputFormatBase and HadoopOutputFormat that gets the OutputCommitter as a parameter
2 - change the outputCommitter field of HadoopOutputFormatBase to be a generic OutputCommitter
3 - remove the default assignment in the open() and finalizeGlobal to the outputCommitter to FileOutputCommitter(), or keep it as a default in case of no specific assignment.



