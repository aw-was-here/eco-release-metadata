# Hadoop HDFS 2.3.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HDFS-5704](https://issues.apache.org/jira/browse/HDFS-5704) | *Major* | **Change OP\_UPDATE\_BLOCKS  with a new OP\_ADD\_BLOCK**

Add a new editlog record (OP\_ADD\_BLOCK) that only records allocation of the new block instead of the entire block list, on every block allocation.


---

* [HDFS-5663](https://issues.apache.org/jira/browse/HDFS-5663) | *Major* | **make the retry time and interval value configurable in openInfo()**

Makes the retries and time between retries getting the length of the last block on file configurable.  Below are the new configurations.

dfs.client.retry.times.get-last-block-length
dfs.client.retry.interval-ms.get-last-block-length

They are set to the 3 and 4000 respectively, these being what was previously hardcoded.


---

* [HDFS-5536](https://issues.apache.org/jira/browse/HDFS-5536) | *Major* | **Implement HTTP policy for Namenode and DataNode**

Add new HTTP policy configuration. Users can use "dfs.http.policy" to control the HTTP endpoints for NameNode and DataNode. Specifically, The following values are supported:
- HTTP\_ONLY : Service is provided only on http
- HTTPS\_ONLY : Service is provided only on https
- HTTP\_AND\_HTTPS : Service is provided both on http and https

hadoop.ssl.enabled and dfs.https.enabled are deprecated. When the deprecated configuration properties are still configured, currently http policy is decided based on the following rules:
1. If dfs.http.policy is set to HTTPS\_ONLY or HTTP\_AND\_HTTPS. It picks the specified policy, otherwise it proceeds to 2~4.
2. It picks HTTPS\_ONLY if hadoop.ssl.enabled equals to true.
3. It picks HTTP\_AND\_HTTPS if dfs.https.enable equals to true.
4. It picks HTTP\_ONLY for other configurations.


---

* [HDFS-5502](https://issues.apache.org/jira/browse/HDFS-5502) | *Major* | **Fix HTTPS support in HsftpFileSystem**

Fix the https support in HsftpFileSystem. With the change the client now verifies the server certificate. In particular, client side will verify the Common Name of the certificate using a strategy specified by the configuration property "hadoop.ssl.hostname.verifier".


---

* [HDFS-4997](https://issues.apache.org/jira/browse/HDFS-4997) | *Major* | **libhdfs doesn't return correct error codes in most cases**

libhdfs now returns correct codes in errno. Previously, due to a bug, many functions set errno to 255 instead of the more specific error code.


---

* [HDFS-4983](https://issues.apache.org/jira/browse/HDFS-4983) | *Major* | **Numeric usernames do not work with WebHDFS FS**

Add a new configuration property "dfs.webhdfs.user.provider.user.pattern" for specifying user name filters for WebHDFS.



