
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
# Apache Zookeeper  3.5.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [ZOOKEEPER-1972](https://issues.apache.org/jira/browse/ZOOKEEPER-1972) | *Major* | **Fix invalid volatile long/int increment (++)**

Awesome! thanks Hongchao! Committed to trunk


---

* [ZOOKEEPER-1835](https://issues.apache.org/jira/browse/ZOOKEEPER-1835) | *Major* | **dynamic configuration file renaming fails on Windows**

Patch described in this comment below:
https://issues.apache.org/jira/browse/ZOOKEEPER-1835?focusedCommentId=13848420&page=com.atlassian.jira.plugin.system.issuetabpanels:comment-tabpanel#comment-13848420


---

* [ZOOKEEPER-1819](https://issues.apache.org/jira/browse/ZOOKEEPER-1819) | *Minor* | **DeserializationPerfTest calls method with wrong arguments**

Fix DeserializationPerfTest which was not testing the desired scenarios.


---

* [ZOOKEEPER-1812](https://issues.apache.org/jira/browse/ZOOKEEPER-1812) | *Minor* | **ZooInspector reconnection always fails if first connection fails**

Fixed ZooInspector reconnection


---

* [ZOOKEEPER-1811](https://issues.apache.org/jira/browse/ZOOKEEPER-1811) | *Major* | **The ZooKeeperSaslClient service name principal is hardcoded to "zookeeper"**

Adds a new system property "zookeeper.sasl.client.username" that can be used to configure the ZK Kerberos (SASL) client user principal name to something other than "zookeeper" (default) for any environments that use non-standard naming for its principals.


---

* [ZOOKEEPER-1771](https://issues.apache.org/jira/browse/ZOOKEEPER-1771) | *Minor* | **ZooInspector authentication**

Added authentication for ZooInspector.


---

* [ZOOKEEPER-1718](https://issues.apache.org/jira/browse/ZOOKEEPER-1718) | *Critical* | **Support JLine 2**

JLine upgraded to version 2.11


---

* [ZOOKEEPER-1666](https://issues.apache.org/jira/browse/ZOOKEEPER-1666) | *Major* | **Avoid Reverse DNS lookup if the hostname in connection string is literal IP address.**

Try to avoid reverse name service look up when the connection string consists of literal IP addresses but not real host names.


---

* [ZOOKEEPER-1632](https://issues.apache.org/jira/browse/ZOOKEEPER-1632) | *Minor* | **fix memory leaks in cli\_st**

The fix for this issue solves the memory leak spotted in the absence of errors. In the case the completion function is not registered because of an error (e.g., see zoo\_async), the line duplicate won't be freed.


---

* [ZOOKEEPER-1562](https://issues.apache.org/jira/browse/ZOOKEEPER-1562) | *Trivial* | **Memory leaks in zoo\_multi API**

zoo\_multi API used to leak memory while deserializing the response from zookeeper server.
Completion entries for individual operation in zoo\_multi transaction weren't getting cleaned causing memory leak. This patch resolves this memory leak by destroying completion entries in deserialize\_multi function.


---

* [ZOOKEEPER-1557](https://issues.apache.org/jira/browse/ZOOKEEPER-1557) | *Major* | **jenkins jdk7 test failure in testBadSaslAuthNotifiesWatch**

Committed to 3.4.6/trunk. Thanks Eugene.


---

* [ZOOKEEPER-1509](https://issues.apache.org/jira/browse/ZOOKEEPER-1509) | *Major* | **Please update documentation to reflect updated FreeBSD support.**

Update documentation to reflect full FreeBSD support.


---

* [ZOOKEEPER-1506](https://issues.apache.org/jira/browse/ZOOKEEPER-1506) | *Blocker* | **Re-try DNS hostname -\> IP resolution if node connection fails**

Tests pass with this patch.
This patch is for the branch-3.4 branch ONLY.


---

* [ZOOKEEPER-1459](https://issues.apache.org/jira/browse/ZOOKEEPER-1459) | *Major* | **Standalone ZooKeeperServer is not closing the transaction log files on shutdown**

**WARNING: No release note provided for this incompatible change.**


---

* [ZOOKEEPER-1408](https://issues.apache.org/jira/browse/ZOOKEEPER-1408) | *Minor* | **CLI: sort output of ls command**

The output of ls-command in CLI does not contain the []-frame any more. Instead the nodes are sorted.


---

* [ZOOKEEPER-1367](https://issues.apache.org/jira/browse/ZOOKEEPER-1367) | *Blocker* | **Data inconsistencies and unexpired ephemeral nodes after cluster restart**

Fix Data inconsistencies and unexpired ephemeral nodes after cluster restart.


---

* [ZOOKEEPER-1344](https://issues.apache.org/jira/browse/ZOOKEEPER-1344) | *Critical* | **ZooKeeper client multi-update command is not considering the Chroot request**

**WARNING: No release note provided for this incompatible change.**


---

* [ZOOKEEPER-1340](https://issues.apache.org/jira/browse/ZOOKEEPER-1340) | *Major* | **multi problem - typical user operations are generating ERROR level messages in the server**

Unwanted ERROR messages in the logs.


---

* [ZOOKEEPER-1336](https://issues.apache.org/jira/browse/ZOOKEEPER-1336) | *Major* | **javadoc for multi is confusing, references functionality that doesn't seem to exist**

Improved Javadoc for multi API's.


---

* [ZOOKEEPER-1327](https://issues.apache.org/jira/browse/ZOOKEEPER-1327) | *Major* | **there are still remnants of hadoop urls**

Remove links to Hadoop wiki's in ZooKeeper docs.


---

* [ZOOKEEPER-1322](https://issues.apache.org/jira/browse/ZOOKEEPER-1322) | *Major* | **Cleanup/fix logging in Quorum code.**

Improved logging in Quorum Code.


---

* [ZOOKEEPER-1305](https://issues.apache.org/jira/browse/ZOOKEEPER-1305) | *Major* | **zookeeper.c:prepend\_string func can dereference null ptr**

return ZBADARGUMENTS when passed NULL zhandle instead of dereferencing null pointer.


---

* [ZOOKEEPER-1294](https://issues.apache.org/jira/browse/ZOOKEEPER-1294) | *Major* | **One of the zookeeper server is not accepting any requests**

**WARNING: No release note provided for this incompatible change.**


---

* [ZOOKEEPER-1291](https://issues.apache.org/jira/browse/ZOOKEEPER-1291) | *Major* | **AcceptedEpoch not updated at leader before it proposes the epoch to followers**

Revision 1198053


---

* [ZOOKEEPER-1282](https://issues.apache.org/jira/browse/ZOOKEEPER-1282) | *Major* | **Learner.java not following Zab 1.0 protocol - setCurrentEpoch should be done upon receipt of NEWLEADER (before acking it) and not upon receipt of UPTODATE**

Revision 1198053


---

* [ZOOKEEPER-1277](https://issues.apache.org/jira/browse/ZOOKEEPER-1277) | *Critical* | **servers stop serving when lower 32bits of zxid roll over**

Workaround: there is a simple workaround for this issue. Force a leader re-election before the lower 32bits reach 0xffffffff

Most users won't even see this given the number of writes on a typical installation - say you are doing 500 writes/second, you'd see this after ~3 months if the quorum is stable, any changes (such as upgrading the server software) would cause the xid to be reset, thereby staving off this issue for another period.


---

* [ZOOKEEPER-1264](https://issues.apache.org/jira/browse/ZOOKEEPER-1264) | *Blocker* | **FollowerResyncConcurrencyTest failing intermittently**

Revision 1198053


---

* [ZOOKEEPER-1263](https://issues.apache.org/jira/browse/ZOOKEEPER-1263) | *Major* | **fix handling of min/max session timeout value initialization**

trunk: http://svn.apache.org/viewvc?view=revision&revision=1581522


---

* [ZOOKEEPER-1262](https://issues.apache.org/jira/browse/ZOOKEEPER-1262) | *Major* | **Documentation for Lock recipe has major flaw**

Updated recipes to document how to use a GUID to manage a recoverable create() error.


---

* [ZOOKEEPER-1239](https://issues.apache.org/jira/browse/ZOOKEEPER-1239) | *Major* | **add logging/stats to identify fsync stalls**

committed to 3.3.4, 3.4, trunk rev 1202360


---

* [ZOOKEEPER-1208](https://issues.apache.org/jira/browse/ZOOKEEPER-1208) | *Blocker* | **Ephemeral node not removed after the client session is long gone**

trunk version 1201832


---

* [ZOOKEEPER-1189](https://issues.apache.org/jira/browse/ZOOKEEPER-1189) | *Major* | **For an invalid snapshot file(less than 10bytes size) RandomAccessFile stream is leaking.**

**WARNING: No release note provided for this incompatible change.**


---

* [ZOOKEEPER-1185](https://issues.apache.org/jira/browse/ZOOKEEPER-1185) | *Major* | **Send AuthFailed event to client if SASL authentication fails**

This patch fixes SaslAuthFailTest.testBadSaslAuthNotifiesWatch() to test for the AuthFailed event : previously, the test was incorrectly not testing for this event.

It also removes the testBadSaslAuthNotifiesWatch() method from the SaslAuthTest class : this method belongs in SaslAuthFailTest, not SaslAuthTest. The former tests unsuccessful SASL authentication; the latter, successful SASL authentication.


---

* [ZOOKEEPER-1181](https://issues.apache.org/jira/browse/ZOOKEEPER-1181) | *Major* | **Fix problems with Kerberos TGT renewal**

-Fixes two findbugs warnings related to holding a lock while sleeping.
-Addresses Camille's point: merge two almost-identical retry methods into a single retry method.


---

* [ZOOKEEPER-1179](https://issues.apache.org/jira/browse/ZOOKEEPER-1179) | *Critical* | **NettyServerCnxn does not properly close socket on 4 letter word requests**

Thanks Rakesh, you are right, this error is not happening anymore. Flavio, I'm closing this.


---

* [ZOOKEEPER-1149](https://issues.apache.org/jira/browse/ZOOKEEPER-1149) | *Blocker* | **users cannot migrate from 3.4-\>3.3-\>3.4 server code against a single datadir**

The ZooKeeper server cannot be migrated from version 3.4 to version 3.3 and then back to version 3.4 without user intervention.

Upgrading from 3.3 to 3.4 is supported as is downgrading from 3.4 to 3.3. However moving from 3.4 to 3.3 and back to 3.4 will fail. 3.4 is checking the datadir for "acceptedEpoch" and "currentEpoch" files and comparing these against the snapshot and log files contained in the same directory. These epoch files are new in 3.4.

As a result:
1) upgrading from 3.3 to 3.4 is fine - the files don't exist, the server creates them
2) downgrading from 3.4 to 3.3 - this is also fine as version 3.3 ignores these files
3) however, 3.4-\>3.3-\>3.4 fails because 3.4 will see invalid \*Epoch files in the datadir (as 3.3 would have ignored them, applying changes to snap/log w/o updating them)

A workaround for this problem is to delete the epoch files if this situation occurrs - the version 3.4 server will create them similar to case 1) above.


---

* [ZOOKEEPER-1100](https://issues.apache.org/jira/browse/ZOOKEEPER-1100) | *Major* | **Killed (or missing) SendThread will cause hanging threads**

**WARNING: No release note provided for this incompatible change.**


---

* [ZOOKEEPER-1062](https://issues.apache.org/jira/browse/ZOOKEEPER-1062) | *Major* | **Net-ZooKeeper: Net::ZooKeeper consumes 100% cpu on wait**

Cosmetic fixes to the patch


---

* [ZOOKEEPER-732](https://issues.apache.org/jira/browse/ZOOKEEPER-732) | *Minor* | **Improper translation of error into Python exception**

Client that uses python binding may receive SystemError on session expiration.


---

* [ZOOKEEPER-271](https://issues.apache.org/jira/browse/ZOOKEEPER-271) | *Minor* | **Better command line parsing in ZookeeperMain.**

There are three incompatibilities introduced by this commit into the client shell:

1) now requires commons-cli
2) get no longer returns stat information by default, however there is a "-s" option that will result in the stat being included
3) a deprecated message is reported in some cases, when the old command format is used. As a result the output of the command may be different compared to client output prior to this change.


---

* [ZOOKEEPER-87](https://issues.apache.org/jira/browse/ZOOKEEPER-87) | *Critical* | **Follower does not shut itself down if its too far behind the leader.**

The value of syncLimit should be reviewed before this change is introduced in the cluster. Since it now detects followers that are lagging behind, clusters in which this was happening will now see followers being disconnected from time to time. This will normally be solved by increasing the syncLimit value.



