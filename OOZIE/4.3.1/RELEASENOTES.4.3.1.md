
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
# Apache Oozie  4.3.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


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



