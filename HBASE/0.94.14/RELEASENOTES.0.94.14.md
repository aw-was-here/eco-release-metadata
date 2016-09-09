
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
# Apache HBase  0.94.14 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-9850](https://issues.apache.org/jira/browse/HBASE-9850) | *Major* | **Issues with UI for table compact/split operation completion. After split/compaction operation using UI, the page is not automatically redirecting back using IE8/Firefox.**

Support auto redirect for IE/firefox browsers upon completion of Split/compact operation


---

* [HBASE-9902](https://issues.apache.org/jira/browse/HBASE-9902) | *Major* | **Region Server is starting normally even if clock skew is more than default 30 seconds(or any configured). -\> Regionserver node time is greater than master node time**

Clock skew detection to be made absolute value comparison. Any time difference between master or region, high or low must prevent the region server startup


---

* [HBASE-9138](https://issues.apache.org/jira/browse/HBASE-9138) | *Trivial* | **getHaseIntegrationTestingUtility() is misspelled**

patch for 0.94.x


---

* [HBASE-9165](https://issues.apache.org/jira/browse/HBASE-9165) | *Major* | **Improvements to addDependencyJars**

Introduces the method TableMapReduceUtil#addHBaseDependencyJars for adding HBase and its direct dependencies (only) to the job configuration.

This is intended as a low-level API, facilitating code reuse between this class and its mapred counterpart. It is also of use to external tools that need to build a MapReduce job that interacts with HBase but want fine-grained control over the jars shipped to the cluster. See also PIG-3285 and HIVE-2055.


---

* [HBASE-9834](https://issues.apache.org/jira/browse/HBASE-9834) | *Major* | **Minimize byte[] copies for 'smart' clients**

Committed v4 -thanks for the reviews.

Roll away Lars.


---

* [HBASE-8438](https://issues.apache.org/jira/browse/HBASE-8438) | *Major* | **Extend bin/hbase to print a "mapreduce classpath"**

$ ./bin/hbase mapredcp --help
Usage: hbase mapredcp [-Dtmpjars=...]
  Construct a CLASSPATH containing dependency jars required to run a mapreduce job. By default, includes any jars detected by TableMapReduceUtils. Provide additional entries by specifying a comma-separated list in tmpjars.


---

* [HBASE-9831](https://issues.apache.org/jira/browse/HBASE-9831) | *Minor* | **'hbasefsck.numthreads' property isn't passed to hbck via cmdline -D option**

try run hadoopqa for trunk



