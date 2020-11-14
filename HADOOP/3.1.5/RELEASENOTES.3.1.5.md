
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
# Apache Hadoop  3.1.5 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [MAPREDUCE-7069](https://issues.apache.org/jira/browse/MAPREDUCE-7069) | *Major* | **Add ability to specify user environment variables individually**

Environment variables for MapReduce tasks can now be specified as separate properties, e.g.:
mapreduce.map.env.VARNAME=value
mapreduce.reduce.env.VARNAME=value
yarn.app.mapreduce.am.env.VARNAME=value
yarn.app.mapreduce.am.admin.user.env.VARNAME=value
This form of specifying environment variables is useful when the value of an environment variable contains commas.


---

* [HADOOP-17024](https://issues.apache.org/jira/browse/HADOOP-17024) | *Major* | **ListStatus on ViewFS root (ls "/") should list the linkFallBack root (configured target root).**

ViewFS#listStatus on root("/") considers listing from fallbackLink if available. If the same directory name is present in configured mount path as well as in fallback link, then only the configured mount path will be listed in the returned result.


---

* [HADOOP-17228](https://issues.apache.org/jira/browse/HADOOP-17228) | *Major* | **Backport HADOOP-13230 listing changes for preserved directory markers to 3.1.x**

This release of Hadoop 3.1 can safely interact with S3 Buckets where directory markers are not deleted as and when files and directories are created underneath



