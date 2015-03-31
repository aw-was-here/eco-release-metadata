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
| [HADOOP-9379](https://issues.apache.org/jira/browse/HADOOP-9379) | capture the ulimit info after printing the log to the console |  Trivial | . | Arpit Gupta | Arpit Gupta |
| [HADOOP-9374](https://issues.apache.org/jira/browse/HADOOP-9374) | Add tokens from -tokenCacheFile into UGI |  Major | security | Daryn Sharp | Daryn Sharp |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-9471](https://issues.apache.org/jira/browse/HADOOP-9471) | hadoop-client wrongfully excludes jetty-util JAR, breaking webhdfs |  Major | build | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-9467](https://issues.apache.org/jira/browse/HADOOP-9467) | Metrics2 record filtering (.record.filter.include/exclude) does not filter by name |  Major | metrics | Chris Nauroth | Chris Nauroth |
| [HADOOP-9444](https://issues.apache.org/jira/browse/HADOOP-9444) | $var shell substitution in properties are not expanded in hadoop-policy.xml |  Blocker | conf | Konstantin Boudnik | Roman Shaposhnik |
| [HADOOP-9406](https://issues.apache.org/jira/browse/HADOOP-9406) | hadoop-client leaks dependency on JDK tools jar |  Major | build | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-9405](https://issues.apache.org/jira/browse/HADOOP-9405) | TestGridmixSummary#testExecutionSummarizer is broken |  Minor | test, tools | Andrew Wang | Andrew Wang |
| [HADOOP-9399](https://issues.apache.org/jira/browse/HADOOP-9399) | protoc maven plugin doesn't work on mvn 3.0.2 |  Minor | build | Todd Lipcon | Konstantin Boudnik |
| [HADOOP-9301](https://issues.apache.org/jira/browse/HADOOP-9301) | hadoop client servlet/jsp/jetty/tomcat JARs creating conflicts in Oozie & HttpFS |  Blocker | build | Roman Shaposhnik | Alejandro Abdelnur |
| [HADOOP-9299](https://issues.apache.org/jira/browse/HADOOP-9299) | kerberos name resolution is kicking in even when kerberos is not configured |  Blocker | security | Roman Shaposhnik | Daryn Sharp |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


