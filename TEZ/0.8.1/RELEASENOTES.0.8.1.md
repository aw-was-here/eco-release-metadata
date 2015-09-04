
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
# Apache Tez  0.8.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [TEZ-2761](https://issues.apache.org/jira/browse/TEZ-2761) | *Major* | **Tez UI: update the progress on the dag and vertices pages with info from AM**

The data displayed on the UI for running tasks should be updated with the latest status fetched from AM.
This includes the status, progress, task count etc. The api should also allow querying the values for the tasks (running, failed, succeeded...).


---

* [TEZ-2755](https://issues.apache.org/jira/browse/TEZ-2755) | *Major* | **Fix findbugs warning in TezClient**

{code}
Multithreaded correctness Warnings
Code 	Warning
SWL 	org.apache.tez.client.TezClient.stop() calls Thread.sleep() with a lock held
	

Bug type SWL\_SLEEP\_WITH\_LOCK\_HELD (click for details)
In class org.apache.tez.client.TezClient
In method org.apache.tez.client.TezClient.stop()
At TezClient.java:[line 584]
Details
SWL\_SLEEP\_WITH\_LOCK\_HELD: Method calls Thread.sleep() with a lock held

This method calls Thread.sleep() with a lock held. This may result in very poor performance and scalability, or a deadlock, since other threads may be waiting to acquire the lock. It is a much better idea to call wait() on the lock, which releases the lock and allows other threads to run. 
{code}


---

* [TEZ-2754](https://issues.apache.org/jira/browse/TEZ-2754) | *Major* | **Tez UI: StartTime & EndTime is not displayed with right format in Graphical View**

Attach the screenshot, currently the starttime and endtime is displayed with millsecs, should use human readable format.
\cc [~Sreenath] [~pramachandran]


---

* [TEZ-2750](https://issues.apache.org/jira/browse/TEZ-2750) | *Major* | **Shuffle may not shutdown in case of a fetch failure, causing it to hang**

When running the Cascading tests with 0.8-alpha, they hang forever.

{code}
git clone https://github.com/cascading/cascading
cd cascading
{code}

update cascading-hadoop2-tez/build.gradle:

- update ext.tezVersion to  '0.8.0-alpha'
- add the staging repos to the repositories block.

{code}
 maven {url = 'https://repository.apache.org/content/repositories/orgapachetez-1040/'}
 maven {url = 'https://repository.apache.org/content/repositories/orgapachetez-1041/'}
{code}

then run this:

{code}
gradle cascading-hadoop2-tez:build -i
{code}

It will hang after a while. You will have to have gradle 2.x installed on your machine. 1.x wont work.


---

* [TEZ-2747](https://issues.apache.org/jira/browse/TEZ-2747) | *Major* | **Update master to reflect 0.8.0-alpha release**

Update CHANGES.txt, version in pom.xml


---

* [TEZ-2745](https://issues.apache.org/jira/browse/TEZ-2745) | *Major* | **ClassNotFoundException of user code should fail dag**

This ClassNotFoundException is not captured now. The current behavior is AM crashed and relaunched again until max app attempt is reached. 

Here's user code used in AM:
\* EdgeManager
\* VertexManager
\* InputInitializer
\* OutputCommitter
\* Other user pluggable components (like DAGScheduler, HistoryServiceLogging etc.)


---

* [TEZ-2662](https://issues.apache.org/jira/browse/TEZ-2662) | *Major* | **Provide a way to check whether AM or task opts are valid and error if not**

Current impl appends cmd-opts specified in config to programmatic opts provided. This creates potential conflicts when using UseParallelGC v/s UseG1GC 

Tez should support a way to do checks for invalid java opts and error out as needed.


---

* [TEZ-2294](https://issues.apache.org/jira/browse/TEZ-2294) | *Major* | **Add tez-site-template.xml with description of config properties**

Document all tez configs with descriptions and default values. 
Also, document MR configs that can be easily translated to Tez configs via Tez helpers.



