# Hadoop HDFS 2.0.0-alpha Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HDFS-3286](https://issues.apache.org/jira/browse/HDFS-3286) | *Major* | **When the threshold value for balancer is 0(zero) ,unexpected output is displayed**

**WARNING: No release note provided for this incompatible change.**


---

* [HDFS-3164](https://issues.apache.org/jira/browse/HDFS-3164) | *Major* | **Move DatanodeInfo#hostName to DatanodeID**

This change modifies DatanodeID, which is part of the client to server protocol, therefore clients must be upgraded with servers.


---

* [HDFS-3144](https://issues.apache.org/jira/browse/HDFS-3144) | *Major* | **Refactor DatanodeID#getName by use**

This change modifies DatanodeID, which is part of the client to server protocol, therefore clients must be upgraded with servers.


---

* [HDFS-3138](https://issues.apache.org/jira/browse/HDFS-3138) | *Major* | **Move DatanodeInfo#ipcPort to DatanodeID**

This change modifies DatanodeID, which is part of the client to server protocol, therefore clients must be upgraded with servers.


---

* [HDFS-3137](https://issues.apache.org/jira/browse/HDFS-3137) | *Major* | **Bump LAST\_UPGRADABLE\_LAYOUT\_VERSION to -16**

Upgrade from Hadoop versions earlier than 0.18 is not supported as of 2.0. To upgrade from an earlier release, first upgrade to 0.18, and then upgrade again from there.


---

* [HDFS-3094](https://issues.apache.org/jira/browse/HDFS-3094) | *Major* | **add -nonInteractive and -force option to namenode -format command**

The 'namenode -format' command now supports the flags '-nonInteractive' and '-force' to improve usefulness without user input.


---

* [HDFS-3044](https://issues.apache.org/jira/browse/HDFS-3044) | *Major* | **fsck move should be non-destructive by default**

The fsck "move" option is no longer destructive. It copies the accessible blocks of corrupt files to lost and found as before, but no longer deletes the corrupt files after copying the blocks. The original, destructive behavior can be enabled by specifying both the "move" and "delete" options.


---

* [HDFS-3004](https://issues.apache.org/jira/browse/HDFS-3004) | *Major* | **Implement Recovery Mode**

This is a new feature.  It is documented in hdfs\_user\_guide.xml.


---

* [HDFS-2731](https://issues.apache.org/jira/browse/HDFS-2731) | *Major* | **HA: Autopopulate standby name dirs if they're empty**

The HA NameNode may now be started with the "-bootstrapStandby" flag. This causes it to copy the namespace information and most recent checkpoint from its HA pair, and save it to local storage, allowing an HA setup to be bootstrapped without use of rsync or external tools.


---

* [HDFS-2303](https://issues.apache.org/jira/browse/HDFS-2303) | *Major* | **Unbundle jsvc**

To run secure Datanodes users must install jsvc for their platform and set JSVC\_HOME to point to the location of jsvc in their environment.


---

* [HDFS-395](https://issues.apache.org/jira/browse/HDFS-395) | *Major* | **DFS Scalability: Incremental block reports**

**WARNING: No release note provided for this incompatible change.**



