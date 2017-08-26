
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
# Apache Oozie  5.0.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [OOZIE-2387](https://issues.apache.org/jira/browse/OOZIE-2387) | *Major* | **Oozie is Unable to handle Spaces in file/archive tag.**

Oozie file tag is unable to handle white spaces and other special characters.

Error - 
Caused by: java.lang.NullPointerException
	at org.apache.oozie.action.hadoop.JavaActionExecutor.addToCache(JavaActionExecutor.java:529)
	at org.apache.oozie.action.hadoop.JavaActionExecutor.setLibFilesArchives(JavaActionExecutor.java:678)
	at org.apache.oozie.action.hadoop.JavaActionExecutor.submitLauncher(JavaActionExecutor.java:884)


Sample XML File --

\<?xml version="1.0" ?\>
\<workflow-app xmlns="uri:oozie:workflow:0.4" xmlns:ns5="uri:oozie:shell-action:0.2"
	xmlns:ns4="uri:oozie:workflow:0.4" xmlns:ns3="uri:oozie:sqoop-action:0.2"
	xmlns:ns2="uri:oozie:hive-action:0.3" name="test-shell-space"\>
	\<start to="shell1"\>\</start\>
	\<action name="shell1"\>
		\<shell xmlns="uri:oozie:shell-action:0.2"\>
			\<job-tracker\>${wf\_hadoop\_resourceManager}\</job-tracker\>
			\<name-node\>${wf\_hadoop\_nameNode}\</name-node\>
			\<exec\>shell 1.sh\</exec\>
			\<file\>/user/map-dev/test-case-dir/shell/script/shell 1.sh\</file\>
		\</shell\>
		\<ok to="end"\>\</ok\>
		\<error to="kill"\>\</error\>
	\</action\>
	\<kill name="kill"\>
		\<message\>shell-decision job failed\</message\>
	\</kill\>
	\<end name="end"\>\</end\>
\</workflow-app\>


---

* [OOZIE-2984](https://issues.apache.org/jira/browse/OOZIE-2984) | *Major* | **Parse spark-defaults.conf values with spaces without needing the quotes**

Oozie requires multiple java opts to be enclosed in quotes. For example:
{code}
spark.driver.extraJavaOptions="-Xmn2703m -XX:SurvivorRatio=2 -XX:ParallelGCThreads=20"
{code}

However the above breaks spark-shell. 

{code}
$ ./spark2-shell
Invalid initial young generation size: -Xmn2212m -XX:SurvivorRatio=2 -XX:ParallelGCThreads=20
Error: Could not create the Java Virtual Machine.
Error: A fatal exception has occurred. Program will exit.
{code}

To fix spark-shell, we have to remove the quotes, which errors out Oozie:
{code}
Error: Unrecognized option '-XX:SurvivorRatio=2'
...
--conf
spark.executor.extraJavaOptions=-Xmn2703m -Dlog4j.configuration=spark-log4j.properties
-XX:SurvivorRatio=2
{code}

Oozie should be able to parse spark-defaults.conf values with spaces without needing the quotes.



