# Hadoop HADOOP 2.6.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HADOOP-10903](https://issues.apache.org/jira/browse/HADOOP-10903) | *Major* | **Enhance hadoop classpath command to expand wildcards or write classpath into jar manifest.**

The "hadoop classpath" command has been enhanced to support options for automatic expansion of wildcards in classpath elements and writing the classpath to a jar file manifest.  These options make it easier to construct a correct classpath for libhdfs applications.


---

* [HADOOP-10839](https://issues.apache.org/jira/browse/HADOOP-10839) | *Major* | **Add unregisterSource() to MetricsSystem API**

The MetricsSystem abstract class has added a new abstract method, unregisterSource, for unregistering a previously registered metrics source.  Custom subclasses of MetricsSystem must be updated to provide an implementation of this method.


---

* [HADOOP-10681](https://issues.apache.org/jira/browse/HADOOP-10681) | *Major* | **Remove synchronized blocks from SnappyCodec and ZlibCodec buffering inner loop**

Remove unnecessary synchronized blocks from Snappy/Zlib codecs.


---

* [HADOOP-10620](https://issues.apache.org/jira/browse/HADOOP-10620) | *Major* | **/docs/current doesn't point to the latest version 2.4.0**

Verified http://hadoop.apache.org/docs/current/ link now point to current release (v2.6.0).


---

* [HADOOP-10583](https://issues.apache.org/jira/browse/HADOOP-10583) | *Minor* | **bin/hadoop key throws NPE with no args and assorted other fixups**

bin/hadoop key
with no args would throw an NPE.


---

* [HADOOP-10244](https://issues.apache.org/jira/browse/HADOOP-10244) | *Major* | **TestKeyShell improperly tests the results of a Delete**

Fix of inappropriate test of delete functionality.


---

* [HADOOP-10201](https://issues.apache.org/jira/browse/HADOOP-10201) | *Major* | **Add Listing Support to Key Management APIs**

I just committed this. Thanks, Larry!


---

* [HADOOP-8944](https://issues.apache.org/jira/browse/HADOOP-8944) | *Trivial* | **Shell command fs -count should include human readable option**

Implements -h option for fs -count to show file sizes in human readable format. Additionally, ContentSummary.getHeader() now returns a different string that is incompatible with previous releases.


---

* [HADOOP-8069](https://issues.apache.org/jira/browse/HADOOP-8069) | *Major* | **Enable TCP\_NODELAY by default for IPC**

This change enables the TCP\_NODELAY flag for all Hadoop IPC connections, hence bypassing TCP Nagling. Nagling interacts poorly with TCP delayed ACKs especially for request-response protocols.



