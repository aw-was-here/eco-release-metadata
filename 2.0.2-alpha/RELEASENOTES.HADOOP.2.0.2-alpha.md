# Hadoop HADOOP 2.0.2-alpha Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HADOOP-8794](https://issues.apache.org/jira/browse/HADOOP-8794) | *Major* | **Modifiy bin/hadoop to point to HADOOP\_YARN\_HOME**

**WARNING: No release note provided for this incompatible change.**


---

* [HADOOP-8710](https://issues.apache.org/jira/browse/HADOOP-8710) | *Major* | **Remove ability for users to easily run the trash emptier**

The trash emptier may no longer be run using "hadoop org.apache.hadoop.fs.Trash". The trash emptier runs on the NameNode (if configured). Old trash checkpoints may be deleted using "hadoop fs -expunge".


---

* [HADOOP-8703](https://issues.apache.org/jira/browse/HADOOP-8703) | *Major* | **distcpV2: turn CRC checking off for 0 byte size**

distcp skips CRC on 0 byte files.


---

* [HADOOP-8689](https://issues.apache.org/jira/browse/HADOOP-8689) | *Major* | **Make trash a server side configuration option**

If fs.trash.interval is configured on the server then the client's value for this configuration is ignored.


---

* [HADOOP-8551](https://issues.apache.org/jira/browse/HADOOP-8551) | *Major* | **fs -mkdir creates parent directories without the -p option**

FsShell's "mkdir" no longer implicitly creates all non-existent parent directories.  The command adopts the posix compliant behavior of requiring the "-p" flag to auto-create parent directories.


---

* [HADOOP-8533](https://issues.apache.org/jira/browse/HADOOP-8533) | *Major* | **Remove Parallel Call in IPC**

Merged the change to branch-2


---

* [HADOOP-8458](https://issues.apache.org/jira/browse/HADOOP-8458) | *Major* | **Add management hook to AuthenticationHandler to enable delegation token operations support**

**WARNING: No release note provided for this incompatible change.**


---

* [HADOOP-8388](https://issues.apache.org/jira/browse/HADOOP-8388) | *Minor* | **Remove unused BlockLocation serialization**

**WARNING: No release note provided for this incompatible change.**


---

* [HADOOP-8368](https://issues.apache.org/jira/browse/HADOOP-8368) | *Minor* | **Use CMake rather than autotools to build native code**

**WARNING: No release note provided for this incompatible change.**


---

* [HADOOP-8327](https://issues.apache.org/jira/browse/HADOOP-8327) | *Major* | **distcpv2 and distcpv1 jars should not coexist**

Resolve sporadic distcp issue due to having two DistCp classes (v1 & v2) in the classpath.


---

* [HADOOP-7703](https://issues.apache.org/jira/browse/HADOOP-7703) | *Major* | **WebAppContext should also be stopped and cleared**

Improved excpetion handling of shutting down web server. (Devaraj K via Eric Yang)



