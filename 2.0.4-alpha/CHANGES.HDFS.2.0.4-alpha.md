# Hadoop Changelog

## Release 2.0.4-alpha - 2013-04-25

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-4649](https://issues.apache.org/jira/browse/HDFS-4649) | Webhdfs cannot list large directories |  Blocker | namenode, security, webhdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-4646](https://issues.apache.org/jira/browse/HDFS-4646) | createNNProxyWithClientProtocol ignores configured timeout value |  Minor | namenode | Jagane Sundar | Jagane Sundar |
| [HDFS-4581](https://issues.apache.org/jira/browse/HDFS-4581) | DataNode#checkDiskError should not be called on network errors |  Major | datanode | Rohit Kochar | Rohit Kochar |
| [HDFS-4576](https://issues.apache.org/jira/browse/HDFS-4576) | Webhdfs authentication issues |  Major | webhdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-4571](https://issues.apache.org/jira/browse/HDFS-4571) | WebHDFS should not set the service hostname on the server side |  Major | webhdfs | Alejandro Abdelnur | Alejandro Abdelnur |
| [HDFS-3344](https://issues.apache.org/jira/browse/HDFS-3344) | Unreliable corrupt blocks counting in TestProcessCorruptBlocks |  Major | namenode | Tsz Wo Nicholas Sze | Kihwal Lee |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-4577](https://issues.apache.org/jira/browse/HDFS-4577) | Webhdfs operations should declare if authentication is required |  Major | webhdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-4567](https://issues.apache.org/jira/browse/HDFS-4567) | Webhdfs does not need a token for token operations |  Major | webhdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-4566](https://issues.apache.org/jira/browse/HDFS-4566) | Webdhfs token cancelation should use authentication |  Major | webhdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-4560](https://issues.apache.org/jira/browse/HDFS-4560) | Webhdfs cannot use tokens obtained by another user |  Major | webhdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-4548](https://issues.apache.org/jira/browse/HDFS-4548) | Webhdfs doesn't renegotiate SPNEGO token |  Blocker | . | Daryn Sharp | Daryn Sharp |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


