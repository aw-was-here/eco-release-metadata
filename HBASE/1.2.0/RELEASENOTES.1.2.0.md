
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
# Apache HBase  1.2.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HBASE-14317](https://issues.apache.org/jira/browse/HBASE-14317) | *Blocker* | **Stuck FSHLog: bad disk (HDFS-8960) and can't roll WAL**

Tighten up WAL-use semantic.

1. If an append or a sync throws an exception, all subsequent attempts at using the log will also throw this same exception. The WAL is now a lame-duck until you roll it.
2. If a successful append, and then we fail to sync the append, this is a fatal exception. The container must abort to replay the WAL logs even though we have told the client that the appends failed.

The above rules have been applied laxly up to this; it used to be possible to get a good sync to go in over the top of a failed append. This has been fixed in this patch.

Also fixed a hang in the WAL subsystem if a request to pause the write pipeline took on a failed sync. before the roll requests sync got scheduled.


TODO: Revisit our WAL system. HBASE-12751 helps rationalize our write pipeline. In particular, it manages sequenceid inside mvcc which should make it so we can purge mechanism that writes empty, unflushed appends just to get the next sequenceid... problematic when WAL goes lame-duck. Lets get it in.
TODO: A successful append followed by a failed sync probably only needs us replace the WAL (if we have signalled the client that the appends failed). Bummer is that replicating, these last appends might make it to the sink cluster or get replayed during recovery. HBase should keep its own WAL length? Or sequenceid of last successful sync should be passed when doing recovery and replication?


---

* [HBASE-14314](https://issues.apache.org/jira/browse/HBASE-14314) | *Major* | **Metrics for block cache should take region replicas into account**

The following metrics for primary region replica are added:

blockCacheHitCountPrimary
blockCacheMissCountPrimary
blockCacheEvictionCountPrimary


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


---

* [HBASE-14230](https://issues.apache.org/jira/browse/HBASE-14230) | *Minor* | **replace reflection in FSHlog with HdfsDataOutputStream#getCurrentBlockReplication()**

Remove calling getNumCurrentReplicas on HdfsDataOutputStream via reflection. getNumCurrentReplicas showed up in hadoop 1+ and hadoop 0.2x. In hadoop-2 it was deprecated.


---

* [HBASE-14224](https://issues.apache.org/jira/browse/HBASE-14224) | *Critical* | **Fix coprocessor handling of duplicate classes**

Prevent Coprocessors being doubly-loaded; a particular coprocessor can only be loaded once.


---

* [HBASE-14201](https://issues.apache.org/jira/browse/HBASE-14201) | *Major* | **hbck should not take a lock unless fixing errors**

HBCK no longer takes a lock until there are changes to the cluster being made.

The old behavior can be achieved by passing the -exclusive flag.


---

* [HBASE-14148](https://issues.apache.org/jira/browse/HBASE-14148) | *Major* | **Web UI Framable Page**

Security fix: Adds protection from clickjacking using X-Frame-Options header.
This will prevent use of HBase UI in frames. To disable this feature, set the configuration 'hbase.http.filter.xframeoptions.mode' to 'ALLOW' (default is 'DENY').


---

* [HBASE-14027](https://issues.apache.org/jira/browse/HBASE-14027) | *Major* | **Clean up netty dependencies**

HBase's convenience binary artifact no longer contains the netty 3.2.4 jar . This jar was not directly used by HBase, but may have been relied on by downstream applications.


---

* [HBASE-13985](https://issues.apache.org/jira/browse/HBASE-13985) | *Minor* | **Add configuration to skip validating HFile format when bulk loading**

A new config, hbase.loadincremental.validate.hfile , is introduced - default to true
When set to false, checking hfile format is skipped during bulkloading.


---

* [HBASE-13983](https://issues.apache.org/jira/browse/HBASE-13983) | *Minor* | **Doc how the oddball HTable methods getStartKey, getEndKey, etc. will be removed in 2.0.0**

Adds extra doc on getStartKeys, getEndKeys, and getStartEndKeys in HTable explaining that they will be removed in 2.0.0 (these methods did not get the proper full major version deprecation cycle).

In this issue, we actually also remove these methods in master/2.0.0 branch.


---

* [HBASE-13966](https://issues.apache.org/jira/browse/HBASE-13966) | *Minor* | **Limit column width in table.jsp**

Wraps region, start key, end key columns if too long.


---

* [HBASE-13963](https://issues.apache.org/jira/browse/HBASE-13963) | *Critical* | **avoid leaking jdk.tools**

HBase now ensures that the JDK tools jar used during the build process is not exposed to downstream clients as a transitive dependency of hbase-annotations.

If you need to have the JDK tools jar in your classpath, you should add a system dependency on it. See the hbase-annotations pom for an example of the necessary pom additions.


---

* [HBASE-13959](https://issues.apache.org/jira/browse/HBASE-13959) | *Critical* | **Region splitting uses a single thread in most common cases**

The performance of region splitting has been improved by using a thread pool to split the store files concurrently. Prior to this change, the store files were always split sequentially in a single thread, so a region with multiple store files ended up taking several seconds. The thread pool is sized dynamically with the aim of getting maximum concurrency, without exceeding the number of cores available for HBase Java process. A lower limit for the thread pool can be explicitly set using the property hbase.regionserver.region.split.threads.max.


---

* [HBASE-13930](https://issues.apache.org/jira/browse/HBASE-13930) | *Major* | **Exclude Findbugs packages from shaded jars**

Exclude Findbugs packages from shaded jars


---

* [HBASE-13906](https://issues.apache.org/jira/browse/HBASE-13906) | *Major* | **Improve handling of NeedUnmanagedConnectionException**

With this patch NeedUnmanagedConnectionException is effectively treated as non-retryable exception, but for backwards compatibility purposes we don't throw it directly, but instead wrap into DoNotRetryIOException when we return error to the caller.


---

* [HBASE-13898](https://issues.apache.org/jira/browse/HBASE-13898) | *Minor* | **correct additional javadoc failures under java 8**

Correct Javadoc generation errors


---

* [HBASE-13881](https://issues.apache.org/jira/browse/HBASE-13881) | *Major* | **Bug in HTable#incrementColumnValue implementation**

HBASE-13881 Correct HTable incrementColumnValue implementation


---

* [HBASE-13849](https://issues.apache.org/jira/browse/HBASE-13849) | *Major* | **Remove restore and clone snapshot from the WebUI**

The HBase master status web page no longer allows operators to clone snapshots nor restore snapshots.


---

* [HBASE-13816](https://issues.apache.org/jira/browse/HBASE-13816) | *Major* | **Build shaded modules only in release profile**

hbase-shaded-client and hbase-shaded-server modules will not build the actual jars unless -Prelease is supplied in mvn.


---

* [HBASE-13764](https://issues.apache.org/jira/browse/HBASE-13764) | *Minor* | **Backport HBASE-7782 (HBaseTestingUtility.truncateTable() not acting like CLI) to branch-1.x**

HBaseTestingUtility now uses the truncate API added in HBASE-8332 so that calls to HBTU.truncateTable will behave like the shell command: effectively dropping the table and recreating a new one with the same split points. 

Previously, HBTU.truncateTable instead issued deletes for all the data already in the table. If you wish to maintain the same behavior, you should use the newly added HBTU.deleteTableData method.


---

* [HBASE-13747](https://issues.apache.org/jira/browse/HBASE-13747) | *Critical* | **Promote Java 8 to "yes" in support matrix**

Java 8 is considered supported and tested as of HBase 1.2+


---

* [HBASE-13706](https://issues.apache.org/jira/browse/HBASE-13706) | *Minor* | **CoprocessorClassLoader should not exempt Hive classes**

Starting from HBase 2.0, CoprocessorClassLoader will not exempt hadoop classes or zookeeper classes.  This means that if the custom coprocessor jar contains hadoop or zookeeper packages and classes, they will be loaded by the CoprocessorClassLoader.  Only hbase packages and classes  are exempted from the CoprocessorClassLoader. They (and their dependencies) are loaded by the parent server class loader.


---

* [HBASE-13686](https://issues.apache.org/jira/browse/HBASE-13686) | *Major* | **Fail to limit rate in RateLimiter**

As per this jira contribution. We now support two kinds of RateLimiter.
1) org.apache.hadoop.hbase.quotas.AverageIntervalRateLimiter : This limiter will refill resources at every TimeUnit/resources interval.
Example: For a limiter configured with 10resources/second, then 1resource will be refilled after every 100ms.

2) org.apache.hadoop.hbase.quotas.FixedIntervalRateLimiter: This limiter will refill resources only after a given fixed interval of time.

Client can configure anyone of this rate limiter for the cluster by setting the value for the property "hbase.quota.rate.limiter" in the hbase-site.xml. org.apache.hadoop.hbase.quotas.AverageIntervalRateLimiter is the default value.
Note: Client needs to restart the cluster for the configuration to take into effect.


---

* [HBASE-13666](https://issues.apache.org/jira/browse/HBASE-13666) | *Major* | **book.pdf is not renamed during site build**

Correct PDF renaming and bump version of maven-antrun-plugin


---

* [HBASE-13646](https://issues.apache.org/jira/browse/HBASE-13646) | *Major* | **HRegion#execService should not try to build incomplete messages**

When RegionServerCoprocessors throw an exception we will no longer attempt to build an incomplete RPC response message. Instead, the response message will be null.


---

* [HBASE-13632](https://issues.apache.org/jira/browse/HBASE-13632) | *Trivial* | **Backport HBASE-13368 to branch-1 and 0.98**

Several utility classes related to making message digests were mistakenly marked InterfaceAudience.Public. This change corrects them to be InterfaceAudience.Private. Though this change itself will not break downstream users future changes may happen to these classes in patch releases. As such, downstream users are strongly encouraged to migrate away from uses the following classes in the org.apache.hadoop.hbase.util package: Hash, JenkinsHash, MurmurHash, and MurmurHash3.


---

* [HBASE-13625](https://issues.apache.org/jira/browse/HBASE-13625) | *Major* | **Use HDFS for HFileOutputFormat2 partitioner's path**

Introduces a new config hbase.fs.tmp.dir which is a directory in HDFS (or default file system) to use as a staging directory for HFileOutputFormat2. This is also used as the default for hbase.bulkload.staging.dir


---

* [HBASE-13564](https://issues.apache.org/jira/browse/HBASE-13564) | *Major* | **Master MBeans are not published**

To use the coprocessor-based JMX implementation provided by HBase for Master.
Add below property in hbase-site.xml file: 

\<property\>
  \<name\>hbase.coprocessor.master.classes\</name\>
  \<value\>org.apache.hadoop.hbase.JMXListener\</value\>
\</property\>

NOTE: DO NOT set `com.sun.management.jmxremote.port` for Java VM at the same time.

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

* [HBASE-13375](https://issues.apache.org/jira/browse/HBASE-13375) | *Major* | **Provide HBase superuser higher priority over other users in the RPC handling**

This JIRA modifies the signature of PriorityFunction#getPriority() method to also take request user as a parameter; all RPC requests sent by super users (as determined by cluster configuration) are executed with Admin QoS.


---

* [HBASE-13127](https://issues.apache.org/jira/browse/HBASE-13127) | *Major* | **Add timeouts on all tests so less zombie sightings**

Use junit facility to impose timeout on test. Use test category to chose which timeout to apply: small tests timeout after 30 seconds, medium tests after 180 seconds, and large tests after ten minutes.

Updated junit version from 4.11 to 4.12. 4.12 has support for feature used here.


---

* [HBASE-13103](https://issues.apache.org/jira/browse/HBASE-13103) | *Major* | **[ergonomics] add region size balancing as a feature of master**

This patch adds optional ability for HMaster to normalize regions in size (disabled by default, change hbase.normalizer.enabled property to true to turn it on). If enabled, HMaster periodically (every 30 minutes by default) monitors tables for which normalization is enabled in table configuration and performs splits/merges as seems appropriate. Users may implement their own normalization strategies by implementing RegionNormalizer interface and configuring it in hbase-site.xml.


---

* [HBASE-11927](https://issues.apache.org/jira/browse/HBASE-11927) | *Major* | **Use Native Hadoop Library for HFile checksum (And flip default from CRC32 to CRC32C)**

Checksumming is cpu intensive. HBase computes additional checksums for HFiles (hdfs does checksums too) and stores them inline with file data. During reading, these checksums are verified to ensure data is not corrupted. This patch tries to use Hadoop Native Library for checksum computation, if it’s available, otherwise falls back to standard Java libraries. Instructions to load NHL in HBase can be found here (http://hbase.apache.org/book.html#hadoop.native.lib).

Default checksum algorithm has been changed from CRC32 to CRC32C primarily because of two reasons: 1) CRC32C has better error detection properties, and 2) New Intel processors have a dedicated instruction for crc32c computation (SSE4.2 instruction set)\*. This change is fully backward compatible. Also, users should not see any differences except decrease in cpu usage. To keep old settings, set configuration ‘hbase.hstore.checksum.algorithm’ to ‘CRC32’.

\* On linux, run 'cat /proc/cpuinfo’ and look for sse4\_2 in list of flags to see if your processor supports SSE4.2.


---

* [HBASE-11658](https://issues.apache.org/jira/browse/HBASE-11658) | *Major* | **Piped commands to hbase shell should return non-zero if shell command failed.**

Adds a noninteractive mode (-n or --noninteractive) to the hbase shell that exits with a non-zero error code on failed or invalid shell command executions, and exits with a zero error code upon successful execution.


---

* [HBASE-10844](https://issues.apache.org/jira/browse/HBASE-10844) | *Major* | **Coprocessor failure during batchmutation leaves the memstore datastructs in an inconsistent state**

Promotes an -ea assert to logged FATAL and RS abort when memstore is found to be in an inconsistent state.


---

* [HBASE-5980](https://issues.apache.org/jira/browse/HBASE-5980) | *Minor* | **Scanner responses from RS should include metrics on rows/KVs filtered**

Adds scan metrics to the result. In the shell, set the ALL\_METRICS attribute to true on your scan to see dump of metrics after results (see the scan help for examples).

If you would prefer to see only a subset of the metrics, the METRICS array can be defined to include the names of only the metrics you care about.



