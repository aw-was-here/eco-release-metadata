
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
# Apache Zookeeper Changelog

## Release 3.4.4 - 2012-09-23



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1321](https://issues.apache.org/jira/browse/ZOOKEEPER-1321) | Add number of client connections metric in JMX and srvr |  Major | . | Neha Narkhede | Neha Narkhede |
| [ZOOKEEPER-1389](https://issues.apache.org/jira/browse/ZOOKEEPER-1389) | it would be nice if start-foreground used exec $JAVA in order to get rid of the intermediate shell process |  Major | scripts, server | Roman Shaposhnik | Roman Shaposhnik |
| [ZOOKEEPER-1390](https://issues.apache.org/jira/browse/ZOOKEEPER-1390) | some expensive debug code not protected by a check for debug |  Major | server | Benjamin Reed | Benjamin Reed |
| [ZOOKEEPER-1377](https://issues.apache.org/jira/browse/ZOOKEEPER-1377) | add support for dumping a snapshot file content (similar to LogFormatter) |  Major | server | Patrick D. Hunt | Patrick D. Hunt |
| [ZOOKEEPER-1433](https://issues.apache.org/jira/browse/ZOOKEEPER-1433) | improve ZxidRolloverTest (test seems flakey) |  Major | tests | Wing Yew Poon | Patrick D. Hunt |
| [ZOOKEEPER-1454](https://issues.apache.org/jira/browse/ZOOKEEPER-1454) | Document how to run autoreconf if cppunit is installed in a non-standard directory |  Trivial | c client | Michi Mutsuzaki | Michi Mutsuzaki |
| [ZOOKEEPER-1503](https://issues.apache.org/jira/browse/ZOOKEEPER-1503) | remove redundant JAAS configuration code in SaslAuthTest and SaslAuthFailTest |  Major | . | Eugene Joseph Koontz | Eugene Joseph Koontz |
| [ZOOKEEPER-1510](https://issues.apache.org/jira/browse/ZOOKEEPER-1510) | Should not log SASL errors for non-secure usage |  Minor | java client | Todd Lipcon | Todd Lipcon |
| [ZOOKEEPER-1497](https://issues.apache.org/jira/browse/ZOOKEEPER-1497) | Allow server-side SASL login with JAAS configuration to be programmatically set (rather than only by reading JAAS configuration file) |  Major | server | Matteo Bertozzi | Matteo Bertozzi |
| [ZOOKEEPER-1481](https://issues.apache.org/jira/browse/ZOOKEEPER-1481) | allow the C cli to run exists with a watcher |  Major | c client | Patrick D. Hunt | Patrick D. Hunt |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1386](https://issues.apache.org/jira/browse/ZOOKEEPER-1386) | avoid flaky URL redirection in "ant javadoc" : replace "http://java.sun.com/javase/6/docs/api/" with "http://download.oracle.com/javase/6/docs/api/" |  Minor | documentation | Eugene Joseph Koontz | Eugene Joseph Koontz |
| [ZOOKEEPER-1354](https://issues.apache.org/jira/browse/ZOOKEEPER-1354) | AuthTest.testBadAuthThenSendOtherCommands fails intermittently |  Major | tests | Patrick D. Hunt | Patrick D. Hunt |
| [ZOOKEEPER-1277](https://issues.apache.org/jira/browse/ZOOKEEPER-1277) | servers stop serving when lower 32bits of zxid roll over |  Critical | server | Patrick D. Hunt | Patrick D. Hunt |
| [ZOOKEEPER-1412](https://issues.apache.org/jira/browse/ZOOKEEPER-1412) | java client watches inconsistently triggered on reconnect |  Blocker | server | Botond Hejj | Patrick D. Hunt |
| [ZOOKEEPER-1344](https://issues.apache.org/jira/browse/ZOOKEEPER-1344) | ZooKeeper client multi-update command is not considering the Chroot request |  Critical | java client | Rakesh Radhakrishnan | Rakesh Radhakrishnan |
| [ZOOKEEPER-1307](https://issues.apache.org/jira/browse/ZOOKEEPER-1307) | zkCli.sh is exiting when an Invalid ACL exception is thrown from setACL command through client |  Minor | java client | amith | kavita sharma |
| [ZOOKEEPER-1406](https://issues.apache.org/jira/browse/ZOOKEEPER-1406) | dpkg init scripts don't restart - missing check\_priv\_sep\_dir |  Major | scripts | Chris Beauchamp | Chris Beauchamp |
| [ZOOKEEPER-1403](https://issues.apache.org/jira/browse/ZOOKEEPER-1403) | zkCli.sh script quoting issue |  Minor | scripts | James Page | James Page |
| [ZOOKEEPER-1384](https://issues.apache.org/jira/browse/ZOOKEEPER-1384) | test-cppunit overrides LD\_LIBRARY\_PATH and fails if gcc is in non-standard location |  Minor | build, tests | Jay Shrauner | Jay Shrauner |
| [ZOOKEEPER-1419](https://issues.apache.org/jira/browse/ZOOKEEPER-1419) | Leader election never settles for a 5-node cluster |  Blocker | leaderElection | Jeremy Stribling | Flavio Paiva Junqueira |
| [ZOOKEEPER-1395](https://issues.apache.org/jira/browse/ZOOKEEPER-1395) | node-watcher double-free redux |  Critical | c client, contrib-bindings | Mike Lundy | Mike Lundy |
| [ZOOKEEPER-1048](https://issues.apache.org/jira/browse/ZOOKEEPER-1048) | addauth command does not work in cli\_mt/cli\_st |  Major | c client | allengao | allengao |
| [ZOOKEEPER-1339](https://issues.apache.org/jira/browse/ZOOKEEPER-1339) | C clien doesn't build with --enable-debug |  Major | c client | Jakub Lekstan | Eric Liang |
| [ZOOKEEPER-1318](https://issues.apache.org/jira/browse/ZOOKEEPER-1318) | In Python binding, get\_children (and get and exists, and probably others) with expired session doesn't raise exception properly |  Major | contrib-bindings | Jim Fulton | Henry Robinson |
| [ZOOKEEPER-1431](https://issues.apache.org/jira/browse/ZOOKEEPER-1431) | zkpython: async calls leak memory |  Major | contrib-bindings | johan rydberg | Kapil Thangavelu |
| [ZOOKEEPER-1163](https://issues.apache.org/jira/browse/ZOOKEEPER-1163) | Memory leak in zk\_hashtable.c:do\_insert\_watcher\_object() |  Major | c client | Anupam Chanda | Anupam Chanda |
| [ZOOKEEPER-1466](https://issues.apache.org/jira/browse/ZOOKEEPER-1466) | QuorumCnxManager.shutdown missing synchronization |  Blocker | quorum | Patrick D. Hunt | Patrick D. Hunt |
| [ZOOKEEPER-1490](https://issues.apache.org/jira/browse/ZOOKEEPER-1490) |  If the configured log directory does not exist zookeeper will not start. Better to create the directory and start |  Minor | scripts | suja s | suja s |
| [ZOOKEEPER-1210](https://issues.apache.org/jira/browse/ZOOKEEPER-1210) | Can't build ZooKeeper RPM with RPM \>= 4.6.0 (i.e. on RHEL 6 and Fedora \>= 10) |  Minor | build | Tadeusz Andrzej Kadłubowski | Tadeusz Andrzej Kadłubowski |
| [ZOOKEEPER-1236](https://issues.apache.org/jira/browse/ZOOKEEPER-1236) | Security uses proprietary Sun APIs |  Major | server | Patrick D. Hunt | Adalberto Medeiros |
| [ZOOKEEPER-1471](https://issues.apache.org/jira/browse/ZOOKEEPER-1471) | Jute generates invalid C++ code |  Minor | jute | Michi Mutsuzaki | Michi Mutsuzaki |
| [ZOOKEEPER-1465](https://issues.apache.org/jira/browse/ZOOKEEPER-1465) | Cluster availability following new leader election takes a long time with large datasets - is correlated to dataset size |  Critical | leaderElection | Alex Gvozdenovic | Camille Fournier |
| [ZOOKEEPER-1427](https://issues.apache.org/jira/browse/ZOOKEEPER-1427) | Writing to local files is done non-atomically |  Critical | server | Todd Lipcon | Patrick D. Hunt |
| [ZOOKEEPER-1489](https://issues.apache.org/jira/browse/ZOOKEEPER-1489) | Data loss after truncate on transaction log |  Blocker | server | Christian Ziech | Patrick D. Hunt |
| [ZOOKEEPER-1521](https://issues.apache.org/jira/browse/ZOOKEEPER-1521) | LearnerHandler initLimit/syncLimit problems specifying follower socket timeout limits |  Critical | server | Patrick D. Hunt | Patrick D. Hunt |
| [ZOOKEEPER-1493](https://issues.apache.org/jira/browse/ZOOKEEPER-1493) | C Client: zookeeper\_process doesn't invoke completion callback if zookeeper\_close has been called |  Major | c client | Michi Mutsuzaki | Michi Mutsuzaki |
| [ZOOKEEPER-1522](https://issues.apache.org/jira/browse/ZOOKEEPER-1522) | intermittent failures in Zab test due to NPE in recursiveDelete test function |  Major | tests | Patrick D. Hunt | Patrick D. Hunt |
| [ZOOKEEPER-1514](https://issues.apache.org/jira/browse/ZOOKEEPER-1514) | FastLeaderElection - leader ignores the round information when joining a quorum |  Critical | quorum | Patrick D. Hunt | Flavio Paiva Junqueira |
| [ZOOKEEPER-1536](https://issues.apache.org/jira/browse/ZOOKEEPER-1536) | c client : memory leak in winport.c |  Major | c client | brooklin | brooklin |
| [ZOOKEEPER-1380](https://issues.apache.org/jira/browse/ZOOKEEPER-1380) | zkperl: \_zk\_release\_watch doesn't remove items properly from the watch list |  Major | contrib-bindings | Botond Hejj | Botond Hejj |
| [ZOOKEEPER-1501](https://issues.apache.org/jira/browse/ZOOKEEPER-1501) | Nagios plugin always returns OK when it cannot connect to zookeeper |  Major | contrib | Brian Sutherland | Brian Sutherland |
| [ZOOKEEPER-1437](https://issues.apache.org/jira/browse/ZOOKEEPER-1437) | Client uses session before SASL authentication complete |  Major | java client | Thomas Weise | Eugene Joseph Koontz |
| [ZOOKEEPER-1494](https://issues.apache.org/jira/browse/ZOOKEEPER-1494) | C client: socket leak after receive timeout in zookeeper\_interest() |  Major | c client | Michi Mutsuzaki | Michi Mutsuzaki |
| [ZOOKEEPER-1483](https://issues.apache.org/jira/browse/ZOOKEEPER-1483) | Fix leader election recipe documentation |  Major | documentation | Ankur Bansal | Michi Mutsuzaki |
| [ZOOKEEPER-1361](https://issues.apache.org/jira/browse/ZOOKEEPER-1361) | Leader.lead iterates over 'learners' set without proper synchronisation |  Major | . | Henry Robinson | Henry Robinson |
| [ZOOKEEPER-1496](https://issues.apache.org/jira/browse/ZOOKEEPER-1496) | Ephemeral node not getting cleared even after client has exited |  Critical | server | suja s | Rakesh Radhakrishnan |
| [ZOOKEEPER-1686](https://issues.apache.org/jira/browse/ZOOKEEPER-1686) | Publish ZK 3.4.5 test jar |  Major | build, tests | Todd Lipcon | Patrick D. Hunt |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1450](https://issues.apache.org/jira/browse/ZOOKEEPER-1450) | Backport ZOOKEEPER-1294 fix to 3.4 and 3.3 |  Major | server | Norman Bishop | Norman Bishop |


