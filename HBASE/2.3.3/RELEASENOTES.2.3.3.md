
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
# Apache HBase  2.3.3 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-25109](https://issues.apache.org/jira/browse/HBASE-25109) | *Major* | **Add MR Counters to WALPlayer; currently hard to tell if it is doing anything**

Adds a WALPlayer to MR Counter output:

	org.apache.hadoop.hbase.mapreduce.WALPlayer$Counter
		CELLS\_READ=89574
		CELLS\_WRITTEN=89572
		DELETES=64
		PUTS=5305
		WALEDITS=4375


---

* [HBASE-25154](https://issues.apache.org/jira/browse/HBASE-25154) | *Major* | **Set java.io.tmpdir to project build directory to avoid writing std\*deferred files to /tmp**

Change the java.io.tmpdir to project.build.directory in surefire-maven-plugin, to avoid writing std\*deferred files to /tmp which may blow up the /tmp disk on our jenkins build node.


---

* [HBASE-22976](https://issues.apache.org/jira/browse/HBASE-22976) | *Major* | **[HBCK2] Add RecoveredEditsPlayer**

WALPlayer can replay the content of recovered.edits directories.

Side-effect is that WAL filename timestamp is now factored when setting start/end times for WALInputFormat; i.e. wal.start.time and wal.end.time values on a job context. Previous we looked at wal.end.time only. Now we consider wal.start.time too. If a file has a name outside of wal.start.time\<-\>wal.end.time, it'll be by-passed. This change-in-behavior will make it easier on operator crafting timestamp filters processing WALs.


---

* [HBASE-25163](https://issues.apache.org/jira/browse/HBASE-25163) | *Major* | **Increase the timeout value for nightly jobs**

Increase timeout value for nightly jobs to 16 hours since the new build machines are dedicated to hbase project, so we are allowed to use it all the time.



