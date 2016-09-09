
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
# Apache HBase  0.98.16 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-12911](https://issues.apache.org/jira/browse/HBASE-12911) | *Major* | **Client-side metrics**

Introduces collection and reporting of various client-perceived metrics. Metrics are exposed via JMX under "org.apache.hadoop.hbase.client.MetricsConnection". Metrics are scoped according to connection instance, so multiple connection objects (ie, to different clusters) will report their metrics separately. Metrics are disabled by default, must be enabled by configuring "hbase.client.metrics.enable=true".


---

* [HBASE-14658](https://issues.apache.org/jira/browse/HBASE-14658) | *Major* | **Allow loading a MonkeyFactory by class name**

You can specify one of the predefined set of Monkeys when you run Integration Tests by passing the -m\|--monkey arguments on the command line; e.g -m CALM or -m SLOW\_DETERMINISTIC

This patch  makes it so you can pass the name of a class as the monkey to run: e.g. -m org.example.KingKong


---

* [HBASE-14700](https://issues.apache.org/jira/browse/HBASE-14700) | *Major* | **Support a "permissive" mode for secure clusters to allow "simple" auth clients**

Secure HBase now supports a permissive mode to allow mixed secure and insecure clients.  This allows clients to be incrementally migrated over to a secure configuration.  To enable clients to continue to connect using SIMPLE authentication when the cluster is configured for security, set "hbase.ipc.server.fallback-to-simple-auth-allowed" equal to "true" in hbase-site.xml.  NOTE: This setting should ONLY be used as a temporary measure while converting clients over to secure authentication.  It MUST BE DISABLED for secure operation.


---

* [HBASE-14605](https://issues.apache.org/jira/browse/HBASE-14605) | *Blocker* | **Split fails due to 'No valid credentials' error when SecureBulkLoadEndpoint#start tries to access hdfs**

When split is requested by non-super user, split related notifications for Coprocessor are executed using the login of the request user.
Previously the notifications were carried out as super user.


---

* [HBASE-14631](https://issues.apache.org/jira/browse/HBASE-14631) | *Blocker* | **Region merge request should be audited with request user through proper scope of doAs() calls to region observer notifications**

Region observer notifications w.r.t. merge request are now audited with request user through proper scope of doAs() calls.


---

* [HBASE-14655](https://issues.apache.org/jira/browse/HBASE-14655) | *Blocker* | **Narrow the scope of doAs() calls to region observer notifications for compaction**

Region observer notifications w.r.t. compaction request are now audited with request user through proper scope of doAs() calls.



