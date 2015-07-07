# Apache Hadoop Changelog

## Release 1.0.2 - 2012-04-03

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-3075](https://issues.apache.org/jira/browse/HDFS-3075) | Backport HADOOP-4885 to branch-1 |  Major | namenode | Brandon Li | Brandon Li |
| [HDFS-2701](https://issues.apache.org/jira/browse/HDFS-2701) | Cleanup FS\* processIOError methods |  Major | namenode | Eli Collins | Eli Collins |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-8201](https://issues.apache.org/jira/browse/HADOOP-8201) | create the configure script for native compilation as part of the build |  Blocker | build | Giridharan Kesavan | Giridharan Kesavan |
| [HADOOP-8050](https://issues.apache.org/jira/browse/HADOOP-8050) | Deadlock in metrics |  Major | metrics | Kihwal Lee | Kihwal Lee |
| [HDFS-3101](https://issues.apache.org/jira/browse/HDFS-3101) | cannot read empty file using webhdfs |  Major | webhdfs | Zhanwei Wang | Tsz Wo Nicholas Sze |
| [HDFS-3006](https://issues.apache.org/jira/browse/HDFS-3006) | Webhdfs "SETOWNER" call returns incorrect content-type |  Major | webhdfs | bc Wong | Tsz Wo Nicholas Sze |
| [HDFS-2703](https://issues.apache.org/jira/browse/HDFS-2703) | removedStorageDirs is not updated everywhere we remove a storage dir |  Major | namenode | Eli Collins | Eli Collins |
| [HDFS-2702](https://issues.apache.org/jira/browse/HDFS-2702) | A single failed name dir can cause the NN to exit |  Critical | namenode | Eli Collins | Eli Collins |
| [MAPREDUCE-3851](https://issues.apache.org/jira/browse/MAPREDUCE-3851) | Allow more aggressive action on detection of the jetty issue |  Major | tasktracker | Kihwal Lee | Thomas Graves |
| [MAPREDUCE-3824](https://issues.apache.org/jira/browse/MAPREDUCE-3824) | Distributed caches are not removed properly |  Critical | distributed-cache | Allen Wittenauer | Thomas Graves |
| [MAPREDUCE-764](https://issues.apache.org/jira/browse/MAPREDUCE-764) | TypedBytesInput's readRaw() does not preserve custom type codes |  Blocker | contrib/streaming | Klaas Bosteels | Klaas Bosteels |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


