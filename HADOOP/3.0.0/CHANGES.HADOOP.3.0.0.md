
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
# Hadoop Changelog

## Release 3.0.0 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-11731](https://issues.apache.org/jira/browse/HADOOP-11731) | Rework the changelog and releasenotes |  Major | documentation | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11657](https://issues.apache.org/jira/browse/HADOOP-11657) | Align the output of `hadoop fs -du` to be more Unix-like |  Minor | . | Nick Dimiduk | Akira AJISAKA |
| [HADOOP-11553](https://issues.apache.org/jira/browse/HADOOP-11553) | Formalize the shell API |  Blocker | documentation, scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11356](https://issues.apache.org/jira/browse/HADOOP-11356) | Removed deprecated o.a.h.fs.permission.AccessControlException |  Major | . | Haohui Mai | Li Lu |
| [HADOOP-11041](https://issues.apache.org/jira/browse/HADOOP-11041) | VersionInfo output specifies subversion |  Minor | build | Guo Ruijing | Tsuyoshi Ozawa |
| [HADOOP-10950](https://issues.apache.org/jira/browse/HADOOP-10950) | rework  heap management  vars |  Major | scripts | Allen Wittenauer | John Smith |
| [HADOOP-10474](https://issues.apache.org/jira/browse/HADOOP-10474) | Move o.a.h.record to hadoop-streaming |  Major | . | Haohui Mai | Haohui Mai |
| [HADOOP-10115](https://issues.apache.org/jira/browse/HADOOP-10115) | Exclude duplicate jars in hadoop package under different component's lib |  Major | build | Vinayakumar B | Vinayakumar B |
| [HADOOP-9902](https://issues.apache.org/jira/browse/HADOOP-9902) | Shell script rewrite |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-8124](https://issues.apache.org/jira/browse/HADOOP-8124) | Remove the deprecated Syncable.sync() method |  Major | fs | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-6857](https://issues.apache.org/jira/browse/HADOOP-6857) | FsShell should report raw disk usage including replication factor |  Major | fs | Alex Kozlov | Byron Wong |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-11565](https://issues.apache.org/jira/browse/HADOOP-11565) | Add --slaves shell option |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11554](https://issues.apache.org/jira/browse/HADOOP-11554) | Expose HadoopKerberosName as a hadoop subcommand |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11485](https://issues.apache.org/jira/browse/HADOOP-11485) | Pluggable shell integration |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11353](https://issues.apache.org/jira/browse/HADOOP-11353) | Add support for .hadooprc |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11084](https://issues.apache.org/jira/browse/HADOOP-11084) | jenkins patchprocess links are broken |  Major | scripts | Colin Patrick McCabe | Arpit Agarwal |
| [HADOOP-11013](https://issues.apache.org/jira/browse/HADOOP-11013) | CLASSPATH handling should be consolidated, debuggable |  Major | . | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-9642](https://issues.apache.org/jira/browse/HADOOP-9642) | Configuration to resolve environment variables via ${env.VARIABLE} references |  Minor | conf, scripts | Steve Loughran | Kengo Seki |
| [HADOOP-9044](https://issues.apache.org/jira/browse/HADOOP-9044) | add FindClass main class to provide classpath checking of installations |  Minor | util | Steve Loughran | Steve Loughran |
| [HADOOP-8934](https://issues.apache.org/jira/browse/HADOOP-8934) | Shell command ls should include sort options |  Minor | fs | Jonathan Allen | Jonathan Allen |
| [HADOOP-6590](https://issues.apache.org/jira/browse/HADOOP-6590) | Add a username check for hadoop sub-commands |  Minor | scripts | Scott Chen | John Smith |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-11673](https://issues.apache.org/jira/browse/HADOOP-11673) | Use org.junit.Assume to skip tests instead of return |  Minor | test | Akira AJISAKA | Brahma Reddy Battula |
| [HADOOP-11596](https://issues.apache.org/jira/browse/HADOOP-11596) | Allow smart-apply-patch.sh to add new files in binary git patches |  Major | . | Ravi Prakash | Ravi Prakash |
| [HADOOP-11593](https://issues.apache.org/jira/browse/HADOOP-11593) | Convert site documentation from apt to markdown (stragglers) |  Major | documentation | Allen Wittenauer | Masatake Iwasaki |
| [HADOOP-11575](https://issues.apache.org/jira/browse/HADOOP-11575) | Daemon log documentation is misleading |  Major | documentation | Jagadesh Kiran N | Naganarasimha G R |
| [HADOOP-11524](https://issues.apache.org/jira/browse/HADOOP-11524) | hadoop\_do\_classpath\_subcommand throws a shellcheck warning |  Minor | scripts | Allen Wittenauer | Chris Nauroth |
| [HADOOP-11460](https://issues.apache.org/jira/browse/HADOOP-11460) | Deprecate shell vars |  Major | scripts | Allen Wittenauer | John Smith |
| [HADOOP-11352](https://issues.apache.org/jira/browse/HADOOP-11352) | Clean up test-patch.sh to disable "+1 contrib tests" |  Major | build | Akira AJISAKA | Akira AJISAKA |
| [HADOOP-11346](https://issues.apache.org/jira/browse/HADOOP-11346) | Rewrite sls/rumen to use new shell framework |  Major | scripts, tools | Allen Wittenauer | John Smith |
| [HADOOP-11208](https://issues.apache.org/jira/browse/HADOOP-11208) | Replace "daemon" with better name in script subcommands |  Major | scripts | Yongjun Zhang | Allen Wittenauer |
| [HADOOP-11150](https://issues.apache.org/jira/browse/HADOOP-11150) | hadoop command should show the reason on failure by invalid COMMAND or CLASSNAME |  Minor | scripts | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11092](https://issues.apache.org/jira/browse/HADOOP-11092) | hadoop shell commands should print usage if not given a class |  Major | scripts | Bruno Mahé | Allen Wittenauer |
| [HADOOP-11081](https://issues.apache.org/jira/browse/HADOOP-11081) | Document hadoop properties expected to be set by the shell code in *-env.sh |  Major | documentation, scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11058](https://issues.apache.org/jira/browse/HADOOP-11058) | Missing HADOOP\_CONF\_DIR generates strange results |  Major | scripts | Allen Wittenauer | Masatake Iwasaki |
| [HADOOP-11025](https://issues.apache.org/jira/browse/HADOOP-11025) | hadoop-daemons.sh should just call hdfs directly |  Major | scripts | Allen Wittenauer | Masatake Iwasaki |
| [HADOOP-10926](https://issues.apache.org/jira/browse/HADOOP-10926) | Improve smart-apply-patch.sh to apply binary diffs |  Major | . | Andrew Wang | Colin Patrick McCabe |
| [HADOOP-10834](https://issues.apache.org/jira/browse/HADOOP-10834) | Typo in CredentialShell usage |  Minor | security | Benoy Antony | Benoy Antony |
| [HADOOP-10485](https://issues.apache.org/jira/browse/HADOOP-10485) | Remove dead classes in hadoop-streaming |  Major | tools | Haohui Mai | Haohui Mai |
| [HADOOP-10044](https://issues.apache.org/jira/browse/HADOOP-10044) | Improve the javadoc of rpc code |  Minor | . | Sanjay Radia | Sanjay Radia |
| [HADOOP-9394](https://issues.apache.org/jira/browse/HADOOP-9394) | Port findHangingTest.sh from HBase to Hadoop |  Minor | . | Andrew Wang | Andrew Wang |
| [HADOOP-9277](https://issues.apache.org/jira/browse/HADOOP-9277) | Improve javadoc for FileContext |  Minor | . | Andrew Wang | Andrew Wang |
| [HADOOP-9121](https://issues.apache.org/jira/browse/HADOOP-9121) | InodeTree.java has redundant check for vName while throwing exception |  Trivial | fs | Arup Malakar | Arup Malakar |
| [HADOOP-9075](https://issues.apache.org/jira/browse/HADOOP-9075) | FileContext#FSLinkResolver should be made static |  Minor | . | Suresh Srinivas | Arpit Agarwal |
| [HADOOP-8920](https://issues.apache.org/jira/browse/HADOOP-8920) | Add more javadoc to metrics2 related classes |  Minor | metrics | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-8864](https://issues.apache.org/jira/browse/HADOOP-8864) | Addendum to HADOOP-8840: Add a coloring case for +0 results too. |  Trivial | . | Harsh J | Harsh J |
| [HADOOP-8838](https://issues.apache.org/jira/browse/HADOOP-8838) | Colorize the test-patch output sent to JIRA |  Trivial | build | Harsh J | Harsh J |
| [HADOOP-8813](https://issues.apache.org/jira/browse/HADOOP-8813) | RPC Server and Client classes need InterfaceAudience and InterfaceStability annotations |  Trivial | ipc | Brandon Li | Brandon Li |
| [HADOOP-8776](https://issues.apache.org/jira/browse/HADOOP-8776) | Provide an option in test-patch that can enable / disable compiling native code |  Minor | build | Hemanth Yamijala | Chris Nauroth |
| [HADOOP-8719](https://issues.apache.org/jira/browse/HADOOP-8719) | Workaround for kerberos-related log errors upon running any hadoop command on OSX |  Trivial | scripts | Jianbin Wei | Jianbin Wei |
| [HADOOP-8593](https://issues.apache.org/jira/browse/HADOOP-8593) | add  the missed @Override to methods in Metric/Metric2 package |  Minor | metrics | Brandon Li | Brandon Li |
| [HADOOP-8588](https://issues.apache.org/jira/browse/HADOOP-8588) | SerializationFactory shouldn't throw a NullPointerException if the serializations list is empty |  Minor | io | Harsh J | Sho Shimauchi |
| [HADOOP-8523](https://issues.apache.org/jira/browse/HADOOP-8523) | test-patch.sh doesn't validate patches before building |  Minor | build | Jack Dintruff | Jack Dintruff |
| [HADOOP-8521](https://issues.apache.org/jira/browse/HADOOP-8521) | Port StreamInputFormat to new Map Reduce API |  Major | . | madhukara phatak | madhukara phatak |
| [HADOOP-8375](https://issues.apache.org/jira/browse/HADOOP-8375) | test-patch should stop immediately once it has found compilation errors |  Major | build | Tsz Wo Nicholas Sze | Robert Joseph Evans |
| [HADOOP-8312](https://issues.apache.org/jira/browse/HADOOP-8312) | testpatch.sh should provide a simpler way to see which warnings changed |  Major | scripts | Robert Joseph Evans | Robert Joseph Evans |
| [HADOOP-8297](https://issues.apache.org/jira/browse/HADOOP-8297) | Writable javadocs don't carry default constructor |  Trivial | documentation | Harsh J | Harsh J |
| [HADOOP-8290](https://issues.apache.org/jira/browse/HADOOP-8290) | Remove two remaining references to "hadoop.native.lib" oldprop |  Trivial | test | Harsh J | Harsh J |
| [HADOOP-8147](https://issues.apache.org/jira/browse/HADOOP-8147) | test-patch should run tests with -fn to avoid masking test failures |  Major | test | Robert Joseph Evans | Robert Joseph Evans |
| [HADOOP-8078](https://issues.apache.org/jira/browse/HADOOP-8078) | Add capability to turn on security in unit tests. |  Major | test | Jitendra Nath Pandey | Jaimin D Jetly |
| [HADOOP-8017](https://issues.apache.org/jira/browse/HADOOP-8017) | Configure hadoop-main pom to get rid of M2E plugin execution not covered |  Major | build | Eric Charles | Eric Charles |
| [HADOOP-7930](https://issues.apache.org/jira/browse/HADOOP-7930) | Kerberos relogin interval in UserGroupInformation should be configurable |  Major | security | Alejandro Abdelnur | Robert Kanter |
| [HADOOP-7659](https://issues.apache.org/jira/browse/HADOOP-7659) | fs -getmerge isn't guaranteed to work well over non-HDFS filesystems |  Minor | fs | Harsh J | Harsh J |
| [HADOOP-6964](https://issues.apache.org/jira/browse/HADOOP-6964) | Allow compact property description in xml |  Major | conf | Owen O'Malley | Kengo Seki |
| [HADOOP-6616](https://issues.apache.org/jira/browse/HADOOP-6616) | Improve documentation for rack awareness |  Major | documentation | Jeff Hammerbacher | Adam Faris |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-11797](https://issues.apache.org/jira/browse/HADOOP-11797) | releasedocmaker.py needs to put ASF headers on output |  Major | build | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11703](https://issues.apache.org/jira/browse/HADOOP-11703) | git should ignore .DS\_Store files on Mac OS X |  Major | . | Abin Shahab | Abin Shahab |
| [HADOOP-11668](https://issues.apache.org/jira/browse/HADOOP-11668) | hadoop-daemons.sh bw compat broke with --slaves change |  Major | scripts | Vinayakumar B | Vinayakumar B |
| [HADOOP-11653](https://issues.apache.org/jira/browse/HADOOP-11653) | shellprofiles should require .sh extension |  Major | scripts | Allen Wittenauer | Brahma Reddy Battula |
| [HADOOP-11637](https://issues.apache.org/jira/browse/HADOOP-11637) | bash location hard-coded in shell scripts |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11625](https://issues.apache.org/jira/browse/HADOOP-11625) | Minor fixes to command manual & SLA doc |  Major | documentation | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11585](https://issues.apache.org/jira/browse/HADOOP-11585) | Fix formatting in Tracing.md |  Trivial | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11583](https://issues.apache.org/jira/browse/HADOOP-11583) | Fix syntax error in SecureMode.md |  Trivial | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11581](https://issues.apache.org/jira/browse/HADOOP-11581) | Fix Multithreaded correctness Warnings #org.apache.hadoop.fs.shell.Ls |  Major | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [HADOOP-11580](https://issues.apache.org/jira/browse/HADOOP-11580) | Remove SingleNodeSetup.md from trunk |  Major | documentation | Allen Wittenauer | Akira AJISAKA |
| [HADOOP-11559](https://issues.apache.org/jira/browse/HADOOP-11559) | Add links to RackAwareness and InterfaceClassification to site index |  Minor | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11484](https://issues.apache.org/jira/browse/HADOOP-11484) | hadoop-mapreduce-client-nativetask fails to build on ARM AARCH64 due to x86 asm statements |  Minor | native | Edward Nevill | Edward Nevill |
| [HADOOP-11473](https://issues.apache.org/jira/browse/HADOOP-11473) | test-patch says "-1 overall" even when all checks are +1 |  Major | build | Jason Lowe | Jason Lowe |
| [HADOOP-11437](https://issues.apache.org/jira/browse/HADOOP-11437) | Remove the version and author information from distcp's README file |  Major | documentation | Allen Wittenauer | Brahma Reddy Battula |
| [HADOOP-11397](https://issues.apache.org/jira/browse/HADOOP-11397) | Can't override HADOOP\_IDENT\_STRING |  Trivial | . | Allen Wittenauer | Kengo Seki |
| [HADOOP-11380](https://issues.apache.org/jira/browse/HADOOP-11380) | Restore Rack Awareness documentation |  Major | . | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11298](https://issues.apache.org/jira/browse/HADOOP-11298) | slaves.sh and stop-all.sh are missing slashes |  Trivial | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11296](https://issues.apache.org/jira/browse/HADOOP-11296) | hadoop-daemons.sh throws 'host1: bash: host3: command not found...' |  Major | scripts | Vinayakumar B | Vinayakumar B |
| [HADOOP-11284](https://issues.apache.org/jira/browse/HADOOP-11284) | Fix variable name mismatches in hadoop-functions.sh |  Minor | scripts | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11240](https://issues.apache.org/jira/browse/HADOOP-11240) | Jenkins build seems to be broken by changes in test-patch.sh |  Blocker | . | Zhijie Shen | Steve Loughran |
| [HADOOP-11055](https://issues.apache.org/jira/browse/HADOOP-11055) | non-daemon pid files are missing |  Blocker | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11052](https://issues.apache.org/jira/browse/HADOOP-11052) | hadoop\_verify\_secure\_prereq's results aren't checked in bin/hdfs |  Critical | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11033](https://issues.apache.org/jira/browse/HADOOP-11033) | shell scripts ignore JAVA\_HOME on OS X |  Major | scripts | Lei (Eddy) Xu | Allen Wittenauer |
| [HADOOP-11022](https://issues.apache.org/jira/browse/HADOOP-11022) | User replaced functions get lost 2-3 levels deep (e.g., sbin) |  Critical | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11002](https://issues.apache.org/jira/browse/HADOOP-11002) | shell escapes are incompatible with previous releases |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-10996](https://issues.apache.org/jira/browse/HADOOP-10996) | Stop violence in the *\_HOME |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-10908](https://issues.apache.org/jira/browse/HADOOP-10908) | Common needs updates for shell rewrite |  Major | documentation | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-10831](https://issues.apache.org/jira/browse/HADOOP-10831) | UserProvider is not thread safe |  Major | security | Benoy Antony | Benoy Antony |
| [HADOOP-10774](https://issues.apache.org/jira/browse/HADOOP-10774) | Update KerberosTestUtils for hadoop-auth tests when using IBM Java |  Major | security | sangamesh | sangamesh |
| [HADOOP-10325](https://issues.apache.org/jira/browse/HADOOP-10325) | improve jenkins javadoc warnings from test-patch.sh |  Major | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-9583](https://issues.apache.org/jira/browse/HADOOP-9583) | test-patch gives +1 despite build failure when running tests |  Critical | . | Jason Lowe | Jason Lowe |
| [HADOOP-9433](https://issues.apache.org/jira/browse/HADOOP-9433) | TestLocalFileSystem#testHasFileDescriptor leaks file handle |  Major | fs, test | Chris Nauroth | Chris Nauroth |
| [HADOOP-9431](https://issues.apache.org/jira/browse/HADOOP-9431) | TestSecurityUtil#testLocalHostNameForNullOrWild on systems where hostname contains capital letters |  Trivial | security, test | Chris Nauroth | Chris Nauroth |
| [HADOOP-9393](https://issues.apache.org/jira/browse/HADOOP-9393) | TestRPC fails with JDK7 |  Major | . | Andrew Wang | Andrew Wang |
| [HADOOP-9265](https://issues.apache.org/jira/browse/HADOOP-9265) | S3 blockstore filesystem breaks part of the Filesystem contract |  Major | fs/s3 | Steve Loughran | Steve Loughran |
| [HADOOP-9261](https://issues.apache.org/jira/browse/HADOOP-9261) | S3n filesystem can move a directory under itself -and so lose data |  Major | fs/s3 | Steve Loughran | Steve Loughran |
| [HADOOP-9249](https://issues.apache.org/jira/browse/HADOOP-9249) | hadoop-maven-plugins version-info goal causes build failure when running with Clover |  Major | build | Chris Nauroth | Chris Nauroth |
| [HADOOP-9202](https://issues.apache.org/jira/browse/HADOOP-9202) | test-patch.sh fails during mvn eclipse:eclipse if patch adds a new module to the build |  Major | build | Chris Nauroth | Chris Nauroth |
| [HADOOP-9186](https://issues.apache.org/jira/browse/HADOOP-9186) | test-patch.sh should report build failure to JIRA |  Major | . | Binglin Chang | Binglin Chang |
| [HADOOP-9139](https://issues.apache.org/jira/browse/HADOOP-9139) | improve script hadoop-common-project/hadoop-common/src/test/resources/kdc/killKdc.sh |  Minor | . | Ivan A. Veselovsky | Ivan A. Veselovsky |
| [HADOOP-9037](https://issues.apache.org/jira/browse/HADOOP-9037) | Bug in test-patch.sh and precommit build process |  Critical | build | Kihwal Lee | Kihwal Lee |
| [HADOOP-8974](https://issues.apache.org/jira/browse/HADOOP-8974) | TestDFVariations fails on Windows |  Major | fs | Chris Nauroth | Chris Nauroth |
| [HADOOP-8918](https://issues.apache.org/jira/browse/HADOOP-8918) | dev-support/test-patch.sh is parsing modified files wrong |  Major | build | Raja Aluri | Raja Aluri |
| [HADOOP-8910](https://issues.apache.org/jira/browse/HADOOP-8910) | Add examples to GlobExpander#expand method |  Minor | fs | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-8840](https://issues.apache.org/jira/browse/HADOOP-8840) | Fix the test-patch colorizer to cover all sorts of +1 lines. |  Major | build | Harsh J | Harsh J |
| [HADOOP-8839](https://issues.apache.org/jira/browse/HADOOP-8839) | test-patch's -1 on @author tag presence doesn't cause a -1 to the overall result |  Trivial | build | Harsh J | Harsh J |
| [HADOOP-8821](https://issues.apache.org/jira/browse/HADOOP-8821) | Findbugs warning Configuration.dumpDeprecatedKeys() concatenates strings using + in a loop |  Trivial | . | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-8818](https://issues.apache.org/jira/browse/HADOOP-8818) | Should use equals() rather than == to compare String or Text in MD5MD5CRC32FileChecksum and TFileDumper |  Minor | fs, io | Brandon Li | Brandon Li |
| [HADOOP-8584](https://issues.apache.org/jira/browse/HADOOP-8584) | test-patch.sh should not immediately exit when no tests are added or modified |  Major | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-8548](https://issues.apache.org/jira/browse/HADOOP-8548) | test-patch.sh shows an incorrect link in Jekins builds |  Major | build | Kihwal Lee | Kihwal Lee |
| [HADOOP-8436](https://issues.apache.org/jira/browse/HADOOP-8436) | NPE In getLocalPathForWrite ( path, conf ) when the required context item is not configured |  Major | fs | Brahma Reddy Battula | Brahma Reddy Battula |
| [HADOOP-8413](https://issues.apache.org/jira/browse/HADOOP-8413) | test-patch.sh gives out the wrong links for newPatchFindbugsWarnings |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-8395](https://issues.apache.org/jira/browse/HADOOP-8395) | Text shell command unnecessarily demands that a SequenceFile's key class be WritableComparable |  Trivial | util | Harsh J | Harsh J |
| [HADOOP-8360](https://issues.apache.org/jira/browse/HADOOP-8360) | empty-configuration.xml fails xml validation |  Minor | test | Radim Kolar | Radim Kolar |
| [HADOOP-8354](https://issues.apache.org/jira/browse/HADOOP-8354) | test-patch findbugs may fail if a dependent module is changed |  Major | build | Tom White | Robert Joseph Evans |
| [HADOOP-8339](https://issues.apache.org/jira/browse/HADOOP-8339) | jenkins complaining about 16 javadoc warnings |  Major | build | Thomas Graves | Robert Joseph Evans |
| [HADOOP-8177](https://issues.apache.org/jira/browse/HADOOP-8177) | MBeans shouldn't try to register when it fails to create MBeanName |  Minor | metrics | Devaraj K | Devaraj K |
| [HADOOP-8151](https://issues.apache.org/jira/browse/HADOOP-8151) | Error handling in snappy decompressor throws invalid exceptions |  Major | io, native | Todd Lipcon | Matt Foley |
| [HADOOP-7769](https://issues.apache.org/jira/browse/HADOOP-7769) | TestJMXJsonServlet is failing |  Major | . | Tom White | Tom White |
| [HADOOP-7757](https://issues.apache.org/jira/browse/HADOOP-7757) | Test file reference count is at least 3x actual value |  Major | build | Jonathan Eagles | Jonathan Eagles |
| [HADOOP-7256](https://issues.apache.org/jira/browse/HADOOP-7256) | Resource leak during failure scenario of closing of resources. |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HADOOP-6871](https://issues.apache.org/jira/browse/HADOOP-6871) | When the value of a configuration key is set to its unresolved form, it causes the IllegalStateException in Configuration.get() stating that substitution depth is too large. |  Major | conf | Arvind Prabhakar | Arvind Prabhakar |
| [HADOOP-6220](https://issues.apache.org/jira/browse/HADOOP-6220) | HttpServer wraps InterruptedExceptions by IOExceptions if interrupted in startup |  Minor | util | Steve Loughran | Steve Loughran |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-11781](https://issues.apache.org/jira/browse/HADOOP-11781) | fix race conditions and add URL support to smart-apply-patch.sh |  Major | test | Allen Wittenauer | Raymie Stata |
| [HADOOP-8844](https://issues.apache.org/jira/browse/HADOOP-8844) | Add a plaintext fs -text test-case |  Major | fs | Harsh J | Akira AJISAKA |
| [HADOOP-8434](https://issues.apache.org/jira/browse/HADOOP-8434) | TestConfiguration currently has no tests for direct setter methods |  Major | . | Harsh J | madhukara phatak |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-8308](https://issues.apache.org/jira/browse/HADOOP-8308) | Support cross-project Jenkins builds |  Major | build | Tom White | Tom White |


