# Apache Hadoop Changelog

## Release 0.5.0 - 2006-08-04

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-341](https://issues.apache.org/jira/browse/HADOOP-341) | Enhance distcp to handle \*http\* as a 'source protocol'. |  Major | util | Arun C Murthy | Arun C Murthy |
| [HADOOP-340](https://issues.apache.org/jira/browse/HADOOP-340) | Using wildcards in config pathnames |  Minor | conf | Johan Oskarsson | Doug Cutting |
| [HADOOP-302](https://issues.apache.org/jira/browse/HADOOP-302) | class Text (replacement for class UTF8) was: HADOOP-136 |  Major | io | Michel Tourn | Hairong Kuang |
| [HADOOP-237](https://issues.apache.org/jira/browse/HADOOP-237) | Standard set of Performance Metrics for Hadoop |  Major | metrics | Milind Bhandarkar | Milind Bhandarkar |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-393](https://issues.apache.org/jira/browse/HADOOP-393) | The validateUTF function of class Text throws MalformedInputException for valid UTF8 code containing ascii chars |  Major | io | Hairong Kuang | Hairong Kuang |
| [HADOOP-384](https://issues.apache.org/jira/browse/HADOOP-384) | improved error messages for file checksum errors |  Minor | fs | Owen O'Malley | Owen O'Malley |
| [HADOOP-368](https://issues.apache.org/jira/browse/HADOOP-368) | DistributedFSCheck should cleanup, seek, and report missing files. |  Minor | fs | Konstantin Shvachko | Konstantin Shvachko |
| [HADOOP-364](https://issues.apache.org/jira/browse/HADOOP-364) | rpc versioning broke out-of-order server launches |  Major | ipc | Owen O'Malley | Owen O'Malley |
| [HADOOP-358](https://issues.apache.org/jira/browse/HADOOP-358) | NPE in Path.equals |  Major | fs | Frédéric Bertin | Doug Cutting |
| [HADOOP-327](https://issues.apache.org/jira/browse/HADOOP-327) | ToolBase calls System.exit |  Major | util | Owen O'Malley | Hairong Kuang |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-351](https://issues.apache.org/jira/browse/HADOOP-351) | Remove Jetty dependency |  Major | ipc | Barry Kaplan | Devaraj Das |


