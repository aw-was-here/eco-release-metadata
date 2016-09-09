
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
# Apache HBase  0.94.24 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-12103](https://issues.apache.org/jira/browse/HBASE-12103) | *Major* | **Backport HFileV1Detector to 0.94**

Check existence of HFiles in v1 format. Usage is as following:

usage: HFileV1Detector [-h] [-n \<arg\>] [-p \<arg\>]
 -h,--help                    Help
 -n,--numberOfThreads \<arg\>   Number of threads to use while processing
                              HFiles.
 -p,--path \<arg\>              Path to a table, or hbase installation
In case no option is provided, it processes hbase.rootdir using 10 threads.
Example:
 To detect any HFileV1 in a given hbase installation '/myhbase':
 $ $HBASE\_HOME/bin/hbase org.apache.hadoop.hbase.util.HFileV1Detector -p /myhbase


---

* [HBASE-12536](https://issues.apache.org/jira/browse/HBASE-12536) | *Major* | **Reduce the effective scope of GLOBAL CREATE and ADMIN permission**

This change removes implicit write access to the META and ACL tables for any user with GLOBAL CREATE or ADMIN privilege. Users with GLOBAL CREATE will not be able to elevate their privileges unexpectedly through direct access to the ACL table. A GLOBAL ADMIN will still correctly be allowed to grant themselves any desired privilege.



