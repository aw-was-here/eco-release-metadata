# Apache Hadoop  1.2.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [MAPREDUCE-5450](https://issues.apache.org/jira/browse/MAPREDUCE-5450) | *Blocker* | **Unnecessary Configuration instantiation in IFileInputStream slows down merge - Port to branch-1**

Fixes blank Configuration object creation overhead by reusing the Job configuration in InMemoryReader.



