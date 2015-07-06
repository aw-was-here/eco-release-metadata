
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
# Apache HBase  1.0.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HBASE-13481](https://issues.apache.org/jira/browse/HBASE-13481) | *Major* | **Master should respect master (old) DNS/bind related configurations**

Master now honors configuration options as was before 1.0.0 releases:
hbase.master.ipc.address
hbase.master.dns.interface
hbase.master.dns.nameserver
hbase.master.info.bindAddress
This jira also adds hbase.master.hostname parameter as an extension to HBASE-12954.


---

* [HBASE-13479](https://issues.apache.org/jira/browse/HBASE-13479) | *Blocker* | **[branch-1.0] Master should not bind to region server ports**

HBase master now respects the configuration hbase.master.port if set. By default it is not set in hbase-default.xml in 1.0.x releases. Master also respects the parameter hbase.master.info.port, which is not changed. However, master will not bind to hbase.regionserver.info.port anymore. It only binds to hbase.master.info.port. 

The behavior:
1.0.0:
RPC: hbase.master.port IS NOT respected. Master binds to hbase.regionserver.port
INFO: Master binds to hbase.master.info.port AND hbase.regionserver.info.port.
By default, master will use: 16010, 16020, 16030 
1.0.1+:
RPC: hbase.master.port IS respected if configured. Master binds to hbase.regionserver.port by default if not configured.
INFO: Master binds to hbase.master.info.port only. 
By default, master will use: 16010, 16020.


---

* [HBASE-13419](https://issues.apache.org/jira/browse/HBASE-13419) | *Major* | **Thrift gateway should propagate text from exception causes.**

Compose thrift exception text from the text of the entire cause chain of the underlying exception.


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

* [HBASE-13298](https://issues.apache.org/jira/browse/HBASE-13298) | *Critical* | **Clarify if Table.{set\|get}WriteBufferSize() is deprecated or not**

Deprecate said methods. They were mistakenly included in Table Interface.


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

* [HBASE-13118](https://issues.apache.org/jira/browse/HBASE-13118) | *Major* | **[PE] Add being able to write many columns**

Adds a --columns option to PE so you can write more than one column (changes default qualifier from 'data' to '0').


---

* [HBASE-13047](https://issues.apache.org/jira/browse/HBASE-13047) | *Trivial* | **Add "HBase Configuration" link missing on the table details pages**

Add a '/conf' link to UI


---

* [HBASE-13044](https://issues.apache.org/jira/browse/HBASE-13044) | *Minor* | **Configuration option for disabling coprocessor loading**

This change adds two new configuration options:
- "hbase.coprocessor.enabled" controls globally if any coprocessors will be loaded. Set to "false" to disable. Defaults to "true" for compatibility with previous releases.
- "hbase.coprocessor.user.enabled" controls if any user (aka table) coprocessors will be loaded. Set to "false" to disable. Defaults to "true" for compatibility with previous releases.


---

* [HBASE-12869](https://issues.apache.org/jira/browse/HBASE-12869) | *Major* | **Add a REST API implementation of the ClusterManager interface**

Adds an implementation of ClusterManager to control REST API-managed HBase clusters.


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



