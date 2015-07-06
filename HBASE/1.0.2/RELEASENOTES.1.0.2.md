
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
# Apache HBase  1.0.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HBASE-13983](https://issues.apache.org/jira/browse/HBASE-13983) | *Minor* | **Doc how the oddball HTable methods getStartKey, getEndKey, etc. will be removed in 2.0.0**

Adds extra doc on getStartKeys, getEndKeys, and getStartEndKeys in HTable explaining that they will be removed in 2.0.0 (these methods did not get the proper full major version deprecation cycle).

In this issue, we actually also remove these methods in master/2.0.0 branch.


---

* [HBASE-13666](https://issues.apache.org/jira/browse/HBASE-13666) | *Major* | **book.pdf is not renamed during site build**

Correct PDF renaming and bump version of maven-antrun-plugin


---

* [HBASE-13625](https://issues.apache.org/jira/browse/HBASE-13625) | *Major* | **Use HDFS for HFileOutputFormat2 partitioner's path**

Introduces a new config hbase.fs.tmp.dir which is a directory in HDFS (or default file system) to use as a staging directory for HFileOutputFormat2.


---

* [HBASE-13564](https://issues.apache.org/jira/browse/HBASE-13564) | *Major* | **Master MBeans are not published**

To use the coprocessor-based JMX implementation provided by HBase for Master.
Add below property in hbase-site.xml file: 

<property>
  <name>hbase.coprocessor.master.classes</name>
  <value>org.apache.hadoop.hbase.JMXListener</value>
</property>

NOTE: DO NOT set `com.sun.management.jmxremote.port` for Java VM at the same time.

By default, the JMX listens on TCP port 10101 for Master, we can further configure the port using below properties:

<property>
  <name>master.rmi.registry.port</name>
  <value>61110</value>
</property>
<property>
  <name>master.rmi.connector.port</name>
  <value>61120</value>
</property>
----

The registry port can be shared with connector port in most cases, so you only need to configure master.rmi.registry.port.
However if you want to use SSL communication, the 2 ports must be configured to different values.



