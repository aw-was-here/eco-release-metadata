# Apache Hadoop Changelog

## Release 0.9.0 - 2006-12-01

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-611](https://issues.apache.org/jira/browse/HADOOP-611) | SequenceFile.Sorter should have a merge method that returns an iterator |  Major | io | Owen O'Malley | Devaraj Das |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-677](https://issues.apache.org/jira/browse/HADOOP-677) | RPC should send a fixed header and version at the start of connection |  Major | ipc | Owen O'Malley | Owen O'Malley |
| [HADOOP-538](https://issues.apache.org/jira/browse/HADOOP-538) | Implement a nio's 'direct buffer' based wrapper over zlib to improve performance of java.util.zip.{De\|In}flater as a 'custom codec' |  Major | io | Arun C Murthy | Arun C Murthy |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-747](https://issues.apache.org/jira/browse/HADOOP-747) | RecordIO compiler does not produce correct Java code when buffer is used as key or value in map |  Major | record | Milind Bhandarkar | Milind Bhandarkar |
| [HADOOP-739](https://issues.apache.org/jira/browse/HADOOP-739) | TestIPC occassionally fails with BindException |  Minor | test | Nigel Daley | Nigel Daley |
| [HADOOP-729](https://issues.apache.org/jira/browse/HADOOP-729) | packageNativeHadoop.sh has non-standard sh code |  Critical | scripts | Arun C Murthy | Arun C Murthy |
| [HADOOP-724](https://issues.apache.org/jira/browse/HADOOP-724) | bin/hadoop:111 uses java directly, it should use JAVA\_HOME |  Minor | scripts | Sanjay Dahiya | Arun C Murthy |
| [HADOOP-716](https://issues.apache.org/jira/browse/HADOOP-716) | Javadoc warning in SequenceFile.java |  Minor | io | Devaraj Das | Devaraj Das |
| [HADOOP-715](https://issues.apache.org/jira/browse/HADOOP-715) | build.xml sets up wrong 'hadoop.log.dir' property for 'ant test' |  Minor | test | Arun C Murthy | Arun C Murthy |
| [HADOOP-712](https://issues.apache.org/jira/browse/HADOOP-712) | Record-IO XML serialization is broken for control characters |  Major | record | Milind Bhandarkar | Milind Bhandarkar |
| [HADOOP-708](https://issues.apache.org/jira/browse/HADOOP-708) | test-libhdfs.sh does not properly capture and return error status |  Major | test | Nigel Daley | Nigel Daley |
| [HADOOP-696](https://issues.apache.org/jira/browse/HADOOP-696) | TestTextInputFormat fails on some platforms due to non-determinism in format.getSplits() |  Minor | test | Sameer Paranjpye | Sameer Paranjpye |
| [HADOOP-687](https://issues.apache.org/jira/browse/HADOOP-687) | Upgrade to Jetty 6 does not patch bin/hadoop |  Critical | scripts | Sameer Paranjpye | Sameer Paranjpye |
| [HADOOP-637](https://issues.apache.org/jira/browse/HADOOP-637) | ipc.Server has memory leak -- serious issue for namenode server |  Major | ipc | Christian Kunz | Raghu Angadi |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


