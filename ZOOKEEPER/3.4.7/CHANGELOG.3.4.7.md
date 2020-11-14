
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

## Release 3.4.7 - 2015-12-03



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1574](https://issues.apache.org/jira/browse/ZOOKEEPER-1574) | mismatched CR/LF endings in text files |  Minor | . | Raja Aluri | Raja Aluri |
| [ZOOKEEPER-657](https://issues.apache.org/jira/browse/ZOOKEEPER-657) | Cut down the running time of ZKDatabase corruption. |  Major | tests | Mahadev Konar | Michi Mutsuzaki |
| [ZOOKEEPER-1746](https://issues.apache.org/jira/browse/ZOOKEEPER-1746) | AsyncCallback.\*Callback don't have any Javadoc |  Major | documentation | Tsuyoshi Ozawa | Hongchao Deng |
| [ZOOKEEPER-1948](https://issues.apache.org/jira/browse/ZOOKEEPER-1948) | Enable JMX remote monitoring |  Major | server | Biju Nair | Biju Nair |
| [ZOOKEEPER-2126](https://issues.apache.org/jira/browse/ZOOKEEPER-2126) | Improve exit log messsage of EventThread and SendThread by adding SessionId |  Major | java client | Zhihai Xu | Surendra Singh Lilhore |
| [ZOOKEEPER-2179](https://issues.apache.org/jira/browse/ZOOKEEPER-2179) | Typo in Watcher.java |  Trivial | server | Eunchan Kim | Archana T |
| [ZOOKEEPER-2194](https://issues.apache.org/jira/browse/ZOOKEEPER-2194) | Let DataNode.getChildren() return an unmodifiable view of its children set |  Trivial | server | Hitoshi Mitake | Hitoshi Mitake |
| [ZOOKEEPER-2205](https://issues.apache.org/jira/browse/ZOOKEEPER-2205) | Log type of unexpected quorum packet in learner handler loop |  Trivial | server | Hitoshi Mitake | Hitoshi Mitake |
| [ZOOKEEPER-2040](https://issues.apache.org/jira/browse/ZOOKEEPER-2040) | Server to log underlying cause of SASL connection problems |  Major | server | Steve Loughran | Steve Loughran |
| [ZOOKEEPER-1506](https://issues.apache.org/jira/browse/ZOOKEEPER-1506) | Re-try DNS hostname -\> IP resolution if node connection fails |  Blocker | server | Mike Heffner | Robert P. Thille |
| [ZOOKEEPER-2315](https://issues.apache.org/jira/browse/ZOOKEEPER-2315) | Change client connect zk service timeout log level from Info to Warn level |  Minor | java client | Yiqun Lin | Yiqun Lin |
| [ZOOKEEPER-1907](https://issues.apache.org/jira/browse/ZOOKEEPER-1907) | Improve Thread handling |  Major | server | Rakesh Radhakrishnan | Rakesh Radhakrishnan |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1888](https://issues.apache.org/jira/browse/ZOOKEEPER-1888) | ZkCli.cmd commands fail with "'java' is not recognized as an internal or external command" |  Major | . | Ivan Mitic | Ivan Mitic |
| [ZOOKEEPER-1901](https://issues.apache.org/jira/browse/ZOOKEEPER-1901) | [JDK8] Sort children for comparison in AsyncOps tests |  Minor | tests | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [ZOOKEEPER-1878](https://issues.apache.org/jira/browse/ZOOKEEPER-1878) | Inconsistent behavior in autocreation of dataDir and dataLogDir |  Major | quorum | Rakesh Radhakrishnan | Rakesh Radhakrishnan |
| [ZOOKEEPER-1906](https://issues.apache.org/jira/browse/ZOOKEEPER-1906) | zkpython: invalid data in GetData for empty node |  Major | contrib-bindings | Nikita Vetoshkin | Nikita Vetoshkin |
| [ZOOKEEPER-1897](https://issues.apache.org/jira/browse/ZOOKEEPER-1897) | ZK Shell/Cli not processing commands |  Major | java client, scripts | Cameron Gandevia | Michael Stack |
| [ZOOKEEPER-1575](https://issues.apache.org/jira/browse/ZOOKEEPER-1575) | adding .gitattributes to prevent CRLF and LF mismatches for source and text files |  Major | . | Raja Aluri | Raja Aluri |
| [ZOOKEEPER-1913](https://issues.apache.org/jira/browse/ZOOKEEPER-1913) | Invalid manifest files due to bogus revision property value |  Major | build | Raúl Gutiérrez Segalés | Raúl Gutiérrez Segalés |
| [ZOOKEEPER-1911](https://issues.apache.org/jira/browse/ZOOKEEPER-1911) | REST contrib module does not include all required files when packaged |  Major | . | Sean Mackrory | Sean Mackrory |
| [ZOOKEEPER-1926](https://issues.apache.org/jira/browse/ZOOKEEPER-1926) | Unit tests should only use build/test/data for data |  Major | tests | Enis Soztutar | Enis Soztutar |
| [ZOOKEEPER-1895](https://issues.apache.org/jira/browse/ZOOKEEPER-1895) | update all notice files, copyright, etc... with the new year - 2014 |  Blocker | . | Patrick D. Hunt | Michi Mutsuzaki |
| [ZOOKEEPER-1062](https://issues.apache.org/jira/browse/ZOOKEEPER-1062) | Net-ZooKeeper: Net::ZooKeeper consumes 100% cpu on wait |  Major | contrib-bindings | Patrick D. Hunt | Botond Hejj |
| [ZOOKEEPER-1797](https://issues.apache.org/jira/browse/ZOOKEEPER-1797) | PurgeTxnLog may delete data logs during roll |  Blocker | server | Derek Dagit | Rakesh Radhakrishnan |
| [ZOOKEEPER-1943](https://issues.apache.org/jira/browse/ZOOKEEPER-1943) | "src/contrib/zooinspector/NOTICE.txt" isn't complying to ".gitattributes" in branch-3.4 |  Major | contrib | Hongchao Deng | Hongchao Deng |
| [ZOOKEEPER-1945](https://issues.apache.org/jira/browse/ZOOKEEPER-1945) | deb - zkCli.sh, zkServer.sh and zkEnv.sh regression caused by ZOOKEEPER-1663 |  Major | . | Mark Flickinger | Mark Flickinger |
| [ZOOKEEPER-1939](https://issues.apache.org/jira/browse/ZOOKEEPER-1939) | ReconfigRecoveryTest.testNextConfigUnreachable is failing |  Major | tests | Rakesh Radhakrishnan | Rakesh Radhakrishnan |
| [ZOOKEEPER-1900](https://issues.apache.org/jira/browse/ZOOKEEPER-1900) |  NullPointerException in truncate |  Blocker | . | Steven Bower | Camille Fournier |
| [ZOOKEEPER-1222](https://issues.apache.org/jira/browse/ZOOKEEPER-1222) | getACL should only call DataTree.copyStat when passed in stat is not null |  Minor | java client | Camille Fournier | Michi Mutsuzaki |
| [ZOOKEEPER-2039](https://issues.apache.org/jira/browse/ZOOKEEPER-2039) | Jute compareBytes incorrect comparison index |  Minor | jute | Ian Dimayuga | Ian Dimayuga |
| [ZOOKEEPER-2026](https://issues.apache.org/jira/browse/ZOOKEEPER-2026) | Startup order in ServerCnxnFactory-ies is wrong |  Minor | jmx, server | Stevo Slavić | Stevo Slavić |
| [ZOOKEEPER-1917](https://issues.apache.org/jira/browse/ZOOKEEPER-1917) | Apache Zookeeper logs cleartext admin passwords |  Blocker | . | Flavio Paiva Junqueira | Flavio Paiva Junqueira |
| [ZOOKEEPER-2049](https://issues.apache.org/jira/browse/ZOOKEEPER-2049) | Yosemite build failure: htonll conflict |  Major | . | Till Toenshoff | Till Toenshoff |
| [ZOOKEEPER-2052](https://issues.apache.org/jira/browse/ZOOKEEPER-2052) | Unable to delete a node when the node has no children |  Major | server | Yip Ng | Hongchao Deng |
| [ZOOKEEPER-2060](https://issues.apache.org/jira/browse/ZOOKEEPER-2060) | Trace bug in NettyServerCnxnFactory |  Major | server | Ian Dimayuga | Ian Dimayuga |
| [ZOOKEEPER-2064](https://issues.apache.org/jira/browse/ZOOKEEPER-2064) | Prevent resource leak in various classes |  Critical | . | Ted Yu | Ted Yu |
| [ZOOKEEPER-1949](https://issues.apache.org/jira/browse/ZOOKEEPER-1949) | recipes jar not included in the distribution package |  Major | recipes | Rakesh Radhakrishnan | Rakesh Radhakrishnan |
| [ZOOKEEPER-2114](https://issues.apache.org/jira/browse/ZOOKEEPER-2114) | jute generated allocate\_\* functions are not externally visible |  Major | c client | Tim Crowder | Tim Crowder |
| [ZOOKEEPER-2073](https://issues.apache.org/jira/browse/ZOOKEEPER-2073) | Memory leak on zookeeper\_close |  Critical | c client | Dave Gosselin | Dave Gosselin |
| [ZOOKEEPER-2146](https://issues.apache.org/jira/browse/ZOOKEEPER-2146) | BinaryInputArchive readString should check length before allocating memory |  Major | . | Hongchao Deng | Hongchao Deng |
| [ZOOKEEPER-2056](https://issues.apache.org/jira/browse/ZOOKEEPER-2056) | Zookeeper 3.4.x and 3.5.0-alpha is not OSGi compliant |  Major | . | Keren Dong | Deiwin Sarjas |
| [ZOOKEEPER-2174](https://issues.apache.org/jira/browse/ZOOKEEPER-2174) | JUnit4ZKTestRunner logs test failure for all exceptions even if the test method is annotated with an expected exception. |  Minor | tests | Chris Nauroth | Chris Nauroth |
| [ZOOKEEPER-1077](https://issues.apache.org/jira/browse/ZOOKEEPER-1077) | C client lib doesn't build on Solaris |  Critical | build, c client | Tadeusz Andrzej Kadłubowski | Chris Nauroth |
| [ZOOKEEPER-2186](https://issues.apache.org/jira/browse/ZOOKEEPER-2186) | QuorumCnxManager#receiveConnection may crash with random input |  Major | server | Raúl Gutiérrez Segalés | Raúl Gutiérrez Segalés |
| [ZOOKEEPER-2124](https://issues.apache.org/jira/browse/ZOOKEEPER-2124) | Allow Zookeeper version string to have underscore '\_' |  Major | . | Jerry He | Chris Nauroth |
| [ZOOKEEPER-2096](https://issues.apache.org/jira/browse/ZOOKEEPER-2096) | C client builds with incorrect error codes in VisualStudio 2010+ |  Major | build, c client | Vitaly Stakhovsky | Vitaly Stakhovsky |
| [ZOOKEEPER-2201](https://issues.apache.org/jira/browse/ZOOKEEPER-2201) | Network issues can cause cluster to hang due to near-deadlock |  Critical | . | Donny Nadolny | Donny Nadolny |
| [ZOOKEEPER-2213](https://issues.apache.org/jira/browse/ZOOKEEPER-2213) | Empty path in Set crashes server and prevents restart |  Blocker | server | Brian Brazil | Hongchao Deng |
| [ZOOKEEPER-706](https://issues.apache.org/jira/browse/ZOOKEEPER-706) | large numbers of watches can cause session re-establishment to fail |  Critical | c client, java client | Patrick D. Hunt | Chris Thunes |
| [ZOOKEEPER-602](https://issues.apache.org/jira/browse/ZOOKEEPER-602) | log all exceptions not caught by ZK threads |  Blocker | java client, server | Patrick D. Hunt | Rakesh Radhakrishnan |
| [ZOOKEEPER-2224](https://issues.apache.org/jira/browse/ZOOKEEPER-2224) | Four letter command hangs when network is slow |  Minor | java client | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-1927](https://issues.apache.org/jira/browse/ZOOKEEPER-1927) | zkServer.sh fails to read dataDir (and others) from zoo.cfg on Solaris 10 (grep issue, manifests as FAILED TO WRITE PID). |  Major | scripts | Ed Schmed | Chris Nauroth |
| [ZOOKEEPER-2033](https://issues.apache.org/jira/browse/ZOOKEEPER-2033) | zookeeper follower fails to start after a restart immediately following a new epoch |  Major | quorum | Asad Saeed | Asad Saeed |
| [ZOOKEEPER-2256](https://issues.apache.org/jira/browse/ZOOKEEPER-2256) | Zookeeper is not using specified JMX port in zkEnv.sh |  Minor | scripts | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2245](https://issues.apache.org/jira/browse/ZOOKEEPER-2245) | SimpleSysTest test cases fails |  Major | . | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2279](https://issues.apache.org/jira/browse/ZOOKEEPER-2279) | QuorumPeer  loadDataBase() error message is incorrect |  Major | quorum | sunhaitao | Mohammad Arshad |
| [ZOOKEEPER-1803](https://issues.apache.org/jira/browse/ZOOKEEPER-1803) | Add description for pzxid in programmer's guide. |  Major | documentation | Leader Ni | Mohammad Arshad |
| [ZOOKEEPER-2268](https://issues.apache.org/jira/browse/ZOOKEEPER-2268) | Zookeeper doc creation fails on windows |  Major | build | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2296](https://issues.apache.org/jira/browse/ZOOKEEPER-2296) | compilation broken for 3.4 |  Blocker | . | Raúl Gutiérrez Segalés | Raúl Gutiérrez Segalés |
| [ZOOKEEPER-2239](https://issues.apache.org/jira/browse/ZOOKEEPER-2239) | JMX State from LocalPeerBean incorrect |  Major | jmx | Kevin Lee | Kevin Lee |
| [ZOOKEEPER-2142](https://issues.apache.org/jira/browse/ZOOKEEPER-2142) | JMX ObjectName is incorrect for observers |  Trivial | . | Karol Dudzinski | Edward Ribeiro |
| [ZOOKEEPER-1833](https://issues.apache.org/jira/browse/ZOOKEEPER-1833) | fix windows build |  Blocker | . | Michi Mutsuzaki | Michi Mutsuzaki |
| [ZOOKEEPER-1853](https://issues.apache.org/jira/browse/ZOOKEEPER-1853) | zkCli.sh can't issue a CREATE command containing spaces in the data |  Minor | java client | sekine coulibaly | Ryan Lamore |
| [ZOOKEEPER-2227](https://issues.apache.org/jira/browse/ZOOKEEPER-2227) | stmk four-letter word fails execution at server while reading trace mask argument. |  Major | server | Chris Nauroth | Chris Nauroth |
| [ZOOKEEPER-1029](https://issues.apache.org/jira/browse/ZOOKEEPER-1029) | C client bug in zookeeper\_init (if bad hostname is given) |  Blocker | c client | Dheeraj Agrawal | Flavio Paiva Junqueira |
| [ZOOKEEPER-2235](https://issues.apache.org/jira/browse/ZOOKEEPER-2235) | License update |  Blocker | . | Flavio Paiva Junqueira | Flavio Paiva Junqueira |
| [ZOOKEEPER-3016](https://issues.apache.org/jira/browse/ZOOKEEPER-3016) | Follower QuorumCnxManager$Listener thread died due to incorrect client packet |  Major | . | sumit agrawal |  |
| [ZOOKEEPER-2319](https://issues.apache.org/jira/browse/ZOOKEEPER-2319) | UnresolvedAddressException cause the QuorumCnxManager.Listener exit |  Major | . | Zhaohui Yu | Michael Han |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1904](https://issues.apache.org/jira/browse/ZOOKEEPER-1904) | WatcherTest#testWatchAutoResetWithPending is failing |  Major | tests | Rakesh Radhakrishnan | Rakesh Radhakrishnan |
| [ZOOKEEPER-2047](https://issues.apache.org/jira/browse/ZOOKEEPER-2047) | testTruncationNullLog fails on windows |  Major | tests | Flavio Paiva Junqueira | Flavio Paiva Junqueira |
| [ZOOKEEPER-2237](https://issues.apache.org/jira/browse/ZOOKEEPER-2237) | Port async multi to 3.4 branch |  Major | java client | Ivan Kelly | Ivan Kelly |
| [ZOOKEEPER-2271](https://issues.apache.org/jira/browse/ZOOKEEPER-2271) | Allow MBeanRegistry to be overridden for better unit tests in 3.4.x |  Major | server | Jordan Zimmerman | Jordan Zimmerman |
| [ZOOKEEPER-1872](https://issues.apache.org/jira/browse/ZOOKEEPER-1872) | QuorumPeer is not shutdown in few cases |  Major | . | Rakesh Radhakrishnan | Rakesh Radhakrishnan |


