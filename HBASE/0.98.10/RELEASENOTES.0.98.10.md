
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
# Apache HBase  0.98.10 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HBASE-12842](https://issues.apache.org/jira/browse/HBASE-12842) | *Major* | **Fix the incompatibility introduced by AccessControlClient in 0.98**

Restores AccessControlClient#grant(Configuration, TableName, String, byte[], byte[], Permission.Action...) and AccessControlClient#revoke(Configuration, String, TableName, byte[], byte[], Permission.Action...) for binary compatibility with earlier releases.


---

* [HBASE-12831](https://issues.apache.org/jira/browse/HBASE-12831) | *Major* | **Changing the set of vis labels a user has access to doesn't generate an audit log event**

Auditing of visibility label administration.

Administrative actions on visibility labels, such as creation of a label or changing the set of labels a user or group may access, are now sent to the audit log. The audit messages should be similar to those already tracked by the access controller.


---

* [HBASE-12787](https://issues.apache.org/jira/browse/HBASE-12787) | *Major* | **Backport HBASE-12028 (Abort the RegionServer when it's handler threads die) to 0.98**

This change adds the site configuration property "hbase.regionserver.handler.abort.on.error.percent". This is the percent of region server RPC threads that can fail before a regionserver is aborted, and can have one of the following values:
- -1 Disable aborting (default)
- 0 Abort if even a single handler has died
- 0.x Abort only when this percent of handlers have died
- 1 Abort only all of the handers have died


---

* [HBASE-12774](https://issues.apache.org/jira/browse/HBASE-12774) | *Minor* | **Fix the inconsistent permission checks for bulkloading.**

Bulk load permissions are changed from requiring both C and W to only require C.


---

* [HBASE-12745](https://issues.apache.org/jira/browse/HBASE-12745) | *Major* | **Visibility Labels:  support visibility labels for user groups.**

VisibilityClient API and shell commands can be used to grant and clear visibility authorizations of a group.
e.g. 
set\_auths '@group1', ['SECRET','PRIVATE']
get\_auths '@group1'
clear\_auths '@group1', ['SECRET','PRIVATE']

When checking visibility authorizations of a user, the server will include the visibility authorizations of the groups of which the user is a member, together with the user's own.

On the other hand, get\_auths 'user1' will only get user1's own visibility authorizations.
clear\_auths 'user1' will only clear user1's own visibility authorizations.
The visibility authorizations of a group can be changed by invoking the API or command on the '@group1' itself.

Note:

The following two methods have been deprecated in VisibilityLabelService from 0.98.10 and will be removed in 2.0+ releases.
getAuths(byte[], boolean)
havingSystemAuth(byte[])

Use the following methods instead:
getUserAuths(byte[], boolean)
getGroupAuths(String[], boolean)
havingSystemAuth(User)


---

* [HBASE-12731](https://issues.apache.org/jira/browse/HBASE-12731) | *Major* | **Heap occupancy based client pushback**

This feature incorporates reported regionserver heap occupancy in the (optional) client pushback calculations. If client pushback is enabled, the exponential backoff policy will take heap occupancy into account, should it exceed "hbase.heap.occupancy.low\_water\_mark" percentage of the heap (default 0.95). Once above the low water mark, heap occupancy is an additional factor scaling from 0.1 up to 1.0 at "hbase.heap.occupancy.high\_water\_mark" (default 0.98). At or above the high water mark the client will use the maximum configured backoff.


---

* [HBASE-12644](https://issues.apache.org/jira/browse/HBASE-12644) | *Major* | **Visibility Labels: issue with storing super users in labels table**

The system visibility label authorization for super users will no longer be persisted in hbase:labels table. Super users will be determined at server startup time. They will have all the permissions for Visibility labels.
If you have a prior deployment that had super users' system label persisted in hbase:labels, you can clean up by invoking the shell command 'clear\_auths'.
For example: clear\_auths 'old\_superuser', 'system'
This is particularly necessary when you change super users, i.e. a previous super user is no longer a super user.


---

* [HBASE-12121](https://issues.apache.org/jira/browse/HBASE-12121) | *Minor* | **maven release plugin does not allow for customized goals**

Allows user to add goals to release procedure
mvn release:perform -Dgoal=<goal-name>
If no goal is specified default behavior is used

Example use case:
Release to private repository and upload artifacts but also want the tarball to be uploaded, not just the jars. 
the following could be added to the release command
-Dgoal="-X package install site assembly:single deploy -DskipTests"
This will execute the release procedure and also upload the tarball along with all jars.



