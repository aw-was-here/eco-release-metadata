
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
# Apache Hadoop  3.0.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HADOOP-12495](https://issues.apache.org/jira/browse/HADOOP-12495) | *Major* | **Fix posix\_spawn error on OS X**

When Hadoop JVMs create other processes on OS X, it will always use posix\_spawn.


---

* [HADOOP-12493](https://issues.apache.org/jira/browse/HADOOP-12493) | *Major* | **bash unit tests are failing**

In the extremely rare event that HADOOP\_USER\_IDENT and USER environment variables are not defined, we now fall back to use 'hadoop' as the identification string.


---

* [HADOOP-12294](https://issues.apache.org/jira/browse/HADOOP-12294) | *Major* | **Throw an Exception when fs.permissions.umask-mode is misconfigured**

The support of the deprecated dfs.umask key is removed in Hadoop 3.0.


---

* [HADOOP-11781](https://issues.apache.org/jira/browse/HADOOP-11781) | *Major* | **fix race conditions and add URL support to smart-apply-patch.sh**

Now auto-downloads patch from issue-id; fixed race conditions; fixed bug affecting some patches.


---

* [HADOOP-11698](https://issues.apache.org/jira/browse/HADOOP-11698) | *Major* | **Remove DistCpV1 and Logalyzer**

Removed DistCpV1 and Logalyzer.


---

* [HADOOP-11657](https://issues.apache.org/jira/browse/HADOOP-11657) | *Minor* | **Align the output of `hadoop fs -du` to be more Unix-like**

The output of du has now been made more Unix-like, with aligned output.


---

* [HADOOP-11627](https://issues.apache.org/jira/browse/HADOOP-11627) | *Major* | **Remove io.native.lib.available**

io.native.lib.available was removed. Always use native libraries if they exist.


---

* [HADOOP-11554](https://issues.apache.org/jira/browse/HADOOP-11554) | *Major* | **Expose HadoopKerberosName as a hadoop subcommand**

The hadoop kerbname subcommand has been added to ease operational pain in determining the output of auth\_to\_local rules.


---

* [HADOOP-11553](https://issues.apache.org/jira/browse/HADOOP-11553) | *Blocker* | **Formalize the shell API**

Python is now required to build the documentation.


---

* [HADOOP-11460](https://issues.apache.org/jira/browse/HADOOP-11460) | *Major* | **Deprecate shell vars**

<!-- markdown -->
The following shell environment variables have been deprecated:

| Old | New |
|:---- |:---- |
| HADOOP\_HDFS\_LOG\_DIR| HADOOP\_LOG\_DIR|
| HADOOP\_HDFS\_LOGFILE| HADOOP\_LOGFILE|
| HADOOP\_HDFS\_NICENESS| HADOOP\_NICENESS|
| HADOOP\_HDFS\_STOP\_TIMEOUT| HADOOP\_STOP\_TIMEOUT |
| HADOOP\_HDFS\_PID\_DIR| HADOOP\_PID\_DIR|
| HADOOP\_HDFS\_ROOT\_LOGGER| HADOOP\_ROOT\_LOGGER|
| HADOOP\_HDFS\_IDENT\_STRING| HADOOP\_IDENT\_STRING|
| HADOOP\_MAPRED\_LOG\_DIR| HADOOP\_LOG\_DIR|
| HADOOP\_MAPRED\_LOGFILE| HADOOP\_LOGFILE|
| HADOOP\_MAPRED\_NICENESS| HADOOP\_NICENESS|
| HADOOP\_MAPRED\_STOP\_TIMEOUT| HADOOP\_STOP\_TIMEOUT|
| HADOOP\_MAPRED\_PID\_DIR| HADOOP\_PID\_DIR|
| HADOOP\_MAPRED\_ROOT\_LOGGER| HADOOP\_ROOT\_LOGGER|
| HADOOP\_MAPRED\_IDENT\_STRING| HADOOP\_IDENT\_STRING|
| YARN\_CONF\_DIR| HADOOP\_CONF\_DIR|
| YARN\_LOG\_DIR| HADOOP\_LOG\_DIR|
| YARN\_LOGFILE| HADOOP\_LOGFILE|
| YARN\_NICENESS| HADOOP\_NICENESS|
| YARN\_STOP\_TIMEOUT| HADOOP\_STOP\_TIMEOUT|
| YARN\_PID\_DIR| HADOOP\_PID\_DIR|
| YARN\_ROOT\_LOGGER| HADOOP\_ROOT\_LOGGER|
| YARN\_IDENT\_STRING| HADOOP\_IDENT\_STRING|
| YARN\_OPTS| HADOOP\_OPTS|
| YARN\_SLAVES| HADOOP\_SLAVES|
| YARN\_USER\_CLASSPATH| HADOOP\_USER\_CLASSPATH|
| YARN\_USER\_CLASSPATH\_FIRST| HADOOP\_USER\_CLASSPATH\_FIRST|
| KMS\_CONFIG |HADOOP\_CONF\_DIR|
| KMS\_LOG |HADOOP\_LOG\_DIR |


---

* [HADOOP-11356](https://issues.apache.org/jira/browse/HADOOP-11356) | *Major* | **Removed deprecated o.a.h.fs.permission.AccessControlException**

**WARNING: No release note provided for this incompatible change.**


---

* [HADOOP-11353](https://issues.apache.org/jira/browse/HADOOP-11353) | *Major* | **Add support for .hadooprc**

.hadooprc allows users a convenient way to set and/or override the shell level settings.


---

* [HADOOP-11041](https://issues.apache.org/jira/browse/HADOOP-11041) | *Minor* | **VersionInfo output specifies subversion**

This changes the output of the 'hadoop version' command to generically say 'Source code repository' rather than specify which type of repo.


---

* [HADOOP-10950](https://issues.apache.org/jira/browse/HADOOP-10950) | *Major* | **rework  heap management  vars**

<!-- markdown -->
* HADOOP\_HEAPSIZE variable has been deprecated  (It will still be honored if set, but expect it to go away in the future).    In its place, HADOOP\_HEAPSIZE\_MAX and HADOOP\_HEAPSIZE\_MIN have been introduced to set Xmx and Xms, respectively. 

* The internal variable JAVA\_HEAP\_MAX has been removed.

* Default heap sizes have been removed. This will allow for the JVM to use auto-tuning based upon the memory size of the host. To re-enable the old default, configure HADOOP\_HEAPSIZE\_MAX="1g" in hadoop-env.sh. 

* All global and daemon-specific heap size variables now support units.  If the variable is only a number, the size is assumed to be in megabytes.


---

* [HADOOP-10787](https://issues.apache.org/jira/browse/HADOOP-10787) | *Blocker* | **Rename/remove non-HADOOP\_\*, etc from the shell scripts**

<!-- markdown -->
The following shell environment variables have been deprecated:

| Old | New |
|:---- |:---- |
| DEFAULT\_LIBEXEC\_DIR | HADOOP\_DEFAULT\_LIBEXEC\_DIR |
| SLAVE\_NAMES | HADOOP\_SLAVE\_NAMES |
| TOOL\_PATH | HADOOP\_TOOLS\_PATH |

In addition:
* DEFAULT\_LIBEXEC\_DIR will NOT be automatically transitioned to HADOOP\_DEFAULT\_LIBEXEC\_DIR and will require changes to any scripts setting that value.  A warning will be printed to the screen if DEFAULT\_LIBEXEC\_DIR has been configured.
* HADOOP\_TOOLS\_PATH is now properly handled as a multi-valued, Java classpath-style variable.  Prior, multiple values assigned to TOOL\_PATH would not work a predictable manner.


---

* [HADOOP-10474](https://issues.apache.org/jira/browse/HADOOP-10474) | *Major* | **Move o.a.h.record to hadoop-streaming**

**WARNING: No release note provided for this incompatible change.**


---

* [HADOOP-10115](https://issues.apache.org/jira/browse/HADOOP-10115) | *Major* | **Exclude duplicate jars in hadoop package under different component's lib**

Jars in the various subproject lib directories are now de-duplicated against Hadoop common.  Users who interact directly with those directories must be sure to pull in common's dependencies as well.


---

* [HADOOP-9905](https://issues.apache.org/jira/browse/HADOOP-9905) | *Major* | **remove dependency of zookeeper for hadoop-client**

Zookeeper jar removed from hadoop-client dependency tree.


---

* [HADOOP-9902](https://issues.apache.org/jira/browse/HADOOP-9902) | *Major* | **Shell script rewrite**

<!-- markdown -->
The Hadoop shell scripts have been rewritten to fix many long standing bugs and include some new features.  While an eye has been kept towards compatibility, some changes may break existing installations.

INCOMPATIBLE CHANGES:

* The pid and out files for secure daemons have been renamed to include the appropriate ${HADOOP\_IDENT\_STR}.  This should allow, with proper configurations in place, for multiple versions of the same secure daemon to run on a host. Additionally, pid files are now created when daemons are run in interactive mode.  This will also prevent the accidental starting of two daemons with the same configuration prior to launching java (i.e., "fast fail" without having to wait for socket opening).
* All Hadoop shell script subsystems now execute hadoop-env.sh, which allows for all of the environment variables to be in one location.  This was not the case previously.
* The default content of *-env.sh has been significantly altered, with the majority of defaults moved into more protected areas inside the code. Additionally, these files do not auto-append anymore; setting a variable on the command line prior to calling a shell command must contain the entire content, not just any extra settings.  This brings Hadoop more in-line with the vast majority of other software packages.
* All HDFS\_*, YARN\_*, and MAPRED\_* environment variables act as overrides to their equivalent HADOOP\_* environment variables when 'hdfs', 'yarn', 'mapred', and related commands are executed. Previously, these were separated out which meant a significant amount of duplication of common settings.  
* hdfs-config.sh and hdfs-config.cmd were inadvertently duplicated into libexec and sbin.  The sbin versions have been removed.
* The log4j settings forcibly set by some *-daemon.sh commands have been removed.  These settings are now configurable in the *-env.sh files via *\_OPT. 
* Support for various undocumented YARN log4j.properties files has been removed.
* Support for ${HADOOP\_MASTER} and the related rsync code have been removed.
* The undocumented and unused yarn.id.str Java property has been removed.
* The unused yarn.policy.file Java property has been removed.
* We now require bash v3 (released July 27, 2004) or better in order to take advantage of better regex handling and ${BASH\_SOURCE}.  POSIX sh will not work.
* Support for --script has been removed. We now use ${HADOOP\_*\_PATH} or ${HADOOP\_PREFIX} to find the necessary binaries.  (See other note regarding ${HADOOP\_PREFIX} auto discovery.)
* Non-existent classpaths, ld.so library paths, JNI library paths, etc, will be ignored and stripped from their respective environment settings.

NEW FEATURES:

* Daemonization has been moved from *-daemon.sh to the bin commands via the --daemon option. Simply use --daemon start to start a daemon, --daemon stop to stop a daemon, and --daemon status to set $? to the daemon's status.  The return code for status is LSB-compatible.  For example, 'hdfs --daemon start namenode'.
* It is now possible to override some of the shell code capabilities to provide site specific functionality without replacing the shipped versions.  Replacement functions should go into the new hadoop-user-functions.sh file.
* A new option called --buildpaths will attempt to add developer build directories to the classpath to allow for in source tree testing.
* Operations which trigger ssh connections can now use pdsh if installed.  ${HADOOP\_SSH\_OPTS} still gets applied. 
* Added distch and jnipath subcommands to the hadoop command.
* Shell scripts now support a --debug option which will report basic information on the construction of various environment variables, java options, classpath, etc. to help in configuration debugging.

BUG FIXES:

* ${HADOOP\_CONF\_DIR} is now properly honored everywhere, without requiring symlinking and other such tricks.
* ${HADOOP\_CONF\_DIR}/hadoop-layout.sh is now documented with a provided hadoop-layout.sh.example file.
* Shell commands should now work properly when called as a relative path, without ${HADOOP\_PREFIX} being defined, and as the target of bash -x for debugging. If ${HADOOP\_PREFIX} is not set, it will be automatically determined based upon the current location of the shell library.  Note that other parts of the extended Hadoop ecosystem may still require this environment variable to be configured.
* Operations which trigger ssh will now limit the number of connections to run in parallel to ${HADOOP\_SSH\_PARALLEL} to prevent memory and network exhaustion.  By default, this is set to 10.
* ${HADOOP\_CLIENT\_OPTS} support has been added to a few more commands.
* Some subcommands were not listed in the usage.
* Various options on hadoop command lines were supported inconsistently.  These have been unified into hadoop-config.sh. --config is still required to be first, however.
* ulimit logging for secure daemons no longer assumes /bin/bash but does assume bash is on the command line path.
* Removed references to some Yahoo! specific paths.
* Removed unused slaves.sh from YARN build tree.
* Many exit states have been changed to reflect reality.
* Shell level errors now go to STDERR.  Before, many of them went incorrectly to STDOUT.
* CDPATH with a period (.) should no longer break the scripts.
* The scripts no longer try to chown directories.
* If ${JAVA\_HOME} is not set on OS X, it now properly detects it instead of throwing an error.

IMPROVEMENTS:

* The *.out files are now appended instead of overwritten to allow for external log rotation.
* The style and layout of the scripts is much more consistent across subprojects.  
* More of the shell code is now commented.
* Significant amounts of redundant code have been moved into a new file called hadoop-functions.sh.
* The various *-env.sh have been massively changed to include documentation and examples on what can be set, ramifications of setting, etc.  for all variables that are expected to be set by a user.  
* There is now some trivial de-duplication and sanitization of the classpath and JVM options.  This allows, amongst other things, for custom settings in *\_OPTS for Hadoop daemons to override defaults and other generic settings (i.e., ${HADOOP\_OPTS}).  This is particularly relevant for Xmx settings, as one can now set them in \_OPTS and ignore the heap specific options for daemons which force the size in megabytes.
* Subcommands have been alphabetized in both usage and in the code.
* All/most of the functionality provided by the sbin/* commands has been moved to either their bin/ equivalents or made into functions.  The rewritten versions of these commands are now wrappers to maintain backward compatibility.
* Usage information is given with the following options/subcommands for all scripts using the common framework: --? -? ? --help -help -h help 
* Several generic environment variables have been added to provide a common configuration for pids, logs, and their security equivalents.  The older versions still act as overrides to these generic versions.
* Groundwork has been laid to allow for custom secure daemon setup using something other than jsvc (e.g., pfexec on Solaris).
* Scripts now test and report better error messages for various states of the log and pid dirs on daemon startup.  Before, unprotected shell errors would be displayed to the user.


---

* [HADOOP-8776](https://issues.apache.org/jira/browse/HADOOP-8776) | *Minor* | **Provide an option in test-patch that can enable / disable compiling native code**

test-patch.sh adds a new option "--build-native". When set to false native
components are not built. When set to true native components are built. The
default value is true.


---

* [HADOOP-8124](https://issues.apache.org/jira/browse/HADOOP-8124) | *Major* | **Remove the deprecated Syncable.sync() method**

Remove the deprecated FSDataOutputStream constructor, FSDataOutputStream.sync() and Syncable.sync().


---

* [HADOOP-7659](https://issues.apache.org/jira/browse/HADOOP-7659) | *Minor* | **fs -getmerge isn't guaranteed to work well over non-HDFS filesystems**

Documented that the "fs -getmerge" shell command may not work properly over non HDFS-filesystem implementations due to platform-varying file list ordering.


---

* [HADOOP-6857](https://issues.apache.org/jira/browse/HADOOP-6857) | *Major* | **FsShell should report raw disk usage including replication factor**

The output format of hadoop fs -du has been changed. It shows not only the file size but also the raw disk usage including the replication factor.


---

* [HDFS-9525](https://issues.apache.org/jira/browse/HDFS-9525) | *Blocker* | **hadoop utilities need to support provided delegation tokens**

If hadoop.token.files property is defined and configured to one or more comma-delimited delegation token files, Hadoop will use those token files to connect to the services as named in the token.


---

* [HDFS-9278](https://issues.apache.org/jira/browse/HDFS-9278) | *Trivial* | **Fix preferredBlockSize typo in OIV XML output**

The preferred block size XML element has been corrected from "\\<perferredBlockSize\>" to "\\<preferredBlockSize\>".


---

* [HDFS-9085](https://issues.apache.org/jira/browse/HDFS-9085) | *Trivial* | **Show renewer information in DelegationTokenIdentifier#toString**

The output of the "hdfs fetchdt --print" command now includes the token renewer appended to the end of the existing token information.  This change may be incompatible with tools that parse the output of the command.


---

* [HDFS-9070](https://issues.apache.org/jira/browse/HDFS-9070) | *Major* | **Allow fsck display pending replica location information for being-written blocks**

The output of fsck command for being written hdfs files had been changed. When using fsck against being written hdfs files with {{-openforwrite}} and {{-files -blocks -locations}}, the fsck output will include the being written block for replication files or being written block group for erasure code files.


---

* [HDFS-9057](https://issues.apache.org/jira/browse/HDFS-9057) | *Major* | **allow/disallow snapshots via webhdfs**

Snapshots can be allowed/disallowed on a directory via WebHdfs from users with superuser privilege.


---

* [HDFS-8981](https://issues.apache.org/jira/browse/HDFS-8981) | *Minor* | **Adding revision to data node jmx getVersion() method**

getSoftwareVersion method would replace original getVersion method, which returns the version string.

The new getVersion method would return both version string and revision string.


---

* [HDFS-8895](https://issues.apache.org/jira/browse/HDFS-8895) | *Major* | **Remove deprecated BlockStorageLocation APIs**

This removes the deprecated DistributedFileSystem#getFileBlockStorageLocations API used for getting VolumeIds of block replicas. Applications interested in the volume of a replica can instead consult BlockLocation#getStorageIds to obtain equivalent information.


---

* [HDFS-8591](https://issues.apache.org/jira/browse/HDFS-8591) | *Minor* | **Remove support for deprecated configuration key dfs.namenode.decommission.nodes.per.interval**

**WARNING: No release note provided for this incompatible change.**


---

* [HDFS-8349](https://issues.apache.org/jira/browse/HDFS-8349) | *Minor* | **Remove .xml and documentation references to dfs.webhdfs.enabled**

**WARNING: No release note provided for this incompatible change.**


---

* [HDFS-8332](https://issues.apache.org/jira/browse/HDFS-8332) | *Major* | **DFS client API calls should check filesystem closed**

Users may need special attention for this change while upgrading to this version. Previously user could call some APIs(example: setReplication) wrongly even after closing the fs object. With this change DFS client will not allow any operations to call on closed fs objects.  As calling fs operations on closed fs is not right thing to do, users need to correct the usage if any.


---

* [HDFS-8241](https://issues.apache.org/jira/browse/HDFS-8241) | *Minor* | **Remove unused NameNode startup option -finalize**

Remove -finalize option from hdfs namenode command.


---

* [HDFS-8135](https://issues.apache.org/jira/browse/HDFS-8135) | *Major* | **Remove the deprecated FSConstants class**

The FSConstants class has been deprecated since 0.23 and it is removed in the release.


---

* [HDFS-7985](https://issues.apache.org/jira/browse/HDFS-7985) | *Major* | **WebHDFS should be always enabled**

WebHDFS is mandatory and cannot be disabled.


---

* [HDFS-7645](https://issues.apache.org/jira/browse/HDFS-7645) | *Major* | **Rolling upgrade is restoring blocks from trash multiple times**

**WARNING: No release note provided for this incompatible change.**


---

* [HDFS-7460](https://issues.apache.org/jira/browse/HDFS-7460) | *Major* | **Rewrite httpfs to use new shell framework**

<!-- markdown -->
This deprecates the following environment variables:

| Old | New |
|:---- |:---- |
| HTTPFS\_LOG | HADOOP\_LOG\_DIR|
| HTTPFS\_CONFG | HADOOP\_CONF\_DIR |


---

* [HDFS-7302](https://issues.apache.org/jira/browse/HDFS-7302) | *Major* | **namenode -rollingUpgrade downgrade may finalize a rolling upgrade**

Remove "downgrade" from "namenode -rollingUpgrade" startup option since it may incorrectly finalize an ongoing rolling upgrade.


---

* [HDFS-7281](https://issues.apache.org/jira/browse/HDFS-7281) | *Major* | **Missing block is marked as corrupted block**

The patch improves the reporting around missing blocks and corrupted blocks.
 
1. A block is missing if and only if all DNs of its expected replicas are dead. 
2. A block is corrupted if and only if all its available replicas are corrupted. So if a block has 3 replicas; one of the DN is dead, the other two replicas are corrupted; it will be marked as corrupted.
3. A new line is added to fsck output to display the corrupt block size per file.
4. A new line is added to fsck output to display the number of missing blocks in the summary section.


---

* [HDFS-6353](https://issues.apache.org/jira/browse/HDFS-6353) | *Major* | **Check and make checkpoint before stopping the NameNode**

Stopping the namenode on secure systems now requires the user be authenticated.


---

* [HDFS-6246](https://issues.apache.org/jira/browse/HDFS-6246) | *Minor* | **Remove 'dfs.support.append' flag from trunk code**

Appends in HDFS can no longer be disabled.


---

* [HDFS-5570](https://issues.apache.org/jira/browse/HDFS-5570) | *Major* | **Deprecate hftp / hsftp and replace them with webhdfs / swebhdfs**

Support for hftp and hsftp has been removed.  They have superseded by webhdfs  and swebhdfs.


---

* [HDFS-5165](https://issues.apache.org/jira/browse/HDFS-5165) | *Minor* | **Remove the TotalFiles metrics**

Now TotalFiles metric is removed from FSNameSystem. Use FilesTotal instead.


---

* [HDFS-5079](https://issues.apache.org/jira/browse/HDFS-5079) | *Major* | **Cleaning up NNHAStatusHeartbeat.State DatanodeProtocolProtos.**

**WARNING: No release note provided for this incompatible change.**


---

* [HDFS-5033](https://issues.apache.org/jira/browse/HDFS-5033) | *Minor* | **Bad error message for fs -put/copyFromLocal if user doesn't have permissions to read the source**

"Permission denied" error message when unable to read local file for -put/copyFromLocal


---

* [HDFS-3034](https://issues.apache.org/jira/browse/HDFS-3034) | *Major* | **Remove the deprecated Syncable.sync() method**

Remove the deprecated DFSOutputStream.sync() method.


---

* [HDFS-2538](https://issues.apache.org/jira/browse/HDFS-2538) | *Minor* | **option to disable fsck dots**

fsck does not print out dots for progress reporting by default. To print out dots, you should specify '-showprogress' option.


---

* [HDFS-46](https://issues.apache.org/jira/browse/HDFS-46) | *Major* | **The namespace quota of root directory should not be Integer.MAX\_VALUE**

Change default namespace quota of root directory from Integer.MAX\_VALUE to Long.MAX\_VALUE.


---

* [MAPREDUCE-6336](https://issues.apache.org/jira/browse/MAPREDUCE-6336) | *Major* | **Enable v2 FileOutputCommitter by default**

mapreduce.fileoutputcommitter.algorithm.version now defaults to 2.
  
In algorithm version 1:

  1. commitTask renames directory
  $joboutput/\_temporary/$appAttemptID/\_temporary/$taskAttemptID/
  to
  $joboutput/\_temporary/$appAttemptID/$taskID/

  2. recoverTask renames
  $joboutput/\_temporary/$appAttemptID/$taskID/
  to
  $joboutput/\_temporary/($appAttemptID + 1)/$taskID/

  3. commitJob merges every task output file in
  $joboutput/\_temporary/$appAttemptID/$taskID/
  to
  $joboutput/, then it will delete $joboutput/\_temporary/
  and write $joboutput/\_SUCCESS

commitJob's run time, number of RPC, is O(n) in terms of output files, which is discussed in MAPREDUCE-4815, and can take minutes. 

Algorithm version 2 changes the behavior of commitTask, recoverTask, and commitJob.

  1. commitTask renames all files in
  $joboutput/\_temporary/$appAttemptID/\_temporary/$taskAttemptID/
  to $joboutput/

  2. recoverTask is a nop strictly speaking, but for
  upgrade from version 1 to version 2 case, it checks if there
  are any files in
  $joboutput/\_temporary/($appAttemptID - 1)/$taskID/
  and renames them to $joboutput/

  3. commitJob deletes $joboutput/\_temporary and writes
  $joboutput/\_SUCCESS

Algorithm 2 takes advantage of task parallelism and makes commitJob itself O(1). However, the window of vulnerability for having incomplete output in $jobOutput directory is much larger. Therefore, pipeline logic for consuming job outputs should be built on checking for existence of \_SUCCESS marker.


---

* [MAPREDUCE-6234](https://issues.apache.org/jira/browse/MAPREDUCE-6234) | *Major* | **TestHighRamJob fails due to the change in MAPREDUCE-5785**

**WARNING: No release note provided for this incompatible change.**


---

* [MAPREDUCE-6223](https://issues.apache.org/jira/browse/MAPREDUCE-6223) | *Major* | **TestJobConf#testNegativeValueForTaskVmem failures**

**WARNING: No release note provided for this incompatible change.**


---

* [MAPREDUCE-5972](https://issues.apache.org/jira/browse/MAPREDUCE-5972) | *Trivial* | **Fix typo 'programatically' in job.xml (and a few other places)**

Fix a typo. If a configuration is set through program, the source of the configuration is set to 'programmatically' instead of 'programatically' now.


---

* [MAPREDUCE-5785](https://issues.apache.org/jira/browse/MAPREDUCE-5785) | *Major* | **Derive heap size or mapreduce.\*.memory.mb automatically**

The memory values for mapreduce.map/reduce.memory.mb keys, if left to their default values of -1, will now be automatically inferred from the heap size value system property (-Xmx) specified for mapreduce.map/reduce.java.opts keys.

The converse is also done, i.e. if mapreduce.map/reduce.memory.mb values are specified, but no -Xmx is supplied for mapreduce.map/reduce.java.opts keys, then the -Xmx value will be derived from the former's value.

If neither is specified, then a default value of 1024 MB gets used.

For both these conversions, a scaling factor specified by property mapreduce.job.heap.memory-mb.ratio is used, to account for overheads between heap usage vs. actual physical memory usage.

Existing configs or job code that already specify both the set of properties explicitly would not be affected by this inferring change.


---

* [MAPREDUCE-5653](https://issues.apache.org/jira/browse/MAPREDUCE-5653) | *Major* | **DistCp does not honour config-overrides for mapreduce.[map,reduce].memory.mb**

Prior to this change, distcp had hard-coded values for memory usage.  Now distcp will honor memory settings in a way compatible with the rest of MapReduce.


---

* [MAPREDUCE-4424](https://issues.apache.org/jira/browse/MAPREDUCE-4424) | *Minor* | **'mapred job -list' command should show the job name as well**

Now "mapred job -list" command displays the Job Name as well.


---

* [MAPREDUCE-2841](https://issues.apache.org/jira/browse/MAPREDUCE-2841) | *Major* | **Task level native optimization**

Adds a native implementation of the map output collector. The native library will build automatically with -Pnative. Users may choose the new collector on a job-by-job basis by setting mapreduce.job.map.output.collector.class=org.apache.hadoop.mapred.
nativetask.NativeMapOutputCollectorDelegator in their job configuration. For shuffle-intensive jobs this may provide speed-ups of 30% or more.


---

* [MAPREDUCE-2632](https://issues.apache.org/jira/browse/MAPREDUCE-2632) | *Major* | **Avoid calling the partitioner when the numReduceTasks is 1.**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-2428](https://issues.apache.org/jira/browse/YARN-2428) | *Trivial* | **LCE default banned user list should have yarn**

The user 'yarn' is no longer allowed to run tasks for security reasons.


---

* [YARN-2355](https://issues.apache.org/jira/browse/YARN-2355) | *Major* | **MAX\_APP\_ATTEMPTS\_ENV may no longer be a useful env var for a container**

Removed consumption of the MAX\_APP\_ATTEMPTS\_ENV environment variable



