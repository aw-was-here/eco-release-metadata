
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
# Apache HBase  0.99.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HBASE-12577](https://issues.apache.org/jira/browse/HBASE-12577) | *Critical* | **Disable distributed log replay by default**

Disabled Distributed Log Replay (DLR) as default WAL/hlog splitting mechanism. 1.0.x releases will default to Distributed Log Splitting (DLS) system which is the default for 0.98, 0.96 and 0.94 releases. 

DLR improves MTTR (the more regions a server is carrying, the better the improvement. Also, we can start taking writes during WAL/hlog recovery), but rolling upgrade to HBase-1.0.x from earlier releases of 0.98 branch (0.98.0,..,0.98.3) can result in data loss. If you are not doing rolling upgrade, or you are rolling upgrading from a 0.98 greater than or equal to 0.98.4, you can safely turn on distributed log replay by default. Regular upgrade (as opposed to rolling upgrade) is not affected. See HBASE-11094 for details. 

See HBASE-7006 to learn more about DLR. You can enable this feature by setting hbase.master.distributed.log.replay to true in your hbase-site.xml file.


---

* [HBASE-12569](https://issues.apache.org/jira/browse/HBASE-12569) | *Minor* | **Control MaxDirectMemorySize in the same manner as heap size**

Adds new HBASE\_OFFHEAPSIZE environment variable to ./bin/hbase. Set the max offheap memory java will request with this one variable.  It combines with HBASE\_HEAPSIZE to determine the max amount of ram that the JVM can request.


---

* [HBASE-12536](https://issues.apache.org/jira/browse/HBASE-12536) | *Major* | **Reduce the effective scope of GLOBAL CREATE and ADMIN permission**

This change removes implicit write access to the META and ACL tables for any user with GLOBAL CREATE or ADMIN privilege. Users with GLOBAL CREATE will not be able to elevate their privileges unexpectedly through direct access to the ACL table. A GLOBAL ADMIN will still correctly be allowed to grant themselves any desired privilege.


---

* [HBASE-12522](https://issues.apache.org/jira/browse/HBASE-12522) | *Major* | **Backport WAL refactoring to branch-1**

HBase internals for the write ahead log have been refactored. Advanced users of HBase should be aware of the following changes. 

Public Audience 
  - The Admin API for asking a region server to roll WAL files has changed from a synchronous command that returns a set of regions the WAL implementation would like flushed into an asynchronous command that returns nothing. Older clients relying on the former behavior will still be able to interact with newer servers, but the response body will always contain an empty list of regions to flush. 
  - The shell command "hlog\_roll" has been deprecated. Operators should use the "wal\_roll" command instead. This command is subject to the changes described above for the Admin API to roll WAL files. 
  - The command for analyzing write ahead logs has been renamed from 'hlog' to 'wal'. The old usage is deprecated and will be removed in a future version. 
  - Some utility methods in the HBaseTesetingUtility related to testing write-ahead-logs were changed in incompatible ways. No functionality has been removed, but method names and arguments have changed. See the HBaseTestingUtility javadoc for details. 
  - The WALPlayer utility has deprecated the configuration keys used for advanced customization. Users should switch to the updated configuration keys. See the usage information on the WALPlayer tool for details. 
  - The HLogInputFormat utility class for processing logs with MapReduce has been deprecated and will be removed in a future version. Users should switch to the WALInputFormat. 
  - The labeling of server metrics on the region server status pages changed. Previously, the number of backing files for the write ahead log was labeled 'Num. HLog Files'. If you wish to see this statistic now, please look for the label 'Num. WAL Files.' If you rely on JMX for these metrics, their location has not changed. 

LimitedPrivate(COPROC) Audience, LimitedPrivate(PHOENIX) 
  - The RegionObserver API has been updated. The changes are both binary and source backwards compatible for coprocessors that use the BaseRegionObserver class. For those that implement RegionObserver directly the changes are binary backwards compatible. Depending on the internals of future HBase versions, coprocessors using the deprecated API may not see all WAL related events. Users are strongly encouraged to update their use of the API; see the RegionObserver javadoc for details. 
  - Classes related to reading WAL entries (ReaderBase, ProtobufLogReader, SequenceFileLogReader) have changed in a backwards incompatible way. Users who referenced HLog.Reader directly or HLog.Entry will have to update. These changes do not impact compatibility with extant wal files. 
  - The WALObserver API has been updated. The changes are both binary and source backwards compatible for coprocessors that use the BaseWALObserver class. For those that implement WALObserver directly the changes are binary backwards compatible. Depending on the internals of future HBase versions, coprocessors using the deprecated API may not see all WAL related events. Users are strongly encouraged to update their use of the API; see the WALObserver javadoc for details. 
 - The WALCoprocessorEnvironment has changed in a backwards incompatible way. WALObserver coprocessors that relied on retrieving an object representing the write ahead log instance will have to be updated. 

LimitedPrivate(REPLICATION) Audience 
 - The WALEntryFilter API has changed in a backwards incompatible way. Implementers will have to be updated. 
 - The ReplicationEndpoint.ReplicateContext API has changed in a backwards incompatible way. Implementers who use this interface will have to be updated. These changes do not impact wire compatibility for replicating between clusters. 
 - The HLogKey API is deprecated in favor of the WALKey API. Additionally, the HLogKey API has changed in a backwards incompatible way by changing from implementing WriteableComparable<HLogKey> to implementing Writeable and Comparable<WALKey>.


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

* [HBASE-12286](https://issues.apache.org/jira/browse/HBASE-12286) | *Major* | **[shell] Add server/cluster online load of configuration changes**

Adds shell commands:

update\_config 'servername'
update\_all\_config

These call new Admin methods added in HBASE-12147 to change server config.  Only a small subset of configs are changeable without restart currently mostly to do with compaction configuration.  See the refguide on dynamic configuration for a list.


---

* [HBASE-12277](https://issues.apache.org/jira/browse/HBASE-12277) | *Major* | **Refactor bulkLoad methods in AccessController to its own interface**

Adds new BulkLoadObserver Interface


---

* [HBASE-12250](https://issues.apache.org/jira/browse/HBASE-12250) | *Minor* | **Adding an endpoint for updating the regionserver config**

Adds Admin#updateConfiguration(ServerName) and   Admin#updateConfiguration() for loading config. dynamically.


---

* [HBASE-12241](https://issues.apache.org/jira/browse/HBASE-12241) | *Critical* | **The crash of regionServer when taking deadserver's replication queue breaks replication**

This fix includes our enabling useMulti flag as default. multi is a zk method only available in later versions of zookeeper.  This change means HBase 1.0 requires a zookeeper that is at least version 3.4+.  See HBASE-6775 for background.


---

* [HBASE-12147](https://issues.apache.org/jira/browse/HBASE-12147) | *Major* | **Porting Online Config Change from 89-fb**

Forward port of HBASE-8805 and HBASE-8544 implemented by Gaurav Menghani in 89-fb. This improves operational efficiency in managing clusters that are serving production traffic. The idea is to have a central configuration which can manage notifying the configuration observers. The observers in turn should update their local state from the latest config. Minor caveats where configuration variables are corelated should be taken care of with additional care.

This patch is the server-part only.  TODO is the activation, coming in a later issue.


---

* [HBASE-12142](https://issues.apache.org/jira/browse/HBASE-12142) | *Minor* | **Truncate command does not preserve ACLs table**

Prior to this change, the truncate shell command could not preserve ACLs on the table being truncated. In the 0.98 branch, this change also backports HBASE-8332, which adds a master handler for table truncation and new HBaseAdmin APIs for same.


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

* [HBASE-12017](https://issues.apache.org/jira/browse/HBASE-12017) | *Major* | **Use Connection.createTable() instead of HTable constructors.**

This was fixed by patches for other issues.


---

* [HBASE-11562](https://issues.apache.org/jira/browse/HBASE-11562) | *Major* | **CopyTable should provide an option to shuffle the mapper tasks**

Adds new 'shuffle' option to CopyTable that shuffles the maps order; use if you need some random on what tasks of a table copy run when.


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

* [HBASE-8707](https://issues.apache.org/jira/browse/HBASE-8707) | *Minor* | **Add LongComparator for filter**

Adds a LongComparator for use by Filters.


---

* [HBASE-8572](https://issues.apache.org/jira/browse/HBASE-8572) | *Major* | **Enhance delete\_snapshot.rb to call snapshot deletion API with regex**

Adds a new shell command that allows you delete snapshots that match a regex:

hbase> delete\_all\_snapshot 's.*'


---

* [HBASE-2609](https://issues.apache.org/jira/browse/HBASE-2609) | *Major* | **Harmonize the Get and Delete operations**

Align Delete class with Get class. Change all delete* method names to add* instead.  For example, change deleteColumn to addColumn (as in add-this-column to the Delete specification). Deprecate the old.



