
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
# Apache HBase  0.98.12 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HBASE-13362](https://issues.apache.org/jira/browse/HBASE-13362) | *Major* | **Set max result size from client only (like scanner caching).**

This introduces a new config option: hbase.server.scanner.max.result.size
This setting enforces a maximum result size (in bytes), when reached the server will return the results is has so far.
This is a safety setting and should be kept large. The default is inifinite in 0.98 and 1.0.x and 100mb in 1.1 and later.

Use hbase.client.scanner.max.result.size instead to enforce practical chunk sizes of a few mb (defaults to 2mb)


---

* [HBASE-13331](https://issues.apache.org/jira/browse/HBASE-13331) | *Blocker* | **Exceptions from DFS client can cause CatalogJanitor to delete referenced files**

Fixes an issue where files from a split region that were still referenced were erroneously deleted leading to data loss.


---

* [HBASE-13289](https://issues.apache.org/jira/browse/HBASE-13289) | *Major* | **typo in splitSuccessCount  metric**

In hbase 1.0.0, 0.98.10, 0.98.10.1, 0.98.11, and 0.98.12 'splitSuccessCount' was misspelled as 'splitSuccessCounnt'


---

* [HBASE-13275](https://issues.apache.org/jira/browse/HBASE-13275) | *Major* | **Setting hbase.security.authorization to false does not disable authorization**

Prior to this change the configuration setting 'hbase.security.authorization' had no effect if security coprocessor were installed. The act of installing the security coprocessors was assumed to indicate active authorizaton was desired and required. Now it is possible to install the security coprocessors yet have them operate in a passive state with active authorization disabled by setting 'hbase.security.authorization' to false. This can be useful but is probably not what you want. For more information, consult the Security section of the HBase online manual. 

'hbase.security.authorization' defaults to true for backwards comptatible behavior.


---

* [HBASE-13273](https://issues.apache.org/jira/browse/HBASE-13273) | *Major* | **Make Result.EMPTY\_RESULT read-only; currently it can be modified**

The Result.EMPTY\_RESULT object is now immutable. In previous releases, the object could be modified by a caller to no longer be empty. Code that relies on this behavior will now receive an UnsupportedOperationException.


---

* [HBASE-13207](https://issues.apache.org/jira/browse/HBASE-13207) | *Major* | **Backport to 0.98 "[PERF] Reuse the IPC buffers..."**

See parent issue.


---

* [HBASE-10728](https://issues.apache.org/jira/browse/HBASE-10728) | *Major* | **get\_counter value is never used.**

for 0.98 and 1.0 changes are compatible (due to mitigation by HBASE-13433):

* The "get\_counter" command no longer requires a dummy 4th argument. Downstream users are encouraged to migrate code to not pass this argument because it will result in an error for HBase 1.1+.
* The "incr" command now outputs the current value of the counter to stdout.
ex:
{code}
jruby-1.6.8 :005 > incr 'counter\_example', 'r1', 'cf1:foo', 10
COUNTER VALUE = 1772
0 row(s) in 0.1180 seconds
{code}

for 1.1+ changes are incompatible:

* The "get\_counter" command no longer accepts a dummy 4th argument. Downstream users will need to update their code to not pass this argument.
ex:
{code}
jruby-1.6.8 :006 > get\_counter 'counter\_example', 'r1', 'cf1:foo'
COUNTER VALUE = 1772

{code}
* The "incr" command now outputs the current value of the counter to stdout.
ex:
{code}
jruby-1.6.8 :005 > incr 'counter\_example', 'r1', 'cf1:foo', 10
COUNTER VALUE = 1772
0 row(s) in 0.1180 seconds
{code}



