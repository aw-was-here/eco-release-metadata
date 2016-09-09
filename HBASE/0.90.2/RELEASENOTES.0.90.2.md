
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
# Apache HBase  0.90.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-3285](https://issues.apache.org/jira/browse/HBASE-3285) | *Major* | **Hlog recovery takes too much time**

Adds hbase exploitation of  new lease recovery added by hdfs-1520.  New API is available at tip of branch-0.20-append, in advance of the version of hadoop that ships with 0.90.1 hbase (r1057313).  Must patch CDH to add the API.


---

* [HBASE-3674](https://issues.apache.org/jira/browse/HBASE-3674) | *Critical* | **Treat ChecksumException as we would a ParseException splitting logs; else we replay split on every restart**

This commit changes our "hbase.hlog.split.skip.errors" from false to true.  IMPORTANT DIFFERENCE!!!!! We're going to just archive corrupted files and keep going over them rather than stop forward motion.



