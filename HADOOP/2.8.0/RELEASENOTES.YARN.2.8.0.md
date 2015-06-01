
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
# Hadoop YARN 2.8.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [YARN-3684](https://issues.apache.org/jira/browse/YARN-3684) | *Major* | **Change ContainerExecutor's primary lifecycle methods to use a more extensible mechanism for passing information.**

Modifying key methods in ContainerExecutor to use context objects instead of an argument list. This is more extensible and less brittle.


---

* [YARN-3587](https://issues.apache.org/jira/browse/YARN-3587) | *Minor* | **Fix the javadoc of DelegationTokenSecretManager in projects of yarn, etc.**

Update DelegationTokenSecretManager Javadoc (milliseconds)


---

* [YARN-3443](https://issues.apache.org/jira/browse/YARN-3443) | *Major* | **Create a 'ResourceHandler' subsystem to ease addition of support for new resource types on the NM**

The current cgroups implementation is closely tied to supporting CPU as a resource . This patch separates out CGroups implementation into a reusable class as well as provides a simple ResourceHandler subsystem that will enable us to add support for new resource types on the NM - e.g Network, Disk etc.


---

* [YARN-3366](https://issues.apache.org/jira/browse/YARN-3366) | *Major* | **Outbound network bandwidth : classify/shape traffic originating from YARN containers**

1) A TrafficController class that provides an implementation for traffic shaping using tc. 
2) A ResourceHandler implementation for OutboundBandwidth as a resource - isolation/enforcement using cgroups and tc.


---

* [YARN-3365](https://issues.apache.org/jira/browse/YARN-3365) | *Major* | **Add support for using the 'tc' tool via container-executor**

Adding support for using the 'tc' tool in batch mode via container-executor. This is a prerequisite for traffic-shaping functionality that is necessary to support outbound bandwidth as a resource in YARN.


---

* [YARN-3241](https://issues.apache.org/jira/browse/YARN-3241) | *Major* | **FairScheduler handles "invalid" queue names inconsistently**

FairScheduler does not allow queue names with leading or tailing spaces or empty sub-queue names anymore.


---

* [YARN-3021](https://issues.apache.org/jira/browse/YARN-3021) | *Major* | **YARN's delegation-token handling disallows certain trust setups to operate properly over DistCp**

ResourceManager renews delegation tokens for applications. This behavior has been changed to renew tokens only if the token's renewer is a non-empty string. MapReduce jobs can instruct ResourceManager to skip renewal of tokens obtained from certain hosts by specifying the hosts with configuration mapreduce.job.hdfs-servers.token-renewal.exclude=<host1>,<host2>,..,<hostN>.


---

* [YARN-2336](https://issues.apache.org/jira/browse/YARN-2336) | *Major* | **Fair scheduler REST api returns a missing '[' bracket JSON for deep queue tree**

This incompatible change should be fixed on branch-2 because the API is broken in branch-2.



