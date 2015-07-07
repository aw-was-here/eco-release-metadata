# Apache Hadoop Changelog

## Release 0.14.0 - 2007-08-20

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-1570](https://issues.apache.org/jira/browse/HADOOP-1570) | Add a per-job configuration knob to control loading of native hadoop libraries |  Major | io | Arun C Murthy | Arun C Murthy |
| [HADOOP-1568](https://issues.apache.org/jira/browse/HADOOP-1568) | NameNode Schema for HttpFileSystem |  Major | fs | Chris Douglas | Chris Douglas |
| [HADOOP-1562](https://issues.apache.org/jira/browse/HADOOP-1562) | Report Java VM metrics |  Major | metrics | David Bowen | David Bowen |
| [HADOOP-1508](https://issues.apache.org/jira/browse/HADOOP-1508) | ant Task for FsShell operations |  Minor | build, fs | Chris Douglas | Chris Douglas |
| [HADOOP-1379](https://issues.apache.org/jira/browse/HADOOP-1379) | Integrate Findbugs into nightly build process |  Major | test | Nigel Daley | Nigel Daley |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-1585](https://issues.apache.org/jira/browse/HADOOP-1585) | GenericWritable should use generics |  Minor | io | Espen Amble Kolstad | Espen Amble Kolstad |
| [HADOOP-1470](https://issues.apache.org/jira/browse/HADOOP-1470) | Rework FSInputChecker and FSOutputSummer to support checksum code sharing between ChecksumFileSystem and block level crc dfs |  Major | fs | Hairong Kuang | Hairong Kuang |
| [HADOOP-1450](https://issues.apache.org/jira/browse/HADOOP-1450) | checksums should be closer to data generation and consumption |  Major | fs | Doug Cutting | Doug Cutting |
| [HADOOP-1429](https://issues.apache.org/jira/browse/HADOOP-1429) | RPC Server won't go quietly |  Minor | ipc | stack | stack |
| [HADOOP-1417](https://issues.apache.org/jira/browse/HADOOP-1417) | Exclude some Findbugs detectors |  Minor | build | Nigel Daley | Nigel Daley |
| [HADOOP-1343](https://issues.apache.org/jira/browse/HADOOP-1343) | Deprecate the Configuration.set(String,Object) method and make Configuration Iterable |  Major | conf | Owen O'Malley | Owen O'Malley |
| [HADOOP-1066](https://issues.apache.org/jira/browse/HADOOP-1066) | http://lucene.apache.org/hadoop/ front page is not user-friendly |  Minor | documentation | Marco Nicosia | Doug Cutting |
| [HADOOP-1023](https://issues.apache.org/jira/browse/HADOOP-1023) | better links to mailing list archives |  Major | documentation | Daniel Naber | Tom White |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-1717](https://issues.apache.org/jira/browse/HADOOP-1717) | TestDFSUpgradeFromImage fails on Solaris |  Blocker | test | Nigel Daley | Raghu Angadi |
| [HADOOP-1714](https://issues.apache.org/jira/browse/HADOOP-1714) | TestDFSUpgradeFromImage fails on Windows |  Blocker | test | Nigel Daley | Raghu Angadi |
| [HADOOP-1668](https://issues.apache.org/jira/browse/HADOOP-1668) | add INCOMPATIBLE CHANGES section to CHANGES.txt for Hadoop 0.14 |  Blocker | documentation | Nigel Daley | Nigel Daley |
| [HADOOP-1666](https://issues.apache.org/jira/browse/HADOOP-1666) | The FsShell Object cannot be used for multiple fs commands. |  Minor | fs | dhruba borthakur | dhruba borthakur |
| [HADOOP-1619](https://issues.apache.org/jira/browse/HADOOP-1619) | FSInputChecker attempts to seek past EOF |  Blocker | fs | Nigel Daley | Hairong Kuang |
| [HADOOP-1599](https://issues.apache.org/jira/browse/HADOOP-1599) | TestCopyFiles with IllegalArgumentException on Windows |  Blocker | fs | Nigel Daley | Senthil Subramanian |
| [HADOOP-1587](https://issues.apache.org/jira/browse/HADOOP-1587) | Tasks run by MiniMRCluster don't get sysprops from TestCases |  Blocker | test | Alejandro Abdelnur | Devaraj Das |
| [HADOOP-1584](https://issues.apache.org/jira/browse/HADOOP-1584) | Bug in readFields of GenericWritable |  Minor | io | Espen Amble Kolstad | Espen Amble Kolstad |
| [HADOOP-1513](https://issues.apache.org/jira/browse/HADOOP-1513) | A likely race condition between the creation of a directory and checking for its existence in the DiskChecker class |  Critical | fs | Devaraj Das | Devaraj Das |
| [HADOOP-1504](https://issues.apache.org/jira/browse/HADOOP-1504) | terminate-hadoop-cluster may be overzealous |  Blocker | fs/s3 | Doug Cutting | Tom White |
| [HADOOP-1390](https://issues.apache.org/jira/browse/HADOOP-1390) | Inconsistent Synchronization cleanup for {Configuration, TaskLog, MapTask, Server}.java |  Minor | conf, ipc | Devaraj Das | Devaraj Das |
| [HADOOP-1367](https://issues.apache.org/jira/browse/HADOOP-1367) | Inconsistent synchronization of NetworkTopology.distFrom; locked 50% of time |  Major | io | Nigel Daley | Hairong Kuang |
| [HADOOP-1364](https://issues.apache.org/jira/browse/HADOOP-1364) | Inconsistent synchronization of SequenceFile$Reader.noBufferedValues; locked 66% of time |  Minor | io | Nigel Daley | Owen O'Malley |
| [HADOOP-1357](https://issues.apache.org/jira/browse/HADOOP-1357) | Call to equals() comparing different types in CopyFiles.cleanup(Configuration, JobConf, String, String) |  Minor | util | Nigel Daley | Arun C Murthy |
| [HADOOP-1311](https://issues.apache.org/jira/browse/HADOOP-1311) | Bug in BytesWritable.set(byte[] newData, int offset, int length) |  Major | io | Srikanth Kakani | dhruba borthakur |
| [HADOOP-1197](https://issues.apache.org/jira/browse/HADOOP-1197) | The misleading Configuration.set(String, Object) should be removed |  Minor | conf | Owen O'Malley | Owen O'Malley |
| [HADOOP-1124](https://issues.apache.org/jira/browse/HADOOP-1124) | ChecksumFileSystem does not handle ChecksumError correctly |  Major | fs | Hairong Kuang | Hairong Kuang |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


