# Apache HBase  0.98.5 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HBASE-11651](https://issues.apache.org/jira/browse/HBASE-11651) | *Major* | **Add conf which disables MetaMigrationConvertingToPB check (for experts only)**

Set hbase.MetaMigrationConvertingToPB to false to avoid scan of META on startup. Useful if you know your meta has already been migrated and if your meta is very large.


---

* [HBASE-11558](https://issues.apache.org/jira/browse/HBASE-11558) | *Major* | **Caching set on Scan object gets lost when using TableMapReduceUtil in 0.95+**

TableMapReduceUtil now restores the option to set scanner caching by setting it on the Scan object that is passe in. The priority order for choosing the scanner caching is as follows:

1. Caching set on the scan object.
2. Caching specified via the config "hbase.client.scanner.caching", which can either be set manually on the conf or via the helper method TableMapReduceUtil.setScannerCaching().
3. The default value HConstants.DEFAULT\_HBASE\_CLIENT\_SCANNER\_CACHING, which is set to 100 currently.


---

* [HBASE-11557](https://issues.apache.org/jira/browse/HBASE-11557) | *Minor* | **Counter.class should always be added as dependencyJar**

hbase mapredcp now include high-scale-lib.jar in its output. This is useful for users of mapreduce over snapshots.


---

* [HBASE-11534](https://issues.apache.org/jira/browse/HBASE-11534) | *Minor* | **Remove broken JAVA\_HOME autodetection in hbase-config.sh**

This change removes old and increasingly useless JAVA\_HOME autodetection that looks for Java 6 runtimes in various locations. Ensure that JAVA\_HOME is correctly set in the environment before launching HBase daemons.


---

* [HBASE-11480](https://issues.apache.org/jira/browse/HBASE-11480) | *Trivial* | **ClientScanner might not close the HConnection created in construction**

Deprecate a (unused) ClientScanner constructor because can leave a connection open.


---

* [HBASE-2217](https://issues.apache.org/jira/browse/HBASE-2217) | *Major* | **VM OPTS for shell only**

Set HBASE\_SHELL\_OPTS in the environment or in hbase-env.sh to supply extra VM arguments when launching the HBase command shell.



