# Apache Hadoop Changelog

## Release 0.18.3 - 2009-01-29

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-4997](https://issues.apache.org/jira/browse/HADOOP-4997) | workaround for tmp file handling on DataNodes in 0.18 (HADOOP-4663) |  Blocker | . | Raghu Angadi | Raghu Angadi |
| [HADOOP-4659](https://issues.apache.org/jira/browse/HADOOP-4659) | Root cause of connection failure is being lost to code that uses it for delaying startup |  Blocker | ipc | Steve Loughran | Steve Loughran |
| [HADOOP-4061](https://issues.apache.org/jira/browse/HADOOP-4061) | Large number of decommission freezes the Namenode |  Major | . | Koji Noguchi | Tsz Wo Nicholas Sze |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-5077](https://issues.apache.org/jira/browse/HADOOP-5077) | JavaDoc errors in 0.18.3 |  Blocker | util | Raghu Angadi | Raghu Angadi |
| [HADOOP-4919](https://issues.apache.org/jira/browse/HADOOP-4919) | [HOD] Provide execute access to JT history directory path for group |  Major | contrib/hod | Hemanth Yamijala | Peeyush Bishnoi |
| [HADOOP-4797](https://issues.apache.org/jira/browse/HADOOP-4797) | RPC Server can leave a lot of direct buffers |  Blocker | ipc | Raghu Angadi | Raghu Angadi |
| [HADOOP-4726](https://issues.apache.org/jira/browse/HADOOP-4726) | documentation typos: "the the" |  Minor | documentation | Tsz Wo Nicholas Sze | Edward J. Yoon |
| [HADOOP-4713](https://issues.apache.org/jira/browse/HADOOP-4713) | librecordio does not scale to large records |  Blocker | record | Christian Kunz | Christian Kunz |
| [HADOOP-4659](https://issues.apache.org/jira/browse/HADOOP-4659) | Root cause of connection failure is being lost to code that uses it for delaying startup |  Blocker | ipc | Steve Loughran | Steve Loughran |
| [HADOOP-4542](https://issues.apache.org/jira/browse/HADOOP-4542) | Fault in TestDistributedUpgrade |  Minor | test | Robert Chansler | Raghu Angadi |
| [HADOOP-4257](https://issues.apache.org/jira/browse/HADOOP-4257) | TestLeaseRecovery2.testBlockSynchronization failing. |  Blocker | test | Vinod Kumar Vavilapalli | Tsz Wo Nicholas Sze |
| [HADOOP-3883](https://issues.apache.org/jira/browse/HADOOP-3883) | TestFileCreation fails once in a while |  Blocker | test | Lohit Vijayarenu | Tsz Wo Nicholas Sze |
| [HADOOP-3121](https://issues.apache.org/jira/browse/HADOOP-3121) | dfs -lsr fail with "Could not get listing " |  Minor | fs | Koji Noguchi | Tsz Wo Nicholas Sze |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-4823](https://issues.apache.org/jira/browse/HADOOP-4823) | Should not use java.util.NavigableMap in 0.18 |  Major | util | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-4150](https://issues.apache.org/jira/browse/HADOOP-4150) | Include librecordio as part of the release |  Blocker | build | Koji Noguchi | Giridharan Kesavan |


