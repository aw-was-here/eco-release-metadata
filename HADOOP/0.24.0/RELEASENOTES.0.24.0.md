# Apache Hadoop  0.24.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HADOOP-7728](https://issues.apache.org/jira/browse/HADOOP-7728) | *Major* | **hadoop-setup-conf.sh should be modified to enable task memory manager**

Enable task memory management to be configurable via hadoop config setup script.


---

* [HADOOP-7668](https://issues.apache.org/jira/browse/HADOOP-7668) | *Minor* | **Add a NetUtils method that can tell if an InetAddress belongs to local host**

closing again


---

* [HADOOP-7547](https://issues.apache.org/jira/browse/HADOOP-7547) | *Minor* | **Fix the warning in writable classes.[ WritableComparable is a raw type. References to generic type WritableComparable\<T\> should be parameterized  ]**

**WARNING: No release note provided for this incompatible change.**


---

* [HADOOP-7507](https://issues.apache.org/jira/browse/HADOOP-7507) | *Major* | **jvm metrics all use the same namespace**

JVM metrics published to Ganglia now include the process name as part of the gmetric name.



