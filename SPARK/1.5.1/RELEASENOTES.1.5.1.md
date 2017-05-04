
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
# Apache Spark  1.5.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [SPARK-10716](https://issues.apache.org/jira/browse/SPARK-10716) | *Minor* | **spark-1.5.0-bin-hadoop2.6.tgz file doesn\'t uncompress on OS X due to hidden file**

Directly downloaded prebuilt binaries of http://d3kbcqa49mib13.cloudfront.net/spark-1.5.0-bin-hadoop2.6.tgz 
got error when tar xvzf it.  Tried download twice and extract twice.

error log:
......
x spark-1.5.0-bin-hadoop2.6/lib/
x spark-1.5.0-bin-hadoop2.6/lib/datanucleus-core-3.2.10.jar
x spark-1.5.0-bin-hadoop2.6/lib/datanucleus-api-jdo-3.2.6.jar
x spark-1.5.0-bin-hadoop2.6/lib/datanucleus-rdbms-3.2.9.jar
x spark-1.5.0-bin-hadoop2.6/lib/spark-examples-1.5.0-hadoop2.6.0.jar
x spark-1.5.0-bin-hadoop2.6/lib/spark-assembly-1.5.0-hadoop2.6.0.jar
x spark-1.5.0-bin-hadoop2.6/lib/spark-1.5.0-yarn-shuffle.jar
x spark-1.5.0-bin-hadoop2.6/README.md
tar: copyfile unpack (spark-1.5.0-bin-hadoop2.6/python/test\_support/sql/orc\_partitioned/SUCCESS.crc) failed: No such file or directory
~ :\>



