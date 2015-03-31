# Hadoop Changelog

## Release 2.1.1-beta - 2013-09-16

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-9944](https://issues.apache.org/jira/browse/HADOOP-9944) | RpcRequestHeaderProto defines callId as uint32 while ipc.Client.CONNECTION\_CONTEXT\_CALL\_ID is signed (-3) |  Blocker | . | Arun C Murthy | Arun C Murthy |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-9789](https://issues.apache.org/jira/browse/HADOOP-9789) | Support server advertised kerberos principals |  Critical | ipc, security | Daryn Sharp | Daryn Sharp |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-9962](https://issues.apache.org/jira/browse/HADOOP-9962) | in order to avoid dependency divergence within Hadoop itself lets enable DependencyConvergence |  Major | build | Roman Shaposhnik | Roman Shaposhnik |
| [HADOOP-9945](https://issues.apache.org/jira/browse/HADOOP-9945) | HAServiceState should have a state for stopped services |  Minor | ha | Karthik Kambatla | Karthik Kambatla |
| [HADOOP-9918](https://issues.apache.org/jira/browse/HADOOP-9918) | Add addIfService() to CompositeService |  Minor | . | Karthik Kambatla | Karthik Kambatla |
| [HADOOP-9886](https://issues.apache.org/jira/browse/HADOOP-9886) | Turn warning message in RetryInvocationHandler to debug |  Minor | . | Arpit Gupta | Arpit Gupta |
| [HADOOP-9879](https://issues.apache.org/jira/browse/HADOOP-9879) | Move the version info of zookeeper dependencies to hadoop-project/pom |  Minor | build | Karthik Kambatla | Karthik Kambatla |
| [HADOOP-9833](https://issues.apache.org/jira/browse/HADOOP-9833) | move slf4j to version 1.7.5 |  Minor | build | Steve Loughran | Kousuke Saruta |
| [HADOOP-9831](https://issues.apache.org/jira/browse/HADOOP-9831) | Make checknative shell command accessible on Windows. |  Minor | bin | Chris Nauroth | Chris Nauroth |
| [HADOOP-9821](https://issues.apache.org/jira/browse/HADOOP-9821) | ClientId should have getMsb/getLsb methods |  Minor | . | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [HADOOP-9803](https://issues.apache.org/jira/browse/HADOOP-9803) | Add generic type parameter to RetryInvocationHandler |  Minor | ipc | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-9802](https://issues.apache.org/jira/browse/HADOOP-9802) | Support Snappy codec on Windows. |  Major | io | Chris Nauroth | Chris Nauroth |
| [HADOOP-9686](https://issues.apache.org/jira/browse/HADOOP-9686) | Easy access to final parameters in Configuration |  Major | conf | Jason Lowe | Jason Lowe |
| [HADOOP-9672](https://issues.apache.org/jira/browse/HADOOP-9672) | Upgrade Avro dependency to 1.7.4 |  Major | . | Sandy Ryza | Sandy Ryza |
| [HADOOP-9669](https://issues.apache.org/jira/browse/HADOOP-9669) | Reduce the number of byte array creations and copies in XDR data manipulation |  Major | nfs | Tsz Wo Nicholas Sze | Haohui Mai |
| [HADOOP-9446](https://issues.apache.org/jira/browse/HADOOP-9446) | Support Kerberos HTTP SPNEGO authentication for non-SUN JDK |  Major | security | Yu Gao | Yu Gao |
| [HADOOP-8814](https://issues.apache.org/jira/browse/HADOOP-8814) | Inefficient comparison with the empty string. Use isEmpty() instead |  Minor | conf, fs, fs/s3, ha, io, metrics, performance, record, security, util | Brandon Li | Brandon Li |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-9977](https://issues.apache.org/jira/browse/HADOOP-9977) | Hadoop services won't start with different keypass and keystorepass when https is enabled |  Major | security | Yesha Vora | Chris Nauroth |
| [HADOOP-9961](https://issues.apache.org/jira/browse/HADOOP-9961) | versions of a few transitive dependencies diverged between hadoop subprojects |  Minor | build | Roman Shaposhnik | Roman Shaposhnik |
| [HADOOP-9960](https://issues.apache.org/jira/browse/HADOOP-9960) | Upgrade Jersey version to 1.9 |  Blocker | . | Brock Noland | Karthik Kambatla |
| [HADOOP-9958](https://issues.apache.org/jira/browse/HADOOP-9958) | Add old constructor back to DelegationTokenInformation to unbreak downstream builds |  Major | . | Andrew Wang | Andrew Wang |
| [HADOOP-9932](https://issues.apache.org/jira/browse/HADOOP-9932) | Improper synchronization in RetryCache |  Blocker | . | Kihwal Lee | Kihwal Lee |
| [HADOOP-9924](https://issues.apache.org/jira/browse/HADOOP-9924) | FileUtil.createJarWithClassPath() does not generate relative classpath correctly |  Major | fs | shanyu zhao | shanyu zhao |
| [HADOOP-9916](https://issues.apache.org/jira/browse/HADOOP-9916) | Race condition in ipc.Client causes TestIPC timeout |  Minor | . | Binglin Chang | Binglin Chang |
| [HADOOP-9910](https://issues.apache.org/jira/browse/HADOOP-9910) | proxy server start and stop documentation wrong |  Minor | . | André Kelpe |  |
| [HADOOP-9906](https://issues.apache.org/jira/browse/HADOOP-9906) | Move HAZKUtil to o.a.h.util.ZKUtil and make inner-classes public |  Minor | ha | Karthik Kambatla | Karthik Kambatla |
| [HADOOP-9899](https://issues.apache.org/jira/browse/HADOOP-9899) | Remove the debug message added by HADOOP-8855 |  Minor | security | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-9880](https://issues.apache.org/jira/browse/HADOOP-9880) | SASL changes from HADOOP-9421 breaks Secure HA NN |  Blocker | . | Kihwal Lee | Daryn Sharp |
| [HADOOP-9868](https://issues.apache.org/jira/browse/HADOOP-9868) | Server must not advertise kerberos realm |  Blocker | ipc | Daryn Sharp | Daryn Sharp |
| [HADOOP-9858](https://issues.apache.org/jira/browse/HADOOP-9858) | Remove unused private RawLocalFileSystem#execCommand method from branch-2. |  Trivial | fs | Chris Nauroth | Chris Nauroth |
| [HADOOP-9857](https://issues.apache.org/jira/browse/HADOOP-9857) | Tests block and sometimes timeout on Windows due to invalid entropy source. |  Major | build, test | Chris Nauroth | Chris Nauroth |
| [HADOOP-9806](https://issues.apache.org/jira/browse/HADOOP-9806) | PortmapInterface should check if the procedure is out-of-range |  Major | nfs | Brandon Li | Brandon Li |
| [HADOOP-9801](https://issues.apache.org/jira/browse/HADOOP-9801) | Configuration#writeXml uses platform defaulting encoding, which may mishandle multi-byte characters. |  Major | conf | Chris Nauroth | Chris Nauroth |
| [HADOOP-9774](https://issues.apache.org/jira/browse/HADOOP-9774) | RawLocalFileSystem.listStatus() return absolute paths when input path is relative on Windows |  Major | fs | shanyu zhao | shanyu zhao |
| [HADOOP-9768](https://issues.apache.org/jira/browse/HADOOP-9768) | chown and chgrp reject users and groups with spaces on platforms where spaces are otherwise acceptable |  Major | fs | Chris Nauroth | Chris Nauroth |
| [HADOOP-9757](https://issues.apache.org/jira/browse/HADOOP-9757) | Har metadata cache can grow without limit |  Major | fs | Jason Lowe | Cristina L. Abad |
| [HADOOP-9557](https://issues.apache.org/jira/browse/HADOOP-9557) | hadoop-client excludes commons-httpclient |  Major | build | Lohit Vijayarenu | Lohit Vijayarenu |
| [HADOOP-9435](https://issues.apache.org/jira/browse/HADOOP-9435) | Support building the JNI code against the IBM JVM |  Major | build | Tian Hong Wang | Tian Hong Wang |
| [HADOOP-9381](https://issues.apache.org/jira/browse/HADOOP-9381) | Document dfs cp -f option |  Trivial | . | Keegan Witt | Keegan Witt |
| [HADOOP-9315](https://issues.apache.org/jira/browse/HADOOP-9315) | Port HADOOP-9249 hadoop-maven-plugins Clover fix to branch-2 to fix build failures |  Major | build | Dennis Y | Chris Nauroth |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


