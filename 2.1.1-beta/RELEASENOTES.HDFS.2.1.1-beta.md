# Hadoop HDFS 2.1.1-beta Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HDFS-5118](https://issues.apache.org/jira/browse/HDFS-5118) | *Major* | **Provide testing support for DFSClient to drop RPC responses**

Used for testing when NameNode HA is enabled. Users can use a new configuration property "dfs.client.test.drop.namenode.response.number" to specify the number of responses that DFSClient will drop in each RPC call. This feature can help testing functionalities such as NameNode retry cache.



