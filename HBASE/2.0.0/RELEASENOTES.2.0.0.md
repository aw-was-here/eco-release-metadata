
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
# Apache HBase  2.0.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HBASE-14047](https://issues.apache.org/jira/browse/HBASE-14047) | *Major* | **Cleanup deprecated APIs from Cell class**

The following API from Cell (which were deprecated since past few major versions) are removed now.
getRow
getFamily
getQualifier
getValue
getMvccVersion
The above apis can be replaced with their respective CellUtil#cloneXXX (allocates a copy) or Cell#getXXXArray (essentially just returns a pointer) based on the use case.


---

* [HBASE-14045](https://issues.apache.org/jira/browse/HBASE-14045) | *Major* | **Bumping thrift version to 0.9.2.**

This changes upgrades thrift dependency of HBase to 0.9.2. Though this doesn't break any HBase compatibility promises, it might impact any downstream projects that share thrift dependency with HBase.


---

* [HBASE-14029](https://issues.apache.org/jira/browse/HBASE-14029) | *Major* | **getting started for standalone still references hadoop-version-specific binary artifacts**

HBASE-14029 Correct documentation for Hadoop version specific artifacts


---

* [HBASE-14027](https://issues.apache.org/jira/browse/HBASE-14027) | *Major* | **Clean up netty dependencies**

HBase's convenience binary artifact no longer contains the netty 3.2.4 jar . This jar was not directly used by HBase, but may have been relied on by downstream applications.


---

* [HBASE-13983](https://issues.apache.org/jira/browse/HBASE-13983) | *Minor* | **Doc how the oddball HTable methods getStartKey, getEndKey, etc. will be removed in 2.0.0**

Adds extra doc on getStartKeys, getEndKeys, and getStartEndKeys in HTable explaining that they will be removed in 2.0.0 (these methods did not get the proper full major version deprecation cycle).

In this issue, we actually also remove these methods in master/2.0.0 branch.


---

* [HBASE-13963](https://issues.apache.org/jira/browse/HBASE-13963) | *Critical* | **avoid leaking jdk.tools**

HBase now ensures that the JDK tools jar used during the build process is not exposed to downstream clients as a transitive dependency of hbase-annotations.

If you need to have the JDK tools jar in your classpath, you should add a system dependency on it. See the hbase-annotations pom for an example of the necessary pom additions.


---

* [HBASE-13954](https://issues.apache.org/jira/browse/HBASE-13954) | *Major* | **Remove HTableInterface#getRowOrBefore related server side code**

Removed Table#getRowOrBefore, Region#getClosestRowBefore, Store#getRowKeyAtOrBefore, RemoteHTable#getRowOrBefore apis and Thrift support for getRowOrBefore.
Also removed two coprocessor hooks preGetClosestRowBefore and postGetClosestRowBefore.
User using this api can instead use reverse scan something like below, 
{code} 
 Scan scan = new Scan(row); 
  scan.setSmall(true); 
  scan.setCaching(1); 
  scan.setReversed(true); 
  scan.addFamily(family); 
{code} 
pass this scan object to the scanner and retrieve the first Result from scanner output.


---

* [HBASE-13930](https://issues.apache.org/jira/browse/HBASE-13930) | *Major* | **Exclude Findbugs packages from shaded jars**

Exclude Findbugs packages from shaded jars


---

* [HBASE-13900](https://issues.apache.org/jira/browse/HBASE-13900) | *Minor* | **duplicate methods between ProtobufMagic and ProtobufUtil**

Use ProtobufMagic methods in ProtobufUtil


---

* [HBASE-13898](https://issues.apache.org/jira/browse/HBASE-13898) | *Minor* | **correct additional javadoc failures under java 8**

Correct Javadoc generation errors


---

* [HBASE-13869](https://issues.apache.org/jira/browse/HBASE-13869) | *Trivial* | **Fix typo in HBase book**

Fix typo in HBase book


---

* [HBASE-13849](https://issues.apache.org/jira/browse/HBASE-13849) | *Major* | **Remove restore and clone snapshot from the WebUI**

The HBase master status web page no longer allows operators to clone snapshots nor restore snapshots.


---

* [HBASE-13843](https://issues.apache.org/jira/browse/HBASE-13843) | *Trivial* | **Fix internal constant text in ReplicationManager.java**

In previous versions of HBase, the ReplicationAdmin utility erroneously used the string key "columnFamlyName" when listing replicated column families. It now uses the corrected spelling of "columnFamilyName" (note the added "i").

Downstream code that parsed the replication entries returned from listReplicated will need to be updated to use the new key. Previously compiled code that relied on the static CFNAME member of ReplicationAdmin will need to be recompiled in order to see the updated value.


---

* [HBASE-13816](https://issues.apache.org/jira/browse/HBASE-13816) | *Major* | **Build shaded modules only in release profile**

hbase-shaded-client and hbase-shaded-server modules will not build the actual jars unless -Prelease is supplied in mvn.


---

* [HBASE-13754](https://issues.apache.org/jira/browse/HBASE-13754) | *Major* | **Allow non KeyValue Cell types also to oswrite**

This jira has removed the already deprecated method 
KeyValue#oswrite(final KeyValue kv, final OutputStream out)


---

* [HBASE-13747](https://issues.apache.org/jira/browse/HBASE-13747) | *Critical* | **Promote Java 8 to "yes" in support matrix**

Java 8 is considered supported and tested as of HBase 1.2+


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

* [HBASE-13636](https://issues.apache.org/jira/browse/HBASE-13636) | *Major* | **Remove deprecation for HBASE-4072 (Reading of zoo.cfg)**

Purge support for parsing zookeepers zoo.cfg deprecated since hbase-0.96.0


---

* [HBASE-13625](https://issues.apache.org/jira/browse/HBASE-13625) | *Major* | **Use HDFS for HFileOutputFormat2 partitioner's path**

Introduces a new config hbase.fs.tmp.dir which is a directory in HDFS (or default file system) to use as a staging directory for HFileOutputFormat2. This is also used as the default for hbase.bulkload.staging.dir


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


---

* [HBASE-13537](https://issues.apache.org/jira/browse/HBASE-13537) | *Major* | **Change the admin interface for async operations to return Future.**

As we made changes to return types in asynchronous methods of Admin API, this change is going to break binary compatibility. The source compatibility is kept intact though. The applications running against this change needs to be recompiled to keep things working.


---

* [HBASE-13533](https://issues.apache.org/jira/browse/HBASE-13533) | *Trivial* | **section on configuring ~/.m2/settings.xml has no anchor**

Correct setting.xml anchor in book


---

* [HBASE-13517](https://issues.apache.org/jira/browse/HBASE-13517) | *Major* | **Publish a client artifact with shaded dependencies**

HBase now provides added convenience artifacts that shade most dependencies. These jars hbase-shaded-client and hbase-shaded-server are meant to be used when dependency conflicts can not be solved any other way. The normal jars hbase-client and hbase-server should still be preferred when possible.

Do not use hbase-shaded-server or hbase-shaded-client inside of a co-processor as bad things will happen.


---

* [HBASE-13481](https://issues.apache.org/jira/browse/HBASE-13481) | *Major* | **Master should respect master (old) DNS/bind related configurations**

Master now honors configuration options as was before 1.0.0 releases:
hbase.master.ipc.address
hbase.master.dns.interface
hbase.master.dns.nameserver
hbase.master.info.bindAddress
This jira also adds hbase.master.hostname parameter as an extension to HBASE-12954.


---

* [HBASE-13453](https://issues.apache.org/jira/browse/HBASE-13453) | *Critical* | **Master should not bind to region server ports**

In 1.0.x, master by default binds to the region server ports (both rpc and info). This change brings back the usage of old master rpc and info ports in 1.1+ and master (2.0) branches. The motivation for this change is to ease the life of the user so that he does not need to do anything to bring up a RS on the same host and also to make the migration from 0.98 to 1.1  hassle free.  However, the users going from 1.0 to 1.1 would see the change in the master ports.


---

* [HBASE-13419](https://issues.apache.org/jira/browse/HBASE-13419) | *Major* | **Thrift gateway should propagate text from exception causes.**

Compose thrift exception text from the text of the entire cause chain of the underlying exception.


---

* [HBASE-13375](https://issues.apache.org/jira/browse/HBASE-13375) | *Major* | **Provide HBase superuser higher priority over other users in the RPC handling**

This JIRA modifies the signature of PriorityFunction#getPriority() method to also take request user as a parameter; all RPC requests sent by super users (as determined by cluster configuration) are executed with Admin QoS.


---

* [HBASE-13373](https://issues.apache.org/jira/browse/HBASE-13373) | *Major* | **Squash HFileReaderV3 together with HFileReaderV2 and AbstractHFileReader; ditto for Scanners and BlockReader, etc.**

Marking as incompatible change. Requires hfiles be major version >= 2 and >= minor version 3.  Version 3 files are enabled by default in 1.0.  0.98 writes version 2 minor version 3.  You cannot go to 1.0 from anything before 0.98.


---

* [HBASE-13362](https://issues.apache.org/jira/browse/HBASE-13362) | *Major* | **Set max result size from client only (like scanner caching).**

This introduces a new config option: hbase.server.scanner.max.result.size
This setting enforces a maximum result size (in bytes), when reached the server will return the results is has so far.
This is a safety setting and should be kept large. The default is inifinite in 0.98 and 1.0.x and 100mb in 1.1 and later.

Use hbase.client.scanner.max.result.size instead to enforce practical chunk sizes of a few mb (defaults to 2mb)


---

* [HBASE-13361](https://issues.apache.org/jira/browse/HBASE-13361) | *Minor* | **Remove or undeprecate {get\|set}ScannerCaching in HTable**

Removed getScannerCaching and setScannerCaching from Table


---

* [HBASE-13331](https://issues.apache.org/jira/browse/HBASE-13331) | *Blocker* | **Exceptions from DFS client can cause CatalogJanitor to delete referenced files**

Fixes an issue where files from a split region that were still referenced were erroneously deleted leading to data loss.


---

* [HBASE-13316](https://issues.apache.org/jira/browse/HBASE-13316) | *Minor* | **Reduce the downtime on planned moves of regions**

When issuing an Admin.move command the RegionServer that receive the region will try and open the StoreFiles of that region to prime the block cache with index blocks.


---

* [HBASE-13307](https://issues.apache.org/jira/browse/HBASE-13307) | *Major* | **Making methods under ScannerV2#next inlineable, faster**

Made methods smaller under Scanner#next so inlinable and compilable (was getting 'too big to compile' from hotspot). Use of unsafe to parse shorts rather than use BB#getShort... faster, etc.


---

* [HBASE-13298](https://issues.apache.org/jira/browse/HBASE-13298) | *Critical* | **Clarify if Table.{set\|get}WriteBufferSize() is deprecated or not**

Deprecate said methods. They were mistakenly included in Table Interface.


---

* [HBASE-13289](https://issues.apache.org/jira/browse/HBASE-13289) | *Major* | **typo in splitSuccessCount  metric**

In hbase 1.0.0, 0.98.10, 0.98.10.1, 0.98.11, and 0.98.12 'splitSuccessCount' was misspelled as 'splitSuccessCounnt'


---

* [HBASE-13275](https://issues.apache.org/jira/browse/HBASE-13275) | *Major* | **Setting hbase.security.authorization to false does not disable authorization**

Prior to this change the configuration setting 'hbase.security.authorization' had no effect if security coprocessor were installed. The act of installing the security coprocessors was assumed to indicate active authorizaton was desired and required. Now it is possible to install the security coprocessors yet have them operate in a passive state with active authorization disabled by setting 'hbase.security.authorization' to false. This can be useful but is probably not what you want. For more information, consult the Security section of the HBase online manual. 

'hbase.security.authorization' defaults to true for backwards comptatible behavior.


---

* [HBASE-13273](https://issues.apache.org/jira/browse/HBASE-13273) | *Major* | **Make Result.EMPTY\_RESULT read-only; currently it can be modified**

The Result.EMPTY\_RESULT object is now immutable. In previous releases, the object could be modified by a caller to no longer be empty. Code that relies on this behavior will now receive an UnsupportedOperationException.


---

* [HBASE-13270](https://issues.apache.org/jira/browse/HBASE-13270) | *Major* | **Setter for Result#getStats is #addResults; confusing!**

Deprecates Result#addResults in favor of Result#setStatistics


---

* [HBASE-13252](https://issues.apache.org/jira/browse/HBASE-13252) | *Major* | **Get rid of managed connections and connection caching**

For a long time, HBase supported 2 types of connections - managed, which were cached and closed automatically when not needed, and unmanaged, where user is responsible for closing the connections by calling #close() on them.

The concept of managed connections in HBase (deprecated before) has now been extinguished completely, and now all callers are responsible for managing the lifecycle of connections they acquire.


---

* [HBASE-13248](https://issues.apache.org/jira/browse/HBASE-13248) | *Major* | **Make HConnectionImplementation top-level class.**

**WARNING: No release note provided for this incompatible change.**


---

* [HBASE-13214](https://issues.apache.org/jira/browse/HBASE-13214) | *Major* | **Remove deprecated and unused methods from HTable class**

**WARNING: No release note provided for this incompatible change.**


---

* [HBASE-13198](https://issues.apache.org/jira/browse/HBASE-13198) | *Major* | **Remove HConnectionManager**

**WARNING: No release note provided for this incompatible change.**


---

* [HBASE-13187](https://issues.apache.org/jira/browse/HBASE-13187) | *Critical* | **Add ITBLL that exercises per CF flush**

Pass the -D flag generator.multiple.columnfamilies on the command-line if you want the generator to write three column families rather than the default one. When set, we will write the usual 'meta' column family and use it checking linked-list is wholesome but we will also write a 'tiny' column family and a 'big' column family to provoke uneven flushing; good for testing the flush-by-columnfamily feature.


---

* [HBASE-13170](https://issues.apache.org/jira/browse/HBASE-13170) | *Major* | **Allow block cache to be external**

HBase can use memcached as an external block cache. To use this change your config to set hbase.blockcache.use.external to true and hbase.cache.memcached.servers to contain the list of memcached servers to use.


---

* [HBASE-13149](https://issues.apache.org/jira/browse/HBASE-13149) | *Blocker* | **HBase MR is broken on Hadoop 2.5+ Yarn**

In HBase 1.1.0 and above we have upgraded the version of Jackson dependencies (jackson-core-asl, jackson-mapper-asl, jackson-jaxrs and jackson-xc) from 1.8.8 to 1.9.13. This is to follow the upgrade to Jackson 1.9.13 in Hadoop 2.5 and above which causes Jackson class incompatibility for HBase as reported in HBASE-13149.  Refer to HADOOP-10104 and YARN-2092 for additional information. Jackson1.9.13 is not completely backward compatible with the prior version 1.8.8 used in HBase. See the Compatibility reports attached in HBASE-13149 and http://svn.codehaus.org/jackson/trunk/release-notes/VERSION for more information.

This upgrade does not have direct impact on HBase users and HBase applications in most cases. In the rare case where your HBase application uses Jackson directly AND your application has compatibility issue with Jackson 1.9.13, you can do the following to mitigate the problem.

1. If you are on Hadoop 2.5 or above, and your HBase application involves running Yarn jobs, we recommend you update your application to use Jackson 1.9.13. You may be able to explore classpath isolation options (e.g. HADOOP-10893) or have your own classpath isolation strategy that works for you, but the general recommendation is that you upgrade to Jackson 1.9.13.
2. You may choose to continue using Jackson 1.8.8 and not to use Jackson 1.9.13 in your classpath.  You can also choose to replace the Jackson 1.9.13 jars in $HBASE\_HOME/lib with 1.8.8 jars.  It can work for you in the following cases:
a) You are on a Hadoop version earlier than Hadoop 2.5,  or
b) You are on Hadoop 2.5 or above, but your HBase application does not involve running Yarn jobs.
3. You may experiment with further isolation using the shaded jars introduced with 1.1.0 via HBASE-13517.

Note that it may not be tested or guaranteed that using Jackson 1.8.8 in $HBASE\_HOME/lib will work in future HBase releases.
It is recommended that your HBase application matches the Jackson version provided in HBase.

In HBase 0.98.x and HBase 1.0.x, we have NOT upgraded the version of Jackson dependencies. If you are on Hadoop 2.5 or above, and your HBase application involves running Yarn jobs, you may encounter Jackson class incomparability issue, as reported in HBASE-13149.

You can do the following to mitigate the problem:
1. Use 'hadoop jar' command to run your HBase jobs.
2. Explore classpath isolation options (e.g. HADOOP-10893) or have your own classpath isolation strategy that works for you.
3. You can also choose to replace the Jackson 1.8.8 jars in $HBASE\_HOME/lib with 1.9.13 jars from your Hadoop lib directory. We have tested HBase 0.98 with Jackson 1.9.13.


---

* [HBASE-13142](https://issues.apache.org/jira/browse/HBASE-13142) | *Major* | **[PERF] Reuse the IPCUtil#buildCellBlock buffer**

Adds buffer reuse sending Cell results. It is on by default and should not need configuration. Improves GC profile and ups throughput. The benefit gets better the larger the row size returned.

The buffer reservoir is bounded at a maximum count after which we will start logging at WARN level that the reservoir is running at capacity (returned buffers will be discarded and not added back to the reservoir pool). Default maximum is twice the handler count: i.e. 2 * hbase.regionserver.handler.count. This should be more than enough. Set the maximum with the new configuration: hbase.ipc.server.reservoir.max

The reservoir will not cache buffers in excess of hbase.ipc.server.reservoir.max.buffer.size  The default is 10MB. This means that if a row is very large, then we will allocate a buffer of the average size that is currently in the pool and we will then resize it till we can accommodate the return. These resizes are expensive. The resultant buffer will be used and then discarded.

To check how the reservoir is doing, enable trace level logging for a few seconds on a regionserver. You can do this from the regionserver UI. See 'Log Level'. Set org.apache.hadoop.hbase.io.BoundedByteBufferPool to TRACE. The BoundedByteBufferPool will spew report to the log. Disable the TRACE level and then check the log. You'll see allocation rate, size of pool, size of buffers in pool, etc.


---

* [HBASE-13118](https://issues.apache.org/jira/browse/HBASE-13118) | *Major* | **[PE] Add being able to write many columns**

Adds a --columns option to PE so you can write more than one column (changes default qualifier from 'data' to '0').


---

* [HBASE-13103](https://issues.apache.org/jira/browse/HBASE-13103) | *Major* | **[ergonomics] add region size balancing as a feature of master**

This patch adds optional ability for HMaster to normalize regions in size (disabled by default, change hbase.normalizer.enabled property to true to turn it on). If enabled, HMaster periodically (every 30 minutes by default) monitors tables for which normalization is enabled in table configuration and performs splits/merges as seems appropriate. Users may implement their own normalization strategies by implementing RegionNormalizer interface and configuring it in hbase-site.xml.


---

* [HBASE-13090](https://issues.apache.org/jira/browse/HBASE-13090) | *Major* | **Progress heartbeats for long running scanners**

Previously, there was no way to enforce a time limit on scan RPC requests. The server would receive a scan RPC request and take as much time as it needed to accumulate enough results to reach a limit or exhaust the region. The problem with this approach was that, in the case of a very selective scan, the processing of the scan could take too long and cause timeouts client side.

With this fix, the server will now enforce a time limit on the execution of scan RPC requests. When a scan RPC request arrives to the server, a time limit is calculated to be half of whichever timeout value is more restictive between the configurations ("hbase.client.scanner.timeout.period" and "hbase.rpc.timeout"). When the time limit is reached, the server will return whatever results it has accumulated up to that point. The results may be empty.

To ensure that timeout checks do not occur too often (which would hurt the performance of scans), the configuration "hbase.cells.scanned.per.heartbeat.check" has been introduced. This configuration controls how often System.currentTimeMillis() is called to update the progress towards the time limit. Currently, the default value of this configuration value is 10000. Specifying a smaller value will provide a tighter bound on the time limit, but may hurt scan performance due to the higher frequency of calls to System.currentTimeMillis().

Protobuf models for ScanRequest and ScanResponse have been updated so that heartbeat support can be communicated. Support for heartbeat messages is specified in the request sent to the server via ScanRequest.Builder#setClientHandlesHeartbeats. Only when the server sees that ScanRequest#getClientHandlesHeartbeats() is true will it send heartbeat messages back to the client. A response is marked as a heartbeat message via the boolean flag ScanResponse#getHeartbeatMessage


---

* [HBASE-13071](https://issues.apache.org/jira/browse/HBASE-13071) | *Major* | **Hbase Streaming Scan Feature**

MOTIVATION

A pipelined scan API is introduced for speeding up applications that combine massive data traversal with compute-intensive processing. Traditional HBase scans save network trips through prefetching the data to the client side cache. However, they prefetch synchronously: the fetch request to regionserver is invoked only when the entire cache is consumed. This leads to a stop-and-wait access pattern, in which the client stalls until the next chunk of data is fetched. Applications that do significant processing can benefit from background data prefetching, which eliminates this bottleneck. The pipelined scan implementation overlaps the cache population at the client side with application processing. Namely, it issues a new scan RPC when the iteration retrieves 50% of the cache. If the application processing (that is, the time between invocations of next()) is substantial, the new chunk of data will be available before the previous one is exhausted, and the client will not experience any delay. Ideally, the prefetch and the processing times should be balanced. 

API AND CONFIGURATION

Asynchronous scanning can be configured either globally for all tables and scans, or on per-scan basis via a new Scan class API. 

Configuration in hbase-site.xml: hbase.client.scanner.async.prefetch, default false:

 <property>
   <name>hbase.client.scanner.async.prefetch</name>
   <value>true</value>
 </property>

API - Scan#setAsyncPrefetch(boolean)

      Scan scan = new Scan();
      scan.setCaching(1000);
      scan.setMaxResultSize(BIG\_SIZE);
      scan.setAsyncPrefetch(true);
        ...
      ResultScanner scanner = table.getScanner(scan);

IMPLEMENTATION NOTES

Pipelined scan is implemented by a new ClientAsyncPrefetchScanner class, which is fully API-compatible with the synchronous ClientSimpleScanner. ClientAsyncPrefetchScanner is not instantiated in case of small (Scan#setSmall) and reversed (Scan#setReversed) scanners. The application is responsible for setting the prefetch size in a way that the prefetch time and the processing times are balanced. Note that due to double buffering, the client side cache can use twice as much memory as the synchronous scanner.

Generally, this feature will put more load on the server (higher fetch rate -- which is the whole point).  Also, YMMV.


---

* [HBASE-13047](https://issues.apache.org/jira/browse/HBASE-13047) | *Trivial* | **Add "HBase Configuration" link missing on the table details pages**

Add a '/conf' link to UI


---

* [HBASE-13044](https://issues.apache.org/jira/browse/HBASE-13044) | *Minor* | **Configuration option for disabling coprocessor loading**

This change adds two new configuration options:
- "hbase.coprocessor.enabled" controls globally if any coprocessors will be loaded. Set to "false" to disable. Defaults to "true" for compatibility with previous releases.
- "hbase.coprocessor.user.enabled" controls if any user (aka table) coprocessors will be loaded. Set to "false" to disable. Defaults to "true" for compatibility with previous releases.


---

* [HBASE-13030](https://issues.apache.org/jira/browse/HBASE-13030) | *Major* | **[1.0.0 polish] Make ScanMetrics public again and align Put 'add' with Get, Delete, etc., addColumn**

Miscellaneous cleanup. Make ScanMetrics audience public -- was mistakenly made private -- and make their access more amenable. Make Put like Delete and Get adding addColumn method (deprecating add). Make the ByteBuffer returned by Cell read only. Add to CellUtil a method to get a ByteRange on a value.


---

* [HBASE-13028](https://issues.apache.org/jira/browse/HBASE-13028) | *Blocker* | **Cleanup mapreduce API changes**

The bindings for reading data from HBase using both the Hadoop MapReduce mapred and mapreduce libraries now are initialized the same way. Subclasses wishing to build on TableInputFormatBase that use the new initialize method will have access to job configuration information.


---

* [HBASE-13008](https://issues.apache.org/jira/browse/HBASE-13008) | *Minor* | **Better default for hbase.regionserver.regionSplitLimit parameter.**

The configuration parameter "hbase.regionserver.regionSplitLimit", the number of regions a regionserver can open before splitting on the server is stopped to limit further region count growth, was lowered from Integer.MAX\_VALUE (2147483647) to a much more reasonable 1000, and documented in hbase-defaults.xml.


---

* [HBASE-12978](https://issues.apache.org/jira/browse/HBASE-12978) | *Blocker* | **Region goes permanently offline (WAS: hbase:meta has a row missing hregioninfo and it causes my long-running job to fail)**

Fixes a bug where an optimization that keeps our hfile indexes files small chanced upon an entry that has special meaning in the meta table making it so  we failed to find a region entry in an hbase:meta HFile (though the entry was present). Once we'd happened upon this condition, the region would be unfindable thereafter making it so the region was considered offline. The bug is in branch-1+ hbase only.


---

* [HBASE-12976](https://issues.apache.org/jira/browse/HBASE-12976) | *Major* | **Set default value for hbase.client.scanner.max.result.size**

With this setting defaulted now, scanner caching should be set to large value unless the caller knows how many rows it needs/expects back.


---

* [HBASE-12961](https://issues.apache.org/jira/browse/HBASE-12961) | *Minor* | **Negative values in read and write region server metrics**

Change read and write request count in ServerLoad from int to long


---

* [HBASE-12954](https://issues.apache.org/jira/browse/HBASE-12954) | *Minor* | **Ability impaired using HBase on multihomed hosts**

The following config is added by this JIRA:

hbase.regionserver.hostname

This config is for experts: don't set its value unless you really know what you are doing.
When set to a non-empty value, this represents the (external facing) hostname for the underlying server.
See https://issues.apache.org/jira/browse/HBASE-12954 for details.

Caution: please make sure rolling upgrade succeeds before turning on this feature.


---

* [HBASE-12902](https://issues.apache.org/jira/browse/HBASE-12902) | *Major* | **Post-asciidoc conversion fix-ups**

Pushed to master. Shout if there are any issues.


---

* [HBASE-12899](https://issues.apache.org/jira/browse/HBASE-12899) | *Major* | **HBase should prefix htrace configuration keys with "hbase.htrace" rather than just "hbase."**

All htrace related configuration options are renamed to have "hbase.htrace" prefix instead of just "htrace".


---

* [HBASE-12897](https://issues.apache.org/jira/browse/HBASE-12897) | *Major* | **Minimum memstore size is a percentage**

This change lowers the minimum acceptable configured memstore heap percentage from 5% (0.05f) (10% (0.1f) in 0.98) to 0% (0.0f), and in branch 0.98 lowers the maximum acceptable percentage from 90% (0.9f) to 80% (0.8f).


---

* [HBASE-12869](https://issues.apache.org/jira/browse/HBASE-12869) | *Major* | **Add a REST API implementation of the ClusterManager interface**

Adds an implementation of ClusterManager to control REST API-managed HBase clusters.


---

* [HBASE-12867](https://issues.apache.org/jira/browse/HBASE-12867) | *Major* | **Shell does not support custom replication endpoint specification**

Adds support to add\_peer in hbase shell to add a custom replication endpoint from HBASE-12254.


---

* [HBASE-12848](https://issues.apache.org/jira/browse/HBASE-12848) | *Major* | **Utilize Flash storage for WAL**

For users on a version of Hadoop that supports tiered storage policies (i.e. Apache Hadoop 2.6.0+), HBase now allows users to opt-in to having the write ahead log placed on the SSD tier. Users on earlier versions of Hadoop will be unable to take advantage of this feature.

Use of tiered storage is controlled by a new RegionServer config, hbase.wal.storage.policy. It defaults to the value 'NONE', which will rely on HDFS defaults for a policy decision.

User can specify ONE\_SSD or ALL\_SSD as the value:
ONE\_SSD: place only one replica of WAL files in SSD and the remaining in default storage
ALL\_SSD: all replica for WAL files are placed on SSD

See [the HDFS docs on storage policy|http://hadoop.apache.org/docs/r2.6.0/hadoop-project-dist/hadoop-hdfs/ArchivalStorage.html]


---

* [HBASE-12831](https://issues.apache.org/jira/browse/HBASE-12831) | *Major* | **Changing the set of vis labels a user has access to doesn't generate an audit log event**

Auditing of visibility label administration.

Administrative actions on visibility labels, such as creation of a label or changing the set of labels a user or group may access, are now sent to the audit log. The audit messages should be similar to those already tracked by the access controller.


---

* [HBASE-12808](https://issues.apache.org/jira/browse/HBASE-12808) | *Major* | **Use Java API Compliance Checker for binary/source compatibility**

Adds a dev-support/check\_compatibility.sh script for comparing versions. Run the script to see usage.


---

* [HBASE-12798](https://issues.apache.org/jira/browse/HBASE-12798) | *Major* | **Map Reduce jobs should not create Tables in setConf()**

TableInputFormatBase#initialize() has been added:

  /**
   * This method will be called when any of the following are referenced, but not yet initialized:
   * admin, regionLocator, table. Subclasses will have the opportunity to call
   * {@link #initializeTable(Connection, TableName)}
   */
  protected void initialize() {


---

* [HBASE-12775](https://issues.apache.org/jira/browse/HBASE-12775) | *Major* | **CompressionTest ate my HFile (sigh!)**

CompressionTest will now abort when the target path exists.


---

* [HBASE-12774](https://issues.apache.org/jira/browse/HBASE-12774) | *Minor* | **Fix the inconsistent permission checks for bulkloading.**

Bulk load permissions are changed from requiring both C and W to only require C.


---

* [HBASE-12745](https://issues.apache.org/jira/browse/HBASE-12745) | *Major* | **Visibility Labels:  support visibility labels for user groups.**

VisibilityClient API and shell commands can be used to grant and clear visibility authorizations of a group.
e.g. 
set\_auths '@group1', ['SECRET','PRIVATE']
get\_auths '@group1'
clear\_auths '@group1', ['SECRET','PRIVATE']

When checking visibility authorizations of a user, the server will include the visibility authorizations of the groups of which the user is a member, together with the user's own.

On the other hand, get\_auths 'user1' will only get user1's own visibility authorizations.
clear\_auths 'user1' will only clear user1's own visibility authorizations.
The visibility authorizations of a group can be changed by invoking the API or command on the '@group1' itself.

Note:

The following two methods have been deprecated in VisibilityLabelService from 0.98.10 and will be removed in 2.0+ releases.
getAuths(byte[], boolean)
havingSystemAuth(byte[])

Use the following methods instead:
getUserAuths(byte[], boolean)
getGroupAuths(String[], boolean)
havingSystemAuth(User)


---

* [HBASE-12731](https://issues.apache.org/jira/browse/HBASE-12731) | *Major* | **Heap occupancy based client pushback**

This feature incorporates reported regionserver heap occupancy in the (optional) client pushback calculations. If client pushback is enabled, the exponential backoff policy will take heap occupancy into account, should it exceed "hbase.heap.occupancy.low\_water\_mark" percentage of the heap (default 0.95). Once above the low water mark, heap occupancy is an additional factor scaling from 0.1 up to 1.0 at "hbase.heap.occupancy.high\_water\_mark" (default 0.98). At or above the high water mark the client will use the maximum configured backoff.


---

* [HBASE-12728](https://issues.apache.org/jira/browse/HBASE-12728) | *Blocker* | **buffered writes substantially less useful after removal of HTablePool**

In our pre-1.0 API, HTable is considered a light-weight object that consumed by a single thread at a time. The HTablePool class provided a means of sharing multiple HTable instances across a number of threads. As an optimization, HTable managed a "write buffer", accumulating edits and sending a "batch" all at once. By default the batch was sent as the last step in invocations of put(Put) and put(List<Put>). The user could disable the automatic flushing of the write buffer, retaining edits locally and only sending the whole "batch" once the write buffer has filled or when the flushCommits() method in invoked explicitly. Explicit or implicit batch writing was controlled by the setAutoFlushTo(boolean) method. A value of true (the default) had the write buffer flushed at the completion of a call to put(Put) or put(List<Put>). A value of false allowed for explicit buffer management. HTable also exposed the buffer to consumers via getWriteBuffer().

The combination of HTable with setAutoFlushTo(false) and the HTablePool provided a convenient mechanism by which multiple "Put-producing" threads could share a common write buffer. Both HTablePool and HTable are deprecated, and they are officially replaced in The new 1.0 API by Table and BufferedMutator. Table, which replaces HTable, no longer exposes explicit write-buffer management. Instead, explicit buffer management is exposed via BufferedMutator. BufferedMutator is made safe for concurrent use. Where code would previously retrieve and return HTables from an HTablePool, now that code creates and shares a single BufferedMutator instance across all threads.


---

* [HBASE-12718](https://issues.apache.org/jira/browse/HBASE-12718) | *Major* | **Convert TestAcidGuarantees from a unit test to an integration test**

TestAcidGuarantees used to be runnable from the command line.  It has been renamed to IntegrationTestAcidGuarantees and allows for ChaosMonkey parameters.


---

* [HBASE-12706](https://issues.apache.org/jira/browse/HBASE-12706) | *Critical* | **Support multiple port numbers in ZK quorum string**

hbase.zookeeper.quorum configuration now allows servers together with client ports consistent with the way Zookeeper java client accepts the quorum string. In this case, using hbase.zookeeper.clientPort is not needed. eg.  hbase.zookeeper.quorum=myserver1:2181,myserver2:20000,myserver3:31111


---

* [HBASE-12695](https://issues.apache.org/jira/browse/HBASE-12695) | *Critical* | **JDK 1.8 compilation broken**

Use the -Pjavac maven profile in order to compile HBase using the compiler provided by the JDK instead of the default error-prone compiler plugin. This is useful for now if you are building HBase with JDK 1.8 or a JDK that doesn't support error-prone.


---

* [HBASE-12684](https://issues.apache.org/jira/browse/HBASE-12684) | *Major* | **Add new AsyncRpcClient**

Retrofit a new, netty-based rpc transport on the client. This client is slightly slower if little contention given the extra tier or so that netty adds and that we block on a Future waiting on the call to finish.  This client opens the way for HBase having a native Async API.

This client is on by default in master branch (2.0 hbase). It is off in branch-1.0 (hbase-1.1.x).  To enable it, set "hbase.rpc.client.impl" to "org.apache.hadoop.hbase.ipc.AsyncRpcClient"


---

* [HBASE-12665](https://issues.apache.org/jira/browse/HBASE-12665) | *Major* | **When aborting, dump metrics**

When regionserver aborts, we dump subset of metrics into the log (We used to do this too pre-0.96 but was lost when we refactored metrics)


---

* [HBASE-12644](https://issues.apache.org/jira/browse/HBASE-12644) | *Major* | **Visibility Labels: issue with storing super users in labels table**

The system visibility label authorization for super users will no longer be persisted in hbase:labels table. Super users will be determined at server startup time. They will have all the permissions for Visibility labels.
If you have a prior deployment that had super users' system label persisted in hbase:labels, you can clean up by invoking the shell command 'clear\_auths'.
For example: clear\_auths 'old\_superuser', 'system'
This is particularly necessary when you change super users, i.e. a previous super user is no longer a super user.


---

* [HBASE-12597](https://issues.apache.org/jira/browse/HBASE-12597) | *Major* | **Add RpcClient interface and enable changing of RpcClient implementation**

Adds an RpcClient Interface and an RpcClientFactory to get RpcClient implementation.


---

* [HBASE-12586](https://issues.apache.org/jira/browse/HBASE-12586) | *Major* | **Task 6 & 7 from HBASE-9117,  delete all public HTable constructors and delete ConnectionManager#{delete,get}Connection**

HTable class has been marked as private API before, and now it's no longer directly instantiable from client code (all public constructors have been removed). All clients should use Connection#getTable() and Connection#getRegionLocator() when appropriate to obtain Table and RegionLocator implementations to work with.


---

* [HBASE-12569](https://issues.apache.org/jira/browse/HBASE-12569) | *Minor* | **Control MaxDirectMemorySize in the same manner as heap size**

Adds new HBASE\_OFFHEAPSIZE environment variable to ./bin/hbase. Set the max offheap memory java will request with this one variable.  It combines with HBASE\_HEAPSIZE to determine the max amount of ram that the JVM can request.


---

* [HBASE-12559](https://issues.apache.org/jira/browse/HBASE-12559) | *Major* | **Provide LoadBalancer with online configuration capability**

updateConfiguration(ServerName server) method of Admin now updates config for HMaster as well.
Specifically, config update would be taken by load balancer.


---

* [HBASE-12536](https://issues.apache.org/jira/browse/HBASE-12536) | *Major* | **Reduce the effective scope of GLOBAL CREATE and ADMIN permission**

This change removes implicit write access to the META and ACL tables for any user with GLOBAL CREATE or ADMIN privilege. Users with GLOBAL CREATE will not be able to elevate their privileges unexpectedly through direct access to the ACL table. A GLOBAL ADMIN will still correctly be allowed to grant themselves any desired privilege.


---

* [HBASE-12455](https://issues.apache.org/jira/browse/HBASE-12455) | *Major* | **Add 'description' to bean and attribute output when you do /jmx?description=true**

When you click on 'Metrics Dump', it takes you to the servlet at /jmx.  This servlet dumps all metrics by name and their value. If you add a query string of '?description=true', the dump will include descriptions on all metric mbeans and attributes that are non-null and that do not have a description that matches the attribute name exactly.


---

* [HBASE-12432](https://issues.apache.org/jira/browse/HBASE-12432) | *Minor* | **RpcRetryingCaller should log after fixed number of retries like AsyncProcess**

hbase.client.start.log.errors.counter now also applies to Scanners.


---

* [HBASE-12411](https://issues.apache.org/jira/browse/HBASE-12411) | *Major* | **Optionally enable p-reads and private readers for compactions**

This introduces two new configuration options:
# hbase.storescanner.use.pread enables postional reads for all scanners (except compactions). Default off (i.e. try to use seek+read as before)
# hbase.regionserver.compaction.private.readers has compaction run with their own readers. Default off (i.e. share readers with all other scanners as before)


---

* [HBASE-12389](https://issues.apache.org/jira/browse/HBASE-12389) | *Minor* | **Reduce the number of versions configured for the ACL table**

This change reduces the number of versions kept in the ACL table from 10 to 1. This is a fully compatible change. Existing ACL tables will not be affected, only newly initialized ones. Furthermore, old versions of ACL table entries were never considered by the AccessController in decision making, and any and all entries in the ACL table are not user accessible.


---

* [HBASE-12381](https://issues.apache.org/jira/browse/HBASE-12381) | *Minor* | **Add maven enforcer rules for build assumptions**

Enforces maven >= 3.0.3 (based on the oldest version we have building on jenkins) and java >= the source compilation target variable, which is 1.7 on master and branch-1 (based on java compat doc) and 1.6 before this.


---

* [HBASE-12373](https://issues.apache.org/jira/browse/HBASE-12373) | *Minor* | **Provide a command to list visibility labels**

Adds new list\_labels command to shell.


---

* [HBASE-12354](https://issues.apache.org/jira/browse/HBASE-12354) | *Major* | **Update dependencies in time for 1.0 release**

Updated dependencies. Of note, went from hadoop 2.2 to 2.5.1.


---

* [HBASE-12346](https://issues.apache.org/jira/browse/HBASE-12346) | *Major* | **Scan's default auths behavior under Visibility labels**

When no Authorizations passed in Scan , will take user's Auth labels for the Scan and return results accordingly.  Prior to this Jira, we were returning only those cells with out any visibility in such a case.


---

* [HBASE-12335](https://issues.apache.org/jira/browse/HBASE-12335) | *Major* | **IntegrationTestRegionReplicaPerf is flaky**

This change alters PerformanceEvaluation to expose read request histograms back to consumers. IntegrationTestRegionReplicaPerf takes advantage of this by examining the histograms to determine the overall effectiveness of the feature under test. In this case, specific summary statistics are aggregated across all threads and all test iterations to determine success. These summaries are used to make the test more robust in the face of run-to-run variation.


---

* [HBASE-12329](https://issues.apache.org/jira/browse/HBASE-12329) | *Minor* | **Table create with duplicate column family names quietly succeeds**

Tables created with duplicate column family names use to succeed silently.  This removes fix removes ambiguity and will change the behavior of code that depended upon this behavior.  Instead of just using addFamil, a change to the CF definition now requires a modifyFamily call.


---

* [HBASE-12317](https://issues.apache.org/jira/browse/HBASE-12317) | *Minor* | **Run IntegrationTestRegionReplicaPerf w.o mapred**

IntegrationTestRegionReplicaPerf no longer accepts the --nomapred flag. Instead, --nomapred is always used.


---

* [HBASE-12314](https://issues.apache.org/jira/browse/HBASE-12314) | *Major* | **Add chaos monkey policy to execute two actions concurrently**

Adds a new chaos monkey noKill that won't kill services. Instead it runs two or more ddl commands at the same time.


---

* [HBASE-12297](https://issues.apache.org/jira/browse/HBASE-12297) | *Major* | **Support DBB usage in Bloom and HFileIndex area**

**WARNING: No release note provided for this incompatible change.**


---

* [HBASE-12295](https://issues.apache.org/jira/browse/HBASE-12295) | *Major* | **Prevent block eviction under us if reads are in progress from the BBs**

We try to delay the eviction of the block till the cellblocks are formed at the Rpc layer. A simple reference counting mechanism is introduced when ever a block is accessed from the Bucket cache.  Once a scanner completes using a block the reference count is decremented.  The eviction of the block happens only when the reference count of that block is 0.
We also introduce a concept of ShareableMemory based on the type of blocks we create from the Block cache. The blocks from the ByteBufferIOEngine directly refer to the buckets in offheap and such blocks are marked SHARED memory type. The blocks from LRU, HDFS and file mode of Bucket cache are all marked EXCLUSIVE because these blocks have their own exclusive memory.
For the CP case, any cell coming out of SHARED memory block is copied before returning the results, because CPs can use the results as its state so that eviction cannot corrupt the results.


---

* [HBASE-12286](https://issues.apache.org/jira/browse/HBASE-12286) | *Major* | **[shell] Add server/cluster online load of configuration changes**

Adds shell commands:

update\_config 'servername'
update\_all\_config

These call new Admin methods added in HBASE-12147 to change server config.  Only a small subset of configs are changeable without restart currently mostly to do with compaction configuration.  See the refguide on dynamic configuration for a list.


---

* [HBASE-12277](https://issues.apache.org/jira/browse/HBASE-12277) | *Major* | **Refactor bulkLoad methods in AccessController to its own interface**

Adds new BulkLoadObserver Interface


---

* [HBASE-12268](https://issues.apache.org/jira/browse/HBASE-12268) | *Major* | **Add support for Scan.setRowPrefixFilter to shell**

Added new option, ROWPREFIXFILTER, to the scan command in the HBase shell to easily scan for a specific row prefix.


---

* [HBASE-12250](https://issues.apache.org/jira/browse/HBASE-12250) | *Minor* | **Adding an endpoint for updating the regionserver config**

Adds Admin#updateConfiguration(ServerName) and   Admin#updateConfiguration() for loading config. dynamically.


---

* [HBASE-12241](https://issues.apache.org/jira/browse/HBASE-12241) | *Critical* | **The crash of regionServer when taking deadserver's replication queue breaks replication**

This fix includes our enabling useMulti flag as default. multi is a zk method only available in later versions of zookeeper.  This change means HBase 1.0 requires a zookeeper that is at least version 3.4+.  See HBASE-6775 for background.


---

* [HBASE-12220](https://issues.apache.org/jira/browse/HBASE-12220) | *Major* | **Add hedgedReads and hedgedReadWins metrics**

Adds metrics hedgedReads and hedgedReadWins counts.


---

* [HBASE-12197](https://issues.apache.org/jira/browse/HBASE-12197) | *Major* | **Move REST**

HBase Rest has moved to it's own module. If you previously were using the rest sever code in your project you will now need to depend upon hbase-rest module in addition to the hbase-server module.


---

* [HBASE-12189](https://issues.apache.org/jira/browse/HBASE-12189) | *Major* | **Fix new issues found by coverity static analysis**

Fixes up the worst offenders reported by coverity.  Many hundreds more of issues to address but seem minor relatively on review.


---

* [HBASE-12145](https://issues.apache.org/jira/browse/HBASE-12145) | *Major* | **Fix javadoc and findbugs so new folks aren't freaked when they see them**

Fix javadoc warnings.

Fixup findbugs warnings mostly by adding annotations saying 'working as expected'.

In RpcRetryingCallerWithReadReplicas made following change which findbugs spotted:

 -        if (completed == null) tasks.wait();
+        while (completed == null) tasks.wait();

In RecoverableZooKeeper, made all zk accesses synchronized -- we were doing it half-ways previously.

In RatioBasedCompactionPolicy we were making an instance of Random on
each invocation of getNextMajorCompactionTime


---

* [HBASE-12142](https://issues.apache.org/jira/browse/HBASE-12142) | *Minor* | **Truncate command does not preserve ACLs table**

Prior to this change, the truncate shell command could not preserve ACLs on the table being truncated. In the 0.98 branch, this change also backports HBASE-8332, which adds a master handler for table truncation and new HBaseAdmin APIs for same.


---

* [HBASE-12133](https://issues.apache.org/jira/browse/HBASE-12133) | *Minor* | **Add FastLongHistogram for metric computation**

Adds Histogram and AtomicLong Utils


---

* [HBASE-12121](https://issues.apache.org/jira/browse/HBASE-12121) | *Minor* | **maven release plugin does not allow for customized goals**

Allows user to add goals to release procedure
mvn release:perform -Dgoal=<goal-name>
If no goal is specified default behavior is used

Example use case:
Release to private repository and upload artifacts but also want the tarball to be uploaded, not just the jars. 
the following could be added to the release command
-Dgoal="-X package install site assembly:single deploy -DskipTests"
This will execute the release procedure and also upload the tarball along with all jars.


---

* [HBASE-12111](https://issues.apache.org/jira/browse/HBASE-12111) | *Major* | **Remove deprecated APIs from Mutation(s)**

**WARNING: No release note provided for this incompatible change.**


---

* [HBASE-12108](https://issues.apache.org/jira/browse/HBASE-12108) | *Minor* | **HBaseConfiguration: set classloader before loading xml files**

This patch fixes hbase configuration not found issues when HBase jars are loaded in a child class loader whose parent has already loaded hadoop classes. Setting appropriate classloader in Configuration should fix this issue.


---

* [HBASE-12099](https://issues.apache.org/jira/browse/HBASE-12099) | *Major* | **TestScannerModel fails if using jackson 1.9.13**

The XML element used for the visibility labels in the REST API has been renamed from "label" lo "labels" in order to support old and the new versions of jackson.

Developers that use visibility labels via REST XML need to modify their applications in order to use the new XML element name.


---

* [HBASE-12084](https://issues.apache.org/jira/browse/HBASE-12084) | *Major* | **Remove deprecated APIs from Result**

The below KeyValue based APIs are removed from Result
KeyValue[] raw() 
List<KeyValue> list()
List<KeyValue> getColumn(byte [] family, byte [] qualifier)
KeyValue getColumnLatest(byte [] family, byte [] qualifier)
KeyValue getColumnLatest(byte [] family, int foffset, int flength, byte [] qualifier, int qoffset, int qlength)

They are replaced with
Cell[] rawCells()
List<Cell> listCells()
List<Cell> getColumnCells(byte [] family, byte [] qualifier)
Cell getColumnLatestCell(byte [] family, byte [] qualifier)
Cell getColumnLatestCell(byte [] family, int foffset, int flength, byte [] qualifier, int qoffset, int qlength)
respectively

Also the constructors which were taking KeyValues also removed
Result(KeyValue [] cells) 
Result(List<KeyValue> kvs)


---

* [HBASE-12075](https://issues.apache.org/jira/browse/HBASE-12075) | *Major* | **Preemptive Fast Fail**

The Interceptor Framework can be used to modify the behavior of retrying client calls on the client side without altering the core of the client code. This framework gives reasonable flexibility with little intrusion.

An example use case of the interceptor is to have a custom sleep strategy within retries. We can consider a simple accounting system where we have a time spent quota on the client side for the servers. And we would want to error some of the calls if we have consumed the server's quota already. 

Interceptor.intercept() {
 // would keep track the start time.
 server = getServer()
  // Throw if we already spent a lot of time on a server.
  timeSpentOnServer = getTimeSpentSinceLastReset(server)
  if ( timeSpentOnServer > THRESHOLD) throw new Exception("We spend too long on this server")
  setServerStartTime(server)
}

Interceptor.handleFailure() {
  server = getServer()
  updateTimeSpentOnServer(server) 
}

Interceptor.updateFailureInfo() {
  server = getServer()
  updateTimeSpentOnServer(server) 
}


---

* [HBASE-12054](https://issues.apache.org/jira/browse/HBASE-12054) | *Major* | **bad state after NamespaceUpgrade with reserved table names**

Prior to HBase 0.98.7, if you have 0.94 tables named (data, archive, corrupt, lib, WALs, splitWAl, oldWALs) upgrading would "silently" fail, corrupting the state of those tables.


---

* [HBASE-12052](https://issues.apache.org/jira/browse/HBASE-12052) | *Major* | **BulkLoad Failed due to no write permission on input files**

SecureBulkLoadEndPoint can be used in un-secure env to bulk load data without hitting "Permission denied" for hbase user.


---

* [HBASE-12048](https://issues.apache.org/jira/browse/HBASE-12048) | *Major* | **Remove deprecated APIs from Filter**

The following APIs are removed from Filter
KeyValue transform(KeyValue)
KeyValue getNextKeyHint(KeyValue)
and replaced with 
Cell transformCell(Cell)
Cell getNextCellHint(Cell)
respectively.
If a custom Filter implementation have overridden any of these methods, we will no longer call them. User has to change the custom Filter to override cell based methods as shown above


---

* [HBASE-12046](https://issues.apache.org/jira/browse/HBASE-12046) | *Major* | **HTD/HCD setters should be builder-style**

**WARNING: No release note provided for this incompatible change.**


---

* [HBASE-12028](https://issues.apache.org/jira/browse/HBASE-12028) | *Major* | **Abort the RegionServer, when it's handler threads die**

Adds a configuration property "hbase.regionserver.handler.abort.on.error.percent" for aborting the region server when some of it's handler threads die. The default value is 0.5 causing an abort in the RS when half of it's handler threads die. A handler thread only dies in case of a serious software bug, or a non-recoverable Error (StackOverflow, OOM, etc) is thrown. 
These are possible values for the configuration:
   * -1  => Disable aborting
   * 0   => Abort if even a single handler has died
   * 0.x => Abort only when this percent of handlers have died
   * 1   => Abort only all of the handers have died


---

* [HBASE-12017](https://issues.apache.org/jira/browse/HBASE-12017) | *Major* | **Use Connection.createTable() instead of HTable constructors.**

This was fixed by patches for other issues.


---

* [HBASE-12016](https://issues.apache.org/jira/browse/HBASE-12016) | *Minor* | **Reduce number of versions in Meta table. Make it configurable**

Clients fetch META table descriptor using RPC. That gives an opportunity to change META table parameters on running cluster. Prior this change all clients used statically compiled META table descriptor and to apply new parameters new code need to be deployed.
META table versions can be configured by 'hbase.meta.versions' and now has 3 versions by default (was 10).
Block size for META table can be configured by 'hbase.meta.blocksize' (default 8k)


---

* [HBASE-11997](https://issues.apache.org/jira/browse/HBASE-11997) | *Minor* | **CopyTable with bulkload**

CopyTable now can generate HFiles and bulkload to the destination table.


---

* [HBASE-11990](https://issues.apache.org/jira/browse/HBASE-11990) | *Major* | **Make setting the start and stop row for a specific prefix easier**

Added new utility method, setRowPrefixFilter, to Scan to easily scan for a specific row prefix


---

* [HBASE-11927](https://issues.apache.org/jira/browse/HBASE-11927) | *Major* | **Use Native Hadoop Library for HFile checksum (And flip default from CRC32 to CRC32C)**

Checksumming is cpu intensive. HBase computes additional checksums for HFiles (hdfs does checksums too) and stores them inline with file data. During reading, these checksums are verified to ensure data is not corrupted. This patch tries to use Hadoop Native Library for checksum computation, if it’s available, otherwise falls back to standard Java libraries. Instructions to load NHL in HBase can be found here (http://hbase.apache.org/book.html#hadoop.native.lib).

Default checksum algorithm has been changed from CRC32 to CRC32C primarily because of two reasons: 1) CRC32C has better error detection properties, and 2) New Intel processors have a dedicated instruction for crc32c computation (SSE4.2 instruction set)*. This change is fully backward compatible. Also, users should not see any differences except decrease in cpu usage. To keep old settings, set configuration ‘hbase.hstore.checksum.algorithm’ to ‘CRC32’.

* On linux, run 'cat /proc/cpuinfo’ and look for sse4\_2 in list of flags to see if your processor supports SSE4.2.


---

* [HBASE-11919](https://issues.apache.org/jira/browse/HBASE-11919) | *Major* | **Remove the deprecated pre/postGet CP hook**

Removed the below 2 hooks from RegionObserver CP. These were deprecated since 0.96 and having replacement
1. preGet(final ObserverContext<RegionCoprocessorEnvironment> c, final Get get, final List<KeyValue> result)
2. postGet(final ObserverContext<RegionCoprocessorEnvironment> c, final Get get, final List<KeyValue> result)
These are replaced with pre/postGetOp hooks


---

* [HBASE-11917](https://issues.apache.org/jira/browse/HBASE-11917) | *Major* | **Deprecate / Remove HTableUtil**

HTableUtil removed in master branch (2.0) and deprecated in 1.0.


---

* [HBASE-11912](https://issues.apache.org/jira/browse/HBASE-11912) | *Major* | **Catch some bad practices at compile time with error-prone**

Errors from error-prone will fail the build in the compile phase. Warnings look like Javac warnings and are counted as such by test-patch etc


---

* [HBASE-11911](https://issues.apache.org/jira/browse/HBASE-11911) | *Major* | **Break up tests into more fine grained categories**

Adds new test categories besides the class smalltests, mediumtests, and largetests.  Adds:

ClientTests
CoprocessorTests
FilterTests
FlakeyTests
IOTests
MapReduceTests
MasterTests
MiscTests
RegionServerTests
ReplicationTests
RestTests
SecurityTests
VerySlowMapReduceTests
VerySlowRegionServerTests

See description for examples on how to use them.


---

* [HBASE-11907](https://issues.apache.org/jira/browse/HBASE-11907) | *Minor* | **Use the joni byte[] regex engine in place of j.u.regex in RegexStringComparator**

The RegexStringComparator comparator now include an optional EngineType constructor parameter. Use EngineType.JONI to select the joni regex engine, which can be twice as fast as the Java regex engine and will be more efficient, producing less object churn while scanning, because it operates natively on byte arrays. RegexStringComparator still uses the Java regex engine by default.


---

* [HBASE-11897](https://issues.apache.org/jira/browse/HBASE-11897) | *Minor* | **Add append and remove peer table-cfs cmds for replication**

Adds two new shell commands for operators to add and remove peers at the columnfamily scope.


---

* [HBASE-11878](https://issues.apache.org/jira/browse/HBASE-11878) | *Major* | **TestVisibilityLabelsWithDistributedLogReplay#testAddVisibilityLabelsOnRSRestart sometimes fails due to VisibilityController not yet initialized**

A new exception, VisibilityControllerNotReadyException, is introduced for the case where VisibilityController is being initialized. Client can respond to this exception by retrying prior operation.
VisibilityControllerNotReadyException isn't a DoNotRetryIOException.


---

* [HBASE-11873](https://issues.apache.org/jira/browse/HBASE-11873) | *Minor* | **Hbase Version CLI enhancement**

Calculates on startup checksum of running code.  Emits in logs on startup and shows in UI.


---

* [HBASE-11864](https://issues.apache.org/jira/browse/HBASE-11864) | *Minor* | **Enhance HLogPrettyPrinter to print information from WAL Header**

Enhance WALPrettyPrinter to print information (writer classnames and cell codec classname) from WAL Header


---

* [HBASE-11847](https://issues.apache.org/jira/browse/HBASE-11847) | *Minor* | **HFile tool should be able to print block headers**

The HFileTool (`hbase hfile`) can print block headers. The flag is -h,--printblockheaders.


---

* [HBASE-11845](https://issues.apache.org/jira/browse/HBASE-11845) | *Minor* | **HFile tool should implement Tool, disable blockcache by default**

HFileTool now accepts configuration overrides in the usual way. Blockcache is disabled by default.


---

* [HBASE-11821](https://issues.apache.org/jira/browse/HBASE-11821) | *Major* | **[ImportTSV] Abstract labels tags creation into pluggable Interface**

Added a facade org.apache.hadoop.hbase.mapreduce.CellCreator to create Cells for HFileOutputFormat. When working with HFileOutputFormat (with or with out visibility labels) in bulk load one can  use this facade to make Cells with visibility tags.
Also we allow plugin an implementation of org.apache.hadoop.hbase.mapreduce.VisibilityExpressionResolver by configuring the the FQCN with key "hbase.mapreduce.visibility.expression.resolver.class". The default implementation will tag Cells with visibility label ordinal.


---

* [HBASE-11805](https://issues.apache.org/jira/browse/HBASE-11805) | *Major* | **KeyValue to Cell Convert in WALEdit APIs**

The KeyValue based APIs in WALEdit is been removed and replaced with Cell based APIs
void add(KeyValue)    ->       void add(Cell)
ArrayList<KeyValue> getKeyValues()    ->    ArrayList<Cell> getCells()


---

* [HBASE-11804](https://issues.apache.org/jira/browse/HBASE-11804) | *Major* | **Raise default heap size if unspecified**

When run without a specified heap size the HBase scripts will now let the jvm choose the defaults. Usually this will mean that the max heap size will be the larger of 1gig or 1/4 of physical memory.


---

* [HBASE-11696](https://issues.apache.org/jira/browse/HBASE-11696) | *Major* | **Make CombinedBlockCache resizable.**

CombinedBlockCache is made resizable. See HBASE-5349 for auto resizing feature. On resize of this block cache, the L1 cache (ie. LRU cache) will get resized


---

* [HBASE-11658](https://issues.apache.org/jira/browse/HBASE-11658) | *Major* | **Piped commands to hbase shell should return non-zero if shell command failed.**

Adds a noninteractive mode (-n or --noninteractive) to the hbase shell that exits with a non-zero error code on failed or invalid shell command executions, and exits with a zero error code upon successful execution.


---

* [HBASE-11657](https://issues.apache.org/jira/browse/HBASE-11657) | *Major* | **Put HTable region methods in an interface**

Add a RegionLocator Interface. Encapsulates 'region' operations.  Implemented by HTable and you can get one from an HConnection.


---

* [HBASE-11640](https://issues.apache.org/jira/browse/HBASE-11640) | *Major* | **Add syntax highlighting support to HBase Ref Guide programlistings**

This got committed, so I guess it is safe to resolve it?


---

* [HBASE-11639](https://issues.apache.org/jira/browse/HBASE-11639) | *Major* | **[Visibility controller] Replicate the visibility of Cells as strings**

Allows the visibility tags to be replicated as Strings to the peer cluster. Useful in cases where the peer cluster and the source cluster does not have a common global LABELs table.
In order to enable this feature configure the below property in hbase-site.xml
<property>
<name>
hbase.coprocessor.regionserver.classes
</name>
<value>
org.apache.hadoop.hbase.security.visibility.VisibilityController$VisibilityReplication
</value>
<property>


---

* [HBASE-11610](https://issues.apache.org/jira/browse/HBASE-11610) | *Major* | **Enhance remote meta updates**

Adds "hbase.regionstatestore.meta.connection" configuration and new MultiHConnection class.  Is set to 1 by default.  Set it higher if you want to run with more than one connection to the meta table.  Useful if you have a very large meta table -- e.g. 1M regions -- otherwise, stick to the default.


---

* [HBASE-11606](https://issues.apache.org/jira/browse/HBASE-11606) | *Minor* | **Enable ZK-less region assignment by default**

By default, we don't use ZK for region assignment now. To fall back to the old way, you can set hbase.assignment.usezk to true.


---

* [HBASE-11600](https://issues.apache.org/jira/browse/HBASE-11600) | *Trivial* | **DataInputputStream and DoubleOutputStream are no longer being used**

Removed unused classes


---

* [HBASE-11562](https://issues.apache.org/jira/browse/HBASE-11562) | *Major* | **CopyTable should provide an option to shuffle the mapper tasks**

Adds new 'shuffle' option to CopyTable that shuffles the maps order; use if you need some random on what tasks of a table copy run when.


---

* [HBASE-11558](https://issues.apache.org/jira/browse/HBASE-11558) | *Major* | **Caching set on Scan object gets lost when using TableMapReduceUtil in 0.95+**

TableMapReduceUtil now restores the option to set scanner caching by setting it on the Scan object that is passe in. The priority order for choosing the scanner caching is as follows:

1. Caching set on the scan object.
2. Caching specified via the config "hbase.client.scanner.caching", which can either be set manually on the conf or via the helper method TableMapReduceUtil.setScannerCaching().
3. The default value HConstants.DEFAULT\_HBASE\_CLIENT\_SCANNER\_CACHING, which is set to 100 currently.


---

* [HBASE-11556](https://issues.apache.org/jira/browse/HBASE-11556) | *Major* | **Move HTablePool to hbase-thrift module.**

HTablePool was deprecated in 0.98.1 but was still present and usable by apps built against versions before HBase 2.0.  It has been moved and is not intended to be used by user applications, and is now an internal part of the thrift2 proxy server only.


---

* [HBASE-11548](https://issues.apache.org/jira/browse/HBASE-11548) | *Trivial* | **[PE] Add 'cycling' test N times and unit tests for size/zipf/valueSize calculations**

Adds --cycles=N argument.


---

* [HBASE-11544](https://issues.apache.org/jira/browse/HBASE-11544) | *Critical* | **[Ergonomics] hbase.client.scanner.caching is dogged and will try to return batch even if it means OOME**

Results returned from RPC calls may now be returned as partials

When is a Result marked as a partial? 
When the server must stop the scan because the max size limit has been reached. Means that the LAST Result returned within the ScanResult's Result array may be marked as a partial if the scan's max size limit caused it to stop in the middle of a row.

Incompatible Change: The return type of InternalScanners#next and RegionScanners#nextRaw has been changed to NextState from boolean
The previous boolean return value can be accessed via NextState#hasMoreValues()
Provides more context as to what happened inside the scanner

Scan caching default has been changed to Integer.Max\_Value 
This value works together with the new maxResultSize value from HBASE-12976 (defaults to 2MB) 
Results returned from server on basis of size rather than number of rows
Provides better use of network since row size varies amongst tables

Protobuf models have changed for Result, ScanRequest, and ScanResponse to support new partial Results

Partial Results should be invisible to application layer unless Scan#setAllowPartials is set

Scan#setAllowPartials has been added to allow the application to request to see the partial Results returned by the server rather than have the ClientScanner form the complete Result prior to returning it to the application

To disable the use of partial Results on the server, set ScanRequest.Builder#setClientHandlesPartials() to be false in the ScanRequest issued to server

Partial Results should allow the server to return large rows in parts rather than accumulate all the cells for that particular row and run out of memory


---

* [HBASE-11534](https://issues.apache.org/jira/browse/HBASE-11534) | *Minor* | **Remove broken JAVA\_HOME autodetection in hbase-config.sh**

This change removes old and increasingly useless JAVA\_HOME autodetection that looks for Java 6 runtimes in various locations. Ensure that JAVA\_HOME is correctly set in the environment before launching HBase daemons.


---

* [HBASE-11527](https://issues.apache.org/jira/browse/HBASE-11527) | *Major* | **Cluster free memory limit check should consider L2 block cache size also when L2 cache is onheap.**

The sum of the heap size % used by Memstore (Configured using 'hbase.regionserver.global.memstore.size' and defaults to 40%) and the that of block cache (Configured using 'hfile.block.cache.size' and defaults to 40%) should leave enough heap size for other normal operations of RS. This is 20%. Also to be noted that when the L2 block cache (ie. Bucket cache) is configured to be on heap, the size of that also comes into this size math. So in that case the sum of memstore heap size, L1 block cache size and L2 cache size (Configured using 'hbase.bucketcache.size')can be at max 80%.
When automatic tuning of heap memory is enabled (HBASE-5349) at point of time this 80% cap should hold.


---

* [HBASE-11520](https://issues.apache.org/jira/browse/HBASE-11520) | *Major* | **Simplify offheap cache config by removing the confusing "hbase.bucketcache.percentage.in.combinedcache"**

Remove "hbase.bucketcache.percentage.in.combinedcache".  Simplifies config of block cache.  If you are using this config., after this patch goes in, it will be ignored.  The L1 LruBlockCache will be whatever hfile.block.cache.size is set to and the L2 BucketCache will be whatever hbase.bucketcache.size is set to.


---

* [HBASE-11492](https://issues.apache.org/jira/browse/HBASE-11492) | *Critical* | **Hadoop configuration overrides some ipc parameters including tcpNoDelay**

If the Hadoop configuration is read after the HBase configuration, Hadoop's settings can override HBase's settings if the names of the settings are the same. To avoid the risk of override, HBase has renamed the following settings (by prepending 'hbase.') so that you can set them independent of your setting for Hadoop. If you do not use the HBase-specific variants, the Hadoop settings will be used.

Old Name   -->   New Name
======================================================
ipc.server.listen.queue.size   -->   hbase.ipc.server.listen.queue.size
ipc.server.max.callqueue.size   -->   hbase.ipc.server.max.callqueue.size
ipc.server.callqueue.handler.factor --> hbase.ipc.server.callqueue.handler.factor
ipc.server.callqueue.read.share --> hbase.ipc.server.callqueue.read.share
ipc.server.callqueue.type --> hbase.ipc.server.callqueue.type
ipc.server.queue.max.call.delay --> hbase.ipc.server.queue.max.call.delay
ipc.server.max.callqueue.length --> hbase.ipc.server.max.callqueue.length
ipc.server.read.threadpool.size   -->  hbase.ipc.server.read.threadpool.size
ipc.server.tcpkeepalive   -->   hbase.ipc.server.tcpkeepalive
ipc.server.tcpnodelay   -->   hbase.ipc.server.tcpnodelay
ipc.client.call.purge.timeout   -->   hbase.ipc.client.call.purge.timeout
ipc.client.connection.maxidletime   -->   hbase.ipc.client.connection.maxidletime
ipc.client.idlethreshold   -->   hbase.ipc.client.idlethreshold
ipc.client.kill.max   -->   hbase.ipc.client.kill.max
ipc.server.scan.vtime.weight --> hbase.ipc.server.scan.vtime.weight


---

* [HBASE-11440](https://issues.apache.org/jira/browse/HBASE-11440) | *Major* | **Make KeyValueCodecWithTags as the default codec for replication in trunk**

By default in master branch the replication would use a new type of codec that would always replicate Cells with tags.
{code}
{code}
<property>
        <name>hbase.replication.rpc.codec</name>      <value>org.apache.hadoop.hbase.codec.KeyValueCodecWithTags</value>
</property>
{code}


---

* [HBASE-11412](https://issues.apache.org/jira/browse/HBASE-11412) | *Minor* | **Minimize a number of hbase-client transitive dependencies**

Removes some transitive dependencies from the hbase-client module.


---

* [HBASE-11372](https://issues.apache.org/jira/browse/HBASE-11372) | *Major* | **Remove SlabCache**

SlabCache is no longer support. For off-heap blockcache needs, please see BucketCache.


---

* [HBASE-11344](https://issues.apache.org/jira/browse/HBASE-11344) | *Major* | **Hide row keys and such from the web UIs**

Configure "hbase.display.keys" to false (default: true) in the master/regionservers if the row-keys should be hidden in the webUIs (like in the webUI for table details).


---

* [HBASE-11339](https://issues.apache.org/jira/browse/HBASE-11339) | *Major* | **HBase MOB**

The Moderate Object Storage (MOB) feature (HBASE-11339[1]) is modified I/O and compaction path that allows individual moderately sized values (100KB-10MB) to be stored in a way that write amplification is reduced when compared to the normal I/O path. MOB is defined in the column family and it is almost isolated with other components, the features and performance cannot be effected in normal columns.

For more details on how to use the feature please consult the HBase Reference Guide


---

* [HBASE-11331](https://issues.apache.org/jira/browse/HBASE-11331) | *Major* | **[blockcache] lazy block decompression**

When hbase.block.data.cachecompressed=true, DATA (and ENCODED\_DATA) blocks are cached in the BlockCache in their on-disk format. This is different from the default behavior, which decompresses and decrypts a block before caching.

For a region server hosting more data than fits into cache, enabling this feature with SNAPPY compression results in 50% increase in throughput and 30% improvement in mean latency while increasing GC by 80% and increasing overall CPU load by 2%.


---

* [HBASE-11323](https://issues.apache.org/jira/browse/HBASE-11323) | *Major* | **BucketCache all the time!**

Use the LruBlockCache default if your data fits the blockcache.  If block cache churn or you want a block cache that is immune to the vagaries of BC, deploy the offheap bucketcache.  See http://people.apache.org/~stack/bc/


---

* [HBASE-11315](https://issues.apache.org/jira/browse/HBASE-11315) | *Major* | **Keeping MVCC for configurable longer time**

After this patch, MVCC value of KVs will be kept for a configurable period "hbase.hstore.compaction.keep.mvcc.period"(default value is 5 days). The minimum setting of "hbase.hstore.compaction.keep.mvcc.period" is also set to 5 days and any user setting less than the min setting will be ignored.


---

* [HBASE-11240](https://issues.apache.org/jira/browse/HBASE-11240) | *Major* | **Print hdfs pipeline when hlog's sync is slow**

Adds emission of a log message that lists datanodes in HDFS pipeline when sync is slow.  Set when to log with "hbase.regionserver.hlog.slowsync.ms". Defaults logging if sync takes > 100ms.


---

* [HBASE-11144](https://issues.apache.org/jira/browse/HBASE-11144) | *Major* | **Filter to support scanning multiple row key ranges**

MultiRowRangeFilter is a filter to support scanning multiple row key ranges. If the number of the ranges is small, using multiple scans can also do the same thing and can work well. But when the number of ranges are quite big (e.g. millions), use the MultiRowRangeFilter will be nice. In this filter, the ranges will be sorted and merged, so users do not have to take care of ranges are not continuous. And if users are using something like rest, thrift or pig to access the data the filter might be the practical solution.


---

* [HBASE-11118](https://issues.apache.org/jira/browse/HBASE-11118) | *Blocker* | **non environment variable solution for "IllegalAccessError: class com.google.protobuf.ZeroCopyLiteralByteString cannot access its superclass com.google.protobuf.LiteralByteString"**

The workaround documented in HBASE-10304 for running a mapreduce job with a "fat jar" is no longer required. Such applications can be launched without adding hbase-protocol.jar to the HADOOP\_CLASSPATH.


---

* [HBASE-11059](https://issues.apache.org/jira/browse/HBASE-11059) | *Major* | **ZK-less region assignment**

This patch makes it possible to do region assignment without ZK. By default, it is off (i.e. ZK is used for region assignment as before).

Two setting "hbase.assignment.usezk", "hbase.assignment.usezk.migrating" are introduced to control migration from using ZK for assignment to not using
ZK for assignment.

For rolling upgrade from using ZK to not using ZK, it can be done in two steps:

1. Set both hbase.assignment.usezk and hbase.assignment.usezk.migrating to true, do a rolling upgrade so that both masters and regionservers have
the new code. Either master or regionserver can be upgraded at first. The order is not important for this step. If you want to keep using ZK for assignment, you'd better set hbase.assignment.usezk to true, and hbase.assignment.usezk.migrating to false so that region states are not persisted in meta table.

2. Set hbase.assignment.usezk to false, do a rolling restart so that region assignments don't use ZK any more. For this step, masters should be restarted after regionservers have all restarted at first so that they won't update meta table directly and master doesn't know about it.


---

* [HBASE-10885](https://issues.apache.org/jira/browse/HBASE-10885) | *Blocker* | **Support visibility expressions on Deletes**

Deletes can be specified with Cell Visibility as done for puts.
Cells covered by the delete is found by doing pattern matching. 
A deleteFamily issued for row1, f1 with Cell Visibility (A & B) would delete only those cells of row1 under family f1 which has cell visibility A&B or B&A. A delete without any cell visibility would only delete those cells that does not have any cell visibility.
In case of delete specific column with latest version only the latest cell with the specified cell visibility will be covered by the delete marker. In case there is no such cell with the specified cell visibility then no cell gets deleted.


---

* [HBASE-10800](https://issues.apache.org/jira/browse/HBASE-10800) | *Major* | **Use CellComparator instead of KVComparator**

From 2.0 branch onwards KVComparator and its subclasses MetaComparator, RawBytesComparator are all deprecated. 
All the comparators are moved to CellComparator.  MetaCellComparator, a subclass of CellComparator, will be used to compare hbase:meta cells.  
Previously exposed static instances KeyValue.COMPARATOR, KeyValue.META\_COMPARATOR and KeyValue.RAW\_COMPARATOR are deprecated instead use CellComparator.COMPARATOR and CellComparator.META\_COMPARATOR.
Also note that there will be no RawBytesComparator.  Where ever we need to compare raw bytes use Bytes.BYTES\_RAWCOMPARATOR.
CellComparator will always operate on cells and its components, abstracting the fact that a cell can be backed by a single byte[] as opposed to how KVComparators were working.


---

* [HBASE-10728](https://issues.apache.org/jira/browse/HBASE-10728) | *Major* | **get\_counter value is never used.**

for 0.98 and 1.0 changes are compatible (due to mitigation by HBASE-13433):

* The "get\_counter" command no longer requires a dummy 4th argument. Downstream users are encouraged to migrate code to not pass this argument because it will result in an error for HBase 1.1+.
* The "incr" command now outputs the current value of the counter to stdout.
ex:
{code}
jruby-1.6.8 :005 > incr 'counter\_example', 'r1', 'cf1:foo', 10
COUNTER VALUE = 1772
0 row(s) in 0.1180 seconds
{code}

for 1.1+ changes are incompatible:

* The "get\_counter" command no longer accepts a dummy 4th argument. Downstream users will need to update their code to not pass this argument.
ex:
{code}
jruby-1.6.8 :006 > get\_counter 'counter\_example', 'r1', 'cf1:foo'
COUNTER VALUE = 1772

{code}
* The "incr" command now outputs the current value of the counter to stdout.
ex:
{code}
jruby-1.6.8 :005 > incr 'counter\_example', 'r1', 'cf1:foo', 10
COUNTER VALUE = 1772
0 row(s) in 0.1180 seconds
{code}


---

* [HBASE-10536](https://issues.apache.org/jira/browse/HBASE-10536) | *Major* | **ImportTsv should fail fast if any of the column family passed to the job is not present in the table**

Added new Feature to check for column family name of the destination table before bulk load runs.

By default it checks whether column family matches the destination table. To disable the check provide the option: -Dno.strict=true


---

* [HBASE-10483](https://issues.apache.org/jira/browse/HBASE-10483) | *Major* | **Provide API for retrieving info port when hbase.master.info.port is set to 0**

Adds new method to Admin so clients can ask the master's info port. Also fixes info port display in UI to use what master is actually using rather than display what is Configuration

{code}
+  /**
+   * Get the info port of the current master if one is available.
+   * @return master info port
+   * @throws IOException
+   */
+  public int getMasterInfoPort() throws IOException;
{code}


---

* [HBASE-10378](https://issues.apache.org/jira/browse/HBASE-10378) | *Major* | **Divide HLog interface into User and Implementor specific interfaces**

HBase internals for the write ahead log have been refactored. Advanced users of HBase should be aware of the following changes.

Public Audience
  - The Admin API for asking a region server to roll WAL files has changed from a synchronous command that returns a set of regions the WAL implementation would like flushed into an asynchronous command that returns nothing. Older clients relying on the former behavior will still be able to interact with newer servers, but the response body will always contain an empty list of regions to flush.
  - The shell command "hlog\_roll" has been deprecated. Operators should use the "wal\_roll" command instead. This command is subject to the changes described above for the Admin API to roll WAL files.
  - The command for analyzing write ahead logs has been renamed from 'hlog' to 'wal'. The old usage is deprecated and will be removed in a future version.
  - Some utility methods in the HBaseTesetingUtility related to testing write-ahead-logs were changed in incompatible ways. No functionality has been removed, but method names and arguments have changed. See the HBaseTestingUtility javadoc for details.
  - The WALPlayer utility has deprecated the configuration keys used for advanced customization. Users should switch to the updated configuration keys. See the usage information on the WALPlayer tool for details.
  - The HLogInputFormat utility class for processing logs with MapReduce has been deprecated and will be removed in a future version. Users should switch to the WALInputFormat.
  - The labeling of server metrics on the region server status pages changed. Previously, the number of backing files for the write ahead log was labeled 'Num. HLog Files'. If you wish to see this statistic now, please look for the label 'Num. WAL Files.'  If you rely on JMX for these metrics, their location has not changed.

LimitedPrivate(COPROC) Audience, LimitedPrivate(PHOENIX)
  - The RegionObserver API has been updated. The changes are both binary and source backwards compatible for coprocessors that use the BaseRegionObserver class. For those that implement RegionObserver directly the changes are binary backwards compatible. Depending on the internals of future HBase versions, coprocessors using the deprecated API may not see all WAL related events. Users are strongly encouraged to update their use of the API; see the RegionObserver javadoc for details.
  - Classes related to reading WAL entries (ReaderBase, ProtobufLogReader, SequenceFileLogReader) have changed in a backwards incompatible way. Users who referenced HLog.Reader directly or HLog.Entry will have to update. These changes do not impact compatibility with extant wal files.
  - The WALObserver API has been updated. The changes are both binary and source backwards compatible for coprocessors that use the BaseWALObserver class. For those that implement WALObserver directly the changes are binary backwards compatible. Depending on the internals of future HBase versions, coprocessors using the deprecated API may not see all WAL related events. Users are strongly encouraged to update their use of the API; see the WALObserver javadoc for details.
 - The WALCoprocessorEnvironment  has changed in a backwards incompatible way. WALObserver coprocessors that relied on retrieving an object representing the write ahead log instance will have to be updated.

LimitedPrivate(REPLICATION) Audience
 - The WALEntryFilter API has changed in a backwards incompatible way. Implementers will have to be updated.
 - The ReplicationEndpoint.ReplicateContext API has changed in a backwards incompatible way. Implementers who use this interface will have to be updated. These changes do not impact wire compatibility for replicating between clusters.
 - The HLogKey API is deprecated in favor of the WALKey API. Additionally, the HLogKey API has changed in a backwards incompatible way by changing from implementing WriteableComparable<HLogKey> to implementing Writeable and Comparable<WALKey>.


---

* [HBASE-10201](https://issues.apache.org/jira/browse/HBASE-10201) | *Major* | **Port 'Make flush decisions per column family' to trunk**

Adds new flushing policy mechanism. Default, org.apache.hadoop.hbase.regionserver.FlushLargeStoresPolicy, will try to avoid flushing out the small column families in a region, those whose memstores are < hbase.hregion.percolumnfamilyflush.size.lower.bound. To restore the old behavior of flushes writing out all column families, set hbase.regionserver.flush.policy to org.apache.hadoop.hbase.regionserver.FlushAllStoresPolicy either in hbase-default.xml or on a per-table basis by setting the policy to use with HTableDescriptor.getFlushPolicyClassName().


---

* [HBASE-10153](https://issues.apache.org/jira/browse/HBASE-10153) | *Major* | **improve VerifyReplication to compute BADROWS more accurately**

VerifyReplicaiton reports the following counters besides the existing ones:

ONLY\_IN\_SOURCE\_TABLE\_ROWS: number of rows found only in source
ONLY\_IN\_PEER\_TABLE\_ROWS: number of rows found only in peer
CONTENT\_DIFFERENT\_ROWS: number of rows whose contents are different between source and peer


---

* [HBASE-9910](https://issues.apache.org/jira/browse/HBASE-9910) | *Major* | **TestHFilePerformance and HFilePerformanceEvaluation should be merged in a single HFile performance test class.**

Add support for codec and cipher in HFilePerformanceEvaluation


---

* [HBASE-9745](https://issues.apache.org/jira/browse/HBASE-9745) | *Major* | **Append HBASE\_CLASSPATH to end of Java classpath and use another env var for prefix**

- The additional JAR files specified with HBASE\_CLASSPATH are appended to the system JARs.
- The additional JAR files specified with HBASE\_CLASSPATH\_PREFIX are prefixed to the system JARs.


---

* [HBASE-8808](https://issues.apache.org/jira/browse/HBASE-8808) | *Trivial* | **Use Jacoco to generate Unit Test coverage reports**

Adds jacoco plugin.  Call it by defining argLine with necessary arguments.  By default outputs to target dir.


---

* [HBASE-8707](https://issues.apache.org/jira/browse/HBASE-8707) | *Minor* | **Add LongComparator for filter**

Adds a LongComparator for use by Filters.


---

* [HBASE-8572](https://issues.apache.org/jira/browse/HBASE-8572) | *Major* | **Enhance delete\_snapshot.rb to call snapshot deletion API with regex**

Adds a new shell command that allows you delete snapshots that match a regex:

hbase> delete\_all\_snapshot 's.*'


---

* [HBASE-8410](https://issues.apache.org/jira/browse/HBASE-8410) | *Major* | **Basic quota support for namespaces**

Namespace auditor provides basic quota support for namespaces in terms of number of tables and number of regions. In order to use namespace quotas, quota support must be enabled by setting
"hbase.quota.enabled" property to true in hbase-site.xml file.

The users can add quota information to namespace, while creating new namespaces or by altering existing ones. 

Examples:
1. create\_namespace 'ns1', {'hbase.namespace.quota.maxregions'=>'10'}
2. create\_namespace 'ns2', {'hbase.namespace.quota.maxtables'=>'2','hbase.namespace.quota.maxregions'=>'5'}
3. alter\_namespace 'ns3', {METHOD => 'set', 'hbase.namespace.quota.maxtables'=>'5','hbase.namespace.quota.maxregions'=>'25'}

The quotas can be modified/added to namespace at any point of time. To remove quotas, the following command can be used: 

alter\_namespace 'ns3', {METHOD => 'unset', NAME => 'hbase.namespace.quota.maxtables'}
alter\_namespace 'ns3', {METHOD => 'unset', NAME => 'hbase.namespace.quota.maxregions'}


---

* [HBASE-8329](https://issues.apache.org/jira/browse/HBASE-8329) | *Major* | **Limit compaction speed**

Adds compaction throughput limit mechanism(the word "throttle" is already used when choosing compaction thread pool, so use a different word here to avoid ambiguity). Default is org.apache.hadoop.hbase.regionserver.compactions.PressureAwareCompactionThroughputController, will limit throughput as follow:
1. In off peak hours, use a fixed limitation "hbase.hstore.compaction.throughput.offpeak" (default is Long.MAX\_VALUE which means no limitation).
2. In normal hours, the limitation is tuned between "hbase.hstore.compaction.throughput.lower.bound"(default 10MB/sec) and "hbase.hstore.compaction.throughput.higher.bound"(default 20MB/sec), using the formula "lower + (higer - lower) * param" where param is in range [0.0, 1.0] and calculate based on store files count on this regionserver.
3. If some stores have too many store files(storefilesCount > blockingFileCount), then there is no limitation no matter peak or off peak.
You can set "hbase.regionserver.throughput.controller" to org.apache.hadoop.hbase.regionserver.compactions.NoLimitCompactionThroughputController to disable throughput controlling.
And we have implemented ConfigurationObserver which means you can change all configurations above and do not need to restart cluster.


---

* [HBASE-7782](https://issues.apache.org/jira/browse/HBASE-7782) | *Minor* | **HBaseTestingUtility.truncateTable() not acting like CLI**

HBaseTestingUtility now uses the truncate API added in HBASE-8332 so that calls to HBTU.truncateTable will behave like the shell command: effectively dropping the table and recreating a new one with the same split points.

Previously, HBTU.truncateTable instead issued deletes for all the data already in the table. If you wish to maintain the same behavior, you should use the newly added HBTU.deleteTableData method.


---

* [HBASE-7767](https://issues.apache.org/jira/browse/HBASE-7767) | *Major* | **Get rid of ZKTable, and table enable/disable state in ZK**

Keeps table enabled/disabled state in HDFS rather than up in ZooKeeper.  Auto-migrates any existing zk state.


---

* [HBASE-7332](https://issues.apache.org/jira/browse/HBASE-7332) | *Minor* | **[webui] HMaster webui should display the number of regions a table has.**

Adds counts for various regions states to the table listing on main page. See attached screenshot.


---

* [HBASE-6778](https://issues.apache.org/jira/browse/HBASE-6778) | *Major* | **Deprecate Chore; its a thread per task when we should have one thread to do all tasks**

Corresponding usages for new ScheduledChore vs. Deprecated Chore:
Chore.interrupt() -> ScheduledChore.cancel(mayInterruptWhileRunning = true)
Threads.setDaemonThreadRunning(Chore) -> ChoreService.scheduleChore(ScheduledChore)
Chore.isAlive -> ScheduledChore.isScheduled()
Chore.getSleeper().skipSleepCycle() -> ScheduledChore.triggerNow()


---

* [HBASE-6290](https://issues.apache.org/jira/browse/HBASE-6290) | *Minor* | **Add a function a mark a server as dead and start the recovery the process**

Adds a script to mark a server as dead.

Usage: considerAsDead.sh --hostname serverName


---

* [HBASE-5980](https://issues.apache.org/jira/browse/HBASE-5980) | *Minor* | **Scanner responses from RS should include metrics on rows/KVs filtered**

Adds scan metrics to the result. In the shell, set the ALL\_METRICS attribute to true on your scan to see dump of metrics after results (see the scan help for examples).

If you would prefer to see only a subset of the metrics, the METRICS array can be defined to include the names of only the metrics you care about.


---

* [HBASE-5699](https://issues.apache.org/jira/browse/HBASE-5699) | *Critical* | **Run with \> 1 WAL in HRegionServer**

HBase's write-ahead-log (WAL) can now be configured to use multiple HDFS pipelines in parallel to provide better write throughput for clusters by using additional disks. By default, HBase will still use only a single HDFS-based WAL. 

To run with multiple WALs, alter the hbase-site.xml property "hbase.wal.provider" to have the value "multiwal". To return to having HBase determine what kind of WAL implementation to use either remove the property all together or set it to "defaultProvider".

Altering the WAL provider used by a particular RegionServer requires restarting that instance.  RegionServers using the original WAL implementation and those using the "multiwal" implementation can each handle recovery of either set of WALs, so a zero-downtime configuration update is possible through a rolling restart.


---

* [HBASE-3135](https://issues.apache.org/jira/browse/HBASE-3135) | *Major* | **Make our MR jobs implement Tool and use ToolRunner so can do -D trickery, etc.**

All MR jobs implement Tool Interface, http://hadoop.apache.org/docs/current/api/org/apache/hadoop/util/Tool.html, so now you can pass properties on command line with the -D flag, etc.


---

* [HBASE-2609](https://issues.apache.org/jira/browse/HBASE-2609) | *Major* | **Harmonize the Get and Delete operations**

Align Delete class with Get class. Change all delete* method names to add* instead.  For example, change deleteColumn to addColumn (as in add-this-column to the Delete specification). Deprecate the old.


---

* [HBASE-2251](https://issues.apache.org/jira/browse/HBASE-2251) | *Major* | **PE defaults to 1k rows - uncommon use case, and easy to hit benchmarks**

Added a --valueZipf to PE.


---

* [HBASE-2217](https://issues.apache.org/jira/browse/HBASE-2217) | *Major* | **VM OPTS for shell only**

Set HBASE\_SHELL\_OPTS in the environment or in hbase-env.sh to supply extra VM arguments when launching the HBase command shell.



