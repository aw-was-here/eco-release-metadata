
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
# Hadoop  2.8.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HADOOP-11660](https://issues.apache.org/jira/browse/HADOOP-11660) | *Minor* | **Add support for hardware crc of HDFS checksums on ARM aarch64 architecture**

Add support for aarch64 CRC instructions


---

* [HADOOP-11226](https://issues.apache.org/jira/browse/HADOOP-11226) | *Major* | **Add a configuration to set ipc.Client's traffic class with IPTOS\_LOWDELAY\|IPTOS\_RELIABILITY**

Use low latency TCP connections for hadoop IPC


---

* [HADOOP-9477](https://issues.apache.org/jira/browse/HADOOP-9477) | *Major* | **Add posixGroups support for LDAP groups mapping service**

Add posixGroups support for LDAP groups mapping service. The change in LDAPGroupMapping is compatible with previous scenario. In LDAP, the group mapping between {{posixAccount}} and {{posixGroup}} is different from the general LDAPGroupMapping, one of the differences is the {{"memberUid"}} will be used to mapping {{posixAccount}} and {{posixGroup}}. The feature will handle the mapping in internal when configuration {{hadoop.security.group.mapping.ldap.search.filter.user}} is set as "posixAccount" and {{hadoop.security.group.mapping.ldap.search.filter.group}} is "posixGroup".


---

* [HADOOP-7713](https://issues.apache.org/jira/browse/HADOOP-7713) | *Trivial* | **dfs -count -q should label output column**

Added -v option to fs -count command to display a header record in the report.


---

* [HDFS-7933](https://issues.apache.org/jira/browse/HDFS-7933) | *Major* | **fsck should also report decommissioning replicas.**

**WARNING: No release note provided for this incompatible change.**


---

* [HDFS-7501](https://issues.apache.org/jira/browse/HDFS-7501) | *Major* | **TransactionsSinceLastCheckpoint can be negative on SBNs**

Fixed a bug where the StandbyNameNode's TransactionsSinceLastCheckpoint metric may slide into a negative number after every subsequent checkpoint.


---

* [HDFS-6666](https://issues.apache.org/jira/browse/HDFS-6666) | *Minor* | **Abort NameNode and DataNode startup if security is enabled but block access token is not enabled.**

NameNode and DataNode now abort during startup if attempting to run in secure mode, but block access tokens are not enabled by setting configuration property dfs.block.access.token.enable to true in hdfs-site.xml.  Previously, this case logged a warning, because this would be an insecure configuration.


---

* [YARN-3443](https://issues.apache.org/jira/browse/YARN-3443) | *Major* | **Create a 'ResourceHandler' subsystem to ease addition of support for new resource types on the NM**

The current cgroups implementation is closely tied to supporting CPU as a resource . This patch separates out CGroups implementation into a reusable class as well as provides a simple ResourceHandler subsystem that will enable us to add support for new resource types on the NM - e.g Network, Disk etc.


---

* [YARN-3365](https://issues.apache.org/jira/browse/YARN-3365) | *Major* | **Add support for using the 'tc' tool via container-executor**

Adding support for using the 'tc' tool in batch mode via container-executor. This is a prerequisite for traffic-shaping functionality that is necessary to support outbound bandwidth as a resource in YARN.


---

* [YARN-3241](https://issues.apache.org/jira/browse/YARN-3241) | *Major* | **FairScheduler handles "invalid" queue names inconsistently**

FairScheduler does not allow queue names with leading or tailing spaces or empty sub-queue names anymore.


---

* [YARN-3021](https://issues.apache.org/jira/browse/YARN-3021) | *Major* | **YARN's delegation-token handling disallows certain trust setups to operate properly over DistCp**

ResourceManager renews delegation tokens for applications. This behavior has been changed to renew tokens only if the token's renewer is a non-empty string. MapReduce jobs can instruct ResourceManager to skip renewal of tokens obtained from certain hosts by specifying the hosts with configuration mapreduce.job.hdfs-servers.token-renewal.exclude=<host1>,<host2>,..,<hostN>.


