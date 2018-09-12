
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
# Apache Zookeeper  3.4.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [ZOOKEEPER-722](https://issues.apache.org/jira/browse/ZOOKEEPER-722) | *Minor* | **zkServer.sh uses sh's builtin echo on BSD, behaves incorrectly.**

Fix zkServer.sh script for BSD systems.


---

* [ZOOKEEPER-754](https://issues.apache.org/jira/browse/ZOOKEEPER-754) | *Major* | **numerous misspellings "succesfully"**

fixed numerous misspellings of "succesfully" in the c client and python bindings


---

* [ZOOKEEPER-744](https://issues.apache.org/jira/browse/ZOOKEEPER-744) | *Major* | **Add monitoring four-letter word**

Added new 4letter word for monitoring: "mntr" The output is compatible with the Java properties format.Your script should expect content changes: new keys could be added in the future.


---

* [ZOOKEEPER-799](https://issues.apache.org/jira/browse/ZOOKEEPER-799) | *Major* | **Add tools and recipes for monitoring as a contrib**

Tools and Recipes for Monitoring ZooKeeper using Cacti, Nagios or Ganglia.


---

* [ZOOKEEPER-821](https://issues.apache.org/jira/browse/ZOOKEEPER-821) | *Trivial* | **Add ZooKeeper version information to zkpython**

Add a version number to zkpython releases.


---

* [ZOOKEEPER-765](https://issues.apache.org/jira/browse/ZOOKEEPER-765) | *Minor* | **Add python example script**

A skeleton script that shows how to setup znode watches and how to react to events using the Python client libraries.


---

* [ZOOKEEPER-775](https://issues.apache.org/jira/browse/ZOOKEEPER-775) | *Major* | **A large scale pub/sub system**

A pub sub system using BooKkeeper and ZooKeeper with C++ and Java client bindings.


---

* [ZOOKEEPER-853](https://issues.apache.org/jira/browse/ZOOKEEPER-853) | *Minor* | **Make zookeeper.is\_unrecoverable return True or False and not an integer**

zookeeper.is\_unrecoverable returns True or False


---

* [ZOOKEEPER-1013](https://issues.apache.org/jira/browse/ZOOKEEPER-1013) | *Trivial* | **zkServer.sh usage message should mention all startup options**

patch to zkServer.sh to show all startup options


---

* [ZOOKEEPER-1033](https://issues.apache.org/jira/browse/ZOOKEEPER-1033) | *Minor* | **c client should install includes into INCDIR/zookeeper, not INCDIR/c-client-src**

Install c-client header files into include/zookeeper/ rather than include/c-client-src/


---

* [ZOOKEEPER-1058](https://issues.apache.org/jira/browse/ZOOKEEPER-1058) | *Trivial* | **fix typo in opToString for getData**

Committed revision 1125544


---

* [ZOOKEEPER-1081](https://issues.apache.org/jira/browse/ZOOKEEPER-1081) | *Major* | **modify leader/follower code to correctly deal with new leader**

Committed revision 1135382.


---

* [ZOOKEEPER-1082](https://issues.apache.org/jira/browse/ZOOKEEPER-1082) | *Major* | **modify leader election to correctly take into account current epoch**

Committed revision 1135382.


---

* [ZOOKEEPER-1087](https://issues.apache.org/jira/browse/ZOOKEEPER-1087) | *Blocker* | **ForceSync VM arguement not working when set to "no"**

Respect the "zookeeper.forceSync" system property.


---

* [ZOOKEEPER-1095](https://issues.apache.org/jira/browse/ZOOKEEPER-1095) | *Major* | **Simple leader election recipe**

Adds an implementation of the leader election recipe


---

* [ZOOKEEPER-782](https://issues.apache.org/jira/browse/ZOOKEEPER-782) | *Trivial* | **Incorrect C API documentation for Watches**

Corrected documentation on watch behavior in C API


---

* [ZOOKEEPER-1027](https://issues.apache.org/jira/browse/ZOOKEEPER-1027) | *Critical* | **chroot not transparent in zoo\_create()**

Correctly removes the chroot from the returned path in a call to zoo\_create()


---

* [ZOOKEEPER-1006](https://issues.apache.org/jira/browse/ZOOKEEPER-1006) | *Minor* | **QuorumPeer "Address already in use" -- regression in 3.3.3**

turns out this is a bug in the test, the supplied patch fixes the problem by using polling rather than straight sleep.


---

* [ZOOKEEPER-1055](https://issues.apache.org/jira/browse/ZOOKEEPER-1055) | *Major* | **check for duplicate ACLs in addACL() and create()**

refresh against trunk.


---

* [ZOOKEEPER-1104](https://issues.apache.org/jira/browse/ZOOKEEPER-1104) | *Minor* | **CLONE - In QuorumTest, use the same "for ( .. try { break } catch { } )" pattern in testFollowersStartAfterLeaders as in testSessionMove.**

Contains improvement to original patch (remove unneeded boolean variable).


---

* [ZOOKEEPER-1034](https://issues.apache.org/jira/browse/ZOOKEEPER-1034) | *Minor* | **perl bindings should automatically find the zookeeper c-client headers**

Net::ZooKeeper now looks in some sane places for the c client includes


---

* [ZOOKEEPER-938](https://issues.apache.org/jira/browse/ZOOKEEPER-938) | *Major* | **Support Kerberos authentication of clients.**

ZOOKEEPER-938 : support Kerberos authentication via SASL.


---

* [ZOOKEEPER-999](https://issues.apache.org/jira/browse/ZOOKEEPER-999) | *Major* | **Create an package integration project**

Create zookeeper rpm and deb packages.


---

* [ZOOKEEPER-1051](https://issues.apache.org/jira/browse/ZOOKEEPER-1051) | *Minor* | **SIGPIPE in Zookeeper 0.3.\* when send'ing after cluster disconnection**

Add flag to socket send on Linux that prevents SIGPIPE from being fired should the Zookeeper cluster close the connection on its side.


---

* [ZOOKEEPER-1165](https://issues.apache.org/jira/browse/ZOOKEEPER-1165) | *Minor* | **better eclipse support in tests**

Small Eclipse test fix.


---

* [ZOOKEEPER-1189](https://issues.apache.org/jira/browse/ZOOKEEPER-1189) | *Major* | **For an invalid snapshot file(less than 10bytes size) RandomAccessFile stream is leaking.**

**WARNING: No release note provided for this change.**


---

* [ZOOKEEPER-1185](https://issues.apache.org/jira/browse/ZOOKEEPER-1185) | *Major* | **Send AuthFailed event to client if SASL authentication fails**

This patch fixes SaslAuthFailTest.testBadSaslAuthNotifiesWatch() to test for the AuthFailed event : previously, the test was incorrectly not testing for this event.

It also removes the testBadSaslAuthNotifiesWatch() method from the SaslAuthTest class : this method belongs in SaslAuthFailTest, not SaslAuthTest. The former tests unsuccessful SASL authentication; the latter, successful SASL authentication.


---

* [ZOOKEEPER-1195](https://issues.apache.org/jira/browse/ZOOKEEPER-1195) | *Major* | **SASL authorizedID being incorrectly set: should use getHostName() rather than getServiceName()**

One-line fix for bug identified by Tom Klonikowski


---

* [ZOOKEEPER-1181](https://issues.apache.org/jira/browse/ZOOKEEPER-1181) | *Major* | **Fix problems with Kerberos TGT renewal**

-Fixes two findbugs warnings related to holding a lock while sleeping.
-Addresses Camille's point: merge two almost-identical retry methods into a single retry method.


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

* [ZOOKEEPER-1264](https://issues.apache.org/jira/browse/ZOOKEEPER-1264) | *Blocker* | **FollowerResyncConcurrencyTest failing intermittently**

Revision 1198053


---

* [ZOOKEEPER-1282](https://issues.apache.org/jira/browse/ZOOKEEPER-1282) | *Major* | **Learner.java not following Zab 1.0 protocol - setCurrentEpoch should be done upon receipt of NEWLEADER (before acking it) and not upon receipt of UPTODATE**

Revision 1198053


---

* [ZOOKEEPER-1291](https://issues.apache.org/jira/browse/ZOOKEEPER-1291) | *Major* | **AcceptedEpoch not updated at leader before it proposes the epoch to followers**

Revision 1198053


---

* [ZOOKEEPER-1208](https://issues.apache.org/jira/browse/ZOOKEEPER-1208) | *Blocker* | **Ephemeral node not removed after the client session is long gone**

trunk version 1201832


---

* [ZOOKEEPER-1239](https://issues.apache.org/jira/browse/ZOOKEEPER-1239) | *Major* | **add logging/stats to identify fsync stalls**

committed to 3.3.4, 3.4, trunk rev 1202360


---

* [ZOOKEEPER-850](https://issues.apache.org/jira/browse/ZOOKEEPER-850) | *Major* | **Switch from log4j to slf4j**

\* replaces log4j with slf4j code (also in contrib for bookkeeper, zooinspector,rest,loggraph), added slf4j dependencies into several ivy.xml files
\* you must add slf4j-api-1.6.1.jar and slf4j-log4j12-1.6.1.jar (bridge from sl4j to log4j) to the classpath, if not using the standard scripts
\* log4j remains as the final logger yet, there is still work to do: remove programmatic access to the log4j api from certain classes (which add appenders or configure log4j at runtime), or move them to contrib



