
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

## Release 2.8.0 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-11772](https://issues.apache.org/jira/browse/HADOOP-11772) | RPC Invoker relies on static ClientCache which has synchronized(this) blocks |  Major | ipc, performance | Gopal V | Haohui Mai |
| [HADOOP-11746](https://issues.apache.org/jira/browse/HADOOP-11746) | rewrite test-patch.sh |  Major | build, test | Allen Wittenauer | Allen Wittenauer |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-11843](https://issues.apache.org/jira/browse/HADOOP-11843) | Make setting up the build environment easier |  Major | build | Niels Basjes | Niels Basjes |
| [HADOOP-10971](https://issues.apache.org/jira/browse/HADOOP-10971) | Add -C flag to make `hadoop fs -ls` print filenames only |  Major | fs | Ryan Williams | Kengo Seki |
| [HADOOP-9477](https://issues.apache.org/jira/browse/HADOOP-9477) | Add posixGroups support for LDAP groups mapping service |  Major | . | Kai Zheng | Dapeng Sun |
| [HADOOP-8934](https://issues.apache.org/jira/browse/HADOOP-8934) | Shell command ls should include sort options |  Minor | fs | Jonathan Allen | Jonathan Allen |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-12059](https://issues.apache.org/jira/browse/HADOOP-12059) | S3Credentials should support use of CredentialProvider |  Major | . | Sean Busbey | Sean Busbey |
| [HADOOP-12055](https://issues.apache.org/jira/browse/HADOOP-12055) | Deprecate usage of NativeIO#link |  Major | native | Andrew Wang | Andrew Wang |
| [HADOOP-12043](https://issues.apache.org/jira/browse/HADOOP-12043) | Display warning if defaultFs is not set when running fs commands. |  Minor | fs | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HADOOP-11995](https://issues.apache.org/jira/browse/HADOOP-11995) | Make jetty version configurable from the maven command line |  Trivial | build, ld | sriharsha devineni | sriharsha devineni |
| [HADOOP-11971](https://issues.apache.org/jira/browse/HADOOP-11971) | Move test utilities for tracing from hadoop-hdfs to hadoop-common |  Minor | tracing | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11970](https://issues.apache.org/jira/browse/HADOOP-11970) | Replace uses of ThreadLocal\<Random\> with JDK7 ThreadLocalRandom |  Major | . | Sean Busbey | Sean Busbey |
| [HADOOP-11960](https://issues.apache.org/jira/browse/HADOOP-11960) | Enable Azure-Storage Client Side logging. |  Major | tools | Dushyanth | Dushyanth |
| [HADOOP-11950](https://issues.apache.org/jira/browse/HADOOP-11950) | Add cli option to test-patch to set the project-under-test |  Minor | . | Sean Busbey | Sean Busbey |
| [HADOOP-11948](https://issues.apache.org/jira/browse/HADOOP-11948) | test-patch's issue matching regex should be configurable. |  Major | . | Sean Busbey | Sean Busbey |
| [HADOOP-11939](https://issues.apache.org/jira/browse/HADOOP-11939) | Deprecate DistCpV1 and Logalyzer |  Major | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [HADOOP-11925](https://issues.apache.org/jira/browse/HADOOP-11925) | backport trunk's smart-apply-patch.sh to branch-2 |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11911](https://issues.apache.org/jira/browse/HADOOP-11911) | test-patch should allow configuration of default branch |  Minor | . | Sean Busbey | Sean Busbey |
| [HADOOP-11894](https://issues.apache.org/jira/browse/HADOOP-11894) | Bump the version of Apache HTrace to 3.2.0-incubating |  Major | . | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11827](https://issues.apache.org/jira/browse/HADOOP-11827) | Speed-up distcp buildListing() using threadpool |  Major | tools/distcp | Zoran Dimitrijevic | Zoran Dimitrijevic |
| [HADOOP-11812](https://issues.apache.org/jira/browse/HADOOP-11812) | Implement listLocatedStatus for ViewFileSystem to speed up split calculation |  Blocker | fs | Gera Shegalov | Gera Shegalov |
| [HADOOP-11785](https://issues.apache.org/jira/browse/HADOOP-11785) | Reduce number of listStatus operation in distcp buildListing() |  Minor | tools/distcp | Zoran Dimitrijevic | Zoran Dimitrijevic |
| [HADOOP-11741](https://issues.apache.org/jira/browse/HADOOP-11741) | Add LOG.isDebugEnabled() guard for some LOG.debug() |  Major | . | Walter Su | Walter Su |
| [HADOOP-11737](https://issues.apache.org/jira/browse/HADOOP-11737) | mockito's version in hadoop-nfs’ pom.xml shouldn't be specified |  Minor | nfs | Kengo Seki | Kengo Seki |
| [HADOOP-11719](https://issues.apache.org/jira/browse/HADOOP-11719) | [Fsshell] Remove bin/hadoop reference from GenericOptionsParser default help text |  Minor | scripts | Brahma Reddy Battula | Brahma Reddy Battula |
| [HADOOP-11717](https://issues.apache.org/jira/browse/HADOOP-11717) | Add Redirecting WebSSO behavior with JWT Token in Hadoop Auth |  Major | security | Larry McCay | Larry McCay |
| [HADOOP-11713](https://issues.apache.org/jira/browse/HADOOP-11713) | ViewFileSystem should support snapshot methods. |  Major | fs | Chris Nauroth | Rakesh R |
| [HADOOP-11711](https://issues.apache.org/jira/browse/HADOOP-11711) | Provide a default value for AES/CTR/NoPadding CryptoCodec classes |  Minor | . | Andrew Wang | Andrew Wang |
| [HADOOP-11709](https://issues.apache.org/jira/browse/HADOOP-11709) | Time.NANOSECONDS\_PER\_MILLISECOND - use class-level final constant instead of method variable |  Trivial | . | Ajith S | Ajith S |
| [HADOOP-11692](https://issues.apache.org/jira/browse/HADOOP-11692) | Improve authentication failure WARN message to avoid user confusion |  Major | ipc | Yongjun Zhang | Yongjun Zhang |
| [HADOOP-11660](https://issues.apache.org/jira/browse/HADOOP-11660) | Add support for hardware crc of HDFS checksums on ARM aarch64 architecture |  Minor | native | Edward Nevill | Edward Nevill |
| [HADOOP-11659](https://issues.apache.org/jira/browse/HADOOP-11659) | o.a.h.fs.FileSystem.Cache#remove should use a single hash map lookup |  Minor | fs | Gera Shegalov | Brahma Reddy Battula |
| [HADOOP-11594](https://issues.apache.org/jira/browse/HADOOP-11594) | Improve the readability of site index of documentation |  Minor | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11447](https://issues.apache.org/jira/browse/HADOOP-11447) | Add a more meaningful toString method to SampleStat and MutableStat |  Minor | metrics | Karthik Kambatla | Karthik Kambatla |
| [HADOOP-11357](https://issues.apache.org/jira/browse/HADOOP-11357) | Print information of the build enviornment in test-patch.sh |  Minor | scripts | Haohui Mai | Allen Wittenauer |
| [HADOOP-11242](https://issues.apache.org/jira/browse/HADOOP-11242) | Record the time of calling in tracing span of IPC server |  Minor | ipc | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11226](https://issues.apache.org/jira/browse/HADOOP-11226) | Add a configuration to set ipc.Client's traffic class with IPTOS\_LOWDELAY\|IPTOS\_RELIABILITY |  Major | ipc | Gopal V | Gopal V |
| [HADOOP-11103](https://issues.apache.org/jira/browse/HADOOP-11103) | Clean up RemoteException |  Trivial | ipc | Sean Busbey | Sean Busbey |
| [HADOOP-10366](https://issues.apache.org/jira/browse/HADOOP-10366) | Add whitespaces between the classes for values in core-default.xml to fit better in browser |  Minor | documentation | Chengwei Yang | kanaka kumar avvaru |
| [HADOOP-9805](https://issues.apache.org/jira/browse/HADOOP-9805) | Refactor RawLocalFileSystem#rename for improved testability. |  Minor | fs, test | Chris Nauroth | Jean-Pierre Matsumoto |
| [HADOOP-9737](https://issues.apache.org/jira/browse/HADOOP-9737) | JarFinder#getJar should delete the jar file upon destruction of the JVM |  Major | util | Esteban Gutierrez | Jean-Baptiste Onofré |
| [HADOOP-9723](https://issues.apache.org/jira/browse/HADOOP-9723) | Improve error message when hadoop archive output path already exists |  Trivial | . | Stephen Chu | Yongjun Zhang |
| [HADOOP-7713](https://issues.apache.org/jira/browse/HADOOP-7713) | dfs -count -q should label output column |  Trivial | . | Nigel Daley | Jonathan Allen |
| [HADOOP-6842](https://issues.apache.org/jira/browse/HADOOP-6842) | "hadoop fs -text" does not give a useful text representation of MapWritable objects |  Major | io | Steven Wong | Akira AJISAKA |
| [HADOOP-1540](https://issues.apache.org/jira/browse/HADOOP-1540) | Support file exclusion list in distcp |  Minor | util | Senthil Subramanian | Rich Haase |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-12095](https://issues.apache.org/jira/browse/HADOOP-12095) | org.apache.hadoop.fs.shell.TestCount fails |  Major | test | Brahma Reddy Battula | Brahma Reddy Battula |
| [HADOOP-12076](https://issues.apache.org/jira/browse/HADOOP-12076) | Incomplete Cache Mechanism in CredentialProvider API |  Major | security | Larry McCay | Larry McCay |
| [HADOOP-12074](https://issues.apache.org/jira/browse/HADOOP-12074) | in Shell.java#runCommand() rethrow InterruptedException as InterruptedIOException |  Trivial | . | Lavkesh Lahngir | Lavkesh Lahngir |
| [HADOOP-12073](https://issues.apache.org/jira/browse/HADOOP-12073) | Azure FileSystem PageBlobInputStream does not return -1 on EOF |  Major | tools | Ivan Mitic | Ivan Mitic |
| [HADOOP-12058](https://issues.apache.org/jira/browse/HADOOP-12058) | Fix dead links to DistCp and Hadoop Archives pages. |  Minor | documentation, site | Kazuho Fujii | Kazuho Fujii |
| [HADOOP-12056](https://issues.apache.org/jira/browse/HADOOP-12056) | Use DirectoryStream in DiskChecker#checkDirs to detect errors when listing a directory |  Major | util | zhihai xu | zhihai xu |
| [HADOOP-12054](https://issues.apache.org/jira/browse/HADOOP-12054) | RPC client should not retry for InvalidToken exceptions |  Critical | ipc | Daryn Sharp | Varun Saxena |
| [HADOOP-12052](https://issues.apache.org/jira/browse/HADOOP-12052) | IPC client downgrades all exception types to IOE, breaks callers trying to use them |  Critical | . | Steve Loughran | Brahma Reddy Battula |
| [HADOOP-12042](https://issues.apache.org/jira/browse/HADOOP-12042) | Users may see TrashPolicy if hdfs dfs -rm is run |  Major | . | Allen Wittenauer | J.Andreina |
| [HADOOP-12037](https://issues.apache.org/jira/browse/HADOOP-12037) | Fix wrong classname in example configuration of hadoop-auth documentation |  Trivial | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-12019](https://issues.apache.org/jira/browse/HADOOP-12019) | update BUILDING.txt to include python for 'mvn site' in windows |  Major | . | Vinayakumar B | Vinayakumar B |
| [HADOOP-12018](https://issues.apache.org/jira/browse/HADOOP-12018) | smart-apply-patch.sh fails if the patch edits CR+LF files and is created by 'git diff --no-prefix' |  Minor | build | Akira AJISAKA | Kengo Seki |
| [HADOOP-12014](https://issues.apache.org/jira/browse/HADOOP-12014) | hadoop-config.cmd displays a wrong error message |  Minor | scripts | Kengo Seki | Kengo Seki |
| [HADOOP-12004](https://issues.apache.org/jira/browse/HADOOP-12004) | test-patch breaks with reexec in certain situations |  Critical | . | Allen Wittenauer | Sean Busbey |
| [HADOOP-12001](https://issues.apache.org/jira/browse/HADOOP-12001) | Limiting LDAP search conflicts with posixGroup addition |  Blocker | security | Patrick White | Patrick White |
| [HADOOP-11994](https://issues.apache.org/jira/browse/HADOOP-11994) | smart-apply-patch wrongly assumes that git is infallible |  Major | test | Allen Wittenauer | Kengo Seki |
| [HADOOP-11991](https://issues.apache.org/jira/browse/HADOOP-11991) | test-patch.sh isn't re-executed even if smart-apply-patch.sh is modified |  Major | test | Kengo Seki | Kengo Seki |
| [HADOOP-11988](https://issues.apache.org/jira/browse/HADOOP-11988) | Fix typo in the document for hadoop fs -find |  Trivial | documentation | Akira AJISAKA | Kengo Seki |
| [HADOOP-11969](https://issues.apache.org/jira/browse/HADOOP-11969) | ThreadLocal initialization in several classes is not thread safe |  Critical | io | Sean Busbey | Sean Busbey |
| [HADOOP-11963](https://issues.apache.org/jira/browse/HADOOP-11963) | Metrics documentation for FSNamesystem misspells PendingDataNodeMessageCount. |  Trivial | documentation | Chris Nauroth | Anu Engineer |
| [HADOOP-11959](https://issues.apache.org/jira/browse/HADOOP-11959) | WASB should configure client side socket timeout in storage client blob request options |  Major | tools | Ivan Mitic | Ivan Mitic |
| [HADOOP-11955](https://issues.apache.org/jira/browse/HADOOP-11955) | Fix a typo in the cluster setup doc |  Trivial | . | Kihwal Lee | Yanjun Wang |
| [HADOOP-11951](https://issues.apache.org/jira/browse/HADOOP-11951) | test-patch should give better info about failures to handle dev-support updates without resetrepo option |  Minor | . | Sean Busbey | Sean Busbey |
| [HADOOP-11947](https://issues.apache.org/jira/browse/HADOOP-11947) | test-patch should return early from determine-issue  when run in jenkins mode. |  Minor | . | Sean Busbey | Sean Busbey |
| [HADOOP-11942](https://issues.apache.org/jira/browse/HADOOP-11942) | Add links to SLGUserGuide to site index |  Minor | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11936](https://issues.apache.org/jira/browse/HADOOP-11936) | Dockerfile references a removed image |  Major | . | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11928](https://issues.apache.org/jira/browse/HADOOP-11928) | Test-patch check for @author tags incorrectly flags removal of @author tags |  Major | . | Sean Busbey | Kengo Seki |
| [HADOOP-11927](https://issues.apache.org/jira/browse/HADOOP-11927) | Fix "undefined reference to dlopen" error when compiling libhadooppipes |  Major | build, native, tools | Xianyin Xin | Xianyin Xin |
| [HADOOP-11926](https://issues.apache.org/jira/browse/HADOOP-11926) | test-patch.sh mv does wrong math |  Major | . | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11924](https://issues.apache.org/jira/browse/HADOOP-11924) | Tolerate JDK-8047340-related exceptions in Shell#isSetSidAvailable preventing class init |  Major | . | Gera Shegalov | Tsuyoshi Ozawa |
| [HADOOP-11922](https://issues.apache.org/jira/browse/HADOOP-11922) | Misspelling of threshold in log4j.properties for tests in hadoop-tools |  Minor | . | Brahma Reddy Battula | Gabor Liptak |
| [HADOOP-11917](https://issues.apache.org/jira/browse/HADOOP-11917) | test-patch.sh should work with ${BASEDIR}/patchprocess setups |  Blocker | . | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11916](https://issues.apache.org/jira/browse/HADOOP-11916) | TestStringUtils#testLowerAndUpperStrings failed on MAC due to a JVM bug |  Minor | . | Ming Ma | Ming Ma |
| [HADOOP-11912](https://issues.apache.org/jira/browse/HADOOP-11912) | Extra configuration key used in TraceUtils should respect prefix |  Minor | . | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11900](https://issues.apache.org/jira/browse/HADOOP-11900) | Add failIfNoTests=false to hadoop-build-tools pom |  Major | test | Gera Shegalov | Gera Shegalov |
| [HADOOP-11898](https://issues.apache.org/jira/browse/HADOOP-11898) | add nfs3 and portmap starting command in hadoop-daemon.sh in branch-2 |  Minor | bin, nfs | Brandon Li | Brandon Li |
| [HADOOP-11889](https://issues.apache.org/jira/browse/HADOOP-11889) | Make checkstyle runnable from root project |  Major | build, test | Gera Shegalov | Gera Shegalov |
| [HADOOP-11885](https://issues.apache.org/jira/browse/HADOOP-11885) | hadoop-dist dist-layout-stitching.sh does not work with dash |  Major | build | Andrew Wang | Andrew Wang |
| [HADOOP-11877](https://issues.apache.org/jira/browse/HADOOP-11877) | SnappyDecompressor's Logger class name is wrong |  Major | conf | surendra singh lilhore | surendra singh lilhore |
| [HADOOP-11876](https://issues.apache.org/jira/browse/HADOOP-11876) | Refactor code to make it more readable, minor maybePrintStats bug |  Trivial | tools/distcp | Zoran Dimitrijevic | Zoran Dimitrijevic |
| [HADOOP-11870](https://issues.apache.org/jira/browse/HADOOP-11870) | [JDK8] AuthenticationFilter, CertificateUtil, SignerSecretProviders, KeyAuthorizationKeyProvider Javadoc issues |  Major | build | Robert Kanter | Robert Kanter |
| [HADOOP-11866](https://issues.apache.org/jira/browse/HADOOP-11866) | increase readability and reliability of checkstyle, shellcheck, and whitespace reports |  Minor | . | Naganarasimha G R | Allen Wittenauer |
| [HADOOP-11864](https://issues.apache.org/jira/browse/HADOOP-11864) | JWTRedirectAuthenticationHandler breaks java8 javadocs |  Major | build | Steve Loughran | Larry McCay |
| [HADOOP-11861](https://issues.apache.org/jira/browse/HADOOP-11861) | test-patch.sh rewrite addendum patch |  Major | build | Anu Engineer | Allen Wittenauer |
| [HADOOP-11859](https://issues.apache.org/jira/browse/HADOOP-11859) | PseudoAuthenticationHandler fails with httpcomponents v4.4 |  Major | . | Eugene Koifman | Eugene Koifman |
| [HADOOP-11848](https://issues.apache.org/jira/browse/HADOOP-11848) | Incorrect arguments to sizeof in DomainSocket.c |  Major | native | Malcolm Kavalsky | Malcolm Kavalsky |
| [HADOOP-11846](https://issues.apache.org/jira/browse/HADOOP-11846) | TestCertificateUtil.testCorruptPEM failing on Jenkins JDK8 |  Major | build, security | Steve Loughran | Larry McCay |
| [HADOOP-11821](https://issues.apache.org/jira/browse/HADOOP-11821) | Fix findbugs warnings in hadoop-sls |  Major | tools | Akira AJISAKA | Brahma Reddy Battula |
| [HADOOP-11819](https://issues.apache.org/jira/browse/HADOOP-11819) | HttpServerFunctionalTest#prepareTestWebapp should create web app directory if it does not exist. |  Minor | . | Rohith | Rohith |
| [HADOOP-11811](https://issues.apache.org/jira/browse/HADOOP-11811) | Fix typos in hadoop-project/pom.xml and TestAccessControlList |  Minor | . | Chen He | Brahma Reddy Battula |
| [HADOOP-11800](https://issues.apache.org/jira/browse/HADOOP-11800) | Clean up some test methods in TestCodec.java |  Major | test | Akira AJISAKA | Brahma Reddy Battula |
| [HADOOP-11760](https://issues.apache.org/jira/browse/HADOOP-11760) | Fix typo of javadoc in DistCp |  Trivial | . | Chen He | Brahma Reddy Battula |
| [HADOOP-11743](https://issues.apache.org/jira/browse/HADOOP-11743) | maven doesn't clean all the site files |  Minor | documentation | Allen Wittenauer | ramtin |
| [HADOOP-11724](https://issues.apache.org/jira/browse/HADOOP-11724) | DistCp throws NPE when the target directory is root. |  Minor | . | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HADOOP-11704](https://issues.apache.org/jira/browse/HADOOP-11704) | DelegationTokenAuthenticationFilter must pass ipaddress instead of hostname to ProxyUsers#authorize() |  Major | . | Anubhav Dhoot | Anubhav Dhoot |
| [HADOOP-11581](https://issues.apache.org/jira/browse/HADOOP-11581) | Fix Multithreaded correctness Warnings #org.apache.hadoop.fs.shell.Ls |  Major | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [HADOOP-11568](https://issues.apache.org/jira/browse/HADOOP-11568) | Description on usage of classpath in hadoop command is incomplete. |  Trivial | tools | Archana T | Archana T |
| [HADOOP-11491](https://issues.apache.org/jira/browse/HADOOP-11491) | HarFs incorrectly declared as requiring an authority |  Critical | fs | Gera Shegalov | Brahma Reddy Battula |
| [HADOOP-11361](https://issues.apache.org/jira/browse/HADOOP-11361) | Fix a race condition in MetricsSourceAdapter.updateJmxCache |  Major | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [HADOOP-11328](https://issues.apache.org/jira/browse/HADOOP-11328) | ZKFailoverController does not log Exception when doRun raises errors |  Major | ha | Tianyin Xu | Tianyin Xu |
| [HADOOP-11120](https://issues.apache.org/jira/browse/HADOOP-11120) | hadoop fs -rmr gives wrong advice |  Major | . | Allen Wittenauer | Juliet Hougland |
| [HADOOP-10582](https://issues.apache.org/jira/browse/HADOOP-10582) | Fix the test case for copying to non-existent dir in TestFsShellCopy |  Minor | fs | Kousuke Saruta | Kousuke Saruta |
| [HADOOP-10387](https://issues.apache.org/jira/browse/HADOOP-10387) | Misspelling of threshold in log4j.properties for tests in hadoop-common-project |  Minor | conf, test | Kenji Kikushima | Brahma Reddy Battula |
| [HADOOP-10356](https://issues.apache.org/jira/browse/HADOOP-10356) | Corrections in winutils/chmod.c |  Trivial | bin | René Nyffenegger | René Nyffenegger |
| [HADOOP-10027](https://issues.apache.org/jira/browse/HADOOP-10027) | \*Compressor\_deflateBytesDirect passes instance instead of jclass to GetStaticObjectField |  Minor | native | Eric Abbott | Hui Zheng |
| [HADOOP-9729](https://issues.apache.org/jira/browse/HADOOP-9729) | The example code of org.apache.hadoop.util.Tool is incorrect |  Major | util | hellojinjie | hellojinjie |
| [HADOOP-8751](https://issues.apache.org/jira/browse/HADOOP-8751) | NPE in Token.toString() when Token is constructed using null identifier |  Minor | security | Vlad Rozov | kanaka kumar avvaru |
| [HADOOP-8174](https://issues.apache.org/jira/browse/HADOOP-8174) | Remove confusing comment in Path#isAbsolute() |  Trivial | fs | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-7817](https://issues.apache.org/jira/browse/HADOOP-7817) | RawLocalFileSystem.append() should give FSDataOutputStream with accurate .getPos() |  Minor | fs | Kristofer Tomasette | kanaka kumar avvaru |
| [HADOOP-7165](https://issues.apache.org/jira/browse/HADOOP-7165) | listLocatedStatus(path, filter) is not redefined in FilterFs |  Major | fs | Hairong Kuang | Hairong Kuang |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-12035](https://issues.apache.org/jira/browse/HADOOP-12035) | shellcheck plugin displays a wrong version potentially |  Trivial | build | Kengo Seki | Kengo Seki |
| [HADOOP-12030](https://issues.apache.org/jira/browse/HADOOP-12030) | test-patch should only report on newly introduced findbugs warnings. |  Major | . | Sean Busbey | Sean Busbey |
| [HADOOP-12000](https://issues.apache.org/jira/browse/HADOOP-12000) | cannot use --java-home in test-patch |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11949](https://issues.apache.org/jira/browse/HADOOP-11949) | Add user-provided plugins to test-patch |  Major | . | Sean Busbey | Sean Busbey |
| [HADOOP-11944](https://issues.apache.org/jira/browse/HADOOP-11944) | add option to test-patch to avoid relocating patch process directory |  Minor | . | Sean Busbey | Sean Busbey |
| [HADOOP-11930](https://issues.apache.org/jira/browse/HADOOP-11930) | test-patch in offline mode should tell maven to be in offline mode |  Major | . | Sean Busbey | Sean Busbey |
| [HADOOP-11906](https://issues.apache.org/jira/browse/HADOOP-11906) | test-patch.sh should use 'file' command for patch determinism |  Major | . | Allen Wittenauer | Sean Busbey |
| [HADOOP-11904](https://issues.apache.org/jira/browse/HADOOP-11904) | test-patch.sh goes into an infinite loop on non-maven builds |  Critical | test | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11884](https://issues.apache.org/jira/browse/HADOOP-11884) | test-patch.sh should pull the real findbugs version |  Minor | test | Allen Wittenauer | Kengo Seki |
| [HADOOP-11881](https://issues.apache.org/jira/browse/HADOOP-11881) | test-patch.sh javac result is wildly wrong |  Major | build, test | Allen Wittenauer | Kengo Seki |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-10597](https://issues.apache.org/jira/browse/HADOOP-10597) | RPC Server signals backoff to clients when all request queues are full |  Major | . | Ming Ma | Ming Ma |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-11814](https://issues.apache.org/jira/browse/HADOOP-11814) | Reformat hadoop-annotations, o.a.h.classification.tools |  Minor | . | Li Lu | Li Lu |


