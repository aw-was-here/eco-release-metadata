# Apache Hadoop Changelog

## Release 0.12.0 - 2007-03-02

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-1033](https://issues.apache.org/jira/browse/HADOOP-1033) | Rewrite AmazonEC2 wiki page |  Minor | scripts | Tom White | Tom White |
| [HADOOP-1030](https://issues.apache.org/jira/browse/HADOOP-1030) | in unit tests, set ipc timeout in one place |  Minor | test | Doug Cutting | Doug Cutting |
| [HADOOP-1025](https://issues.apache.org/jira/browse/HADOOP-1025) | remove dead code in Server.java |  Minor | ipc | Doug Cutting | Doug Cutting |
| [HADOOP-1007](https://issues.apache.org/jira/browse/HADOOP-1007) | Names used for map, reduce, and shuffle metrics should be unique |  Trivial | metrics | Nigel Daley | Nigel Daley |
| [HADOOP-997](https://issues.apache.org/jira/browse/HADOOP-997) | Implement S3 retry mechanism for failed block transfers |  Major | fs | Tom White | Tom White |
| [HADOOP-982](https://issues.apache.org/jira/browse/HADOOP-982) | A couple setter functions and toString method for BytesWritable. |  Major | io | Owen O'Malley | Owen O'Malley |
| [HADOOP-954](https://issues.apache.org/jira/browse/HADOOP-954) | Metrics should offer complete set of static report methods or none at all |  Minor | metrics | Nigel Daley | David Bowen |
| [HADOOP-952](https://issues.apache.org/jira/browse/HADOOP-952) | Create a public (shared) Hadoop EC2 AMI |  Major | scripts | Tom White | Tom White |
| [HADOOP-941](https://issues.apache.org/jira/browse/HADOOP-941) | Enhancements to Hadoop record I/O - Part 1 |  Major | record | Milind Bhandarkar | Milind Bhandarkar |
| [HADOOP-928](https://issues.apache.org/jira/browse/HADOOP-928) | make checksums optional per FileSystem |  Major | fs | Doug Cutting | Hairong Kuang |
| [HADOOP-889](https://issues.apache.org/jira/browse/HADOOP-889) | DFS unit tests have duplicate code |  Minor | test | Doug Cutting | Milind Bhandarkar |
| [HADOOP-882](https://issues.apache.org/jira/browse/HADOOP-882) | S3FileSystem should retry if there is a communication problem with S3 |  Major | fs | Tom White | Tom White |
| [HADOOP-858](https://issues.apache.org/jira/browse/HADOOP-858) | clean up smallJobsBenchmark and move to src/test/org/apache/hadoop/mapred |  Minor | build | Nigel Daley | Nigel Daley |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-1049](https://issues.apache.org/jira/browse/HADOOP-1049) | race condition in setting up ipc connections |  Major | ipc | Owen O'Malley | Devaraj Das |
| [HADOOP-1044](https://issues.apache.org/jira/browse/HADOOP-1044) | TestDecommission fails because it attempts to transfer block to a dead datanode |  Major | test | Wendy Chien | Wendy Chien |
| [HADOOP-1006](https://issues.apache.org/jira/browse/HADOOP-1006) | The "-local" option does work properly with test programs |  Minor | test | Gautam Kowshik | Doug Cutting |
| [HADOOP-992](https://issues.apache.org/jira/browse/HADOOP-992) | The mini/mr cluster for testing always uses the local file system rather than the namenode that was passed in |  Major | test | Owen O'Malley | Owen O'Malley |
| [HADOOP-761](https://issues.apache.org/jira/browse/HADOOP-761) | Unit tests should cleanup created files in /tmp. It causes tests to fail if more than one users run tests on same machine. |  Minor | test | Sanjay Dahiya | Nigel Daley |
| [HADOOP-442](https://issues.apache.org/jira/browse/HADOOP-442) | slaves file should include an 'exclude' section, to prevent "bad" datanodes and tasktrackers from disrupting  a cluster |  Major | conf | Yoram Arnon | Wendy Chien |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-1051](https://issues.apache.org/jira/browse/HADOOP-1051) | Add checkstyle target to ant build file |  Major | build, test | Tom White | Tom White |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


