# Apache HBase  0.98.9 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HBASE-12619](https://issues.apache.org/jira/browse/HBASE-12619) | *Major* | **Backport HBASE-11639 (Replicate the visibility of Cells as strings) to 0.98**


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

* [HBASE-12573](https://issues.apache.org/jira/browse/HBASE-12573) | *Major* | **Backport HBASE-10591 Sanity check table configuration in createTable**

This change backports table schema sanity checks from branch-1. The checks disallow only illegal or highly unusual settings, and can be disabled by setting "hbase.table.sanity.checks" to "false" in site configuration.


---

* [HBASE-12411](https://issues.apache.org/jira/browse/HBASE-12411) | *Major* | **Optionally enable p-reads and private readers for compactions**

This introduces two new configuration options:
# hbase.storescanner.use.pread enables postional reads for all scanners (except compactions). Default off (i.e. try to use seek+read as before)
# hbase.regionserver.compaction.private.readers has compaction run with their own readers. Default off (i.e. share readers with all other scanners as before)


---

* [HBASE-12373](https://issues.apache.org/jira/browse/HBASE-12373) | *Minor* | **Provide a command to list visibility labels**

Adds new list\_labels command to shell.


---

* [HBASE-12346](https://issues.apache.org/jira/browse/HBASE-12346) | *Major* | **Scan's default auths behavior under Visibility labels**

When no Authorizations passed in Scan , will take user's Auth labels for the Scan and return results accordingly.  Prior to this Jira, we were returning only those cells with out any visibility in such a case.


---

* [HBASE-12277](https://issues.apache.org/jira/browse/HBASE-12277) | *Major* | **Refactor bulkLoad methods in AccessController to its own interface**

Adds new BulkLoadObserver Interface


---

* [HBASE-8572](https://issues.apache.org/jira/browse/HBASE-8572) | *Major* | **Enhance delete\_snapshot.rb to call snapshot deletion API with regex**

Adds a new shell command that allows you delete snapshots that match a regex:

hbase> delete\_all\_snapshot 's.*'



