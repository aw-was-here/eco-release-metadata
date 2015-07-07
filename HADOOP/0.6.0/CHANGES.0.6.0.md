# Apache Hadoop Changelog

## Release 0.6.0 - 2006-09-08

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-497](https://issues.apache.org/jira/browse/HADOOP-497) | DataNodes and TaskTrackers should be able to report hostnames and ips relative to customizable network interfaces and nameservers |  Minor | util | Lorenzo Thione | Lorenzo Thione |
| [HADOOP-441](https://issues.apache.org/jira/browse/HADOOP-441) | SequenceFile should support 'custom compressors' |  Major | io | Arun C Murthy | Arun C Murthy |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-312](https://issues.apache.org/jira/browse/HADOOP-312) | Connections should not be cached |  Major | ipc | Devaraj Das | Devaraj Das |
| [HADOOP-54](https://issues.apache.org/jira/browse/HADOOP-54) | SequenceFile should compress blocks, not individual entries |  Major | io | Doug Cutting | Arun C Murthy |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-507](https://issues.apache.org/jira/browse/HADOOP-507) | Runtime exception in org.apache.hadoop.io.WritableFactories.newInstance when trying to startup namenode/datanode |  Major | util | Arun C Murthy | Owen O'Malley |
| [HADOOP-455](https://issues.apache.org/jira/browse/HADOOP-455) | Text class should support the DEL character |  Major | io | Hairong Kuang | Hairong Kuang |
| [HADOOP-421](https://issues.apache.org/jira/browse/HADOOP-421) | replace String in hadoop record io with the new Text class |  Major | record | Owen O'Malley | Milind Bhandarkar |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


