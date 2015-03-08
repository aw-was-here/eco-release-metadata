# Hadoop HADOOP 3.0.0 Release Notes

These release notes cover  new developer and user-facing incompatibilities, features, and major improvements.

## Changes since Hadoop 2.7.0

---

* [HADOOP-11657](https://issues.apache.org/jira/browse/HADOOP-11657) | Minor | Align the output of `hadoop fs -du` to be more Unix-like

The output of du has now been made more Unix-like, with aligned output.

---

* [HADOOP-11625](https://issues.apache.org/jira/browse/HADOOP-11625) | Major | Minor fixes to command manual & SLA doc

Just some minor printography fixes.

---

* [HADOOP-11554](https://issues.apache.org/jira/browse/HADOOP-11554) | Major | Expose HadoopKerberosName as a hadoop subcommand

The hadoop kerbname subcommand has been added to ease operational pain in determining the output of auth\_to\_local rules.

---

* [HADOOP-11460](https://issues.apache.org/jira/browse/HADOOP-11460) | Major | Deprecate shell vars

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

* [HADOOP-11356](https://issues.apache.org/jira/browse/HADOOP-11356) | Major | Removed deprecated o.a.h.fs.permission.AccessControlException

No release note provided for this incompatible change.

---

* [HADOOP-11353](https://issues.apache.org/jira/browse/HADOOP-11353) | Major | Add support for .hadooprc

.hadooprc allows users a convenient way to set and/or override the shell level settings.

---

* [HADOOP-11041](https://issues.apache.org/jira/browse/HADOOP-11041) | Minor | VersionInfo output specifies subversion

This changes the output of the 'hadoop version' command to generically say 'Source code repository' rather than specify which type of repo.

---

* [HADOOP-10950](https://issues.apache.org/jira/browse/HADOOP-10950) | Major | rework  heap management  vars

* HADOOP\_HEAPSIZE variable has been deprecated  (It will still be honored if set, but expect it to go away in the future).    In its place, HADOOP\_HEAPSIZE\_MAX and HADOOP\_HEAPSIZE\_MIN have been introduced to set Xmx and Xms, respectively. 

* The internal variable JAVA\_HEAP\_MAX has been removed.

* Default heap sizes have been removed. This will allow for the JVM to use auto-tuning based upon the memory size of the host. To re-enable the old default, configure HADOOP\_HEAPSIZE\_MAX="1g" in hadoop-env.sh. 

* All global and daemon-specific heap size variables now support units.  If the variable is only a number, the size is assumed to be in megabytes.

---

* [HADOOP-10474](https://issues.apache.org/jira/browse/HADOOP-10474) | Major | Move o.a.h.record to hadoop-streaming

No release note provided for this incompatible change.

---

* [HADOOP-9902](https://issues.apache.org/jira/browse/HADOOP-9902) | Major | Shell script rewrite

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

* [HADOOP-9265](https://issues.apache.org/jira/browse/HADOOP-9265) | Major | S3 blockstore filesystem breaks part of the Filesystem contract

fixed in HADOOP-9258

---

* [HADOOP-9261](https://issues.apache.org/jira/browse/HADOOP-9261) | Major | S3n filesystem can move a directory under itself -and so lose data

fixed in HADOOP-9258

---

* [HADOOP-8934](https://issues.apache.org/jira/browse/HADOOP-8934) | Minor | Shell command ls should include sort options

Options to sort output of fs -ls comment: -t (mtime), -S (size), -u (atime), -r (reverse)

---

* [HADOOP-8776](https://issues.apache.org/jira/browse/HADOOP-8776) | Minor | Provide an option in test-patch that can enable / disable compiling native code

test-patch.sh adds a new option "--build-native". When set to false native
components are not built. When set to true native components are built. The
default value is true.

---

* [HADOOP-8124](https://issues.apache.org/jira/browse/HADOOP-8124) | Major | Remove the deprecated Syncable.sync() method

Remove the deprecated FSDataOutputStream constructor, FSDataOutputStream.sync() and Syncable.sync().

---

* [HADOOP-7713](https://issues.apache.org/jira/browse/HADOOP-7713) | Trivial | dfs -count -q should label output column

Added -v option to fs -count command to display a header record in the report.

---

* [HADOOP-7704](https://issues.apache.org/jira/browse/HADOOP-7704) | Minor | JsonFactory can be created only once and used for every next request to create JsonGenerator inside JMXJsonServlet

Reduce number of object created by JMXJsonServlet. (Devaraj K via Eric Yang)

---

* [HADOOP-7659](https://issues.apache.org/jira/browse/HADOOP-7659) | Minor | fs -getmerge isn't guaranteed to work well over non-HDFS filesystems

Documented that the "fs -getmerge" shell command may not work properly over non HDFS-filesystem implementations due to platform-varying file list ordering.

---

* [HADOOP-6857](https://issues.apache.org/jira/browse/HADOOP-6857) | Major | FsShell should report raw disk usage including replication factor

The output format of hadoop fs -du has been changed. It shows not only the file size but also the raw disk usage including the replication factor.



