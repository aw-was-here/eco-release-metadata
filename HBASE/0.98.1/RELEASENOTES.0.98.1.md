# Apache HBase  0.98.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HBASE-10741](https://issues.apache.org/jira/browse/HBASE-10741) | *Major* | **Deprecate HTablePool and HTableFactory**

HTablePool and HTableFactory are relics and are going away. See HConnection#getTable instead.


---

* [HBASE-10675](https://issues.apache.org/jira/browse/HBASE-10675) | *Major* | **IntegrationTestIngestWithACL should allow User to be passed as Parameter**

To use this feature of passing superuser and userlist we need to give the following command
{code}
./hbase --config /usr/lib/hbase/conf/ org.apache.hadoop.hbase.IntegrationTestIngestWithACL  -superuser <user> -userlist <user1>,<user2>,<user3>
{code}
Ensure that the userlist  is comma seperated.


---

* [HBASE-10548](https://issues.apache.org/jira/browse/HBASE-10548) | *Minor* | **Correct commons-math dependency version**

Downgrades HBase's dependency on commons-math to 2.1, which is consistent with all stable releases of Hadoop.


---

* [HBASE-10501](https://issues.apache.org/jira/browse/HBASE-10501) | *Critical* | **Improve IncreasingToUpperBoundRegionSplitPolicy to avoid too many regions**

Changes the default split policy to avoid too many regions with default settings.
The old policy calculates the split size at each RS as follows: MIN(maxFileSize, flushSize*NoRegions^2) (NoRegions is the number of regions for the table in question seen on this RS)

The new policy calculates the size this way: MIN(maxFileSize, flushSize*2*NoRegions^3)
Note that the initial split size is now 2 * the flushSize. With default settings it increased from 128mb to 256mb.

The new policy still allows spreading out the regions over the cluster quickly, but then grows the desired size fairly quickly in order to avoid too many regions per RS.


---

* [HBASE-10436](https://issues.apache.org/jira/browse/HBASE-10436) | *Critical* | **restore regionserver lists removed from hbase 0.96+ jmx**

Many of the metrics exposed in 0.94 were removed with the refactorization of metrics in 0.96.  This patch restores the availability of the live and dead regionserver lists.  In 0.94 this used to be found as a large nested structure which included regionserver lists and metrics from each region. 

 {
    "name" : "hadoop:service=Master,name=Master",
    "modelerType" : "org.apache.hadoop.hbase.master.MXBeanImpl",
    "ZookeeperQuorum" : "localhost:2181",
  ....
   "RegionsInTransition" : [ ],
    "RegionServers" : [ {
      "key" : "localhost,48346,1390857257246",
      "value" : {
        "load" : 2,
....
      
In 0.96.0, 0.96.1.x and 0.98.0 did not contain this list -- it only contained counts of the number of live and dead regionservers.  After this patch, the list are present in a ';' separated field like so:

{
    "name" : "Hadoop:service=HBase,name=Master,sub=Server",
    "modelerType" : "Master,sub=Server",
    "tag.Context" : "master",
    "tag.liveRegionServers" : "localhost,56196,1391992019130",
    "tag.deadRegionServers" : "localhost,40010,1391035309673;localhost,41408,1391990380724;localhost,38682,1390950017735",
    ...
}


---

* [HBASE-10413](https://issues.apache.org/jira/browse/HBASE-10413) | *Major* | **Tablesplit.getLength returns 0**

TableSplit.getLength() contains correct sizes of region in bytes. It is used by M/R framework for better scheduling.


---

* [HBASE-9778](https://issues.apache.org/jira/browse/HBASE-9778) | *Major* | **Add hint to ExplicitColumnTracker to avoid seeking**

Introduces a new scan attribute to allow a scan operation with explicit columns (Scan.addColumn) to opportunistically look ahead a few KeyValues (columns/versions) before scheduling a seek operation to seek between columns.

A seek is efficient when it can seek past 5-10 KeyValue (columns) or 512-1024 bytes. With small rows and few versions look ahead is typically more efficient.

API:
{code}
    Scan s = new Scan(...);
    s.addColumn(...);
    // instructs the RegionServer to attempt two iterations of next before scheduling a seek
    s.setAttribute(Scan.HINT\_LOOKAHEAD, Bytes.toBytes(2));
    table.getScanner(s);
{code}


---

* [HBASE-9501](https://issues.apache.org/jira/browse/HBASE-9501) | *Major* | **Provide throttling for replication**

A new configuration replication.source.per.peer.node.bandwidth is added by this jira. the default is 0 which means no throttling. the unit of this configuration is bytes-per-second.


---

* [HBASE-8803](https://issues.apache.org/jira/browse/HBASE-8803) | *Major* | **region\_mover.rb should move multiple regions at a time**

Multithread the region mover so can run more than one region move at a time.  Specify how many threads on the command line.  Feature will make rolling restart complete the sooner (if with a little more disruption as more regions are in flight at a time).


---

* [HBASE-8751](https://issues.apache.org/jira/browse/HBASE-8751) | *Major* | **Enable peer cluster to choose/change the ColumnFamilies/Tables it really want to replicate from a source cluster**

From the shell's doc:
# set table / table-cf to be replicable for a peer, for a table without
# an explicit column-family list, all replicable column-families (with
# replication\_scope == 1) will be replicated
 hbase> set\_peer\_tableCFs '2', "table1; table2:cf1,cf2; table3:cfA,cfB"


---

* [HBASE-6642](https://issues.apache.org/jira/browse/HBASE-6642) | *Major* | **enable\_all,disable\_all,drop\_all can call "list" command with regex directly.**

from 0.98.1 every hbase shell command that support regex filtering is using the java Pattern class, which does not support glob patterns.
http://docs.oracle.com/javase/7/docs/api/java/util/regex/Pattern.html



