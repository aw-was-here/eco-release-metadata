
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
# Apache HBase  1.0.3 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HBASE-14313](https://issues.apache.org/jira/browse/HBASE-14313) | *Critical* | **After a Connection sees ConnectionClosingException it never recovers**

HConnection could get stuck when talking to a host that went down and then returned. This has been fixed by closing the connection in all paths.


---

* [HBASE-14261](https://issues.apache.org/jira/browse/HBASE-14261) | *Major* | **Enhance Chaos Monkey framework by adding zookeeper and datanode fault injections.**

This change augments existing chaos monkey framework with actions for restarting underlying zookeeper quorum and hdfs nodes of distributed hbase cluster. One assumption made while creating zk actions are that zookeper ensemble is an independent external service and won't be managed by hbase cluster.  For these actions to work as expected, the following parameters need to be configured appropriately.

{code}
\<property\>
  \<name\>hbase.it.clustermanager.hadoop.home\</name\>
  \<value\>$HADOOP\_HOME\</value\>
\</property\>
\<property\>
  \<name\>hbase.it.clustermanager.zookeeper.home\</name\>
  \<value\>$ZOOKEEPER\_HOME\</value\>
\</property\>
\<property\>
  \<name\>hbase.it.clustermanager.hbase.user\</name\>
  \<value\>hbase\</value\>
\</property\>
\<property\>
  \<name\>hbase.it.clustermanager.hadoop.hdfs.user\</name\>
  \<value\>hdfs\</value\>
\</property\>
\<property\>
  \<name\>hbase.it.clustermanager.zookeeper.user\</name\>
  \<value\>zookeeper\</value\>
\</property\>
{code}

The service user related configurations are newly introduced since in prod/test environments each service is managed by different user. Once the above parameters are configured properly, you can start using them as needed. An example usage for invoking these new actions is:

{{./hbase org.apache.hadoop.hbase.IntegrationTestAcidGuarantees -m serverAndDependenciesKilling}}



