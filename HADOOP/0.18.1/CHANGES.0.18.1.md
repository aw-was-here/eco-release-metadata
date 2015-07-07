# Apache Hadoop Changelog

## Release 0.18.1 - 2008-09-17

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-4145](https://issues.apache.org/jira/browse/HADOOP-4145) | [HOD] Support an accounting plugin script for HOD |  Blocker | contrib/hod | Hemanth Yamijala | Hemanth Yamijala |
| [HADOOP-3934](https://issues.apache.org/jira/browse/HADOOP-3934) | Update log4j from 1.2.13 to 1.2.15 |  Blocker | . | Don Kim | Owen O'Malley |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-4161](https://issues.apache.org/jira/browse/HADOOP-4161) | [HOD] Uncaught exceptions can potentially hang hod-client. |  Major | contrib/hod | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [HADOOP-4060](https://issues.apache.org/jira/browse/HADOOP-4060) | [HOD] Make HOD to roll log files on the client |  Blocker | contrib/hod | Hemanth Yamijala | Vinod Kumar Vavilapalli |
| [HADOOP-4046](https://issues.apache.org/jira/browse/HADOOP-4046) | WritableComparator's constructor should be protected instead of private |  Major | io | Owen O'Malley | Chris Douglas |
| [HADOOP-4040](https://issues.apache.org/jira/browse/HADOOP-4040) | Remove the hardcoded ipc.client.connection.maxidletime setting from the TaskTracker.Child.main() |  Blocker | . | Devaraj Das | Devaraj Das |
| [HADOOP-4037](https://issues.apache.org/jira/browse/HADOOP-4037) | HadoopQA contrib -1 comments due to inconsistency in eclipse plugin declared jars |  Blocker | . | Nigel Daley | Nigel Daley |
| [HADOOP-3995](https://issues.apache.org/jira/browse/HADOOP-3995) | renameTo(src, dst) does not restore src name in case of quota failure. |  Blocker | . | Raghu Angadi | Raghu Angadi |
| [HADOOP-3940](https://issues.apache.org/jira/browse/HADOOP-3940) | Reduce often attempts in memory merge with no work |  Minor | . | Chris Douglas | Chris Douglas |
| [HADOOP-3821](https://issues.apache.org/jira/browse/HADOOP-3821) | SequenceFile's Reader.decompressorPool or Writer.decompressorPool gets into an inconsistent state when calling close() more than once |  Major | io | Peter Voss | Arun C Murthy |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


