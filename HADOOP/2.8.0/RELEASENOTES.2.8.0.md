
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

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


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

* [HADOOP-11861](https://issues.apache.org/jira/browse/HADOOP-11861) | *Major* | **test-patch.sh rewrite addendum patch**

<!-- markdown -->
* --build-native=false should work now
* --branch option lets one specify a branch to test against on the command line
* On certain Jenkins machines, the artifact directory sometimes gets deleted from outside the test-patch script.  There is now some code to try to detect, alert, and quick exit if that happens.
* Various semi-critical output and bug fixes


---

* [HADOOP-11848](https://issues.apache.org/jira/browse/HADOOP-11848) | *Major* | **Incorrect arguments to sizeof in DomainSocket.c**

Small one-line bug fix


---

* [HADOOP-11843](https://issues.apache.org/jira/browse/HADOOP-11843) | *Major* | **Make setting up the build environment easier**

Includes a docker based solution for setting up a build environment with minimal effort.


---

* [HADOOP-11813](https://issues.apache.org/jira/browse/HADOOP-11813) | *Minor* | **releasedocmaker.py should use today's date instead of unreleased**

Use today instead of 'Unreleased' in releasedocmaker.py when --usetoday is given as an option.


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

* [HDFS-8866](https://issues.apache.org/jira/browse/HDFS-8866) | *Trivial* | **Typo in docs: Rumtime -\> Runtime**

HDFS-8866 Correct typo in WebHDFS.md


---

* [HDFS-8818](https://issues.apache.org/jira/browse/HDFS-8818) | *Major* | **Allow Balancer to run faster**

Add a new conf "dfs.balancer.max-size-to-move" so that Balancer.MAX\_SIZE\_TO\_MOVE becomes configurable.


---

* [HDFS-8157](https://issues.apache.org/jira/browse/HDFS-8157) | *Major* | **Writes to RAM DISK reserve locked memory for block files**

This change requires setting the dfs.datanode.max.locked.memory configuration key to use the HDFS Lazy Persist feature. Its value limits the combined off-heap memory for blocks in RAM via caching and lazy persist writes.


---

* [HDFS-7933](https://issues.apache.org/jira/browse/HDFS-7933) | *Major* | **fsck should also report decommissioning replicas.**

**WARNING: No release note provided for this incompatible change.**


---

* [HDFS-7645](https://issues.apache.org/jira/browse/HDFS-7645) | *Major* | **Rolling upgrade is restoring blocks from trash multiple times**

**WARNING: No release note provided for this incompatible change.**


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

* [MAPREDUCE-6427](https://issues.apache.org/jira/browse/MAPREDUCE-6427) | *Minor* | **Fix typo in JobHistoryEventHandler**

There is a typo in the event string "WORKFLOW\_ID" (as "WORKLFOW\_ID").  The branch-2 change will publish both event strings for compatibility with consumers, but the misspelled metric will be removed in trunk.


---

* [YARN-3823](https://issues.apache.org/jira/browse/YARN-3823) | *Minor* | **Fix mismatch in default values for yarn.scheduler.maximum-allocation-vcores property**

Default value for 'yarn.scheduler.maximum-allocation-vcores' changed from 32 to 4.


---

* [YARN-3684](https://issues.apache.org/jira/browse/YARN-3684) | *Major* | **Change ContainerExecutor's primary lifecycle methods to use a more extensible mechanism for passing information.**

Modifying key methods in ContainerExecutor to use context objects instead of an argument list. This is more extensible and less brittle.


---

* [YARN-3587](https://issues.apache.org/jira/browse/YARN-3587) | *Minor* | **Fix the javadoc of DelegationTokenSecretManager in projects of yarn, etc.**

Update DelegationTokenSecretManager Javadoc (milliseconds)


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

This incompatible change should be fixed on branch-2 because the API is broken in branch-2.


---

* [YARN-313](https://issues.apache.org/jira/browse/YARN-313) | *Critical* | **Add Admin API for supporting node resource configuration in command line**

Since this patch, we are providing CLI to support NM resource dynamically configuration that user can configure NM with new resource without bring NM down or decommissioned.
Two CLIs are provided to support update resources on individual node or a batch of nodes:
1. Update resource on single node: yarn rmadmin -updateNodeResource [NodeID] [MemSize] [vCores] 
2. Update resource on a batch of nodes: yarn rmadmin -refreshNodesResources, that reflect nodes' resource configuration defined in dynamic-resources.xml, the format of configuration is get optimized in YARN-4160.


---

* [YARN-41](https://issues.apache.org/jira/browse/YARN-41) | *Major* | **The RM should handle the graceful shutdown of the NM.**

The behavior of shutdown a NM could be different (if NM work preserving is not enabled): NM will unregister to RM immediately rather than waiting for timeout to be LOST. A new status of NodeStatus - SHUTDOWN is involved which could affect UI, CLI and ClusterMetrics for node's status.



