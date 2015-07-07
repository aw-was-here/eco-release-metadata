# Apache Hadoop  1.0.3 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HADOOP-8352](https://issues.apache.org/jira/browse/HADOOP-8352) | *Major* | **We should always generate a new configure script for the c++ code**

If you are compiling c++, the configure script will now be automatically regenerated as it should be.
This requires autoconf version 2.61 or greater.


---

* [HADOOP-5528](https://issues.apache.org/jira/browse/HADOOP-5528) | *Major* | **Binary partitioner**

New BinaryPartitioner that partitions BinaryComparable keys by hashing a configurable part of the bytes array corresponding to the key.



