
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
# Apache HBase  1.4.4 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-20352](https://issues.apache.org/jira/browse/HBASE-20352) | *Major* | **[Chore] Backport HBASE-18309 to branch-1**

HBASE-20352 aims to speed up process of cleaning oldWALs in two aspects,
1. Use multiple threads to scan oldWALs directories through config hbase.cleaner.scan.dir.concurrent.size, which supports both integer (meaning the concrete size, but no more than available cpu cores) and double (between \>0.0 and \<=1.0, meaning ratio of available cpu cores) value, 0.25 by default. Pay attention that 1.0 is different from 1, the former indicates it will use 100% of cores, while the latter will use only 1 thread for chore to scan dir. 
2. Use multiple threads to clean wals under oldWALs directory through hbase.oldwals.cleaner.thread.size, 2 by default.
3. In addition, two configs, hbase.cleaner.scan.dir.concurrent.size and hbase.oldwals.cleaner.thread.size both support online re-configuration.


---

* [HBASE-20276](https://issues.apache.org/jira/browse/HBASE-20276) | *Blocker* | **[shell] Revert shell REPL change and document**

<!-- markdown -->
The HBase shell now behaves as it did prior to the changes that started in HBASE-15965. Namely, some shell commands return values that may be further manipulated within the shell's IRB session.

The command line option `--return-values` is no longer acted on by the shell since it now always behaves as it did when passed this parameter. Passing the option results in a harmless warning about this change.

Users who wish to maintain the behavior seen in the 1.4.0-1.4.2 releases of the HBase shell should refer to the section _irbrc_ in the reference guide for how to configure their IRB session to avoid echoing expression results to the console.



