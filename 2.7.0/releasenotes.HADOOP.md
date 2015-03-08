# Hadoop HADOOP 2.7.0 Release Notes

These release notes cover  new developer and user-facing incompatibilities, features, and major improvements.

## Changes since Hadoop 2.6.1

---

* [HADOOP-11498](https://issues.apache.org/jira/browse/HADOOP-11498) | Major | Bump the version of HTrace to 3.1.0-incubating

No release note provided for this incompatible change.

---

* [HADOOP-11497](https://issues.apache.org/jira/browse/HADOOP-11497) | Major | Fix typo in ClusterSetup.html#Hadoop\_Startup

Correct startup command for cluster data nodes

---

* [HADOOP-11464](https://issues.apache.org/jira/browse/HADOOP-11464) | Major | Reinstate support for launching Hadoop processes on Windows using Cygwin.

We have reinstated support for launching Hadoop processes on Windows by using Cygwin to run the shell scripts.  All processes still must have access to the native components: hadoop.dll and winutils.exe.

---

* [HADOOP-11446](https://issues.apache.org/jira/browse/HADOOP-11446) | Major | S3AOutputStream should use shared thread pool to avoid OutOfMemoryError

The following parameters are introduced in this JIRA:
fs.s3a.threads.max:    the maximum number of threads to allow in the pool used by TransferManager
fs.s3a.threads.core:    the number of threads to keep in the pool used by TransferManager
fs.s3a.threads.keepalivetime:  when the number of threads is greater than the core, this is the maximum time that excess idle threads will wait for new tasks before terminating
fs.s3a.max.total.tasks:    the maximum number of tasks that the LinkedBlockingQueue can hold

---

* [HADOOP-11385](https://issues.apache.org/jira/browse/HADOOP-11385) | Critical | Prevent cross site scripting attack on JMXJSONServlet

No release note provided for this incompatible change.

---

* [HADOOP-11348](https://issues.apache.org/jira/browse/HADOOP-11348) | Minor | Remove unused variable from CMake error message for finding openssl

Test failure is unrelated.  Committed to 2.7.  Thanks, Dian.

---

* [HADOOP-11311](https://issues.apache.org/jira/browse/HADOOP-11311) | Major | Restrict uppercase key names from being created with JCEKS

Keys with uppercase names can no longer be created when using the JavaKeyStoreProvider to resolve ambiguity about case-sensitivity in the KeyStore spec.

---

* [HADOOP-10530](https://issues.apache.org/jira/browse/HADOOP-10530) | Blocker | Make hadoop trunk build on Java7+ only

No release note provided for this incompatible change.

---

* [HADOOP-10181](https://issues.apache.org/jira/browse/HADOOP-10181) | Minor | GangliaContext does not work with multicast ganglia setup

Hadoop metrics sent to Ganglia over multicast now support optional configuration of socket TTL.  The default TTL is 1, which preserves the behavior of prior Hadoop versions.  Clusters that span multiple subnets/VLANs will likely want to increase this.

---

* [HADOOP-9922](https://issues.apache.org/jira/browse/HADOOP-9922) | Major | hadoop windows native build will fail in 32 bit machine

The Hadoop Common native components now support 32-bit build targets on Windows.

---

* [HADOOP-9629](https://issues.apache.org/jira/browse/HADOOP-9629) | Major | Support Windows Azure Storage - Blob as a file system in Hadoop

Hadoop now supports integration with Azure Storage as an alternative Hadoop Compatible File System.

---

* [HADOOP-8989](https://issues.apache.org/jira/browse/HADOOP-8989) | Major | hadoop fs -find feature

New fs -find command



