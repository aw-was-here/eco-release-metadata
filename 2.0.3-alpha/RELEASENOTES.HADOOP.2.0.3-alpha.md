# Hadoop HADOOP 2.0.3-alpha Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HADOOP-9147](https://issues.apache.org/jira/browse/HADOOP-9147) | *Trivial* | **Add missing fields to FIleStatus.toString**

Update FileStatus.toString to include missing fields


---

* [HADOOP-9119](https://issues.apache.org/jira/browse/HADOOP-9119) | *Minor* | **Add test to FileSystemContractBaseTest to verify integrity of overwritten files**

Patches adds more tests to verify overwritten and more complex operations -write-delete-overwrite. By using differently sized datasets and different data inside, these tests verify that the overwrite really did take place. While HDFS meets all these requirements directly, eventually consistent object stores may not -hence these tests.


---

* [HADOOP-9118](https://issues.apache.org/jira/browse/HADOOP-9118) | *Trivial* | **FileSystemContractBaseTest test data for read/write isn't rigorous enough**

Resolved as part of HADOOP-9119 -it's test data generator creates more bits in every test byte


---

* [HADOOP-9106](https://issues.apache.org/jira/browse/HADOOP-9106) | *Major* | **Allow configuration of IPC connect timeout**

This jira introduces a new configuration parameter "ipc.client.connect.timeout". This configuration defines the Hadoop RPC connection timeout in milliseconds for a client to connect to a server. For details see the description associated with this configuration in core-default.xml.


---

* [HADOOP-9070](https://issues.apache.org/jira/browse/HADOOP-9070) | *Blocker* | **Kerberos SASL server cannot find kerberos key**

**WARNING: No release note provided for this incompatible change.**


---

* [HADOOP-8999](https://issues.apache.org/jira/browse/HADOOP-8999) | *Major* | **SASL negotiation is flawed**

The RPC SASL negotiation now always ends with final response.  If the SASL mechanism does not have a final response (GSSAPI, PLAIN), then an empty success response is sent to the client.  The client will now always expect a final response to definitively know if negotiation is complete/successful.


---

* [HADOOP-8926](https://issues.apache.org/jira/browse/HADOOP-8926) | *Major* | **hadoop.util.PureJavaCrc32 cache hit-ratio is low for static data**

Speed up Crc32 by improving the cache hit-ratio of hadoop.util.PureJavaCrc32


---

* [HADOOP-8922](https://issues.apache.org/jira/browse/HADOOP-8922) | *Trivial* | **Provide alternate JSONP output for JMXJsonServlet to allow javascript in browser dashboard**

Add a JSONP alternative outpout for /jmx HTTP interface to provide a Javascript polling ability in browsers.


---

* [HADOOP-8712](https://issues.apache.org/jira/browse/HADOOP-8712) | *Minor* | **Change default hadoop.security.group.mapping**

The default group mapping policy has been changed to JniBasedUnixGroupsNetgroupMappingWithFallback. This should maintain the same semantics as the prior default for most users.



