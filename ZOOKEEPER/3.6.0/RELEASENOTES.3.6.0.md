
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
# Apache Zookeeper  3.6.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [ZOOKEEPER-1948](https://issues.apache.org/jira/browse/ZOOKEEPER-1948) | *Major* | **Enable JMX remote monitoring**

Changes in zkServer.sh to support JMX remote monitoring of Zookeeper processes. The change doesn't impact current installations and new installations requiring JMX remote monitoring need to set the jmx port to enable it.


---

* [ZOOKEEPER-2079](https://issues.apache.org/jira/browse/ZOOKEEPER-2079) | *Minor* | **Stop daemon with "kill" rather than "kill -9"**

Kill java process with \`SIGTERM\` rather than \`SIGKILL\`


---

* [ZOOKEEPER-2114](https://issues.apache.org/jira/browse/ZOOKEEPER-2114) | *Major* | **jute generated allocate\_\* functions are not externally visible**

Expose jute-generated allocate\_XXX functions in libzookeeper.


---

* [ZOOKEEPER-2190](https://issues.apache.org/jira/browse/ZOOKEEPER-2190) | *Major* | **In StandaloneDisabledTest, testReconfig() shouldn't take leaving servers as joining servers**

trunk: http://svn.apache.org/viewvc?view=revision&revision=1679444
branch-3.5: http://svn.apache.org/viewvc?view=revision&revision=1679446


---

* [ZOOKEEPER-1077](https://issues.apache.org/jira/browse/ZOOKEEPER-1077) | *Critical* | **C client lib doesn't build on Solaris**

Support for building C client lib on Illumos (and presumably OpenSolaris).  Configure with "CPPFLAGS=-D\_POSIX\_PTHREAD\_SEMANTICS LDFLAGS="-lnsl -lsocket" ./configure"


---

* [ZOOKEEPER-1506](https://issues.apache.org/jira/browse/ZOOKEEPER-1506) | *Blocker* | **Re-try DNS hostname -\> IP resolution if node connection fails**

Tests pass with this patch.
This patch is for the branch-3.4 branch ONLY.


---

* [ZOOKEEPER-1853](https://issues.apache.org/jira/browse/ZOOKEEPER-1853) | *Minor* | **zkCli.sh can't issue a CREATE command containing spaces in the data**

Allows spaces to be used for parameters in zkCli as long as they are in single or double quotes.  ie: create /node1 "This will now work"


---

* [ZOOKEEPER-2413](https://issues.apache.org/jira/browse/ZOOKEEPER-2413) | *Major* | **ContainerManager doesn't close the Timer it creates when stop() is called**

Thanks, Jordan.

Branch 3.5: Committed revision 1740737.
Trunk: Committed revision 1740738.


---

* [ZOOKEEPER-1460](https://issues.apache.org/jira/browse/ZOOKEEPER-1460) | *Major* | **IPv6 literal address not supported for quorum members**

IPv6 addresses are now properly parsed in the config


---

* [ZOOKEEPER-1525](https://issues.apache.org/jira/browse/ZOOKEEPER-1525) | *Major* | **Plumb ZooKeeperServer object into auth plugins**

Plumb ZooKeeperServer object into auth plugins.


---

* [ZOOKEEPER-2573](https://issues.apache.org/jira/browse/ZOOKEEPER-2573) | *Major* | **Modify Info.REVISION to adapt git repo**

After the migration of ZooKeeper's version control system from 'svn repo' to 'apache git repo' the revision info becomes git's SHA-1 hash value.


---

* [ZOOKEEPER-2722](https://issues.apache.org/jira/browse/ZOOKEEPER-2722) | *Major* | **Flaky Test: org.apache.zookeeper.test.ReadOnlyModeTest.testSessionEstablishment**

1


---

* [ZOOKEEPER-1504](https://issues.apache.org/jira/browse/ZOOKEEPER-1504) | *Major* | **Multi-thread NIOServerCnxn**

There is a possibility of file descriptor leakage issue under high workload. Please upgrade to the latest version of JVM or the version that has a fix for this bug (http://bugs.sun.com/bugdatabase/view\_bug.do?bug\_id=7118373)


---

* [ZOOKEEPER-2841](https://issues.apache.org/jira/browse/ZOOKEEPER-2841) | *Major* | **ZooKeeper public include files leak porting changes**

cmake is added to replace the existing hardcoded (and outdated) visual studio solutions for windows platform.


---

* [ZOOKEEPER-2890](https://issues.apache.org/jira/browse/ZOOKEEPER-2890) | *Critical* | **Local automatic variable is left uninitialized and then freed.**

**WARNING: No release note provided for this change.**


---

* [ZOOKEEPER-2950](https://issues.apache.org/jira/browse/ZOOKEEPER-2950) | *Trivial* | **Add keys for the Zxid from the stat command to check\_zookeeper.py**

Add keys for the zxid and its component pieces: epoch and transaction counter. These are not reported by the 'mntr' command so they must be obtained from 'stat'. The counter is useful for tracking transaction rates, and epoch is useful for tracking leader churn.

zk\_zxid - the 64bit zxid from ZK
zk\_zxid\_counter - the lower 32 bits, AKA the counter
zk\_zxid\_epoch - the upper 32 bits, AKA the epoch


---

* [ZOOKEEPER-2952](https://issues.apache.org/jira/browse/ZOOKEEPER-2952) | *Critical* | **Upgrade third party libraries to address vulnerabilities**

**WARNING: No release note provided for this change.**


---

* [ZOOKEEPER-2967](https://issues.apache.org/jira/browse/ZOOKEEPER-2967) | *Major* | **Add check to validate dataDir and dataLogDir parameters at startup**

**WARNING: No release note provided for this change.**


---

* [ZOOKEEPER-761](https://issues.apache.org/jira/browse/ZOOKEEPER-761) | *Blocker* | **Remove \*synchronous\* calls from the \*single-threaded\* C clieant API, since they are documented not to work**

Removed synchronous calls from the single-threaded API as they are not implemented and documented as such.


---

* [ZOOKEEPER-1177](https://issues.apache.org/jira/browse/ZOOKEEPER-1177) | *Major* | **Enabling a large number of watches for a large number of clients**

Changes to the watch manager to support very large (200 million) watches. This change also improves the synchronization in the WatchManager to reduce the contention on various watch manager operations (mainly addWatch() which is a fairly common operation after trigger watch).


---

* [ZOOKEEPER-3153](https://issues.apache.org/jira/browse/ZOOKEEPER-3153) | *Major* | **Create MarkDown files and build process for them**

Migrate documentation to MarkDown.


---

* [ZOOKEEPER-1818](https://issues.apache.org/jira/browse/ZOOKEEPER-1818) | *Blocker* | **Correctly handle potential inconsistent zxid/electionEpoch and peerEpoch during leader election**

This is very much a copy of the patch for 3.4.7 with small adaptations.


---

* [ZOOKEEPER-3224](https://issues.apache.org/jira/browse/ZOOKEEPER-3224) | *Blocker* | **CI integration with maven**

Let's close it.
We have Travis + Pull Requests + Nightly build.
We will have to convert the remaining jobs when we drop ant (hopefully very soon, before 3.6.0 release)


---

* [ZOOKEEPER-3351](https://issues.apache.org/jira/browse/ZOOKEEPER-3351) | *Major* | **Migrate qa-test-pullrequest ant task to maven**

ant precommit is not used anymore on master branch.
It is active on branch-3.5 and branch-3.4


---

* [ZOOKEEPER-2894](https://issues.apache.org/jira/browse/ZOOKEEPER-2894) | *Critical* | **Memory and completions leak on zookeeper\_close**

**WARNING: No release note provided for this change.**


---

* [ZOOKEEPER-3457](https://issues.apache.org/jira/browse/ZOOKEEPER-3457) | *Trivial* | **Code optimization in QuorumCnxManager**

https://github.com/apache/zookeeper/pull/1021


---

* [ZOOKEEPER-2891](https://issues.apache.org/jira/browse/ZOOKEEPER-2891) | *Critical* | **Invalid processing of zookeeper\_close for mutli-request**

**WARNING: No release note provided for this change.**


---

* [ZOOKEEPER-1467](https://issues.apache.org/jira/browse/ZOOKEEPER-1467) | *Major* | **Make server principal configurable at client side.**

Allow system property "zookeeper.clusterName", if defined, to be used as the instance portion of zookeeper server's Kerberos principal name. Otherwise, server's hostname will be used.


---

* [ZOOKEEPER-3651](https://issues.apache.org/jira/browse/ZOOKEEPER-3651) | *Major* | **NettyServerCnxnFactoryTest is flaky**

committed to master branch as 20daae7d5fa934629e7825ed72e66ad76a94d6aa

committed also to branch-3.6

But I cannot merge it to branch-3.5 as the patch does not apply cleanly



