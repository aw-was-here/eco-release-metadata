
<!---
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
-->
# Apache Hadoop  2.8.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HADOOP-12805](https://issues.apache.org/jira/browse/HADOOP-12805) | *Major* | **Annotate CanUnbuffer with @InterfaceAudience.Public**

Made CanBuffer interface public for use in client applications.


---

* [HADOOP-12794](https://issues.apache.org/jira/browse/HADOOP-12794) | *Major* | **Support additional compression levels for GzipCodec**

Added New compression levels for GzipCodec that can be set in zlib.compress.level


---

* [HADOOP-12668](https://issues.apache.org/jira/browse/HADOOP-12668) | *Critical* | **Support excluding weak Ciphers in HttpServer2 through ssl-server.conf**

The Code Changes include following:
- Modified DFSUtil.java in Apache HDFS project for supplying new parameter ssl.server.exclude.cipher.list
- Modified HttpServer2.java in Apache Hadoop-common project to work with new parameter and exclude ciphers using jetty setExcludeCihers method.
- Modfied associated test classes to owrk with existing code and also cover the newfunctionality in junit


---

* [HADOOP-12657](https://issues.apache.org/jira/browse/HADOOP-12657) | *Minor* | **Add a option to skip newline on empty files with getMerge -nl**

Added -skip-empty-file option to hadoop fs -getmerge command. With the option, delimiter (LF) is not printed for empty files even if -nl option is used.


---

* [HADOOP-12651](https://issues.apache.org/jira/browse/HADOOP-12651) | *Major* | **Replace dev-support with wrappers to Yetus**

<!-- markdown -->

* Major portions of dev-support have been replaced with wrappers to Apache Yetus:
  * releasedocmaker.py is now dev-support/bin/releasedocmaker
  * shelldocs.py is now dev-support/bin/shelldocs
  * smart-apply-patch.sh is now dev-support/bin/smart-apply-patch
  * test-patch.sh is now dev-support/bin/test-patch
* See the dev-support/README.md file for more details on how to control the wrappers to various degrees.


---

* [HADOOP-12635](https://issues.apache.org/jira/browse/HADOOP-12635) | *Major* | **Adding Append API support for WASB**

The Azure Blob Storage file system (WASB) now includes optional support for use of the append API by a single writer on a path.  Please note that the implementation differs from the semantics of HDFS append.  HDFS append internally guarantees that only a single writer may append to a path at a given time.  WASB does not enforce this guarantee internally.  Instead, the application must enforce access by a single writer, such as by running single-threaded or relying on some external locking mechanism to coordinate concurrent processes.  Refer to the Azure Blob Storage documentation page for more details on enabling append in configuration.


---

* [HADOOP-12555](https://issues.apache.org/jira/browse/HADOOP-12555) | *Minor* | **WASB to read credentials from a credential provider**

The hadoop-azure file system now supports configuration of the Azure Storage account credentials using the standard Hadoop Credential Provider API.  For details, please refer to the documentation on hadoop-azure and the Credential Provider API.


---

* [HADOOP-12552](https://issues.apache.org/jira/browse/HADOOP-12552) | *Minor* | **Fix undeclared/unused dependency to httpclient**

Dependency on commons-httpclient::commons-httpclient was removed from hadoop-common. Downstream projects using commons-httpclient transitively provided by hadoop-common need to add explicit dependency to their pom. Since commons-httpclient is EOL, it is recommended to migrate to org.apache.httpcomponents:httpclient which is the successor.


---

* [HADOOP-12548](https://issues.apache.org/jira/browse/HADOOP-12548) | *Major* | **Read s3a creds from a Credential Provider**

The S3A Hadoop-compatible file system now support reading its S3 credentials from the Hadoop Credential Provider API in addition to XML configuration files.


---

* [HADOOP-12446](https://issues.apache.org/jira/browse/HADOOP-12446) | *Major* | **Undeprecate createNonRecursive()**

FileSystem#createNonRecursive() is undeprecated.


---

* [HADOOP-12437](https://issues.apache.org/jira/browse/HADOOP-12437) | *Major* | **Allow SecurityUtil to lookup alternate hostnames**

HADOOP-12437 introduces two new configuration settings: hadoop.security.dns.interface and hadoop.security.dns.nameserver. These settings can be used to control how Hadoop service instances look up their own hostname and may be required in some multi-homed environments where hosts are configured with multiple hostnames in DNS or hosts files. They supersede the existing settings dfs.datanode.dns.interface and dfs.datanode.dns.nameserver.


---

* [HADOOP-12426](https://issues.apache.org/jira/browse/HADOOP-12426) | *Minor* | **Add Entry point for Kerberos health check**

Hadoop now includes a shell command named KDiag that helps with diagnosis of Kerberos misconfiguration problems.  Please refer to the Secure Mode documentation for full details on usage of the command.


---

* [HADOOP-12416](https://issues.apache.org/jira/browse/HADOOP-12416) | *Major* | **Trash messages should be handled by Logger instead of being delivered on System.out**

Now trash message is not printed to System.out. It is handled by Logger instead.


---

* [HADOOP-12384](https://issues.apache.org/jira/browse/HADOOP-12384) | *Major* | **Add "-direct" flag option for fs copy so that user can choose not to create ".\_COPYING\_" file**

An option '-d' added for all command-line copy commands to skip intermediate '.COPYING' file creation.


---

* [HADOOP-12360](https://issues.apache.org/jira/browse/HADOOP-12360) | *Minor* | **Create StatsD metrics2 sink**

Added StatsD metrics2 sink


---

* [HADOOP-12352](https://issues.apache.org/jira/browse/HADOOP-12352) | *Trivial* | **Delay in checkpointing Trash can leave trash for 2 intervals before deleting**

Fixes an Trash related issue wherein a delay in the periodic checkpointing of one user's directory causes the subsequent user directory checkpoints to carry a newer timestamp, thereby delaying their eventual deletion.


---

* [HADOOP-12313](https://issues.apache.org/jira/browse/HADOOP-12313) | *Critical* | **NPE in JvmPauseMonitor when calling stop() before start()**

Allow stop() before start() completed in JvmPauseMonitor


---

* [HADOOP-12081](https://issues.apache.org/jira/browse/HADOOP-12081) | *Major* | **Fix UserGroupInformation.java to support 64-bit zLinux**

**WARNING: No release note provided for this change.**


---

* [HADOOP-11861](https://issues.apache.org/jira/browse/HADOOP-11861) | *Major* | **test-patch.sh rewrite addendum patch**

<!-- markdown -->
* --build-native=false should work now
* --branch option lets one specify a branch to test against on the command line
* On certain Jenkins machines, the artifact directory sometimes gets deleted from outside the test-patch script.  There is now some code to try to detect, alert, and quick exit if that happens.
* Various semi-critical output and bug fixes


---

* [HADOOP-11843](https://issues.apache.org/jira/browse/HADOOP-11843) | *Major* | **Make setting up the build environment easier**

Includes a docker based solution for setting up a build environment with minimal effort.


---

* [HADOOP-11813](https://issues.apache.org/jira/browse/HADOOP-11813) | *Minor* | **releasedocmaker.py should use today's date instead of unreleased**

Use today instead of 'Unreleased' in releasedocmaker.py when --usetoday is given as an option.


---

* [HADOOP-11792](https://issues.apache.org/jira/browse/HADOOP-11792) | *Major* | **Remove all of the CHANGES.txt files**

With the introduction of the markdown-formatted and automatically built changes file, the CHANGES.txt files have been eliminated.


---

* [HADOOP-11772](https://issues.apache.org/jira/browse/HADOOP-11772) | *Major* | **RPC Invoker relies on static ClientCache which has synchronized(this) blocks**

The Client#call() methods that are deprecated since 0.23 have been removed.


---

* [HADOOP-11746](https://issues.apache.org/jira/browse/HADOOP-11746) | *Major* | **rewrite test-patch.sh**

<!-- markdown -->
* test-patch.sh now has new output that is different than the previous versions
* test-patch.sh is now pluggable via the test-patch.d directory, with checkstyle and shellcheck tests included
* JIRA comments now use much more markup to improve readability
* test-patch.sh now supports either a file name, a URL, or a JIRA issue as input in developer mode
* If part of the patch testing code is changed, test-patch.sh will now attempt to re-executing itself using the new version.
* Some logic to try and reduce the amount of unnecessary tests.  For example, patches that only modify markdown should not run the Java compilation tests.
* Plugins for checkstyle, shellcheck, and whitespace now execute as necessary.
* New test code for mvn site
* A breakdown of the times needed to execute certain blocks as well as a total runtime is now reported to assist in fixing long running tests and optimize the entire process.
* Several new options
  * --resetrepo will put test-patch.sh in destructive mode, similar to a normal Jenkins run
  * --testlist allows one to provide a comma delimited list of test subsystems to forcibly execute
  * --modulelist to provide a comma delimited list of module tests to execute in addition to the ones that are automatically detected
  * --offline mode to attempt to stop connecting to the Internet for certain operations
* test-patch.sh now defaults to the POSIX equivalents on Solaris and Illumos-based operating systems
* shelldocs.py may be used to generate test-patch.sh API information
* FindBugs output is now listed on the JIRA comment
* lots of general code cleanup, including attempts to remove any local state files to reduce potential race conditions
* Some logic to determine if a patch is for a given major branch using several strategies as well as a particular git ref (using git+ref as part of the name).
* Some logic to determine if a patch references a particular JIRA issue.
* Unit tests are only flagged as necessary with native or Java code, since Hadoop has no framework in place yet for other types of unit tests.
* test-patch now exits with a failure status if problems arise trying to do git checkouts.  Previously the exit code was success.


---

* [HADOOP-11731](https://issues.apache.org/jira/browse/HADOOP-11731) | *Major* | **Rework the changelog and releasenotes**

<!-- markdown -->
* The release notes now only contains JIRA issues with incompatible changes and actual release notes.  The generated format has been changed from HTML to markdown.

* The changelog is now automatically generated from data stored in JIRA rather than manually maintained. The format has been changed from pure text to markdown as well as containing more of the information that was previously stored in the release notes.

* In order to generate the changes file, python must be installed.

* New -Preleasedocs profile added to maven in order to trigger this functionality.


---

* [HADOOP-11660](https://issues.apache.org/jira/browse/HADOOP-11660) | *Minor* | **Add support for hardware crc of HDFS checksums on ARM aarch64 architecture**

Add support for aarch64 CRC instructions


---

* [HADOOP-11226](https://issues.apache.org/jira/browse/HADOOP-11226) | *Major* | **Add a configuration to set ipc.Client's traffic class with IPTOS\_LOWDELAY\|IPTOS\_RELIABILITY**

Use low latency TCP connections for hadoop IPC


---

* [HADOOP-10597](https://issues.apache.org/jira/browse/HADOOP-10597) | *Major* | **RPC Server signals backoff to clients when all request queues are full**

This change introduces a new configuration key used by RPC server to decide whether to send backoff signal to RPC Client when RPC call queue is full. When the feature is enabled, RPC server will no longer block on the processing of RPC requests when RPC call queue is full. It helps to improve quality of service when the service is under heavy load. The configuration key is in the format of "ipc.#port#.backoff.enable" where #port# is the port number that RPC server listens on. For example, if you want to enable the feature for the RPC server that listens on 8020, set ipc.8020.backoff.enable to true.


---

* [HADOOP-9477](https://issues.apache.org/jira/browse/HADOOP-9477) | *Major* | **Add posixGroups support for LDAP groups mapping service**

Add posixGroups support for LDAP groups mapping service. The change in LDAPGroupMapping is compatible with previous scenario. In LDAP, the group mapping between {{posixAccount}} and {{posixGroup}} is different from the general LDAPGroupMapping, one of the differences is the {{"memberUid"}} will be used to mapping {{posixAccount}} and {{posixGroup}}. The feature will handle the mapping in internal when configuration {{hadoop.security.group.mapping.ldap.search.filter.user}} is set as "posixAccount" and {{hadoop.security.group.mapping.ldap.search.filter.group}} is "posixGroup".


---

* [HADOOP-8934](https://issues.apache.org/jira/browse/HADOOP-8934) | *Minor* | **Shell command ls should include sort options**

Options to sort output of fs -ls comment: -t (mtime), -S (size), -u (atime), -r (reverse)


---

* [HADOOP-7713](https://issues.apache.org/jira/browse/HADOOP-7713) | *Trivial* | **dfs -count -q should label output column**

Added -v option to fs -count command to display a header record in the report.


---

* [HADOOP-5732](https://issues.apache.org/jira/browse/HADOOP-5732) | *Minor* | **Add SFTP FileSystem**

Added SFTP filesystem by using the JSch library.


---

* [HDFS-9887](https://issues.apache.org/jira/browse/HDFS-9887) | *Major* | **WebHdfs socket timeouts should be configurable**

Added new configuration options: dfs.webhdfs.socket.connect-timeout and dfs.webhdfs.socket.read-timeout both defaulting to 60s.


---

* [HDFS-9711](https://issues.apache.org/jira/browse/HDFS-9711) | *Major* | **Integrate CSRF prevention filter in WebHDFS.**

WebHDFS now supports options to enforce cross-site request forgery (CSRF) prevention for HTTP requests to both the NameNode and the DataNode.  Please refer to the updated WebHDFS documentation for a description of this feature and further details on how to configure it.


---

* [HDFS-9503](https://issues.apache.org/jira/browse/HDFS-9503) | *Major* | **Replace -namenode option with -fs for NNThroughputBenchmark**

The patch replaces -namenode option with -fs for specifying the remote name node against which the benchmark is running. Before this patch, if '-namenode' was not given, the benchmark would run in standalone mode, ignoring the 'fs.defaultFS' in config file even if it's remote. With this patch, the benchmark, as other tools, will rely on the 'fs.defaultFS' config, which is overridable by -fs command option, to run standalone mode or remote mode.


---

* [HDFS-9425](https://issues.apache.org/jira/browse/HDFS-9425) | *Major* | **Expose number of blocks per volume as a metric**

Number of blocks per volume is made available as a metric.


---

* [HDFS-9311](https://issues.apache.org/jira/browse/HDFS-9311) | *Major* | **Support optional offload of NameNode HA service health checks to a separate RPC server.**

There is now support for offloading HA health check RPC activity to a separate RPC server endpoint running within the NameNode process.  This may improve reliability of HA health checks and prevent spurious failovers in highly overloaded conditions.  For more details, please refer to the hdfs-default.xml documentation for properties dfs.namenode.lifeline.rpc-address, dfs.namenode.lifeline.rpc-bind-host and dfs.namenode.lifeline.handler.count.


---

* [HDFS-9239](https://issues.apache.org/jira/browse/HDFS-9239) | *Major* | **DataNode Lifeline Protocol: an alternative protocol for reporting DataNode liveness**

This release adds a new feature called the DataNode Lifeline Protocol.  If configured, then DataNodes can report that they are still alive to the NameNode via a fallback protocol, separate from the existing heartbeat messages.  This can prevent the NameNode from incorrectly marking DataNodes as stale or dead in highly overloaded clusters where heartbeat processing is suffering delays.  For more information, please refer to the hdfs-default.xml documentation for several new configuration properties: dfs.namenode.lifeline.rpc-address, dfs.namenode.lifeline.rpc-bind-host, dfs.datanode.lifeline.interval.seconds, dfs.namenode.lifeline.handler.ratio and dfs.namenode.lifeline.handler.count.


---

* [HDFS-9184](https://issues.apache.org/jira/browse/HDFS-9184) | *Major* | **Logging HDFS operation's caller context into audit logs**

The feature needs to enabled by setting "hadoop.caller.context.enabled" to true. When the feature is used, additional fields are written into namenode audit log records.


---

* [HDFS-9047](https://issues.apache.org/jira/browse/HDFS-9047) | *Major* | **Retire libwebhdfs**

libwebhdfs has been retired in 2.8.0 due to the lack of maintenance.


---

* [HDFS-9013](https://issues.apache.org/jira/browse/HDFS-9013) | *Major* | **Deprecate NameNodeMXBean#getNNStarted in branch2 and remove from trunk**

NameNodeMXBean#getNNStarted()  metric is deprecated in branch-2 and removed from trunk.


---

* [HDFS-8929](https://issues.apache.org/jira/browse/HDFS-8929) | *Major* | **Add a metric to expose the timestamp of the last journal**

Exposed a metric 'LastJournalTimestamp' for JournalNode


---

* [HDFS-8900](https://issues.apache.org/jira/browse/HDFS-8900) | *Major* | **Compact XAttrs to optimize memory footprint.**

The config key "dfs.namenode.fs-limits.max-xattr-size" can no longer be set to a value of 0 (previously used to indicate unlimited) or a value greater than 32KB. This is a constraint on xattr size similar to many local filesystems.


---

* [HDFS-8890](https://issues.apache.org/jira/browse/HDFS-8890) | *Major* | **Allow admin to specify which blockpools the balancer should run on**

Adds a new blockpools flag to the balancer. This allows admins to specify which blockpools the balancer will run on.
Usage:
-blockpools \<comma-separated list of blockpool ids\>
The balancer will only run on blockpools included in this list.


---

* [HDFS-8831](https://issues.apache.org/jira/browse/HDFS-8831) | *Major* | **Trash Support for deletion in HDFS encryption zone**

Trash is now supported for deletion of files within encryption zone after HDFS-8831. The deleted encrypted files will remain encrypted and be moved to .Trash subdirectory under the root of the encryption zone prefixed by $USER/current with checkpoint and expunge working similar to existing Trash.


---

* [HDFS-8829](https://issues.apache.org/jira/browse/HDFS-8829) | *Major* | **Make SO\_RCVBUF and SO\_SNDBUF size configurable for DataTransferProtocol sockets and allow configuring auto-tuning**

HDFS-8829 introduces two new configuration settings: dfs.datanode.transfer.socket.send.buffer.size and dfs.datanode.transfer.socket.recv.buffer.size. These settings can be used to control the socket send buffer and receive buffer sizes respectively on the DataNode for client-DataNode and DataNode-DataNode connections. The default values of both settings are 128KB for backwards compatibility. For optimum performance it is recommended to set these values to zero to enable the OS networking stack to auto-tune buffer sizes.


---

* [HDFS-8818](https://issues.apache.org/jira/browse/HDFS-8818) | *Major* | **Allow Balancer to run faster**

Add a new conf "dfs.balancer.max-size-to-move" so that Balancer.MAX\_SIZE\_TO\_MOVE becomes configurable.


---

* [HDFS-8696](https://issues.apache.org/jira/browse/HDFS-8696) | *Major* | **Make the lower and higher watermark in the DN Netty server configurable**

Introduced two new configuration dfs.webhdfs.netty.low.watermark and dfs.webhdfs.netty.high.watermark to enable tuning the size of the buffers of the Netty server inside Datanodes.


---

* [HDFS-8582](https://issues.apache.org/jira/browse/HDFS-8582) | *Minor* | **Support getting a list of reconfigurable config properties and do not generate spurious reconfig warnings**

Add a new option "properties" to the "dfsadmin -reconfig" command to get a list of reconfigurable properties.


---

* [HDFS-8335](https://issues.apache.org/jira/browse/HDFS-8335) | *Major* | **FSNamesystem should construct FSPermissionChecker only if permission is enabled**

Only check permissions when permissions enabled in FSDirStatAndListingOp.getFileInfo() and getListingInt()


---

* [HDFS-8157](https://issues.apache.org/jira/browse/HDFS-8157) | *Major* | **Writes to RAM DISK reserve locked memory for block files**

This change requires setting the dfs.datanode.max.locked.memory configuration key to use the HDFS Lazy Persist feature. Its value limits the combined off-heap memory for blocks in RAM via caching and lazy persist writes.


---

* [HDFS-7933](https://issues.apache.org/jira/browse/HDFS-7933) | *Major* | **fsck should also report decommissioning replicas.**

**WARNING: No release note provided for this change.**


---

* [HDFS-7582](https://issues.apache.org/jira/browse/HDFS-7582) | *Major* | **Enforce maximum number of ACL entries separately per access and default.**

Limit on Maximum number of ACL entries(32) will be enforced separately on access and default ACLs. So in total, max. 64 ACL entries can be present in a ACL spec.


---

* [HDFS-7501](https://issues.apache.org/jira/browse/HDFS-7501) | *Major* | **TransactionsSinceLastCheckpoint can be negative on SBNs**

Fixed a bug where the StandbyNameNode's TransactionsSinceLastCheckpoint metric may slide into a negative number after every subsequent checkpoint.


---

* [HDFS-7116](https://issues.apache.org/jira/browse/HDFS-7116) | *Major* | **Add a command to get the balancer bandwidth**

Exposed command "-getBalancerBandwidth" in dfsadmin to get the bandwidth of balancer.


---

* [HDFS-6888](https://issues.apache.org/jira/browse/HDFS-6888) | *Major* | **Allow selectively audit logging ops**

Specific HDFS ops can be selectively excluded from audit logging via 'dfs.namenode.audit.log.debug.cmdlist' configuration.


---

* [HDFS-6666](https://issues.apache.org/jira/browse/HDFS-6666) | *Minor* | **Abort NameNode and DataNode startup if security is enabled but block access token is not enabled.**

NameNode and DataNode now abort during startup if attempting to run in secure mode, but block access tokens are not enabled by setting configuration property dfs.block.access.token.enable to true in hdfs-site.xml.  Previously, this case logged a warning, because this would be an insecure configuration.


---

* [HDFS-6564](https://issues.apache.org/jira/browse/HDFS-6564) | *Major* | **Use slf4j instead of common-logging in hdfs-client**

Users may need special attention for this change while upgrading to this version. Previously hdfs client was using commons-logging as the logging framework. With this change it will use slf4j framework. For more details about slf4j, please see: http://www.slf4j.org/manual.html. Also, org.apache.hadoop.hdfs.protocol.CachePoolInfo#LOG public static member variable has been removed as it is not used anywhere. Users need to correct their code if any one has a reference to this variable. One can retrieve the named logger via the logging framework of their choice directly like, org.slf4j.Logger LOG = org.slf4j.LoggerFactory.getLogger(org.apache.hadoop.hdfs.protocol.CachePoolInfo.class);


---

* [HDFS-6200](https://issues.apache.org/jira/browse/HDFS-6200) | *Major* | **Create a separate jar for hdfs-client**

Projects that access HDFS can depend on the hadoop-hdfs-client module instead of the hadoop-hdfs module to avoid pulling in unnecessary dependency.


---

* [MAPREDUCE-6622](https://issues.apache.org/jira/browse/MAPREDUCE-6622) | *Critical* | **Add capability to set JHS job cache to a task-based limit**

Two recommendations for the mapreduce.jobhistory.loadedtasks.cache.size property:
1) For every 100k of cache size, set the heap size of the Job History Server to 1.2GB.  For example, mapreduce.jobhistory.loadedtasks.cache.size=500000, heap size=6GB.
2) Make sure that the cache size is larger than the number of tasks required for the largest job run on the cluster.  It might be a good idea to set the value slightly higher (say, 20%) in order to allow for job size growth.


---

* [MAPREDUCE-6427](https://issues.apache.org/jira/browse/MAPREDUCE-6427) | *Minor* | **Fix typo in JobHistoryEventHandler**

There is a typo in the event string "WORKFLOW\_ID" (as "WORKLFOW\_ID").  The branch-2 change will publish both event strings for compatibility with consumers, but the misspelled metric will be removed in trunk.


---

* [MAPREDUCE-5485](https://issues.apache.org/jira/browse/MAPREDUCE-5485) | *Critical* | **Allow repeating job commit by extending OutputCommitter API**

Previously, the MR job will get failed if AM get restarted for some reason (like node failure, etc.) during its doing commit job no matter if AM attempts reach to the maximum attempts. 
In this improvement, we add a new API isCommitJobRepeatable() to OutputCommitter interface which to indicate if job's committer can do commitJob again if previous commit work is interrupted by NM/AM failures, etc. The instance of OutputCommitter, which support repeatable job commit (like FileOutputCommitter in algorithm 2), can allow AM to continue the commitJob() after AM restart as a new attempt.


---

* [YARN-4207](https://issues.apache.org/jira/browse/YARN-4207) | *Major* | **Add a non-judgemental YARN app completion status**

Adds the ENDED attribute to o.a.h.yarn.api.records.FinalApplicationStatus


---

* [YARN-3823](https://issues.apache.org/jira/browse/YARN-3823) | *Minor* | **Fix mismatch in default values for yarn.scheduler.maximum-allocation-vcores property**

Default value for 'yarn.scheduler.maximum-allocation-vcores' changed from 32 to 4.


---

* [YARN-3684](https://issues.apache.org/jira/browse/YARN-3684) | *Major* | **Change ContainerExecutor's primary lifecycle methods to use a more extensible mechanism for passing information.**

Modifying key methods in ContainerExecutor to use context objects instead of an argument list. This is more extensible and less brittle.


---

* [YARN-3623](https://issues.apache.org/jira/browse/YARN-3623) | *Major* | **We should have a config to indicate the Timeline Service version**

Add a new configuration "yarn.timeline-service.version" to indicate what is the current version of the running timeline service. For example, if "yarn.timeline-service.version" is 1.5, and "yarn.timeline-service.enabled" is true, it means the cluster will and should bring up the timeline service v.1.5. On the client side, if the client uses the same version of timeline service, it should succeed. If the client chooses to use a smaller version in spite of this, then depending on how robust the compatibility story is between versions, the results may vary.


---

* [YARN-3443](https://issues.apache.org/jira/browse/YARN-3443) | *Major* | **Create a 'ResourceHandler' subsystem to ease addition of support for new resource types on the NM**

The current cgroups implementation is closely tied to supporting CPU as a resource . This patch separates out CGroups implementation into a reusable class as well as provides a simple ResourceHandler subsystem that will enable us to add support for new resource types on the NM - e.g Network, Disk etc.


---

* [YARN-3366](https://issues.apache.org/jira/browse/YARN-3366) | *Major* | **Outbound network bandwidth : classify/shape traffic originating from YARN containers**

1) A TrafficController class that provides an implementation for traffic shaping using tc. 
2) A ResourceHandler implementation for OutboundBandwidth as a resource - isolation/enforcement using cgroups and tc.


---

* [YARN-3365](https://issues.apache.org/jira/browse/YARN-3365) | *Major* | **Add support for using the 'tc' tool via container-executor**

Adding support for using the 'tc' tool in batch mode via container-executor. This is a prerequisite for traffic-shaping functionality that is necessary to support outbound bandwidth as a resource in YARN.


---

* [YARN-3241](https://issues.apache.org/jira/browse/YARN-3241) | *Major* | **FairScheduler handles "invalid" queue names inconsistently**

FairScheduler does not allow queue names with leading or tailing spaces or empty sub-queue names anymore.


---

* [YARN-3069](https://issues.apache.org/jira/browse/YARN-3069) | *Major* | **Document missing properties in yarn-default.xml**

Documented missing properties and added the regression test to verify that there are no missing properties in yarn-default.xml.


---

* [YARN-3021](https://issues.apache.org/jira/browse/YARN-3021) | *Major* | **YARN's delegation-token handling disallows certain trust setups to operate properly over DistCp**

ResourceManager renews delegation tokens for applications. This behavior has been changed to renew tokens only if the token's renewer is a non-empty string. MapReduce jobs can instruct ResourceManager to skip renewal of tokens obtained from certain hosts by specifying the hosts with configuration mapreduce.job.hdfs-servers.token-renewal.exclude=\<host1\>,\<host2\>,..,\<hostN\>.


---

* [YARN-2336](https://issues.apache.org/jira/browse/YARN-2336) | *Major* | **Fair scheduler REST api returns a missing '[' bracket JSON for deep queue tree**

**WARNING: No release note provided for this change.**


---

* [YARN-313](https://issues.apache.org/jira/browse/YARN-313) | *Critical* | **Add Admin API for supporting node resource configuration in command line**

Since this patch, we are providing CLI to support NM resource dynamically configuration that user can configure NM with new resource without bring NM down or decommissioned.
Two CLIs are provided to support update resources on individual node or a batch of nodes:
1. Update resource on single node: yarn rmadmin -updateNodeResource [NodeID] [MemSize] [vCores] 
2. Update resource on a batch of nodes: yarn rmadmin -refreshNodesResources, that reflect nodes' resource configuration defined in dynamic-resources.xml, the format of configuration is get optimized in YARN-4160.


---

* [YARN-41](https://issues.apache.org/jira/browse/YARN-41) | *Major* | **The RM should handle the graceful shutdown of the NM.**

The behavior of shutdown a NM could be different (if NM work preserving is not enabled): NM will unregister to RM immediately rather than waiting for timeout to be LOST. A new status of NodeStatus - SHUTDOWN is involved which could affect UI, CLI and ClusterMetrics for node's status.



