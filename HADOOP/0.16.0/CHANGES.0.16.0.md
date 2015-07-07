# Apache Hadoop Changelog

## Release 0.16.0 - 2008-02-07

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-2567](https://issues.apache.org/jira/browse/HADOOP-2567) | add FileSystem#getHomeDirectory() method |  Major | fs | Doug Cutting | Doug Cutting |
| [HADOOP-2529](https://issues.apache.org/jira/browse/HADOOP-2529) | DFS User Guide |  Major | documentation | Raghu Angadi | Raghu Angadi |
| [HADOOP-2381](https://issues.apache.org/jira/browse/HADOOP-2381) | Support permission information in FileStatus |  Major | fs | Tsz Wo Nicholas Sze | Raghu Angadi |
| [HADOOP-2336](https://issues.apache.org/jira/browse/HADOOP-2336) | Shell commands to access and modify file permissions |  Major | fs | Raghu Angadi | Raghu Angadi |
| [HADOOP-2288](https://issues.apache.org/jira/browse/HADOOP-2288) | Change FileSystem API to support access control. |  Major | fs | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-2229](https://issues.apache.org/jira/browse/HADOOP-2229) | Provide a simple login implementation |  Major | fs | Tsz Wo Nicholas Sze | Hairong Kuang |
| [HADOOP-2184](https://issues.apache.org/jira/browse/HADOOP-2184) | RPC Support for user permissions and authentication. |  Major | ipc | Tsz Wo Nicholas Sze | Raghu Angadi |
| [HADOOP-2145](https://issues.apache.org/jira/browse/HADOOP-2145) | need 'doc' target that runs forrest |  Major | build | Doug Cutting | Doug Cutting |
| [HADOOP-2045](https://issues.apache.org/jira/browse/HADOOP-2045) | credits page should have more information |  Major | documentation | Doug Cutting | Doug Cutting |
| [HADOOP-1298](https://issues.apache.org/jira/browse/HADOOP-1298) | adding user info to file |  Major | fs | Kurtis Heimerl | Tsz Wo Nicholas Sze |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-2596](https://issues.apache.org/jira/browse/HADOOP-2596) | add SequenceFile.createWriter() method that takes block size as parameter |  Minor | io | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-2566](https://issues.apache.org/jira/browse/HADOOP-2566) | need FileSystem#globStatus method |  Major | fs | Doug Cutting | Hairong Kuang |
| [HADOOP-2547](https://issues.apache.org/jira/browse/HADOOP-2547) | remove use of 'magic number' in build.xml |  Trivial | build | Hrishikesh | Hrishikesh |
| [HADOOP-2469](https://issues.apache.org/jira/browse/HADOOP-2469) | WritableUtils.clone should take Configuration rather than JobConf |  Minor | io | stack | stack |
| [HADOOP-2457](https://issues.apache.org/jira/browse/HADOOP-2457) | Add a 'forrest.home' property for the 'docs' target in build.xml |  Minor | documentation | Arun C Murthy | Arun C Murthy |
| [HADOOP-2390](https://issues.apache.org/jira/browse/HADOOP-2390) | Document the user-controls for intermediate/output compression via forrest |  Major | documentation | Arun C Murthy | Arun C Murthy |
| [HADOOP-2298](https://issues.apache.org/jira/browse/HADOOP-2298) | ant target without source and docs |  Major | build | Gautam Kowshik | Hrishikesh |
| [HADOOP-2233](https://issues.apache.org/jira/browse/HADOOP-2233) | General example for modeling m/r load in Java |  Minor | test | Chris Douglas | Chris Douglas |
| [HADOOP-2232](https://issues.apache.org/jira/browse/HADOOP-2232) | Add option to disable nagles algorithm in the IPC Server |  Major | ipc | Clint Morgan | Clint Morgan |
| [HADOOP-2185](https://issues.apache.org/jira/browse/HADOOP-2185) | Server ports: to roll or not to roll. |  Major | conf | Konstantin Shvachko | Konstantin Shvachko |
| [HADOOP-2134](https://issues.apache.org/jira/browse/HADOOP-2134) | Remove developer-centric requirements from overview.html |  Major | documentation | Arun C Murthy | Jim Kellerman |
| [HADOOP-2113](https://issues.apache.org/jira/browse/HADOOP-2113) | Add "-text" command to FsShell to decode SequenceFile to stdout |  Minor | fs | Chris Douglas | Chris Douglas |
| [HADOOP-2058](https://issues.apache.org/jira/browse/HADOOP-2058) | Allow adding additional datanodes to MiniDFSCluster |  Major | test | Hairong Kuang | Hairong Kuang |
| [HADOOP-1843](https://issues.apache.org/jira/browse/HADOOP-1843) | Remove deprecated code in Configuration/JobConf |  Major | conf | Arun C Murthy | Arun C Murthy |
| [HADOOP-1841](https://issues.apache.org/jira/browse/HADOOP-1841) | IPC server should write repsonses asynchronously |  Major | ipc | Doug Cutting | dhruba borthakur |
| [HADOOP-1185](https://issues.apache.org/jira/browse/HADOOP-1185) | dynamically change log levels |  Major | util | dhruba borthakur | Tsz Wo Nicholas Sze |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-2740](https://issues.apache.org/jira/browse/HADOOP-2740) | Modify HOD to work with changes mentioned in HADOOP-2404 |  Blocker | contrib/hod | Hemanth Yamijala | Hemanth Yamijala |
| [HADOOP-2734](https://issues.apache.org/jira/browse/HADOOP-2734) | docs link to lucene.apache.org |  Major | documentation | Doug Cutting | Doug Cutting |
| [HADOOP-2732](https://issues.apache.org/jira/browse/HADOOP-2732) | ab{5[6-9],[6-9][6-9]}.gz should not be treated as an illegal glob |  Blocker | fs | Hairong Kuang | Hairong Kuang |
| [HADOOP-2720](https://issues.apache.org/jira/browse/HADOOP-2720) | Update HOD in Hadoop 0.16 |  Blocker | contrib/hod | Hemanth Yamijala | Hemanth Yamijala |
| [HADOOP-2646](https://issues.apache.org/jira/browse/HADOOP-2646) | SortValidator broken with fully-qualified working directories |  Blocker | test | Doug Cutting | Arun C Murthy |
| [HADOOP-2626](https://issues.apache.org/jira/browse/HADOOP-2626) | RawLocalFileStatus is badly handling URIs |  Major | fs | Frédéric Bertin | Doug Cutting |
| [HADOOP-2620](https://issues.apache.org/jira/browse/HADOOP-2620) | 'bin/hadoop fs -help' does not list file permissions commands. |  Trivial | fs | Raghu Angadi | Raghu Angadi |
| [HADOOP-2605](https://issues.apache.org/jira/browse/HADOOP-2605) | leading slash in mapred.task.tracker.report.bindAddress |  Major | conf | Konstantin Shvachko | Konstantin Shvachko |
| [HADOOP-2583](https://issues.apache.org/jira/browse/HADOOP-2583) | Potential Eclipse plug-in UI loop when editing location parameters |  Minor | contrib/eclipse-plugin | Christophe Taton | Christophe Taton |
| [HADOOP-2571](https://issues.apache.org/jira/browse/HADOOP-2571) | javac generates a warning in test/o.a.h.io.FileBench |  Trivial | test | Chris Douglas | Chris Douglas |
| [HADOOP-2537](https://issues.apache.org/jira/browse/HADOOP-2537) | make build process compatible with Ant 1.7.0 |  Major | build | Nigel Daley | Hrishikesh |
| [HADOOP-2512](https://issues.apache.org/jira/browse/HADOOP-2512) | error stream handling in Shell executor |  Blocker | util | Raghu Angadi | Raghu Angadi |
| [HADOOP-2511](https://issues.apache.org/jira/browse/HADOOP-2511) | HADOOP-2344 introduced a javadoc warning |  Major | documentation | Arun C Murthy | Arun C Murthy |
| [HADOOP-2509](https://issues.apache.org/jira/browse/HADOOP-2509) | Add rat target to build |  Major | build | Nigel Daley | Hrishikesh |
| [HADOOP-2494](https://issues.apache.org/jira/browse/HADOOP-2494) | Set +x on contrib/\*/bin/\* in packaged tar bundle |  Major | scripts | stack | stack |
| [HADOOP-2492](https://issues.apache.org/jira/browse/HADOOP-2492) | ConcurrentModificationException in org.apache.hadoop.ipc.Server.Responder |  Major | ipc | Devaraj Das | dhruba borthakur |
| [HADOOP-2481](https://issues.apache.org/jira/browse/HADOOP-2481) | NNBench should periodically report its progress |  Major | test | Hairong Kuang | Hairong Kuang |
| [HADOOP-2476](https://issues.apache.org/jira/browse/HADOOP-2476) | Unit test fails on Windows: TestCopyFiles.testCopyFromLocalToLocal |  Blocker | fs | Mukund Madhugiri | Raghu Angadi |
| [HADOOP-2459](https://issues.apache.org/jira/browse/HADOOP-2459) | Running 'ant docs tar' includes src/docs/build in the resulting tar file |  Minor | build | Nigel Daley | Nigel Daley |
| [HADOOP-2452](https://issues.apache.org/jira/browse/HADOOP-2452) | Eclipse plug-in build.xml issue |  Trivial | build | Christophe Taton | Christophe Taton |
| [HADOOP-2446](https://issues.apache.org/jira/browse/HADOOP-2446) | TestHDFSServerPorts fails. |  Major | test | Raghu Angadi | Nigel Daley |
| [HADOOP-2442](https://issues.apache.org/jira/browse/HADOOP-2442) | Unit test failed: org.apache.hadoop.fs.TestLocalFileSystemPermission.testLocalFSsetOwner |  Critical | fs | Mukund Madhugiri | Raghu Angadi |
| [HADOOP-2434](https://issues.apache.org/jira/browse/HADOOP-2434) | MapFile.get on HDFS in TRUNK is WAY!!! slower than 0.15.x |  Blocker | io | stack | stack |
| [HADOOP-2420](https://issues.apache.org/jira/browse/HADOOP-2420) | Use exit code to detect normal errors while excuting 'ls' in Local FS |  Blocker | fs | Raghu Angadi | Raghu Angadi |
| [HADOOP-2404](https://issues.apache.org/jira/browse/HADOOP-2404) | HADOOP-2185 breaks compatibility with hadoop-0.15.0 |  Blocker | conf | Arun C Murthy | Owen O'Malley |
| [HADOOP-2402](https://issues.apache.org/jira/browse/HADOOP-2402) | Lzo compression compresses each write from TextOutputFormat |  Major | io, native | Chris Douglas | Chris Douglas |
| [HADOOP-2363](https://issues.apache.org/jira/browse/HADOOP-2363) | Unit tests fail if there is another instance of Hadoop |  Major | test | Raghu Angadi | Konstantin Shvachko |
| [HADOOP-2352](https://issues.apache.org/jira/browse/HADOOP-2352) | Remove AC\_LIB\_CHECK from src/native/configure.ac to ensure libhadoop.so doesn't have a dependency on libz.so/liblzo.so |  Major | native | Arun C Murthy | Arun C Murthy |
| [HADOOP-2272](https://issues.apache.org/jira/browse/HADOOP-2272) | findbugs currently fails due to hadoop-streaming having moved |  Major | build | Adrian Woodhead | stack |
| [HADOOP-2271](https://issues.apache.org/jira/browse/HADOOP-2271) | chmod in ant package target fails |  Major | build | Adrian Woodhead | Adrian Woodhead |
| [HADOOP-2244](https://issues.apache.org/jira/browse/HADOOP-2244) | MapWritable.readFields needs to clear internal hash else instance accumulates entries forever |  Major | io | stack | stack |
| [HADOOP-2215](https://issues.apache.org/jira/browse/HADOOP-2215) | Change documentation in cluster\_setup.html and mapred\_tutorial.html post HADOOP-1274 |  Major | documentation | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [HADOOP-2212](https://issues.apache.org/jira/browse/HADOOP-2212) | java.lang.ArithmeticException: / by zero in ChecksumFileSystem.open |  Critical | fs | Michael Bieniosek | Michael Bieniosek |
| [HADOOP-2104](https://issues.apache.org/jira/browse/HADOOP-2104) | clover description attribute suppresses all other targets in -projecthelp |  Trivial | build | Chris Douglas | Chris Douglas |
| [HADOOP-2100](https://issues.apache.org/jira/browse/HADOOP-2100) | hadoop-daemon.sh script fails if HADOOP\_PID\_DIR doesn't exist |  Major | scripts | Arun C Murthy | Michael Bieniosek |
| [HADOOP-1898](https://issues.apache.org/jira/browse/HADOOP-1898) | locking for the ReflectionUtils.logThreadInfo is too conservative |  Major | util | Owen O'Malley | Amareshwari Sriramadasu |
| [HADOOP-1348](https://issues.apache.org/jira/browse/HADOOP-1348) | Configuration XML bug: comments inside values |  Critical | conf | Eelco Lempsink | Rajagopal Natarajan |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-2431](https://issues.apache.org/jira/browse/HADOOP-2431) | Test HDFS File Permissions |  Major | test | Hairong Kuang | Hairong Kuang |
| [HADOOP-2406](https://issues.apache.org/jira/browse/HADOOP-2406) | Micro-benchmark to measure read/write times through InputFormats |  Major | fs, test | Chris Douglas | Chris Douglas |
| [HADOOP-2369](https://issues.apache.org/jira/browse/HADOOP-2369) | Representative mix of jobs for large cluster throughput benchmarking |  Major | test | Chris Douglas | Runping Qi |
| [HADOOP-2000](https://issues.apache.org/jira/browse/HADOOP-2000) | Re-write NNBench to use MapReduce |  Major | test | Mukund Madhugiri | Mukund Madhugiri |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


