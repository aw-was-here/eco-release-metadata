# Hadoop HADOOP 2.3.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HADOOP-10047](https://issues.apache.org/jira/browse/HADOOP-10047) | *Major* | **Add a directbuffer Decompressor API to hadoop**

Direct Bytebuffer decompressors for Zlib (Deflate & Gzip) and Snappy


---

* [HADOOP-9241](https://issues.apache.org/jira/browse/HADOOP-9241) | *Trivial* | **DU refresh interval is not configurable**

The 'du' (disk usage command from Unix) script refresh monitor is now configurable in the same way as its 'df' counterpart, via the property 'fs.du.interval', the default of which is 10 minute (in ms).


---

* [HADOOP-8545](https://issues.apache.org/jira/browse/HADOOP-8545) | *Major* | **Filesystem Implementation for OpenStack Swift**

Added file system implementation for OpenStack Swift.
There are two implementation: block and native (similar to Amazon S3 integration).
Data locality issue solved by patch in Swift, commit procedure to OpenStack is in progress.

To use implementation add to core-site.xml following:

```xml
	<property>
	        <name>fs.swift.impl</name>
	    	<value>com.mirantis.fs.SwiftFileSystem</value>
	</property>
	<property>
	    	<name>fs.swift.block.impl</name>
	         <value>com.mirantis.fs.block.SwiftBlockFileSystem</value>
        </property>
```

In MapReduce job specify following configs for OpenStack Keystone authentication:

```java
conf.set("swift.auth.url", "http://172.18.66.117:5000/v2.0/tokens");
conf.set("swift.tenant", "superuser");
conf.set("swift.username", "admin1");
conf.set("swift.password", "password");
conf.setInt("swift.http.port", 8080);
conf.setInt("swift.https.port", 443);
```

Additional information specified on github: https://github.com/DmitryMezhensky/Hadoop-and-Swift-integration



