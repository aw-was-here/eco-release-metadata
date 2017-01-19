
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
# Apache HBase  1.1.7 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-16340](https://issues.apache.org/jira/browse/HBASE-16340) | *Critical* | **ensure no Xerces jars included**

HBase no longer includes Xerces implementation jars that were previously included via transitive dependencies. Downstream users relying on HBase for these artifacts will need to update their dependencies.


---

* [HBASE-16294](https://issues.apache.org/jira/browse/HBASE-16294) | *Minor* | **hbck reporting "No HDFS region dir found" for replicas**

Fixed warning error message displayed for region directory not found for non-default/ non-primary replicas in hbck


---

* [HBASE-15984](https://issues.apache.org/jira/browse/HBASE-15984) | *Critical* | **Given failure to parse a given WAL that was closed cleanly, replay the WAL.**

In some particular deployments, the Replication code believes it has
reached EOF for a WAL prior to successfully parsing all bytes known to
exist in a cleanly closed file.

If an EOF is detected due to parsing or other errors while there are still unparsed bytes before the end-of-file trailer, we now reset the WAL to the very beginning and attempt a clean read-through. Because we will retry these failures indefinitely, two additional changes are made to help with diagnostics:

\* On each retry attempt, a log message like the below will be emitted at the WARN level:
    
      Processing end of WAL file '{}'. At position {}, which is too far away
      from reported file length {}. Restarting WAL reading (see HBASE-15983
      for details).

\*  additional metrics measure the use of this recovery mechanism. they are described in the reference guide.



