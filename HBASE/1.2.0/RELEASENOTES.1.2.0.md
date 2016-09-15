
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

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-11658](https://issues.apache.org/jira/browse/HBASE-11658) | *Major* | **Piped commands to hbase shell should return non-zero if shell command failed.**

Adds a noninteractive mode (-n or --noninteractive) to the hbase shell that exits with a non-zero error code on failed or invalid shell command executions, and exits with a zero error code upon successful execution.


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

* [HBASE-13625](https://issues.apache.org/jira/browse/HBASE-13625) | *Major* | **Use HDFS for HFileOutputFormat2 partitioner\'s path**

Introduces a new config hbase.fs.tmp.dir which is a directory in HDFS (or default file system) to use as a staging directory for HFileOutputFormat2. This is also used as the default for hbase.bulkload.staging.dir


---

* [HBASE-13698](https://issues.apache.org/jira/browse/HBASE-13698) | *Major* | **Add RegionLocator methods to Thrift2 proxy.**

Added getRegionLocation and getAllRegionLocations to the thrift2 interface.


---

* [HBASE-5980](https://issues.apache.org/jira/browse/HBASE-5980) | *Minor* | **Scanner responses from RS should include metrics on rows/KVs filtered**

Adds scan metrics to the result. In the shell, set the ALL\_METRICS attribute to true on your scan to see dump of metrics after results (see the scan help for examples).

If you would prefer to see only a subset of the metrics, the METRICS array can be defined to include the names of only the metrics you care about.


---

* [HBASE-13375](https://issues.apache.org/jira/browse/HBASE-13375) | *Major* | **Provide HBase superuser higher priority over other users in the RPC handling**

This JIRA modifies the signature of PriorityFunction#getPriority() method to also take request user as a parameter; all RPC requests sent by super users (as determined by cluster configuration) are executed with Admin QoS.


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

* [HBASE-13103](https://issues.apache.org/jira/browse/HBASE-13103) | *Major* | **[ergonomics] add region size balancing as a feature of master**

This patch adds optional ability for HMaster to normalize regions in size (disabled by default, change hbase.normalizer.enabled property to true to turn it on). If enabled, HMaster periodically (every 30 minutes by default) monitors tables for which normalization is enabled in table configuration and performs splits/merges as seems appropriate. Users may implement their own normalization strategies by implementing RegionNormalizer interface and configuring it in hbase-site.xml.


---

* [HBASE-13898](https://issues.apache.org/jira/browse/HBASE-13898) | *Minor* | **correct additional javadoc failures under java 8**

Correct Javadoc generation errors


---

* [HBASE-13906](https://issues.apache.org/jira/browse/HBASE-13906) | *Major* | **Improve handling of NeedUnmanagedConnectionException**

With this patch NeedUnmanagedConnectionException is effectively treated as non-retryable exception, but for backwards compatibility purposes we don\'t throw it directly, but instead wrap into DoNotRetryIOException when we return error to the caller.


---

* [HBASE-13938](https://issues.apache.org/jira/browse/HBASE-13938) | *Major* | **Deletes done during the region merge transaction may get eclipsed**

Use the master\'s timestamp when sending hbase:meta edits on region merge to ensure proper ordering of new region addition and old region deletes.


---

* [HBASE-13930](https://issues.apache.org/jira/browse/HBASE-13930) | *Major* | **Exclude Findbugs packages from shaded jars**

Exclude Findbugs packages from shaded jars


---

* [HBASE-13959](https://issues.apache.org/jira/browse/HBASE-13959) | *Critical* | **Region splitting uses a single thread in most common cases**

The performance of region splitting has been improved by using a thread pool to split the store files concurrently. Prior to this change, the store files were always split sequentially in a single thread, so a region with multiple store files ended up taking several seconds. The thread pool is sized dynamically with the aim of getting maximum concurrency, without exceeding the number of cores available for HBase Java process. A lower limit for the thread pool can be explicitly set using the property hbase.regionserver.region.split.threads.max.


---

* [HBASE-13747](https://issues.apache.org/jira/browse/HBASE-13747) | *Critical* | **Promote Java 8 to "yes" in support matrix**

Java 8 is considered supported and tested as of HBase 1.2+


---

* [HBASE-13983](https://issues.apache.org/jira/browse/HBASE-13983) | *Minor* | **Doc how the oddball HTable methods getStartKey, getEndKey, etc. will be removed in 2.0.0**

Adds extra doc on getStartKeys, getEndKeys, and getStartEndKeys in HTable explaining that they will be removed in 2.0.0 (these methods did not get the proper full major version deprecation cycle).

In this issue, we actually also remove these methods in master/2.0.0 branch.


---

* [HBASE-13895](https://issues.apache.org/jira/browse/HBASE-13895) | *Critical* | **DATALOSS: Region assigned before WAL replay when abort**

If the master went to assign a region concurrent with a RegionServer abort, the returned RegionServerAbortedException was being handled as though the region had been cleanly offlined so assign was allowed proceed. If the region was opened in its new location before WAL replay completion, the replayed edits were ignored, worst case, or were later played over the top of edits that had come in since open and so susceptible to overwrite. In either case, DATALOSS.


---

* [HBASE-13639](https://issues.apache.org/jira/browse/HBASE-13639) | *Major* | **SyncTable - rsync for HBase tables**

Tool to sync two tables that tries to send the differences only like rsync.

Adds two new MapReduce jobs, SyncTable and HashTable. See usage for these jobs on how to use. See design doc for generally overview: https://docs.google.com/document/d/1-2c9kJEWNrXf5V4q\_wBcoIXfdchN7Pxvxv1IO6PW0-U/edit

From comments below, "It can be challenging to run against a table getting live writes, if those writes are updates/overwrites. In general, you can run it against a time range to ignore new writes, but if those writes update existing cells, then the time range scan may or may not see older versions of those cells depending on whether major compaction has happened, which may be different in remote clusters."


---

* [HBASE-13646](https://issues.apache.org/jira/browse/HBASE-13646) | *Major* | **HRegion#execService should not try to build incomplete messages**

When RegionServerCoprocessors throw an exception we will no longer attempt to build an incomplete RPC response message. Instead, the response message will be null.


---

* [HBASE-13849](https://issues.apache.org/jira/browse/HBASE-13849) | *Major* | **Remove restore and clone snapshot from the WebUI**

The HBase master status web page no longer allows operators to clone snapshots nor restore snapshots.


---

* [HBASE-13632](https://issues.apache.org/jira/browse/HBASE-13632) | *Trivial* | **Backport HBASE-13368 to branch-1 and 0.98**

Several utility classes related to making message digests were mistakenly marked InterfaceAudience.Public. This change corrects them to be InterfaceAudience.Private. Though this change itself will not break downstream users future changes may happen to these classes in patch releases. As such, downstream users are strongly encouraged to migrate away from uses the following classes in the org.apache.hadoop.hbase.util package: Hash, JenkinsHash, MurmurHash, and MurmurHash3.


---

* [HBASE-13764](https://issues.apache.org/jira/browse/HBASE-13764) | *Minor* | **Backport HBASE-7782 (HBaseTestingUtility.truncateTable() not acting like CLI) to branch-1.x**

HBaseTestingUtility now uses the truncate API added in HBASE-8332 so that calls to HBTU.truncateTable will behave like the shell command: effectively dropping the table and recreating a new one with the same split points. 

Previously, HBTU.truncateTable instead issued deletes for all the data already in the table. If you wish to maintain the same behavior, you should use the newly added HBTU.deleteTableData method.


---

* [HBASE-14027](https://issues.apache.org/jira/browse/HBASE-14027) | *Major* | **Clean up netty dependencies**

HBase\'s convenience binary artifact no longer contains the netty 3.2.4 jar . This jar was not directly used by HBase, but may have been relied on by downstream applications.


---

* [HBASE-13881](https://issues.apache.org/jira/browse/HBASE-13881) | *Major* | **Bug in HTable#incrementColumnValue implementation**

HBASE-13881 Correct HTable incrementColumnValue implementation


---

* [HBASE-13865](https://issues.apache.org/jira/browse/HBASE-13865) | *Trivial* | **Increase the default value for hbase.hregion.memstore.block.multipler from 2 to 4 (part 2)**

Increase default hbase.hregion.memstore.block.multiplier from 2 to 4 in the code to match the default value in the config files.


---

* [HBASE-14201](https://issues.apache.org/jira/browse/HBASE-14201) | *Major* | **hbck should not take a lock unless fixing errors**

HBCK no longer takes a lock until there are changes to the cluster being made.

The old behavior can be achieved by passing the -exclusive flag.


---

* [HBASE-13985](https://issues.apache.org/jira/browse/HBASE-13985) | *Minor* | **Add configuration to skip validating HFile format when bulk loading**

A new config, hbase.loadincremental.validate.hfile , is introduced - default to true
When set to false, checking hfile format is skipped during bulkloading.


---

* [HBASE-14054](https://issues.apache.org/jira/browse/HBASE-14054) | *Major* | **Acknowledged writes may get lost if regionserver clock is set backwards**

In {{checkAndPut}} write path use max(max timestamp for the row, System.currentTimeMillis()) in the, instead of blindly taking System.currentTimeMillis() to ensure that checkAndPut() cannot do writes which is already eclipsed. This is similar to what has been done in HBASE-12449 for increment and append.


---

* [HBASE-13706](https://issues.apache.org/jira/browse/HBASE-13706) | *Minor* | **CoprocessorClassLoader should not exempt Hive classes**

Starting from HBase 2.0, CoprocessorClassLoader will not exempt hadoop classes or zookeeper classes.  This means that if the custom coprocessor jar contains hadoop or zookeeper packages and classes, they will be loaded by the CoprocessorClassLoader.  Only hbase packages and classes  are exempted from the CoprocessorClassLoader. They (and their dependencies) are loaded by the parent server class loader.


---

* [HBASE-13966](https://issues.apache.org/jira/browse/HBASE-13966) | *Minor* | **Limit column width in table.jsp**

Wraps region, start key, end key columns if too long.


---

* [HBASE-10844](https://issues.apache.org/jira/browse/HBASE-10844) | *Major* | **Coprocessor failure during batchmutation leaves the memstore datastructs in an inconsistent state**

Promotes an -ea assert to logged FATAL and RS abort when memstore is found to be in an inconsistent state.


---

* [HBASE-14148](https://issues.apache.org/jira/browse/HBASE-14148) | *Major* | **Web UI Framable Page**

Security fix: Adds protection from clickjacking using X-Frame-Options header.
This will prevent use of HBase UI in frames. To disable this feature, set the configuration \'hbase.http.filter.xframeoptions.mode\' to \'ALLOW\' (default is \'DENY\').


---

* [HBASE-13127](https://issues.apache.org/jira/browse/HBASE-13127) | *Major* | **Add timeouts on all tests so less zombie sightings**

Use junit facility to impose timeout on test. Use test category to chose which timeout to apply: small tests timeout after 30 seconds, medium tests after 180 seconds, and large tests after ten minutes.

Updated junit version from 4.11 to 4.12. 4.12 has support for feature used here.

Add this at the head of your junit4 class to add a category-based timeout:

{code}
@Rule public final TestRule timeout =   CategoryBasedTimeout.builder().withTimeout(this.getClass()).
      withLookingForStuckThread(true).build();
{code}

For example:


---

* [HBASE-14224](https://issues.apache.org/jira/browse/HBASE-14224) | *Critical* | **Fix coprocessor handling of duplicate classes**

Prevent Coprocessors being doubly-loaded; a particular coprocessor can only be loaded once.


---

* [HBASE-14313](https://issues.apache.org/jira/browse/HBASE-14313) | *Critical* | **After a Connection sees ConnectionClosingException it never recovers**

HConnection could get stuck when talking to a host that went down and then returned. This has been fixed by closing the connection in all paths.


---

* [HBASE-14261](https://issues.apache.org/jira/browse/HBASE-14261) | *Major* | **Enhance Chaos Monkey framework by adding zookeeper and datanode fault injections.**

This change augments existing chaos monkey framework with actions for restarting underlying zookeeper quorum and hdfs nodes of distributed hbase cluster. One assumption made while creating zk actions are that zookeper ensemble is an independent external service and won\'t be managed by hbase cluster.  For these actions to work as expected, the following parameters need to be configured appropriately.

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

* [HBASE-14317](https://issues.apache.org/jira/browse/HBASE-14317) | *Blocker* | **Stuck FSHLog: bad disk (HDFS-8960) and can\'t roll WAL**

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

* [HBASE-6617](https://issues.apache.org/jira/browse/HBASE-6617) | *Major* | **ReplicationSourceManager should be able to track multiple WAL paths**

ReplicationSourceManager now could track multiple wal paths. Notice that although most changes are internal and all metrics names remain the same, signature of below methods in MetricsSource are changed:

1. refreshAgeOfLastShippedOp now requires a String parameter which indicates the wal group id of the reporter
2. setAgeOfLastShippedOp also adds a String parameter for wal group id


---

* [HBASE-14400](https://issues.apache.org/jira/browse/HBASE-14400) | *Critical* | **Fix HBase RPC protection documentation**

To use rpc protection in HBase, set the value of \'hbase.rpc.protection\' to:
\'authentication\' : simple authentication using kerberos
\'integrity\' : authentication and integrity
\'privacy\' : authentication and confidentiality

Earlier, HBase reference guide erroneously mentioned in some places to set the value to \'auth-conf\'. This patch fixes the guide and adds temporary support for erroneously recommended values.


---

* [HBASE-14433](https://issues.apache.org/jira/browse/HBASE-14433) | *Major* | **Set down the client executor core thread count from 256 in tests**

Tests run with client executors that have core thread count of 4 and a keepalive of 3 seconds. They used to default to 256 core threads and 60 seconds  for keepalive.


---

* [HBASE-14334](https://issues.apache.org/jira/browse/HBASE-14334) | *Major* | **Move Memcached block cache in to it\'s own optional module.**

Move external block cache to it\'s own module. This  will reduce dependencies for people who use hbase-server.
Currently Memcached is the reference implementation for external block cache. External block caches allow HBase to take advantage of other more complex caches that can live longer than the HBase regionserver process and are not necessarily tied to a single computer
    life time. However external block caches add in extra operational overhead.


---

* [HBASE-14280](https://issues.apache.org/jira/browse/HBASE-14280) | *Minor* | **Bulk Upload from HA cluster to remote HA hbase cluster fails**

Patch will effectively work with Hadoop version 2.6 or greater with a launch of "internal.nameservices".
There will be no change in versions older than 2.6.


---

* [HBASE-14230](https://issues.apache.org/jira/browse/HBASE-14230) | *Minor* | **replace reflection in FSHlog with HdfsDataOutputStream#getCurrentBlockReplication()**

Remove calling getNumCurrentReplicas on HdfsDataOutputStream via reflection. getNumCurrentReplicas showed up in hadoop 1+ and hadoop 0.2x. In hadoop-2 it was deprecated.


---

* [HBASE-14465](https://issues.apache.org/jira/browse/HBASE-14465) | *Major* | **Backport \'Allow rowlock to be reader/write\' to branch-1**

Locks on row are now reader/writer rather than exclusive. 

Moves sequenceid out of HRegion and into MVCC class; MVCC is now in charge. A WAL append is still stamped in same way (we pass MVCC context in a few places where we previously we did not). 

MVCC methods cleaned up. Make a bit more sense now. Less of them. 

Simplifies our update of MemStore/WAL. Now we update memstore AFTER we add to WAL (but before we sync). This fixes possible dataloss when two edits came in with same coordinates; we could order the edits in memstore differently to how they arrived in the WAL. 

Marked as an incompatible change because it breaks Distributed Log Replay, a feature we\'d determined already was unreliable and to be removed (See http://search-hadoop.com/m/YGbbhTJpoal8GD1).


---

* [HBASE-14475](https://issues.apache.org/jira/browse/HBASE-14475) | *Major* | **Region split requests are always audited with "hbase" user rather than request user**

Region observer notifications w.r.t. split request are now audited with request user through proper scope of doAs() calls.


---

* [HBASE-14367](https://issues.apache.org/jira/browse/HBASE-14367) | *Major* | **Add normalization support to shell**

This patch adds shell support for region normalizer (see HBASE-13103).

3 commands have been added to hbase shell \'tools\' command group (modeled on how the balancer works):

 - \'normalizer\_enabled\' checks whether region normalizer is turned on
 - \'normalizer\_switch\' allows user to turn normalizer on and off
 - \'normalize\' runs region normalizer if it\'s turned on.

Also \'alter\' command has been extended to allow user to enable/disable region normalization per table (disabled by default). Use it as 

alter \'testtable\', {NORMALIZATION\_MODE =\> \'true\'}

Here is the help for the normalize command:

{code}
hbase(main):008:0\> help \'normalize\'
Trigger region normalizer for all tables which have NORMALIZATION\_MODE flag set. Returns true
 if normalizer ran successfully, false otherwise. Note that this command has no effect
 if region normalizer is disabled (make sure it\'s turned on using \'normalizer\_switch\' command).

 Examples:

   hbase\> normalize
{code}


---

* [HBASE-14544](https://issues.apache.org/jira/browse/HBASE-14544) | *Major* | **Allow HConnectionImpl to not refresh the dns on errors**

By setting hbase.resolve.hostnames.on.failure to false you can reduce the number of dns name resolutions that a client will do. However if machines leave and come back with different ip\'s the changes will not be noticed by the clients. So only set hbase.resolve.hostnames.on.failure to false if your cluster dns is not changing while clients are connected.


---

* [HBASE-14502](https://issues.apache.org/jira/browse/HBASE-14502) | *Major* | **Purge use of jmock and remove as dependency**

HBASE-14502 Purge use of jmock and remove as dependency


---

* [HBASE-14529](https://issues.apache.org/jira/browse/HBASE-14529) | *Major* | **Respond to SIGHUP to reload config**

HBase daemons can now be signaled to reload their config by sending SIGHUP to the java process. Not all config parameters can be reloaded.

In order for this new feature to work the hbase-daemon.sh script was changed to use disown rather than nohup. Functionally this shouldn\'t change anything but the processes will have a different parent when being run from a connected login shell.


---

* [HBASE-12911](https://issues.apache.org/jira/browse/HBASE-12911) | *Major* | **Client-side metrics**

Introduces collection and reporting of various client-perceived metrics. Metrics are exposed via JMX under "org.apache.hadoop.hbase.client.MetricsConnection". Metrics are scoped according to connection instance, so multiple connection objects (ie, to different clusters) will report their metrics separately. Metrics are disabled by default, must be enabled by configuring "hbase.client.metrics.enable=true".


---

* [HBASE-14517](https://issues.apache.org/jira/browse/HBASE-14517) | *Minor* | **Show regionserver\'s version in master status page**

Adds server version to the listing of regionservers on the master home page.

if a cluster where the versions deviate, at the bottom of the \'Version\' column on the master home page listing of \'Region Servers\', you will see a note in red that says something like: \'Total:10		9 nodes with inconsistent version\'


---

* [HBASE-14658](https://issues.apache.org/jira/browse/HBASE-14658) | *Major* | **Allow loading a MonkeyFactory by class name**

You can specify one of the predefined set of Monkeys when you run Integration Tests by passing the -m\|--monkey arguments on the command line; e.g -m CALM or -m SLOW\_DETERMINISTIC

This patch  makes it so you can pass the name of a class as the monkey to run: e.g. -m org.example.KingKong


---

* [HBASE-14257](https://issues.apache.org/jira/browse/HBASE-14257) | *Major* | **Periodic flusher only handles hbase:meta, not other system tables**

Memstore periodic flusher used to flush META table every 5 minutes but not any other system tables. This jira extends it to flush all system tables within this time period.


---

* [HBASE-14700](https://issues.apache.org/jira/browse/HBASE-14700) | *Major* | **Support a "permissive" mode for secure clusters to allow "simple" auth clients**

Secure HBase now supports a permissive mode to allow mixed secure and insecure clients.  This allows clients to be incrementally migrated over to a secure configuration.  To enable clients to continue to connect using SIMPLE authentication when the cluster is configured for security, set "hbase.ipc.server.fallback-to-simple-auth-allowed" equal to "true" in hbase-site.xml.  NOTE: This setting should ONLY be used as a temporary measure while converting clients over to secure authentication.  It MUST BE DISABLED for secure operation.


---

* [HBASE-14387](https://issues.apache.org/jira/browse/HBASE-14387) | *Major* | **Compaction improvements: Maximum off-peak compaction size**

New configuration option: hbase.hstore.compaction.max.size.offpeak - maximum selection size eligible for minor compaction during off peak hours.
hbase.hstore.compaction.max.size - this is default maximum if no off-peak hours are defined or if no maximum off-peak maximum size is defined.


---

* [HBASE-14793](https://issues.apache.org/jira/browse/HBASE-14793) | *Major* | **Allow limiting size of block into L1 block cache.**

Very large blocks can fragment the heap and cause bad issues for the garbage collector, especially the G1GC. Now there is a maximum size that a block can be and still stick in the LruBlockCache. That size defaults to 16mb but can be controlled by changing "hbase.lru.max.block.size"


---

* [HBASE-14799](https://issues.apache.org/jira/browse/HBASE-14799) | *Critical* | **Commons-collections object deserialization remote command execution vulnerability**

This issue resolves a potential security vulnerability. For all versions we update our commons-collections dependency to the release that fixes the reported vulnerability in that library. In 0.98 we additionally disable by default a feature of code carried from 0.94 for backwards compatibility that is not needed.


---

* [HBASE-14821](https://issues.apache.org/jira/browse/HBASE-14821) | *Major* | **CopyTable should allow overriding more config properties for peer cluster**

Configuration properties for org.apache.hadoop.hbase.mapreduce.TableOutputFormat can now be overridden by prefixing the property keys with "hbase.mapred.output.".  When the configuration is applied to TableOutputFormat, these entries will be rewritten with the prefix removed -- ie. "hbase.mapred.output.hbase.security.authentication" becomes "hbase.security.authentication".  This can be useful when directing output to a peer cluster with different security configuration, for example.


---

* [HBASE-14926](https://issues.apache.org/jira/browse/HBASE-14926) | *Major* | **Hung ThriftServer; no timeout on read from client; if client crashes, worker thread gets stuck reading**

Adds a timeout to server read from clients. Adds new configs hbase.thrift.server.socket.read.timeout for setting read timeout on server socket in milliseconds. Default is 60000;


---

* [HBASE-14605](https://issues.apache.org/jira/browse/HBASE-14605) | *Blocker* | **Split fails due to \'No valid credentials\' error when SecureBulkLoadEndpoint#start tries to access hdfs**

When split is requested by non-super user, split related notifications for Coprocessor are executed using the login of the request user.
Previously the notifications were carried out as super user.


---

* [HBASE-14631](https://issues.apache.org/jira/browse/HBASE-14631) | *Blocker* | **Region merge request should be audited with request user through proper scope of doAs() calls to region observer notifications**

Region observer notifications w.r.t. merge request are now audited with request user through proper scope of doAs() calls.


---

* [HBASE-14655](https://issues.apache.org/jira/browse/HBASE-14655) | *Blocker* | **Narrow the scope of doAs() calls to region observer notifications for compaction**

Region observer notifications w.r.t. compaction request are now audited with request user through proper scope of doAs() calls.


---

* [HBASE-7171](https://issues.apache.org/jira/browse/HBASE-7171) | *Major* | **Initial web UI for region/memstore/storefiles details**

HBASE-7171 adds 2 new pages to the region server Web UI to ease debugging and provide greater insight into the physical data layout.

Region names in UI table listing all regions (on the RS status page) are now hyperlinks leading to region detail page which shows some aggregate memstore information (currently just memory used) along with the list of all Store Files (HFiles) in the region. Names of Store Files are also hyperlinks leading to Store File detail page, which currently runs \'hbase hfile\' command behind the scene and displays statistics about store file.


---

* [HBASE-14946](https://issues.apache.org/jira/browse/HBASE-14946) | *Critical* | **Don\'t allow multi\'s to over run the max result size.**

The HBase region server will now send a chunk of get responses to a client if the total response size is too large. This will only be done for clients 1.2.0 and beyond. Older clients by default will have the old behavior.

This patch is for the case where the basic flow is like this:

I want to get a single column from lots of rows. So I create a list of gets. Then I send them to table.get(List\<Get\>). If the regions for that table are spread out then those requests get chunked out to all the region servers. No one regionserver gets too many. However if one region server contains lots of regions for that table then a multi action can contain lots of gets. No single get is too onerous. However the regionserver won\'t return until every get is complete. So if there are thousands of gets that are sent in one multi then the regionserver can retain lots of data in one thread.


---

* [HBASE-14745](https://issues.apache.org/jira/browse/HBASE-14745) | *Blocker* | **Shade the last few dependencies in hbase-shaded-client**

Previously some dependencies in hbase-shaded-client were still leaking into the un-shaded namespace. This should now be fixed.

Additionally the rat checking on generated intermediate files from shading should be skipped.


---

* [HBASE-14960](https://issues.apache.org/jira/browse/HBASE-14960) | *Major* | **Fallback to using default RPCControllerFactory if class cannot be loaded**

If the configured RPC controller factory (via hbase.rpc.controllerfactory.class) cannot be found in the classpath or loaded, we fall back to using the default RPC controller factory in HBase.


---

* [HBASE-14984](https://issues.apache.org/jira/browse/HBASE-14984) | *Major* | **Allow memcached block cache to set optimze to false**

Setting hbase.cache.memcached.spy.optimze to true will allow the spy memcached client to try and optimize for the number of requests outstanding. This can increase throughput but can also increase variance for request times.

Setting it to true will help when round trip times are longer.
Setting it to false ( the default ) will help ensure a more even distribution of response times.


---

* [HBASE-14951](https://issues.apache.org/jira/browse/HBASE-14951) | *Minor* | **Make hbase.regionserver.maxlogs obsolete**

Rolling WAL events across a cluster can be highly correlated, hence flushing memstores, hence triggering minor compactions, that can be promoted to major ones. These events are highly correlated in time if there is a balanced write-load on the regions in a table. Default value for maximum WAL files (\* hbase.regionserver.maxlogs\*), which controls WAL rolling events - 32 is too small for many modern deployments. 
Now we calculate this value dynamically (if not defined by user), using the following formula:

maxLogs = Math.max( 32, HBASE\_HEAP\_SIZE \* memstoreRatio \* 2/ LogRollSize), where

memstoreRatio is \*hbase.regionserver.global.memstore.size\*
LogRollSize is maximum WAL file size (default 0.95 \* HDFS block size)

We need to make sure that we avoid fully or minimize events when RS has to flush memstores prematurely only because it reached artificial limit of hbase.regionserver.maxlogs, this is why we put this 2 x multiplier in equation, this gives us maximum WAL capacity of 2 x RS memstore-size. 

Runaway WAL files.

The default log rolling period (1h) allows to accumulate up to 2 X Memstore Size data in a WAL. For heap size - 32G and all other default setting, this gives ~ 26GB of data. Under heavy write load, the number of WAL files can increase dramatically. RegionServer LogRoller will be archiving old WALs periodically. User has three options, either override default hbase.regionserver.maxlogs or override default hbase.regionserver.logroll.period (decrease), or both to control runaway WALs.

For system with bursty write load,  the hbase.regionserver.logroll.period can be decreased to lower value. In this case the maximum number of wal files will be defined by the total size of memstore (unflushed data), not by the hbase.regionserver.maxlogs. But for majority of applications there will be no issues with defaults. Data will be flushed periodically from memstore, the LogRoller will archive old wal files and the system will never reach the new defaults for hbase.regionserver.maxlogs, unless the system is under extreme load for prolonged period of time, but in this case, decreasing hbase.regionserver.logroll.period allows us to control runaway wal files.

The following table gives the new default maximum log files values for several different Region Server heap sizes:

heap	memstore perc	maxLogs
1G	        40%	                        32
2G	        40%	                        32
10G	        40%	                        80
20G	        40%	                        160
32G	        40%	                        256


---

* [HBASE-14978](https://issues.apache.org/jira/browse/HBASE-14978) | *Blocker* | **Don\'t allow Multi to retain too many blocks**

Limiting the amount of memory resident for any one request allows the server to handle concurrent requests smoothly. To this end we added the ability to limit the size of responses to a multi request. That worked well however it correctly represent the amount of memory resident. So this issue adds on a an approximation of the number of blocks held for a request.

All clients before 1.2.0 will not get this multi request chunking based upon blocks kept. All clients 1.2.0 and after will.


---

* [HBASE-14205](https://issues.apache.org/jira/browse/HBASE-14205) | *Critical* | **RegionCoprocessorHost System.nanoTime() performance bottleneck**

**WARNING: No release note provided for this change.**


---

* [HBASE-14822](https://issues.apache.org/jira/browse/HBASE-14822) | *Major* | **Renewing leases of scanners doesn\'t work**

And 1.1, 1.0, and 0.98.


---

* [HBASE-14976](https://issues.apache.org/jira/browse/HBASE-14976) | *Minor* | **Add RPC call queues to the web ui**

Adds column displaying current aggregated call queues size in region server queues tab UI.


---

* [HBASE-15018](https://issues.apache.org/jira/browse/HBASE-15018) | *Major* | **Inconsistent way of handling TimeoutException in the rpc client implementations**

When using the new AsyncRpcClient introduced in HBase 1.1.0 (HBASE-12684), time outs now result in an IOException wrapped around a CallTimeoutException instead of a bare CallTimeoutException. This change makes the AsyncRpcClient behave the same as the default HBase 1.y RPC client implementation.


---

* [HBASE-14468](https://issues.apache.org/jira/browse/HBASE-14468) | *Major* | **Compaction improvements: FIFO compaction policy**

FIFO compaction policy selects only files which have all cells expired. The column family MUST have non-default TTL. 
Essentially, FIFO compactor does only one job: collects expired store files. 

Because we do not do any real compaction, we do not use CPU and IO (disk and network), we do not evict hot data from a block cache. The result: improved throughput and latency both write and read.
See: https://github.com/facebook/rocksdb/wiki/FIFO-compaction-style


---

* [HBASE-15111](https://issues.apache.org/jira/browse/HBASE-15111) | *Trivial* | **"hbase version" should write to stdout**

The `hbase version` command now outputs directly to stdout rather than to a logger. This change allows the version information to be output consistently regardless of logger configuration. Naturally, this also means the command output ignores all logger configuration. Furthermore, the move from loggers to direct output changes the output of the command to omit metadata commonly included in logger ouput such as a timestamp, log level, and logger name.


---

* [HBASE-15098](https://issues.apache.org/jira/browse/HBASE-15098) | *Blocker* | **Normalizer switch in configuration is not used**

The config parameter, hbase.normalizer.enabled, has been dropped since it is not used in the code base.


---

* [HBASE-15091](https://issues.apache.org/jira/browse/HBASE-15091) | *Blocker* | **Forward-port to 1.2+ HBASE-15031 "Fix merge of MVCC and SequenceID performance regression in branch-1.0 for Increments"**

UPDATE: This forward port was not necessary. hbase-1.2.0 as it happens does not suffer the performance regression. HBASE-12751 which was added to hbase-1.2.0, actually fixed the performance regression in increment and append too. Ignore the below!!!! 

Increments can be 10x slower (or more) when there is high concurrency since HBase 1.0.0 (HBASE-8763). 

This \'fix\' adds back a fast increment but speed is achieved by relaxing row-level consistency for Increments (only). The default remains the old, slow, consistent Increment behavior. 

Set "hbase.increment.fast.but.narrow.consistency" to true in hbase-site.xml to enable \'fast\' increments and then rolling restart your cluster. This is a setting the server-side needs to read. 

Intermixing fast increment with other Mutations will give indeterminate results; e.g. a Put and Increment against the same Cell will not always give you the result you expect. Fast Increments are consistent unto themselves. A Get with {@link IsolationLevel#READ\_UNCOMMITTED} will return the latest increment value or an Increment of an amount zero will do the same (beware doing Get on a cell that has not been incremented yet -- this will return no results). 

The difference between fastAndNarrowConsistencyIncrement and slowButConsistentIncrement is that the former holds the row lock until the WAL sync completes; this allows us to reason that there are no other writers afoot when we read the current increment value. In this case we do not need to wait on mvcc reads to catch up to writes before we proceed with the read of the current Increment value, the root of the slowdown seen in HBASE-14460. The fast-path also does not wait on mvcc to complete before returning to the client (but the write has been synced and put into memstore before we return). 

Also adds a simple performance test tool that will run against existing cluster. It expects the table to be already created (by default it expects the table \'tableName\' with a column family \'columnFamilyName\'): 

{code} 
$ ./bin/hbase org.apache.hadoop.hbase.IncrementPerformanceTest 
{code] 

Configure it by passing -D options. Here are the set below: 

2015-12-23 19:33:36,941 INFO [main] hbase.IncrementPerformanceTest: Running test with hbase.zookeeper.quorum=localhost, tableName=tableName, columnFamilyName=columnFamilyName, threadCount=80, incrementCount=10000 

... so to set the tableName pass -DtableName=SOME\_TABLENAME 

Here is an example use of the test tool: 

{code} 
$ time ./bin/hbase --config ~/conf\_hbase org.apache.hadoop.hbase.IncrementPerformanceTest -DincrementCount=50000 
{code}


---

* [HBASE-15145](https://issues.apache.org/jira/browse/HBASE-15145) | *Major* | **HBCK and Replication should authenticate to zookepeer using server principal**

Added a new command line argument: --auth-as-server to enable authenticating to ZooKeeper as the HBase Server principal. This is required for secure clusters for doing replication operations like add\_peer, list\_peers, etc until HBASE-11392 is fixed. This advanced option can also be used for manually fixing secure znodes. 

Commands can now be invoked like: 
hbase --auth-as-server shell 
hbase --auth-as-server zkcli 

HBCK in secure setup also needs to authenticate to ZK using servers principals.This is turned on by default (no need to pass additional argument). 

When authenticating as server, HBASE\_SERVER\_JAAS\_OPTS is concatenated to HBASE\_OPTS if defined in hbase-env.sh. Otherwise, HBASE\_REGIONSERVER\_OPTS is concatenated.


---

* [HBASE-15129](https://issues.apache.org/jira/browse/HBASE-15129) | *Major* | **Set default value for hbase.fs.tmp.dir rather than fully depend on hbase-default.xml**

Before HBASE-15129, if somehow hbase-default.xml is not on classpath, default values for hbase.fs.tmp.dir and hbase.bulkload.staging.dir are left empty. After HBASE-15129,  default values of both properties are set to "/user/\<user.name\>/hbase-staging".


---

* [HBASE-15218](https://issues.apache.org/jira/browse/HBASE-15218) | *Blocker* | **On RS crash and replay of WAL, loosing all Tags in Cells**

This issue fixes 
- In case of normal WAL (Not encrypted) we were loosing all cell tags on WAL replay after an RS crash
- In case of encrypted WAL we were not even persisting Cell tags in WAL.  Tags from all unflushed (to HFile) Cells will get lost even after WAL replay recovery is done.

As we use tags for Cell level security, this fixes 2 security issues
 - Cell level visibility labels security breach . Making a visibility restricted cell global readable
 - Cell level ACL availability issue.  A user who is cell level authorized to read this cell can not read it. It is a data loss for him.


---

* [HBASE-15157](https://issues.apache.org/jira/browse/HBASE-15157) | *Major* | **Add \*PerformanceTest for Append, CheckAnd\***

Add append, increment, checkAndMutate, checkAndPut, and checkAndDelete tests to PerformanceEvaluation tool. Below are excerpts from new usage from PE:

....
Command:
 append          Append on each row; clients overlap on keyspace so some concurrent operations
 checkAndDelete  CheckAndDelete on each row; clients overlap on keyspace so some concurrent operations
 checkAndMutate  CheckAndMutate on each row; clients overlap on keyspace so some concurrent operations
 checkAndPut     CheckAndPut on each row; clients overlap on keyspace so some concurrent operations
 filterScan      Run scan test using a filter to find a specific row based on it\'s value (make sure to use --rows=20)
 increment       Increment on each row; clients overlap on keyspace so some concurrent operations
 randomRead      Run random read test
....
Examples:
...
 To run 10 clients doing increments over ten rows:
 $ bin/hbase org.apache.hadoop.hbase.PerformanceEvaluation --rows=10 --nomapred increment 10

Removed IncrementPerformanceTest. It is not as configurable as the additions made here.


---

* [HBASE-14460](https://issues.apache.org/jira/browse/HBASE-14460) | *Critical* | **[Perf Regression] Merge of MVCC and SequenceId (HBASE-8763) slowed Increments, CheckAndPuts, batch operations**

This release note tries to tell the general story. Dive into sub-tasks for more specific release noting.

Increments, appends, checkAnd\* have been slow since hbase-.1.0.0. The unification of mvcc and sequence id done by HBASE-8763 was responsible.

A ‘fast-path’ workaround was added by HBASE-15031 “Fix merge of MVCC and SequenceID performance regression in branch-1.0 for Increments”. It became available in 1.0.3 and 1.1.3. To enable the fast path, set "hbase.increment.fast.but.narrow.consistency" and then rolling restart. The workaround was for increments only (appends, checkAndPut, etc., were not addressed. See HBASE-15031 release note for more detail).

Subsequently, the regression was properly identified and fixed in HBASE-15213 and the fix applied to branch-1.0 and branch-1.1. As it happens, hbase-1.2.0 does not suffer from the performance regression (though the thought was that it did -- and so it got the fast-path patch too via HBASE-15092) nor does the master branch. HBASE-15213 identified that HBASE-12751 (as a side effect) had cured the regression.

hbase-1.0.4 (if it is ever released -- 1.0 has been end-of-lifed) and hbase-1.1.4 will have the HBASE-15213 fix.  If you are suffering from the increment regression and you are on 1.0.3 or 1.1.3, you can enable the work around to get back your increment performance but you should upgrade.


---

* [HBASE-14355](https://issues.apache.org/jira/browse/HBASE-14355) | *Major* | **Scan different TimeRange for each column family**

Adds being able to Scan each column family with a different time range. Adds new methods setColumnFamilyTimeRange and getColumnFamilyTimeRange to Scan.


---

* [HBASE-15100](https://issues.apache.org/jira/browse/HBASE-15100) | *Blocker* | **Master WALProcs still never clean up**

The constructor for o.a.h.hbase.ProcedureInfo was mistakenly labeled IA.Public in previous releases and has now changed to IA.Private. Downstream users are safe to consume ProcedureInfo objects returned from HBase public interfaces, but should not expect to be able to reliably create new instances themselves.

The method ProcedureInfo.setNonceKey has been removed, because it should not have been exposed to clients.


---

* [HBASE-11927](https://issues.apache.org/jira/browse/HBASE-11927) | *Major* | **Use Native Hadoop Library for HFile checksum (And flip default from CRC32 to CRC32C)**

Checksumming is cpu intensive. HBase computes additional checksums for HFiles (hdfs does checksums too) and stores them inline with file data. During reading, these checksums are verified to ensure data is not corrupted. This patch tries to use Hadoop Native Library for checksum computation, if it’s available, otherwise falls back to standard Java libraries. Instructions to load NHL in HBase can be found here (http://hbase.apache.org/book.html#hadoop.native.lib).

Default checksum algorithm has been changed from CRC32 to CRC32C primarily because of two reasons: 1) CRC32C has better error detection properties, and 2) New Intel processors have a dedicated instruction for crc32c computation (SSE4.2 instruction set)\*. This change is fully backward compatible. Also, users should not see any differences except decrease in cpu usage. To keep old settings, set configuration ‘hbase.hstore.checksum.algorithm’ to ‘CRC32’.

\* On linux, run \'cat /proc/cpuinfo’ and look for sse4\_2 in list of flags to see if your processor supports SSE4.2.


---

* [HBASE-13963](https://issues.apache.org/jira/browse/HBASE-13963) | *Critical* | **avoid leaking jdk.tools**

HBase now ensures that the JDK tools jar used during the build process is not exposed to downstream clients as a transitive dependency of hbase-annotations.

If you need to have the JDK tools jar in your classpath, you should add a system dependency on it. See the hbase-annotations pom for an example of the necessary pom additions.


---

* [HBASE-15224](https://issues.apache.org/jira/browse/HBASE-15224) | *Major* | **Undo  "hbase.increment.fast.but.narrow.consistency" option; it is not necessary since HBASE-15213**

HBASE-15031 “Fix merge of MVCC and SequenceID performance regression in branch-1.0 for Increments” and HBASE-15091 ‘Forward-port to 1.2+ HBASE-15031 "Fix merge of MVCC and SequenceID performance regression in branch-1.0 for Increments"’ added a workaround ‘fast-path’ to restore an increment performance regression that came into hbase 1.0 when we unified mvcc and sequence id in HBASE-8763. The workaround became available in hbase-1.0.3 and hbase-1.1.3. The workaround involved setting the flag  "hbase.increment.fast.but.narrow.consistency"  in your configuration and restarting.

Subsequently, the regression was fixed in HBASE-15213. The fix will be available in hbase-1.0.4 and hbase-1.1.4 when they are released. hbase-1.2.0 has the flag but as it turns out, it is not needed; there is no regression in 1.2.0.

This issue removes the fast-path flag. If set, it will just be ignored.



