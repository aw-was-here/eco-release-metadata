# Apache Hadoop Changelog

## Release 0.16.1 - 2008-03-14

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-2911](https://issues.apache.org/jira/browse/HADOOP-2911) | [HOD] Make the information printed by allocate and info commands less verbose and clearer |  Major | contrib/hod | Hemanth Yamijala | Vinod Kumar Vavilapalli |
| [HADOOP-2861](https://issues.apache.org/jira/browse/HADOOP-2861) | [HOD] Improve the user interface for the HOD commands |  Major | contrib/hod | Hemanth Yamijala | Vinod Kumar Vavilapalli |
| [HADOOP-2730](https://issues.apache.org/jira/browse/HADOOP-2730) | Update HOD documentation |  Major | contrib/hod | Hemanth Yamijala | Vinod Kumar Vavilapalli |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-2958](https://issues.apache.org/jira/browse/HADOOP-2958) | Test utility no longer works in trunk |  Minor | test | Chris Douglas | Chris Douglas |
| [HADOOP-2925](https://issues.apache.org/jira/browse/HADOOP-2925) | [HOD] Create mapred system directory using a naming convention that will avoid clashes in multi-user shared cluster scenario. |  Major | contrib/hod | Hemanth Yamijala | Hemanth Yamijala |
| [HADOOP-2903](https://issues.apache.org/jira/browse/HADOOP-2903) | Data type mismatch exception raised from pushMetric |  Major | metrics | girish vaitheeswaran | girish vaitheeswaran |
| [HADOOP-2847](https://issues.apache.org/jira/browse/HADOOP-2847) | [HOD] Idle cluster cleanup does not work if the JobTracker becomes unresponsive to RPC calls |  Blocker | contrib/hod | Hemanth Yamijala | Hemanth Yamijala |
| [HADOOP-2840](https://issues.apache.org/jira/browse/HADOOP-2840) | Gridmix test script fails to run java sort tests |  Major | test | Mukund Madhugiri | Mukund Madhugiri |
| [HADOOP-2813](https://issues.apache.org/jira/browse/HADOOP-2813) | Unit test fails on Linux: org.apache.hadoop.fs.TestDU.testDU |  Blocker | fs | Mukund Madhugiri | Mahadev konar |
| [HADOOP-2809](https://issues.apache.org/jira/browse/HADOOP-2809) | [HOD] Syslog configuration, syslog-address, does not work in HOD 0.4 |  Critical | contrib/hod | Hemanth Yamijala | Vinod Kumar Vavilapalli |
| [HADOOP-2789](https://issues.apache.org/jira/browse/HADOOP-2789) | Race condition in ipc.Server prevents responce being written back to client. |  Critical | ipc | Clint Morgan | Raghu Angadi |
| [HADOOP-2769](https://issues.apache.org/jira/browse/HADOOP-2769) | TestNNThroughputBenchmark should not used a fixed http port |  Major | test | Owen O'Malley | Owen O'Malley |
| [HADOOP-2766](https://issues.apache.org/jira/browse/HADOOP-2766) | [HOD] No way to set HADOOP\_OPTS environment variable to the Hadoop daemons through HOD |  Critical | contrib/hod | Hemanth Yamijala | Vinod Kumar Vavilapalli |
| [HADOOP-2733](https://issues.apache.org/jira/browse/HADOOP-2733) | Compiler warnings in TestClusterMapReduceTestCase and TestJobStatusPersistency |  Major | test | Konstantin Shvachko | Tsz Wo Nicholas Sze |
| [HADOOP-2725](https://issues.apache.org/jira/browse/HADOOP-2725) | Distcp truncates some files when copying |  Critical | util | Murtaza A. Basrai | Tsz Wo Nicholas Sze |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-2852](https://issues.apache.org/jira/browse/HADOOP-2852) | Update gridmix to avoid artificially long tail |  Major | test | Chris Douglas | Chris Douglas |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


