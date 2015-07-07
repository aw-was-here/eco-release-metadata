# Apache Hadoop Changelog

## Release 0.19.2 - 2009-07-23

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-5332](https://issues.apache.org/jira/browse/HADOOP-5332) | Make support for file append API configurable |  Blocker | . | Nigel Daley | dhruba borthakur |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-5379](https://issues.apache.org/jira/browse/HADOOP-5379) | Throw exception instead of writing to System.err when there is a CRC error on CBZip2InputStream |  Minor | io | Rodrigo Schmidt | Rodrigo Schmidt |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-5557](https://issues.apache.org/jira/browse/HADOOP-5557) | Two minor problems in TestOverReplicatedBlocks |  Minor | test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-5554](https://issues.apache.org/jira/browse/HADOOP-5554) | DataNodeCluster should create blocks with the same generation stamp as the blocks created in CreateEditsLog |  Major | test | Hairong Kuang | Hairong Kuang |
| [HADOOP-5446](https://issues.apache.org/jira/browse/HADOOP-5446) | TaskTracker metrics are disabled |  Major | metrics | Chris Douglas | Chris Douglas |
| [HADOOP-5384](https://issues.apache.org/jira/browse/HADOOP-5384) | DataNodeCluster should not create blocks with generationStamp == 1 |  Blocker | test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-5326](https://issues.apache.org/jira/browse/HADOOP-5326) | bzip2 codec (CBZip2OutputStream) creates corrupted output file for some inputs |  Major | io | Rodrigo Schmidt | Rodrigo Schmidt |
| [HADOOP-5213](https://issues.apache.org/jira/browse/HADOOP-5213) | BZip2CompressionOutputStream NullPointerException |  Blocker | io | Zheng Shao | Zheng Shao |
| [HADOOP-4719](https://issues.apache.org/jira/browse/HADOOP-4719) | The ls shell command documentation is out-dated |  Major | documentation | Tsz Wo Nicholas Sze | Ravi Phulari |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


