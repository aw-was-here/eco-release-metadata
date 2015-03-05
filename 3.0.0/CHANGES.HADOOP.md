# Hadoop Changelog

## Release 3.0.0 - 2015-03-04

### INCOMPATIBLE CHANGES:

| JIRA | Description | Contributor |
|:---- |:---- | :--- |
| HADOOP-11657 | Align the output of `hadoop fs -du` to be more Unix-like | Akira AJISAKA |
| HADOOP-11356 | Removed deprecated o.a.h.fs.permission.AccessControlException | Li Lu |
| HADOOP-11041 | VersionInfo output specifies subversion | Tsuyoshi Ozawa |
| HADOOP-10950 | rework  heap management  vars | John Smith |
| HADOOP-10474 | Move o.a.h.record to hadoop-streaming | Haohui Mai |
| HADOOP-9902 | Shell script rewrite | Allen Wittenauer |
| HADOOP-8124 | Remove the deprecated Syncable.sync() method | Tsz Wo Nicholas Sze |
| HADOOP-6857 | FsShell should report raw disk usage including replication factor | Byron Wong |
### NEW FEATURES:

| JIRA | Description | Contributor |
|:---- |:---- | :--- |
| HADOOP-11565 | Add --slaves shell option | Allen Wittenauer |
| HADOOP-11554 | Expose HadoopKerberosName as a hadoop subcommand | Allen Wittenauer |
| HADOOP-11485 | Pluggable shell integration | Allen Wittenauer |
| HADOOP-11353 | Add support for .hadooprc | Allen Wittenauer |
| HADOOP-11084 | jenkins patchprocess links are broken | Arpit Agarwal |
| HADOOP-11013 | CLASSPATH handling should be consolidated, debuggable | Allen Wittenauer |
| HADOOP-9044 | add FindClass main class to provide classpath checking of installations | Steve Loughran |
| HADOOP-8934 | Shell command ls should include sort options | Jonathan Allen |
| HADOOP-6590 | Add a username check for hadoop sub-commands | John Smith |
### IMPROVEMENTS:

| JIRA | Description | Contributor |
|:---- |:---- | :--- |
| HADOOP-11596 | Allow smart-apply-patch.sh to add new files in binary git patches | Ravi Prakash |
| HADOOP-11593 | Convert site documentation from apt to markdown (stragglers) | Masatake Iwasaki |
| HADOOP-11575 | Daemon log documentation is misleading | Naganarasimha G R |
| HADOOP-11460 | Deprecate shell vars | John Smith |
| HADOOP-11352 | Clean up test-patch.sh to disable "+1 contrib tests" | Akira AJISAKA |
| HADOOP-11346 | Rewrite sls/rumen to use new shell framework | John Smith |
| HADOOP-11208 | Replace "daemon" with better name in script subcommands | Allen Wittenauer |
| HADOOP-11150 | hadoop command should show the reason on failure by invalid COMMAND or CLASSNAME | Masatake Iwasaki |
| HADOOP-11092 | hadoop shell commands should print usage if not given a class | Allen Wittenauer |
| HADOOP-11081 | Document hadoop properties expected to be set by the shell code in *-env.sh | Allen Wittenauer |
| HADOOP-11058 | Missing HADOOP_CONF_DIR generates strange results | Masatake Iwasaki |
| HADOOP-11025 | hadoop-daemons.sh should just call hdfs directly | Masatake Iwasaki |
| HADOOP-10926 | Improve smart-apply-patch.sh to apply binary diffs | Colin Patrick McCabe |
| HADOOP-10834 | Typo in CredentialShell usage | Benoy Antony |
| HADOOP-10485 | Remove dead classes in hadoop-streaming | Haohui Mai |
| HADOOP-9394 | Port findHangingTest.sh from HBase to Hadoop | Andrew Wang |
| HADOOP-9277 | Improve javadoc for FileContext | Andrew Wang |
| HADOOP-9121 | InodeTree.java has redundant check for vName while throwing exception | Arup Malakar |
| HADOOP-9075 | FileContext#FSLinkResolver should be made static | Arpit Agarwal |
| HADOOP-8920 | Add more javadoc to metrics2 related classes | Suresh Srinivas |
| HADOOP-8864 | Addendum to HADOOP-8840: Add a coloring case for +0 results too. | Harsh J |
| HADOOP-8838 | Colorize the test-patch output sent to JIRA | Harsh J |
| HADOOP-8813 | RPC Server and Client classes need InterfaceAudience and InterfaceStability annotations | Brandon Li |
| HADOOP-8776 | Provide an option in test-patch that can enable / disable compiling native code | Chris Nauroth |
| HADOOP-8719 | Workaround for kerberos-related log errors upon running any hadoop command on OSX | Jianbin Wei |
| HADOOP-8593 | add  the missed @Override to methods in Metric/Metric2 package | Brandon Li |
| HADOOP-8588 | SerializationFactory shouldn't throw a NullPointerException if the serializations list is empty | Sho Shimauchi |
| HADOOP-8523 | test-patch.sh doesn't validate patches before building | Jack Dintruff |
| HADOOP-8521 | Port StreamInputFormat to new Map Reduce API | madhukara phatak |
| HADOOP-8375 | test-patch should stop immediately once it has found compilation errors | Robert Joseph Evans |
| HADOOP-8312 | testpatch.sh should provide a simpler way to see which warnings changed | Robert Joseph Evans |
| HADOOP-8297 | Writable javadocs don't carry default constructor | Harsh J |
| HADOOP-8290 | Remove two remaining references to "hadoop.native.lib" oldprop | Harsh J |
| HADOOP-8147 | test-patch should run tests with -fn to avoid masking test failures | Robert Joseph Evans |
| HADOOP-8078 | Add capability to turn on security in unit tests. | Jaimin D Jetly |
| HADOOP-8059 | Add javadoc to InterfaceAudience and InterfaceStability | Brandon Li |
| HADOOP-8017 | Configure hadoop-main pom to get rid of M2E plugin execution not covered | Eric Charles |
| HADOOP-7930 | Kerberos relogin interval in UserGroupInformation should be configurable | Robert Kanter |
| HADOOP-7713 | dfs -count -q should label output column | Jonathan Allen |
| HADOOP-7659 | fs -getmerge isn't guaranteed to work well over non-HDFS filesystems | Harsh J |
| HADOOP-6964 | Allow compact property description in xml | Kengo Seki |
| HADOOP-6616 | Improve documentation for rack awareness | Adam Faris |
### BUG FIXES:

| JIRA | Description | Contributor |
|:---- |:---- | :--- |
| HADOOP-11637 | bash location hard-coded in shell scripts | Allen Wittenauer |
| HADOOP-11625 | Minor fixes to command manual &amp; SLA doc | Allen Wittenauer |
| HADOOP-11585 | Fix formatting in Tracing.md | Masatake Iwasaki |
| HADOOP-11583 | Fix syntax error in SecureMode.md | Masatake Iwasaki |
| HADOOP-11581 | Fix Multithreaded correctness Warnings #org.apache.hadoop.fs.shell.Ls | Brahma Reddy Battula |
| HADOOP-11580 | Remove SingleNodeSetup.md from trunk | Akira AJISAKA |
| HADOOP-11559 | Add links to RackAwareness and InterfaceClassification to site index | Masatake Iwasaki |
| HADOOP-11484 | hadoop-mapreduce-client-nativetask fails to build on ARM AARCH64 due to x86 asm statements | Edward Nevill |
| HADOOP-11473 | test-patch says "-1 overall" even when all checks are +1 | Jason Lowe |
| HADOOP-11437 | Remove the version and author information from distcp's README file | Brahma Reddy Battula |
| HADOOP-11397 | Can't override HADOOP_IDENT_STRING | Kengo Seki |
| HADOOP-11380 | Restore Rack Awareness documentation | Allen Wittenauer |
| HADOOP-11298 | slaves.sh and stop-all.sh are missing slashes  | Allen Wittenauer |
| HADOOP-11296 | hadoop-daemons.sh throws 'host1: bash: host3: command not found...' | Vinayakumar B |
| HADOOP-11284 | Fix variable name mismatches in hadoop-functions.sh | Masatake Iwasaki |
| HADOOP-11240 | Jenkins build seems to be broken by changes in test-patch.sh | Steve Loughran |
| HADOOP-11055 | non-daemon pid files are missing | Allen Wittenauer |
| HADOOP-11052 | hadoop_verify_secure_prereq's results aren't checked in bin/hdfs | Allen Wittenauer |
| HADOOP-11033 | shell scripts ignore JAVA_HOME on OS X | Allen Wittenauer |
| HADOOP-11022 | User replaced functions get lost 2-3 levels deep (e.g., sbin) | Allen Wittenauer |
| HADOOP-11002 | shell escapes are incompatible with previous releases | Allen Wittenauer |
| HADOOP-10996 | Stop violence in the *_HOME | Allen Wittenauer |
| HADOOP-10908 | Common needs updates for shell rewrite | Allen Wittenauer |
| HADOOP-10831 | UserProvider is not thread safe | Benoy Antony |
| HADOOP-10774 | Update KerberosTestUtils for hadoop-auth tests when using IBM Java | sangamesh |
| HADOOP-10325 | improve jenkins javadoc warnings from test-patch.sh | Colin Patrick McCabe |
| HADOOP-9583 | test-patch gives +1 despite build failure when running tests | Jason Lowe |
| HADOOP-9433 | TestLocalFileSystem#testHasFileDescriptor leaks file handle | Chris Nauroth |
| HADOOP-9431 | TestSecurityUtil#testLocalHostNameForNullOrWild on systems where hostname contains capital letters | Chris Nauroth |
| HADOOP-9393 | TestRPC fails with JDK7 | Andrew Wang |
| HADOOP-9265 | S3 blockstore filesystem breaks part of the Filesystem contract | Steve Loughran |
| HADOOP-9261 | S3n filesystem can move a directory under itself -and so lose data | Steve Loughran |
| HADOOP-9249 | hadoop-maven-plugins version-info goal causes build failure when running with Clover | Chris Nauroth |
| HADOOP-9202 | test-patch.sh fails during mvn eclipse:eclipse if patch adds a new module to the build | Chris Nauroth |
| HADOOP-9186 | test-patch.sh should report build failure to JIRA | Binglin Chang |
| HADOOP-9139 | improve script hadoop-common-project/hadoop-common/src/test/resources/kdc/killKdc.sh | Ivan A. Veselovsky |
| HADOOP-9037 | Bug in test-patch.sh and precommit build process | Kihwal Lee |
| HADOOP-8974 | TestDFVariations fails on Windows | Chris Nauroth |
| HADOOP-8918 | dev-support/test-patch.sh is parsing modified files wrong | Raja Aluri |
| HADOOP-8910 | Add examples to GlobExpander#expand method | Suresh Srinivas |
| HADOOP-8840 | Fix the test-patch colorizer to cover all sorts of +1 lines. | Harsh J |
| HADOOP-8839 | test-patch's -1 on @author tag presence doesn't cause a -1 to the overall result | Harsh J |
| HADOOP-8821 | Findbugs warning Configuration.dumpDeprecatedKeys() concatenates strings using + in a loop | Suresh Srinivas |
| HADOOP-8818 | Should use equals() rather than == to compare String or Text in MD5MD5CRC32FileChecksum and TFileDumper | Brandon Li |
| HADOOP-8584 | test-patch.sh should not immediately exit when no tests are added or modified | Colin Patrick McCabe |
| HADOOP-8548 | test-patch.sh shows an incorrect link in Jekins builds | Kihwal Lee |
| HADOOP-8436 | NPE In getLocalPathForWrite ( path, conf ) when the required context item is not configured | Brahma Reddy Battula |
| HADOOP-8413 | test-patch.sh gives out the wrong links for newPatchFindbugsWarnings | Colin Patrick McCabe |
| HADOOP-8395 | Text shell command unnecessarily demands that a SequenceFile's key class be WritableComparable | Harsh J |
| HADOOP-8360 | empty-configuration.xml fails xml validation | Radim Kolar |
| HADOOP-8354 | test-patch findbugs may fail if a dependent module is changed | Robert Joseph Evans |
| HADOOP-8339 | jenkins complaining about 16 javadoc warnings  | Robert Joseph Evans |
| HADOOP-8177 | MBeans shouldn't try to register when it fails to create MBeanName | Devaraj K |
| HADOOP-8151 | Error handling in snappy decompressor throws invalid exceptions | Matt Foley |
| HADOOP-7769 | TestJMXJsonServlet is failing | Tom White |
| HADOOP-7757 | Test file reference count is at least 3x actual value | Jonathan Eagles |
| HADOOP-7704 | JsonFactory can be created only once and used for every next request to create JsonGenerator inside JMXJsonServlet  | Devaraj K |
| HADOOP-7256 | Resource leak during failure scenario of closing of resources.  | ramkrishna.s.vasudevan |
| HADOOP-6871 | When the value of a configuration key is set to its unresolved form, it causes the IllegalStateException in Configuration.get() stating that substitution depth is too large. | Arvind Prabhakar |
| HADOOP-6220 | HttpServer wraps InterruptedExceptions by IOExceptions if interrupted in startup | Steve Loughran |
### OTHER:

| JIRA | Description | Contributor |
|:---- |:---- | :--- |
| HADOOP-8844 | Add a plaintext fs -text test-case | Akira AJISAKA |
| HADOOP-8434 | TestConfiguration currently has no tests for direct setter methods | madhukara phatak |
| HADOOP-8308 | Support cross-project Jenkins builds | Tom White |


