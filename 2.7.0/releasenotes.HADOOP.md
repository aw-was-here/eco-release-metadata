# Hadoop HADOOP 2.7.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.

---

* [HADOOP-11729](https://issues.apache.org/jira/browse/HADOOP-11729) | *Minor* | **Fix link to cgroups doc in site.xml**

Committed this to trunk, branch-2, and branch-2.7. Thanks Masatake for your contribution!

---

* [HADOOP-11498](https://issues.apache.org/jira/browse/HADOOP-11498) | *Major* | **Bump the version of HTrace to 3.1.0-incubating**
---

* [HADOOP-11497](https://issues.apache.org/jira/browse/HADOOP-11497) | *Major* | **Fix typo in ClusterSetup.html#Hadoop\_Startup**

Correct startup command for cluster data nodes

---

* [HADOOP-11492](https://issues.apache.org/jira/browse/HADOOP-11492) | *Major* | **Bump up curator version to 2.7.1**

Apache Curator version change: Apache Hadoop has updated the version of Apache Curator used from 2.6.0 to 2.7.1. This change should be binary and source compatible for the majority of downstream users. Notable exceptions:
# Binary incompatible change: org.apache.curator.utils.PathUtils.validatePath(String) changed return types. Downstream users of this method will need to recompile.
# Source incompatible change: org.apache.curator.framework.recipes.shared.SharedCountReader added a method to its interface definition. Downstream users with custom implementations of this interface can continue without binary compatibility problems but will need to modify their source code to recompile.
# Source incompatible change: org.apache.curator.framework.recipes.shared.SharedValueReader added a method to its interface definition. Downstream users with custom implementations of this interface can continue without binary compatibility problems but will need to modify their source code to recompile.

Downstream users are reminded that while the Hadoop community will attempt to avoid egregious incompatible dependency changes, there is currently no policy around when Hadoop's exposed dependencies will change across versions (ref http://hadoop.apache.org/docs/current/hadoop-project-dist/hadoop-common/Compatibility.html#Java\_Classpath).

---

* [HADOOP-11464](https://issues.apache.org/jira/browse/HADOOP-11464) | *Major* | **Reinstate support for launching Hadoop processes on Windows using Cygwin.**

We have reinstated support for launching Hadoop processes on Windows by using Cygwin to run the shell scripts.  All processes still must have access to the native components: hadoop.dll and winutils.exe.

---

* [HADOOP-11446](https://issues.apache.org/jira/browse/HADOOP-11446) | *Major* | **S3AOutputStream should use shared thread pool to avoid OutOfMemoryError**

The following parameters are introduced in this JIRA:
fs.s3a.threads.max:    the maximum number of threads to allow in the pool used by TransferManager
fs.s3a.threads.core:    the number of threads to keep in the pool used by TransferManager
fs.s3a.threads.keepalivetime:  when the number of threads is greater than the core, this is the maximum time that excess idle threads will wait for new tasks before terminating
fs.s3a.max.total.tasks:    the maximum number of tasks that the LinkedBlockingQueue can hold

---

* [HADOOP-11385](https://issues.apache.org/jira/browse/HADOOP-11385) | *Critical* | **Prevent cross site scripting attack on JMXJSONServlet**
---

* [HADOOP-11348](https://issues.apache.org/jira/browse/HADOOP-11348) | *Minor* | **Remove unused variable from CMake error message for finding openssl**

Test failure is unrelated.  Committed to 2.7.  Thanks, Dian.

---

* [HADOOP-11311](https://issues.apache.org/jira/browse/HADOOP-11311) | *Major* | **Restrict uppercase key names from being created with JCEKS**

Keys with uppercase names can no longer be created when using the JavaKeyStoreProvider to resolve ambiguity about case-sensitivity in the KeyStore spec.

---

* [HADOOP-10530](https://issues.apache.org/jira/browse/HADOOP-10530) | *Blocker* | **Make hadoop trunk build on Java7+ only**
---

* [HADOOP-10181](https://issues.apache.org/jira/browse/HADOOP-10181) | *Minor* | **GangliaContext does not work with multicast ganglia setup**

Hadoop metrics sent to Ganglia over multicast now support optional configuration of socket TTL.  The default TTL is 1, which preserves the behavior of prior Hadoop versions.  Clusters that span multiple subnets/VLANs will likely want to increase this.

---

* [HADOOP-9922](https://issues.apache.org/jira/browse/HADOOP-9922) | *Major* | **hadoop windows native build will fail in 32 bit machine**

The Hadoop Common native components now support 32-bit build targets on Windows.

---

* [HADOOP-9629](https://issues.apache.org/jira/browse/HADOOP-9629) | *Major* | **Support Windows Azure Storage - Blob as a file system in Hadoop**

Hadoop now supports integration with Azure Storage as an alternative Hadoop Compatible File System.

---

* [HADOOP-9329](https://issues.apache.org/jira/browse/HADOOP-9329) | *Trivial* | **document native build dependencies in BUILDING.txt**

Added a section to BUILDING.txt on how to install required / optional packages on a clean install of Ubuntu 14.04 LTS Desktop.

Went through the CMakeLists.txt files in the repo and added the following optional library dependencies - Snappy, Bzip2, Linux FUSE and Jansson.

Updated the required packages / version numbers from the trunk branch version of BUILDING.txt.

---

* [HADOOP-8989](https://issues.apache.org/jira/browse/HADOOP-8989) | *Major* | **hadoop fs -find feature**

New fs -find command



