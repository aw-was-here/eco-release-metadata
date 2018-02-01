
<!---
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
-->
# Apache Ranger  0.7.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [RANGER-1788](https://issues.apache.org/jira/browse/RANGER-1788) | *Critical* | **Install Ranger admin failure.**

1. Fetch latest source using "git clone https://git-wip-us.apache.org/repos/asf/ranger.git" command.
2. Build.
3. Install Ranger admin.
Error information is as following:
{code}
2017-09-16 23:39:54,695  [E] 028-add-unique-constraint-on-table-x\_group.sql import failed!
{code}

Execute 028-add-unique-constraint-on-table-x\_group.sql file separately, there are following:
{code}
1. error code:1314
ALTER VIEW is not allowed in stored procedures
2. error code:1305
PROCEDURE ranger.create\_unique\_constraint\_on\_groupname does not exist
{code}

This issue was introduced by the RANGER-1765.
{code}
mysql\> source /diskc/installranger/run/ranger-1.0.0-admin/db/mysql/patches/028-add-unique-constraint-on-table-x\_group.sql
Query OK, 0 rows affected, 1 warning (0.00 sec)
ERROR 1314 (0A000): ALTER VIEW is not allowed in stored procedures
ERROR 1305 (42000): PROCEDURE ranger.create\_unique\_constraint\_on\_groupname does not exist
Query OK, 0 rows affected, 1 warning (0.00 sec)
{code}

Reason:
{code}
As of MySQL 5.7.4, the IGNORE clause for ALTER TABLE is removed and its use produces an error.
{code}


---

* [RANGER-1810](https://issues.apache.org/jira/browse/RANGER-1810) | *Major* | **Ranger supports plugin to enable, monitor and manage apache Sqoop2**

Apache Sqoop is a tool designed for efficiently transferring bulk data between Apache Hadoop and structured datastores such as relational databases. You can use Sqoop to import data from external structured datastores into Hadoop Distributed File System or related systems like Hive and HBase. Conversely, Sqoop can be used to extract data from Hadoop and export it to external structured datastores such as relational databases and enterprise data warehouses.It successfully graduated from the Incubator in March of 2012 and is now a Top-Level Apache project.  
The Ranger will further expand the influence in the hadoop ecosystem if it supports sqoop authorization. So we should develop sqoop plugin to enable, monitor and manage apache Sqoop2.

Our test specialists have rigorously tested this feature.


---

* [RANGER-1932](https://issues.apache.org/jira/browse/RANGER-1932) | *Major* | **After create the service of yarndev,the policy named 'all-queue' created for the default user should have all the permissions.However, this policy does't take effect.**

Steps:
1.Create service named yarndev and userName is xiehh
2.The Queue of the default policy for user xiehh is .\\\*
3.Using xiehh to execute the command line 'hadoop jar /home/xiehh/hadoop-2.7.1/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.7.1.jar wordcount -Dmapreduce.job.queuename=default /input /output/mr'
  Exceptions are as follows:
{code}
  [xiehh@zdh41 hadoop-2.7.1]$ hadoop jar /home/xiehh/hadoop-2.7.1/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.7.1.jar wordcount -Dmapreduce.job.queuename=default /input /output/mr
17/12/15 10:53:27 WARN util.NativeCodeLoader: Unable to load native-hadoop library for your platform... using builtin-java classes where applicable
17/12/15 10:53:28 INFO client.RMProxy: Connecting to ResourceManager at /0.0.0.0:8032
17/12/15 10:53:28 INFO input.FileInputFormat: Total input paths to process : 1
17/12/15 10:53:28 INFO mapreduce.JobSubmitter: number of splits:1
17/12/15 10:53:29 INFO mapreduce.JobSubmitter: Submitting tokens for job: job\_1513238905285\_0005
17/12/15 10:53:44 INFO mapreduce.JobSubmitter: Cleaning up the staging area /tmp/hadoop-yarn/staging/xiehh/.staging/job\_1513238905285\_0005
java.io.IOException: org.apache.hadoop.yarn.exceptions.YarnException: Failed to submit application\_1513238905285\_0005 to YARN : org.apache.hadoop.security.AccessControlException: User xiehh cannot submit applications to queue root.default
	at org.apache.hadoop.mapred.YARNRunner.submitJob(YARNRunner.java:306)
	at org.apache.hadoop.mapreduce.JobSubmitter.submitJobInternal(JobSubmitter.java:240)
	at org.apache.hadoop.mapreduce.Job$10.run(Job.java:1290)
	at org.apache.hadoop.mapreduce.Job$10.run(Job.java:1287)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:415)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1657)
	at org.apache.hadoop.mapreduce.Job.submit(Job.java:1287)
	at org.apache.hadoop.mapreduce.Job.waitForCompletion(Job.java:1308)
	at org.apache.hadoop.examples.WordCount.main(WordCount.java:87)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.hadoop.util.ProgramDriver$ProgramDescription.invoke(ProgramDriver.java:71)
	at org.apache.hadoop.util.ProgramDriver.run(ProgramDriver.java:144)
	at org.apache.hadoop.examples.ExampleDriver.main(ExampleDriver.java:74)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.hadoop.util.RunJar.run(RunJar.java:221)
	at org.apache.hadoop.util.RunJar.main(RunJar.java:136)
Caused by: org.apache.hadoop.yarn.exceptions.YarnException: Failed to submit application\_1513238905285\_0005 to YARN : org.apache.hadoop.security.AccessControlException: User xiehh cannot submit applications to queue root.default
	at org.apache.hadoop.yarn.client.api.impl.YarnClientImpl.submitApplication(YarnClientImpl.java:270)
	at org.apache.hadoop.mapred.ResourceMgrDelegate.submitApplication(ResourceMgrDelegate.java:290)
	at org.apache.hadoop.mapred.YARNRunner.submitJob(YARNRunner.java:290)
	... 22 more
{code}
The user xiehh does't have the permission, and the default policy for 'all-queue' does't take effect.
4.Through analysis,I find that the Queue {noformat} .\*{noformat}  is wrong,
 and we should change to {noformat} \*.\* {noformat}.
5.After changed:
{code}
[xiehh@zdh41 hadoop-2.7.1]$ hadoop jar /home/xiehh/hadoop-2.7.1/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.7.1.jar wordcount -Dmapreduce.job.queuename=default /input /output/mr1
17/12/15 11:38:00 WARN util.NativeCodeLoader: Unable to load native-hadoop library for your platform... using builtin-java classes where applicable
17/12/15 11:38:00 INFO client.RMProxy: Connecting to ResourceManager at /0.0.0.0:8032
17/12/15 11:38:01 INFO input.FileInputFormat: Total input paths to process : 1
17/12/15 11:38:01 INFO mapreduce.JobSubmitter: number of splits:1
17/12/15 11:38:02 INFO mapreduce.JobSubmitter: Submitting tokens for job: job\_1513238905285\_0006
17/12/15 11:38:17 INFO impl.YarnClientImpl: Submitted application application\_1513238905285\_0006
17/12/15 11:38:17 INFO mapreduce.Job: The url to track the job: http://zdh41:8088/proxy/application\_1513238905285\_0006/
17/12/15 11:38:17 INFO mapreduce.Job: Running job: job\_1513238905285\_0006
17/12/15 11:38:23 INFO mapreduce.Job: Job job\_1513238905285\_0006 running in uber mode : false
17/12/15 11:38:23 INFO mapreduce.Job:  map 0% reduce 0%
17/12/15 11:38:28 INFO mapreduce.Job:  map 100% reduce 0%
17/12/15 11:38:34 INFO mapreduce.Job:  map 100% reduce 100%
{code}



