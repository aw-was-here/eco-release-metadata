
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
# Apache Hadoop  3.0.0-alpha3 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HADOOP-13956](https://issues.apache.org/jira/browse/HADOOP-13956) | *Critical* | **Read ADLS credentials from Credential Provider**

The hadoop-azure-datalake file system now supports configuration of the Azure Data Lake Store account credentials using the standard Hadoop Credential Provider API. For details, please refer to the documentation on hadoop-azure-datalake and the Credential Provider API.


---

* [MAPREDUCE-6404](https://issues.apache.org/jira/browse/MAPREDUCE-6404) | *Major* | **Allow AM to specify a port range for starting its webapp**

Add a new configuration - "yarn.app.mapreduce.am.webapp.port-range" to specify port-range for webapp launched by AM.


---

* [HDFS-10860](https://issues.apache.org/jira/browse/HDFS-10860) | *Blocker* | **Switch HttpFS from Tomcat to Jetty**

<!-- markdown -->

The following environment variables are deprecated. Set the corresponding
configuration properties instead.

Environment Variable        | Configuration Property       | Configuration File
----------------------------|------------------------------|--------------------
HTTPFS_TEMP                 | hadoop.http.temp.dir         | httpfs-site.xml
HTTPFS_HTTP_PORT            | hadoop.httpfs.http.port      | httpfs-site.xml
HTTPFS_MAX_HTTP_HEADER_SIZE | hadoop.http.max.request.header.size and hadoop.http.max.response.header.size | httpfs-site.xml
HTTPFS_MAX_THREADS          | hadoop.http.max.threads      | httpfs-site.xml
HTTPFS_SSL_ENABLED          | hadoop.httpfs.ssl.enabled    | httpfs-site.xml
HTTPFS_SSL_KEYSTORE_FILE    | ssl.server.keystore.location | ssl-server.xml
HTTPFS_SSL_KEYSTORE_PASS    | ssl.server.keystore.password | ssl-server.xml

These default HTTP Services have been added.

Name               | Description
-------------------|------------------------------------
/conf              | Display configuration properties
/jmx               | Java JMX management interface
/logLevel          | Get or set log level per class
/logs              | Display log files
/stacks            | Display JVM stacks
/static/index.html | The static home page

Script httpfs.sh has been deprecated, use `hdfs httpfs` instead. The new scripts are based on the Hadoop shell scripting framework. `hadoop daemonlog` is supported. SSL configurations are read from ssl-server.xml.


---

* [HDFS-11210](https://issues.apache.org/jira/browse/HDFS-11210) | *Major* | **Enhance key rolling to guarantee new KeyVersion is returned from generateEncryptedKeys after a key is rolled**

<!-- markdown --> 

An `invalidateCache` command has been added to the KMS.
The `rollNewVersion` semantics of the KMS has been improved so that after a key's version is rolled, `generateEncryptedKey` of that key guarantees to return the `EncryptedKeyVersion` based on the new key version.


---

* [HDFS-11026](https://issues.apache.org/jira/browse/HDFS-11026) | *Major* | **Convert BlockTokenIdentifier to use Protobuf**

Changed the serialized format of BlockTokenIdentifier to protocol buffers. Includes logic to decode both the old Writable format and the new PB format to support existing clients. Client implementations in other languages will require similar functionality.


---

* [HADOOP-13929](https://issues.apache.org/jira/browse/HADOOP-13929) | *Major* | **ADLS connector should not check in contract-test-options.xml**

To run live unit tests, create src/test/resources/auth-keys.xml with the same properties as in the deprecated contract-test-options.xml.


---

* [HDFS-11100](https://issues.apache.org/jira/browse/HDFS-11100) | *Critical* | **Recursively deleting file protected by sticky bit should fail**

Changed the behavior of removing directories with sticky bits, so that it is closer to what most Unix/Linux users would expect.


---

* [YARN-6177](https://issues.apache.org/jira/browse/YARN-6177) | *Major* | **Yarn client should exit with an informative error message if an incompatible Jersey library is used at client**

Let yarn client exit with an informative error message if an incompatible Jersey library is used from client side.


---

* [HADOOP-13805](https://issues.apache.org/jira/browse/HADOOP-13805) | *Major* | **UGI.getCurrentUser() fails if user does not have a keytab associated**

Due to a remaining issue after HADOOP-13558, an UGI may still try to renew the TGT even though the UGI is created from an existing Subject. The renewal would fail because of non-existing keytab. 

Fixing the issue means different behavior which is incompatible, however,  configuration property "hadoop.treat.subject.external" is introduced to enable the fix (disabled by default). The behavior is the same as before when the fix is not enabled.


---

* [HDFS-11405](https://issues.apache.org/jira/browse/HDFS-11405) | *Blocker* | **Rename "erasurecode" CLI subcommand to "ec"**

The "hdfs erasurecode" CLI command has been renamed to "hdfs ec" for ease-of-use.


---

* [HDFS-11426](https://issues.apache.org/jira/browse/HDFS-11426) | *Major* | **Refactor EC CLI to be similar to storage policies CLI**

The \`hdfs ec\` CLI command has been substantially reworked to make the calling patterns more similar to the \`hdfs storagepolicies\` command. See \`hdfs ec -help\` and the HDFS erasure coding documentation for more information.


---

* [HADOOP-13817](https://issues.apache.org/jira/browse/HADOOP-13817) | *Minor* | **Add a finite shell command timeout to ShellBasedUnixGroupsMapping**

A new introduced configuration key "hadoop.security.groups.shell.command.timeout" allows applying a finite wait timeout over the 'id' commands launched by the ShellBasedUnixGroupsMapping plugin. Values specified can be in any valid time duration units: https://hadoop.apache.org/docs/current/api/org/apache/hadoop/conf/Configuration.html#getTimeDuration-java.lang.String-long-java.util.concurrent.TimeUnit-

Value defaults to 0, indicating infinite wait (preserving existing behaviour).


---

* [HDFS-11427](https://issues.apache.org/jira/browse/HDFS-11427) | *Major* | **Rename "rs-default" to "rs"**

The "rs-default" codec has been renamed to simply "rs" for simplicity. Previous configuration keys like "io.erasurecode.codec.rs-default" have also been renamed to match.


---

* [HDFS-11382](https://issues.apache.org/jira/browse/HDFS-11382) | *Major* | **Persist Erasure Coding Policy ID in a new optional field in INodeFile in FSImage**

The FSImage on-disk format for INodeFile is changed to additionally include a field for Erasure Coded files. This optional field 'erasureCodingPolicyID' which is unit32 type is available for all Erasure Coded files and represents the Erasure Coding Policy ID. Previously, the 'replication' field in INodeFile disk format was overloaded  to represent the same Erasure Coding Policy ID.


---

* [HDFS-11428](https://issues.apache.org/jira/browse/HDFS-11428) | *Major* | **Change setErasureCodingPolicy to take a required string EC policy name**

**WARNING: No release note provided for this change.**


---

* [HADOOP-6801](https://issues.apache.org/jira/browse/HADOOP-6801) | *Minor* | **io.sort.mb and io.sort.factor were renamed and moved to mapreduce but are still in CommonConfigurationKeysPublic.java and used in SequenceFile.java**

Two new configuration keys, seq.io.sort.mb and seq.io.sort.factor have been introduced for the SequenceFile's Sorter feature to replace older, deprecated property keys of io.sort.mb and io.sort.factor.

This only affects direct users of the org.apache.hadoop.io.SequenceFile.Sorter Java class. For controlling MR2's internal sorting instead, use the existing config keys of mapreduce.task.io.sort.mb and mapreduce.task.io.sort.factor.


---

* [HDFS-8112](https://issues.apache.org/jira/browse/HDFS-8112) | *Blocker* | **Relax permission checking for EC related operations**

The HdfsAdmin erasure coding APIs (set, unset, get) are now usable by non-superusers based on appropriate file and directory permissions.


---

* [HDFS-11498](https://issues.apache.org/jira/browse/HDFS-11498) | *Major* | **Make RestCsrfPreventionHandler and WebHdfsHandler compatible with Netty 4.0**

This JIRA sets the Netty 4 dependency to 4.0.23. This is an incompatible change for the 3.0 release line, as 3.0.0-alpha1 and 3.0.0-alpha2 depended on Netty 4.1.0.Beta5.


---

* [HDFS-11152](https://issues.apache.org/jira/browse/HDFS-11152) | *Blocker* | **Start erasure coding policy ID number from 1 instead of 0 to void potential unexpected errors**

The NameNode metadata for storing erasure coding policies has changed.


---

* [HDFS-11314](https://issues.apache.org/jira/browse/HDFS-11314) | *Blocker* | **Enforce set of enabled EC policies on the NameNode**

HDFS will now restrict the set of erasure coding policies that can be set by users. The set of allowed policies can be configured via "dfs.namenode.ec.policies.enabled" on the NameNode. Please see the documentation for more details.


---

* [HDFS-11499](https://issues.apache.org/jira/browse/HDFS-11499) | *Major* | **Decommissioning stuck because of failing recovery**

Allow a block to complete if the number of replicas on live nodes, decommissioning nodes and nodes in maintenance mode satisfies minimum replication factor.
The fix prevents block recovery failure if replica of last block is being decommissioned. Vice versa, the decommissioning will be stuck, waiting for the last block to be completed. In addition, file close() operation will not fail due to last block being decommissioned.


---

* [HDFS-11505](https://issues.apache.org/jira/browse/HDFS-11505) | *Major* | **Do not enable any erasure coding policies by default**

By default, none of the built-in erasure coding policies are enabled. Users have to explicitly enable the erasure coding policy via the hdfs configuration 'dfs.namenode.ec.policies.enabled' before setting the policy on any directories.


---

* [HADOOP-14213](https://issues.apache.org/jira/browse/HADOOP-14213) | *Major* | **Move Configuration runtime check for hadoop-site.xml to initialization**

Move the check for hadoop-site.xml to static initialization of the Configuration class.


---

* [HADOOP-10101](https://issues.apache.org/jira/browse/HADOOP-10101) | *Major* | **Update guava dependency to the latest version**

Guava is updated to version 21.0. 

In the background of merging this patch into trunk, there is a work, shaded Hadoop client artifacts and minicluster, on HADOOP-11804. hadoop-client has its own Guava which is shaded, so we can update dependency with minimum effect compare to previous HADOOP-11804. 

See also HADOOP-14238 as related problem.


---

* [HADOOP-14038](https://issues.apache.org/jira/browse/HADOOP-14038) | *Minor* | **Rename ADLS credential properties**

<!-- markdown --> 

* Properties {{dfs.adls.*}} are renamed {{fs.adl.*}}
* Property {{adl.dfs.enable.client.latency.tracker}} is renamed {{adl.enable.client.latency.tracker}}
* Old properties are still supported



