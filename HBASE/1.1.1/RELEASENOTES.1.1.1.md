
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
# Apache HBase  1.1.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-13564](https://issues.apache.org/jira/browse/HBASE-13564) | *Major* | **Master MBeans are not published**

To use the coprocessor-based JMX implementation provided by HBase for Master.
Add below property in hbase-site.xml file: 

\<property\>
  \<name\>hbase.coprocessor.master.classes\</name\>
  \<value\>org.apache.hadoop.hbase.JMXListener\</value\>
\</property\>

NOTE: DO NOT set \`com.sun.management.jmxremote.port\` for Java VM at the same time.

By default, the JMX listens on TCP port 10101 for Master, we can further configure the port using below properties:

\<property\>
  \<name\>master.rmi.registry.port\</name\>
  \<value\>61110\</value\>
\</property\>
\<property\>
  \<name\>master.rmi.connector.port\</name\>
  \<value\>61120\</value\>
\</property\>
----

The registry port can be shared with connector port in most cases, so you only need to configure master.rmi.registry.port.
However if you want to use SSL communication, the 2 ports must be configured to different values.


---

* [HBASE-13625](https://issues.apache.org/jira/browse/HBASE-13625) | *Major* | **Use HDFS for HFileOutputFormat2 partitioner\'s path**

Introduces a new config hbase.fs.tmp.dir which is a directory in HDFS (or default file system) to use as a staging directory for HFileOutputFormat2. This is also used as the default for hbase.bulkload.staging.dir


---

* [HBASE-13816](https://issues.apache.org/jira/browse/HBASE-13816) | *Major* | **Build shaded modules only in release profile**

hbase-shaded-client and hbase-shaded-server modules will not build the actual jars unless -Prelease is supplied in mvn.


---

* [HBASE-13686](https://issues.apache.org/jira/browse/HBASE-13686) | *Major* | **Fail to limit rate in RateLimiter**

As per this jira contribution. We now support two kinds of RateLimiter.
1) org.apache.hadoop.hbase.quotas.AverageIntervalRateLimiter : This limiter will refill resources at every TimeUnit/resources interval.
Example: For a limiter configured with 10resources/second, then 1resource will be refilled after every 100ms.

2) org.apache.hadoop.hbase.quotas.FixedIntervalRateLimiter: This limiter will refill resources only after a given fixed interval of time.

Client can configure anyone of this rate limiter for the cluster by setting the value for the property "hbase.quota.rate.limiter" in the hbase-site.xml. org.apache.hadoop.hbase.quotas.AverageIntervalRateLimiter is the default value.
Note: Client needs to restart the cluster for the configuration to take into effect.


---

* [HBASE-13938](https://issues.apache.org/jira/browse/HBASE-13938) | *Major* | **Deletes done during the region merge transaction may get eclipsed**

Use the master\'s timestamp when sending hbase:meta edits on region merge to ensure proper ordering of new region addition and old region deletes.


---

* [HBASE-13632](https://issues.apache.org/jira/browse/HBASE-13632) | *Trivial* | **Backport HBASE-13368 to branch-1 and 0.98**

Several utility classes related to making message digests were mistakenly marked InterfaceAudience.Public. This change corrects them to be InterfaceAudience.Private. Though this change itself will not break downstream users future changes may happen to these classes in patch releases. As such, downstream users are strongly encouraged to migrate away from uses the following classes in the org.apache.hadoop.hbase.util package: Hash, JenkinsHash, MurmurHash, and MurmurHash3.


---

* [HBASE-13764](https://issues.apache.org/jira/browse/HBASE-13764) | *Minor* | **Backport HBASE-7782 (HBaseTestingUtility.truncateTable() not acting like CLI) to branch-1.x**

HBaseTestingUtility now uses the truncate API added in HBASE-8332 so that calls to HBTU.truncateTable will behave like the shell command: effectively dropping the table and recreating a new one with the same split points. 

Previously, HBTU.truncateTable instead issued deletes for all the data already in the table. If you wish to maintain the same behavior, you should use the newly added HBTU.deleteTableData method.



