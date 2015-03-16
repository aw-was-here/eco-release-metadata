# Hadoop HADOOP 2.0.0-alpha Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.

## Changes since Hadoop 1.2.0

---

* [HADOOP-8388](https://issues.apache.org/jira/browse/HADOOP-8388) | *Minor* | **Remove unused BlockLocation serialization**

**WARNING: No release note provided for this incompatible change.**

---

* [HADOOP-8314](https://issues.apache.org/jira/browse/HADOOP-8314) | *Major* | **HttpServer#hasAdminAccess should return false if authorization is enabled but user is not authenticated**

**WARNING: No release note provided for this incompatible change.**

---

* [HADOOP-8270](https://issues.apache.org/jira/browse/HADOOP-8270) | *Minor* | **hadoop-daemon.sh stop action should return 0 for an already stopped service**

The daemon stop action no longer returns failure when stopping an already stopped service.

---

* [HADOOP-8184](https://issues.apache.org/jira/browse/HADOOP-8184) | *Major* | **ProtoBuf RPC engine does not need it own reply packet - it can use the IPC layer reply packet.**

This change will affect the output of errors for some Hadoop CLI commands. Specifically, the name of the exception class will no longer appear, and instead only the text of the exception message will appear.

---

* [HADOOP-8164](https://issues.apache.org/jira/browse/HADOOP-8164) | *Major* | **Handle paths using back slash as path separator for windows only**

This jira only allows providing paths using back slash as separator on Windows. The back slash on *nix system will be used as escape character. The support for paths using back slash as path separator will be removed in HADOOP-8139 in release 23.3.

---

* [HADOOP-8154](https://issues.apache.org/jira/browse/HADOOP-8154) | *Major* | **DNS#getIPs shouldn't silently return the local host IP for bogus interface names**

**WARNING: No release note provided for this incompatible change.**

---

* [HADOOP-8149](https://issues.apache.org/jira/browse/HADOOP-8149) | *Major* | **cap space usage of default log4j rolling policy**

Hadoop log files are now rolled by size instead of date (daily) by default. Tools that depend on the log file name format will need to be updated. Users who would like to maintain the previous settings of hadoop.root.logger and hadoop.security.logger can use their current log4j.properties files and update the HADOOP\_ROOT\_LOGGER and HADOOP\_SECURITY\_LOGGER environment variables to use DRFA and DRFAS respectively.

---

* [HADOOP-7524](https://issues.apache.org/jira/browse/HADOOP-7524) | *Major* | **Change RPC to allow multiple protocols including multiple versions of the same protocol**

**WARNING: No release note provided for this incompatible change.**

---

* [HADOOP-7347](https://issues.apache.org/jira/browse/HADOOP-7347) | *Major* | **IPC Wire Compatibility**

**WARNING: No release note provided for this incompatible change.**



