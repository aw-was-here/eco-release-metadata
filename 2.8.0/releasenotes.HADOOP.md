# Hadoop HADOOP 2.8.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.

---

* [HADOOP-11737](https://issues.apache.org/jira/browse/HADOOP-11737) | *Minor* | **mockito's version in hadoop-nfs’ pom.xml shouldn't be specified**
---

* [HADOOP-11711](https://issues.apache.org/jira/browse/HADOOP-11711) | *Minor* | **Provide a default value for AES/CTR/NoPadding CryptoCodec classes**
---

* [HADOOP-11709](https://issues.apache.org/jira/browse/HADOOP-11709) | *Trivial* | **Time.NANOSECONDS\_PER\_MILLISECOND - use class-level final constant instead of method variable**
---

* [HADOOP-11692](https://issues.apache.org/jira/browse/HADOOP-11692) | *Major* | **Improve authentication failure WARN message to avoid user confusion**
---

* [HADOOP-11659](https://issues.apache.org/jira/browse/HADOOP-11659) | *Minor* | **o.a.h.fs.FileSystem.Cache#remove should use a single hash map lookup**
---

* [HADOOP-11568](https://issues.apache.org/jira/browse/HADOOP-11568) | *Trivial* | **Description on usage of classpath in hadoop command is incomplete.**
---

* [HADOOP-11447](https://issues.apache.org/jira/browse/HADOOP-11447) | *Minor* | **Add a more meaningful toString method to SampleStat and MutableStat**
---

* [HADOOP-11226](https://issues.apache.org/jira/browse/HADOOP-11226) | *Major* | **Add a configuration to set ipc.Client's traffic class with IPTOS\_LOWDELAY\|IPTOS\_RELIABILITY**

Use low latency TCP connections for hadoop IPC

---

* [HADOOP-10027](https://issues.apache.org/jira/browse/HADOOP-10027) | *Minor* | ***Compressor\_deflateBytesDirect passes instance instead of jclass to GetStaticObjectField**
---

* [HADOOP-9477](https://issues.apache.org/jira/browse/HADOOP-9477) | *Major* | **Add posixGroups support for LDAP groups mapping service**

Add posixGroups support for LDAP groups mapping service. The change in LDAPGroupMapping is compatible with previous scenario. In LDAP, the group mapping between {{posixAccount}} and {{posixGroup}} is different from the general LDAPGroupMapping, one of the differences is the {{"memberUid"}} will be used to mapping {{posixAccount}} and {{posixGroup}}. The feature will handle the mapping in internal when configuration {{hadoop.security.group.mapping.ldap.search.filter.user}} is set as "posixAccount" and {{hadoop.security.group.mapping.ldap.search.filter.group}} is "posixGroup".



