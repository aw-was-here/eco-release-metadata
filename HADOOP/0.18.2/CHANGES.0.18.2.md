# Apache Hadoop Changelog

## Release 0.18.2 - 2008-11-03

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-4228](https://issues.apache.org/jira/browse/HADOOP-4228) | dfs datanode metrics, bytes\_read, bytes\_written overflows due to incorrect type used. |  Blocker | metrics | Eric Yang | Eric Yang |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-2421](https://issues.apache.org/jira/browse/HADOOP-2421) | Release JDiff report of changes between different versions of Hadoop |  Minor | documentation | Nigel Daley | Doug Cutting |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-4469](https://issues.apache.org/jira/browse/HADOOP-4469) | ant jar file not being included in tar distribution |  Blocker | build | Nigel Daley | Nigel Daley |
| [HADOOP-4369](https://issues.apache.org/jira/browse/HADOOP-4369) | Metric Averages are not averages |  Blocker | metrics | Brian Bockelman | Brian Bockelman |
| [HADOOP-4326](https://issues.apache.org/jira/browse/HADOOP-4326) | ChecksumFileSystem does not override all create(...) methods |  Blocker | fs | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-4314](https://issues.apache.org/jira/browse/HADOOP-4314) | TestReplication fails quite often |  Blocker | test | Raghu Angadi | Raghu Angadi |
| [HADOOP-4292](https://issues.apache.org/jira/browse/HADOOP-4292) | append() does not work for LocalFileSystem |  Blocker | fs | Raghu Angadi | Hairong Kuang |
| [HADOOP-4271](https://issues.apache.org/jira/browse/HADOOP-4271) | Bug in FSInputChecker makes it possible to read from an invalid buffer |  Blocker | fs | Ning Li | Ning Li |
| [HADOOP-4228](https://issues.apache.org/jira/browse/HADOOP-4228) | dfs datanode metrics, bytes\_read, bytes\_written overflows due to incorrect type used. |  Blocker | metrics | Eric Yang | Eric Yang |
| [HADOOP-3786](https://issues.apache.org/jira/browse/HADOOP-3786) | Changes in HOD documentation |  Blocker | documentation | Suman Sehgal | Vinod Kumar Vavilapalli |
| [HADOOP-3217](https://issues.apache.org/jira/browse/HADOOP-3217) | [HOD] Be less agressive when querying job status from resource manager. |  Blocker | contrib/hod | Hemanth Yamijala | Hemanth Yamijala |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-4403](https://issues.apache.org/jira/browse/HADOOP-4403) | TestLeaseRecovery.testBlockSynchronization failed on trunk |  Blocker | test | Hemanth Yamijala | Tsz Wo Nicholas Sze |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


