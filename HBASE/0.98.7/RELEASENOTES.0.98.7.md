# Apache HBase  0.98.7 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HBASE-12099](https://issues.apache.org/jira/browse/HBASE-12099) | *Major* | **TestScannerModel fails if using jackson 1.9.13**

The XML element used for the visibility labels in the REST API has been renamed from "label" lo "labels" in order to support old and the new versions of jackson.

Developers that use visibility labels via REST XML need to modify their applications in order to use the new XML element name.


---

* [HBASE-12087](https://issues.apache.org/jira/browse/HBASE-12087) | *Minor* | **[0.98] Changing the default setting of hbase.security.access.early\_out to true**

Prior to 0.98.0 if a user was not granted access to a column family or partial access (qualifier grants), then the AccessController would immediately throw back an AccessDeniedException. This behavior was changed in 0.98.0. Instead, scanners will return result sets only including cells for which the user has access. If the user has no permissions on any cell then the scanner will return the empty result set. Code expecting an AccessDeniedException if the user has no access may not function as intended.

This change introduces a configuration setting which restores the pre-0.98.0 behavior. 

If you would prefer the new behavior, this can be configured globally via site configuration or per table using HTableDescriptor#setConfiguration. The setting is AccessControlConstants.CF\_ATTRIBUTE\_EARLY\_OUT ("hbase.security.access.early\_out"), a boolean. Set to "false" and scanners will return result sets only including cells for which the user has access without throwing an AccessDeniedException.


---

* [HBASE-12054](https://issues.apache.org/jira/browse/HBASE-12054) | *Major* | **bad state after NamespaceUpgrade with reserved table names**

Prior to HBase 0.98.7, if you have 0.94 tables named (data, archive, corrupt, lib, WALs, splitWAl, oldWALs) upgrading would "silently" fail, corrupting the state of those tables.


---

* [HBASE-12052](https://issues.apache.org/jira/browse/HBASE-12052) | *Major* | **BulkLoad Failed due to no write permission on input files**

SecureBulkLoadEndPoint can be used in un-secure env to bulk load data without hitting "Permission denied" for hbase user.


---

* [HBASE-11907](https://issues.apache.org/jira/browse/HBASE-11907) | *Minor* | **Use the joni byte[] regex engine in place of j.u.regex in RegexStringComparator**

The RegexStringComparator comparator now include an optional EngineType constructor parameter. Use EngineType.JONI to select the joni regex engine, which can be twice as fast as the Java regex engine and will be more efficient, producing less object churn while scanning, because it operates natively on byte arrays. RegexStringComparator still uses the Java regex engine by default.


---

* [HBASE-11847](https://issues.apache.org/jira/browse/HBASE-11847) | *Minor* | **HFile tool should be able to print block headers**

The HFileTool (`hbase hfile`) can print block headers. The flag is -h,--printblockheaders.


---

* [HBASE-11845](https://issues.apache.org/jira/browse/HBASE-11845) | *Minor* | **HFile tool should implement Tool, disable blockcache by default**

HFileTool now accepts configuration overrides in the usual way. Blockcache is disabled by default.


---

* [HBASE-11331](https://issues.apache.org/jira/browse/HBASE-11331) | *Major* | **[blockcache] lazy block decompression**

When hbase.block.data.cachecompressed=true, DATA (and ENCODED\_DATA) blocks are cached in the BlockCache in their on-disk format. This is different from the default behavior, which decompresses and decrypts a block before caching.

For a region server hosting more data than fits into cache, enabling this feature with SNAPPY compression results in 50% increase in throughput and 30% improvement in mean latency while increasing GC by 80% and increasing overall CPU load by 2%.


---

* [HBASE-10153](https://issues.apache.org/jira/browse/HBASE-10153) | *Major* | **improve VerifyReplication to compute BADROWS more accurately**

VerifyReplicaiton reports the following counters besides the existing ones:

ONLY\_IN\_SOURCE\_TABLE\_ROWS: number of rows found only in source
ONLY\_IN\_PEER\_TABLE\_ROWS: number of rows found only in peer
CONTENT\_DIFFERENT\_ROWS: number of rows whose contents are different between source and peer


---

* [HBASE-8808](https://issues.apache.org/jira/browse/HBASE-8808) | *Trivial* | **Use Jacoco to generate Unit Test coverage reports**

Adds jacoco plugin.  Call it by defining argLine with necessary arguments.  By default outputs to target dir.



