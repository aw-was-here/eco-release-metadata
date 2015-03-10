# Hadoop Changelog

## Release 3.0.0 - 2015-03-09

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-11657](https://issues.apache.org/jira/browse/HADOOP-11657) | Align the output of `hadoop fs -du` to be more Unix-like |  Minor |  | Nick Dimiduk | Akira AJISAKA |
| [HADOOP-11356](https://issues.apache.org/jira/browse/HADOOP-11356) | Removed deprecated o.a.h.fs.permission.AccessControlException |  Major |  | Haohui Mai | Li Lu |
| [HADOOP-11041](https://issues.apache.org/jira/browse/HADOOP-11041) | VersionInfo output specifies subversion |  Minor | (build) | Guo Ruijing | Tsuyoshi Ozawa |
| [HADOOP-10950](https://issues.apache.org/jira/browse/HADOOP-10950) | rework  heap management  vars |  Major | (scripts) | Allen Wittenauer | John Smith |
| [HADOOP-10474](https://issues.apache.org/jira/browse/HADOOP-10474) | Move o.a.h.record to hadoop-streaming |  Major |  | Haohui Mai | Haohui Mai |
| [HADOOP-9902](https://issues.apache.org/jira/browse/HADOOP-9902) | Shell script rewrite |  Major | (scripts) | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-8124](https://issues.apache.org/jira/browse/HADOOP-8124) | Remove the deprecated Syncable.sync() method |  Major | (fs) | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-6857](https://issues.apache.org/jira/browse/HADOOP-6857) | FsShell should report raw disk usage including replication factor |  Major | (fs) | Alex Kozlov | Byron Wong |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-11565](https://issues.apache.org/jira/browse/HADOOP-11565) | Add --slaves shell option |  Major | (scripts) | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11554](https://issues.apache.org/jira/browse/HADOOP-11554) | Expose HadoopKerberosName as a hadoop subcommand |  Major | (scripts) | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11485](https://issues.apache.org/jira/browse/HADOOP-11485) | Pluggable shell integration |  Major | (scripts) | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11353](https://issues.apache.org/jira/browse/HADOOP-11353) | Add support for .hadooprc |  Major | (scripts) | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11084](https://issues.apache.org/jira/browse/HADOOP-11084) | jenkins patchprocess links are broken |  Major | (scripts) | Colin Patrick McCabe | Arpit Agarwal |
| [HADOOP-11013](https://issues.apache.org/jira/browse/HADOOP-11013) | CLASSPATH handling should be consolidated, debuggable |  Major |  | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-9044](https://issues.apache.org/jira/browse/HADOOP-9044) | add FindClass main class to provide classpath checking of installations |  Minor | (util) | Steve Loughran | Steve Loughran |
| [HADOOP-8934](https://issues.apache.org/jira/browse/HADOOP-8934) | Shell command ls should include sort options |  Minor | (fs) | Jonathan Allen | Jonathan Allen |
| [HADOOP-6590](https://issues.apache.org/jira/browse/HADOOP-6590) | Add a username check for hadoop sub-commands |  Minor | (scripts) | Scott Chen | John Smith |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-11673](https://issues.apache.org/jira/browse/HADOOP-11673) | Use org.junit.Assume to skip tests instead of return |  Minor | (test) | Akira AJISAKA | Brahma Reddy Battula |
| [HADOOP-11596](https://issues.apache.org/jira/browse/HADOOP-11596) | Allow smart-apply-patch.sh to add new files in binary git patches |  Major |  | Ravi Prakash | Ravi Prakash |
| [HADOOP-11593](https://issues.apache.org/jira/browse/HADOOP-11593) | Convert site documentation from apt to markdown (stragglers) |  Major | (documentation) | Allen Wittenauer | Masatake Iwasaki |
| [HADOOP-11575](https://issues.apache.org/jira/browse/HADOOP-11575) | Daemon log documentation is misleading |  Major | (documentation) | Jagadesh Kiran N | Naganarasimha G R |
| [HADOOP-11460](https://issues.apache.org/jira/browse/HADOOP-11460) | Deprecate shell vars |  Major | (scripts) | Allen Wittenauer | John Smith |
| [HADOOP-11352](https://issues.apache.org/jira/browse/HADOOP-11352) | Clean up test-patch.sh to disable "+1 contrib tests" |  Major | (build) | Akira AJISAKA | Akira AJISAKA |
| [HADOOP-11346](https://issues.apache.org/jira/browse/HADOOP-11346) | Rewrite sls/rumen to use new shell framework |  Major | (scripts , tools) | Allen Wittenauer | John Smith |
| [HADOOP-11208](https://issues.apache.org/jira/browse/HADOOP-11208) | Replace "daemon" with better name in script subcommands |  Major | (scripts) | Yongjun Zhang | Allen Wittenauer |
| [HADOOP-11150](https://issues.apache.org/jira/browse/HADOOP-11150) | hadoop command should show the reason on failure by invalid COMMAND or CLASSNAME |  Minor | (scripts) | Masatake Iwasaki | Masatake Iwasaki |
