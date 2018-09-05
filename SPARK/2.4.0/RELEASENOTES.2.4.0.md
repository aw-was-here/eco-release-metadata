
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
# Apache Spark  2.4.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [SPARK-23680](https://issues.apache.org/jira/browse/SPARK-23680) | *Major* | **entrypoint.sh does not accept arbitrary UIDs, returning as an error**

Openshift supports running pods using arbitrary UIDs ([https://docs.openshift.com/container-platform/3.7/creating\_images/guidelines.html#openshift-specific-guidelines)]  to improve security. Although entrypoint.sh was developed to cover this feature, the script is returning an error[1].

The issue is that the script uses getent to find the passwd entry of the current UID, and if the entry is not found it creates an entry in /etc/passwd. According to the getent man page:
{code:java}
EXIT STATUS
       One of the following exit values can be returned by getent:
          0         Command completed successfully.
          1         Missing arguments, or database unknown.
          2         One or more supplied key could not be found in the database.
          3         Enumeration not supported on this database.
{code}
And since the script begin with a "set -ex" command, which means it turns on debug and breaks the script if the command pipelines returns an exit code other than 0.--

Having that said, this line below must be changed to remove the "-e" flag from set command:

https://github.com/apache/spark/blob/v2.3.0/resource-managers/kubernetes/docker/src/main/dockerfiles/spark/entrypoint.sh#L20

 

 [1]https://github.com/apache/spark/blob/v2.3.0/resource-managers/kubernetes/docker/src/main/dockerfiles/spark/entrypoint.sh#L25-L34


---

* [SPARK-24021](https://issues.apache.org/jira/browse/SPARK-24021) | *Major* | **Fix bug in BlacklistTracker's updateBlacklistForFetchFailure**

There's a miswrite in BlacklistTracker's updateBlacklistForFetchFailure:

 
{code:java}
val blacklistedExecsOnNode =
    nodeToBlacklistedExecs.getOrElseUpdate(exec, HashSet[String]())
blacklistedExecsOnNode += exec{code}
 

where first \*exec\* should be \*host\*.


---

* [SPARK-25275](https://issues.apache.org/jira/browse/SPARK-25275) | *Major* | **require memberhip in wheel to run 'su' (in dockerfiles)**

For improved security, configure that users must be in wheel group in order to run su.

see example:

[https://github.com/ope]nshift-evangelists/terminal-base-image/blob/master/image/Dockerfile#L53



