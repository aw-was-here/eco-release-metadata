# Apache Hadoop Changelog

## Release 0.15.0 - 2007-10-19

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-1963](https://issues.apache.org/jira/browse/HADOOP-1963) | Code contribution of Kosmos Filesystem implementation of Hadoop Filesystem interface |  Major | fs | Sriram Rao | Sriram Rao |
| [HADOOP-1822](https://issues.apache.org/jira/browse/HADOOP-1822) | Allow SOCKS proxy configuration to remotely access the DFS and submit Jobs |  Minor | ipc | Christophe Taton | Christophe Taton |
| [HADOOP-1727](https://issues.apache.org/jira/browse/HADOOP-1727) | Make ...hbase.io.MapWritable more generic so that it can be included in ...hadoop.io |  Minor | io | Jim Kellerman | Jim Kellerman |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-2046](https://issues.apache.org/jira/browse/HADOOP-2046) | Documentation: improve mapred javadocs |  Blocker | documentation | Arun C Murthy | Arun C Murthy |
| [HADOOP-1968](https://issues.apache.org/jira/browse/HADOOP-1968) | Wildcard input syntax (glob) should support {} |  Major | fs | eric baldeschwieler | Hairong Kuang |
| [HADOOP-1906](https://issues.apache.org/jira/browse/HADOOP-1906) | JobConf should warn about the existance of obsolete mapred-default.xml. |  Major | conf | Owen O'Malley | Arun C Murthy |
| [HADOOP-1881](https://issues.apache.org/jira/browse/HADOOP-1881) | Update documentation for hadoop's configuration post HADOOP-785 |  Major | documentation | Arun C Murthy | Arun C Murthy |
| [HADOOP-1803](https://issues.apache.org/jira/browse/HADOOP-1803) | Generalize making contrib bin content executable in ant package target |  Minor | build | stack | stack |
| [HADOOP-1756](https://issues.apache.org/jira/browse/HADOOP-1756) | Add toString() methods to some Writable types |  Major | io | Andrzej Bialecki | Andrzej Bialecki |
| [HADOOP-1718](https://issues.apache.org/jira/browse/HADOOP-1718) | Test coverage target in build files using clover |  Major | build | Nigel Daley | Nigel Daley |
| [HADOOP-1667](https://issues.apache.org/jira/browse/HADOOP-1667) | organize CHANGES.txt messages into sections for future releases |  Major | documentation | Doug Cutting | Doug Cutting |
| [HADOOP-1654](https://issues.apache.org/jira/browse/HADOOP-1654) | IOUtils class |  Major | io | Enis Soztutar | Enis Soztutar |
| [HADOOP-1621](https://issues.apache.org/jira/browse/HADOOP-1621) | Make FileStatus a concrete class |  Major | fs | Chris Douglas | Chris Douglas |
| [HADOOP-1436](https://issues.apache.org/jira/browse/HADOOP-1436) | Redesign Tool and ToolBase API and releted functionality |  Major | util | Enis Soztutar | Enis Soztutar |
| [HADOOP-785](https://issues.apache.org/jira/browse/HADOOP-785) | Divide the server and client configurations |  Major | conf | Owen O'Malley | Arun C Murthy |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-2103](https://issues.apache.org/jira/browse/HADOOP-2103) | HADOOP-2046 caused some javadoc anomalies |  Major | documentation | Nigel Daley | Nigel Daley |
| [HADOOP-2102](https://issues.apache.org/jira/browse/HADOOP-2102) | ToolBase doesn't keep configuration |  Blocker | util | Dennis Kubes | Dennis Kubes |
| [HADOOP-2080](https://issues.apache.org/jira/browse/HADOOP-2080) | ChecksumFileSystem checksum file size incorrect. |  Blocker | fs | Richard Lee | Owen O'Malley |
| [HADOOP-2028](https://issues.apache.org/jira/browse/HADOOP-2028) | distcp fails if log dir not specified and destination not present |  Blocker | util | Chris Douglas | Chris Douglas |
| [HADOOP-2023](https://issues.apache.org/jira/browse/HADOOP-2023) | TestLocalDirAllocator fails on Windows |  Blocker | fs | Mukund Madhugiri | Hairong Kuang |
| [HADOOP-1940](https://issues.apache.org/jira/browse/HADOOP-1940) | TestDFSUpgradeFromImage doesn't shut down its MiniDFSCluster |  Major | test | Chris Douglas | Chris Douglas |
| [HADOOP-1932](https://issues.apache.org/jira/browse/HADOOP-1932) | Test dfs.TestFileCreation.testFileCreation failed on Windows |  Blocker | test | Mukund Madhugiri | dhruba borthakur |
| [HADOOP-1889](https://issues.apache.org/jira/browse/HADOOP-1889) | Fix path in EC2 scripts for building your own AMI |  Major | contrib/cloud | Tom White | Tom White |
| [HADOOP-1885](https://issues.apache.org/jira/browse/HADOOP-1885) | Race condition in MiniDFSCluster shutdown |  Major | test | Chris Douglas | Chris Douglas |
| [HADOOP-1875](https://issues.apache.org/jira/browse/HADOOP-1875) | multiple dfs.client.buffer.dir directories are not treated as alternatives |  Blocker | fs | Christian Kunz | Hairong Kuang |
| [HADOOP-1825](https://issues.apache.org/jira/browse/HADOOP-1825) | hadoop-daemon.sh script fails if HADOOP\_PID\_DIR doesn't exist |  Minor | scripts | Michael Bieniosek | Michael Bieniosek |
| [HADOOP-1812](https://issues.apache.org/jira/browse/HADOOP-1812) | TestIPC and TestRPC should use dynamically allocated ports |  Major | ipc | Doug Cutting | Doug Cutting |
| [HADOOP-1806](https://issues.apache.org/jira/browse/HADOOP-1806) | DfsTask no longer compiles |  Major | build | Chris Douglas | Chris Douglas |
| [HADOOP-1792](https://issues.apache.org/jira/browse/HADOOP-1792) | df command doesn't exist under windows |  Major | fs | Benjamin Francisoud | Mahadev konar |
| [HADOOP-1783](https://issues.apache.org/jira/browse/HADOOP-1783) | keyToPath in Jets3tFileSystemStore needs to return absolute path |  Major | fs/s3 | Ahad Rana | Tom White |
| [HADOOP-1775](https://issues.apache.org/jira/browse/HADOOP-1775) | MapWritable and SortedMapWritable - Writable problems |  Major | io | Jim Kellerman | Jim Kellerman |
| [HADOOP-1772](https://issues.apache.org/jira/browse/HADOOP-1772) | Hadoop does not run in Cygwin in Windows |  Critical | scripts | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-1758](https://issues.apache.org/jira/browse/HADOOP-1758) | processing escapes in a jute record is quadratic |  Blocker | record | Dick King | Vivek Ratan |
| [HADOOP-1692](https://issues.apache.org/jira/browse/HADOOP-1692) | DfsTask cache interferes with operation |  Minor | util | Chris Douglas | Chris Douglas |
| [HADOOP-1689](https://issues.apache.org/jira/browse/HADOOP-1689) | .sh scripts do not work on Solaris |  Minor | scripts | David Biesack | Doug Cutting |
| [HADOOP-1601](https://issues.apache.org/jira/browse/HADOOP-1601) | GenericWritable should use ReflectionUtils.newInstance to avoid problems with classloaders |  Major | io | Owen O'Malley | Enis Soztutar |
| [HADOOP-1569](https://issues.apache.org/jira/browse/HADOOP-1569) | distcp should use the Path -\> FileSystem interface like the rest of Hadoop |  Major | util | Owen O'Malley | Chris Douglas |
| [HADOOP-932](https://issues.apache.org/jira/browse/HADOOP-932) | File locking interface and implementation should be remvoed. |  Minor | fs | Raghu Angadi | Raghu Angadi |
| [HADOOP-120](https://issues.apache.org/jira/browse/HADOOP-120) | Reading an ArrayWriter does not work because valueClass does not get initialized |  Major | io | Dick King | Cameron Pope |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


