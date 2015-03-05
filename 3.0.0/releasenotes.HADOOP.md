# Hadoop HADOOP 3.0.0 Release Notes

These release notes include new developer and user-facing incompatibilities, features, and major improvements.

## Changes since Hadoop 2.7.0

* [HADOOP-11657](https://issues.apache.org/jira/browse/HADOOP-11657) | Minor |   | Align the output of `hadoop fs -du` to be more Unix-like

The output of du has now been made more Unix-like, with aligned output.

* [HADOOP-11637](https://issues.apache.org/jira/browse/HADOOP-11637) | Major |  (scripts) | bash location hard-coded in shell scripts
* [HADOOP-11625](https://issues.apache.org/jira/browse/HADOOP-11625) | Major |  (documentation) | Minor fixes to command manual &amp; SLA doc

Just some minor printography fixes.

* [HADOOP-11596](https://issues.apache.org/jira/browse/HADOOP-11596) | Major |   | Allow smart-apply-patch.sh to add new files in binary git patches
* [HADOOP-11593](https://issues.apache.org/jira/browse/HADOOP-11593) | Major |  (documentation) | Convert site documentation from apt to markdown (stragglers)
* [HADOOP-11585](https://issues.apache.org/jira/browse/HADOOP-11585) | Trivial |  (documentation) | Fix formatting in Tracing.md
* [HADOOP-11583](https://issues.apache.org/jira/browse/HADOOP-11583) | Trivial |  (documentation) | Fix syntax error in SecureMode.md
* [HADOOP-11581](https://issues.apache.org/jira/browse/HADOOP-11581) | Major |   | Fix Multithreaded correctness Warnings #org.apache.hadoop.fs.shell.Ls
* [HADOOP-11580](https://issues.apache.org/jira/browse/HADOOP-11580) | Major |  (documentation) | Remove SingleNodeSetup.md from trunk
* [HADOOP-11575](https://issues.apache.org/jira/browse/HADOOP-11575) | Major |  (documentation) | Daemon log documentation is misleading
* [HADOOP-11565](https://issues.apache.org/jira/browse/HADOOP-11565) | Major |  (scripts) | Add --slaves shell option
* [HADOOP-11559](https://issues.apache.org/jira/browse/HADOOP-11559) | Minor |  (documentation) | Add links to RackAwareness and InterfaceClassification to site index
* [HADOOP-11554](https://issues.apache.org/jira/browse/HADOOP-11554) | Major |  (scripts) | Expose HadoopKerberosName as a hadoop subcommand

The hadoop kerbname subcommand has been added to ease operational pain in determining the output of auth\_to\_local rules.

* [HADOOP-11485](https://issues.apache.org/jira/browse/HADOOP-11485) | Major |  (scripts) | Pluggable shell integration
* [HADOOP-11484](https://issues.apache.org/jira/browse/HADOOP-11484) | Minor |  (native) | hadoop-mapreduce-client-nativetask fails to build on ARM AARCH64 due to x86 asm statements
* [HADOOP-11473](https://issues.apache.org/jira/browse/HADOOP-11473) | Major |  (build) | test-patch says "-1 overall" even when all checks are +1
* [HADOOP-11460](https://issues.apache.org/jira/browse/HADOOP-11460) | Major |  (scripts) | Deprecate shell vars

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

* [HADOOP-11437](https://issues.apache.org/jira/browse/HADOOP-11437) | Major |  (documentation) | Remove the version and author information from distcp's README file
* [HADOOP-11397](https://issues.apache.org/jira/browse/HADOOP-11397) | Trivial |   | Can't override HADOOP\_IDENT\_STRING
* [HADOOP-11380](https://issues.apache.org/jira/browse/HADOOP-11380) | Major |   | Restore Rack Awareness documentation
* [HADOOP-11356](https://issues.apache.org/jira/browse/HADOOP-11356) | Major |   | Removed deprecated o.a.h.fs.permission.AccessControlException
* [HADOOP-11353](https://issues.apache.org/jira/browse/HADOOP-11353) | Major |  (scripts) | Add support for .hadooprc

.hadooprc allows users a convenient way to set and/or override the shell level settings.

* [HADOOP-11352](https://issues.apache.org/jira/browse/HADOOP-11352) | Major |  (build) | Clean up test-patch.sh to disable "+1 contrib tests"
* [HADOOP-11346](https://issues.apache.org/jira/browse/HADOOP-11346) | Major |  (scripts , tools) | Rewrite sls/rumen to use new shell framework
* [HADOOP-11298](https://issues.apache.org/jira/browse/HADOOP-11298) | Trivial |  (scripts) | slaves.sh and stop-all.sh are missing slashes 
* [HADOOP-11296](https://issues.apache.org/jira/browse/HADOOP-11296) | Major |  (scripts) | hadoop-daemons.sh throws 'host1: bash: host3: command not found...'
* [HADOOP-11284](https://issues.apache.org/jira/browse/HADOOP-11284) | Minor |  (scripts) | Fix variable name mismatches in hadoop-functions.sh
* [HADOOP-11240](https://issues.apache.org/jira/browse/HADOOP-11240) | Blocker |   | Jenkins build seems to be broken by changes in test-patch.sh
* [HADOOP-11208](https://issues.apache.org/jira/browse/HADOOP-11208) | Major |   | Replace "daemon" with better name in script subcommands
* [HADOOP-11150](https://issues.apache.org/jira/browse/HADOOP-11150) | Minor |  (scripts) | hadoop command should show the reason on failure by invalid COMMAND or CLASSNAME
* [HADOOP-11092](https://issues.apache.org/jira/browse/HADOOP-11092) | Major |  (scripts) | hadoop shell commands should print usage if not given a class
* [HADOOP-11084](https://issues.apache.org/jira/browse/HADOOP-11084) | Major |  (scripts) | jenkins patchprocess links are broken
* [HADOOP-11081](https://issues.apache.org/jira/browse/HADOOP-11081) | Major |  (documentation , scripts) | Document hadoop properties expected to be set by the shell code in *-env.sh
* [HADOOP-11058](https://issues.apache.org/jira/browse/HADOOP-11058) | Major |  (scripts) | Missing HADOOP\_CONF\_DIR generates strange results
* [HADOOP-11055](https://issues.apache.org/jira/browse/HADOOP-11055) | Blocker |  (scripts) | non-daemon pid files are missing
* [HADOOP-11052](https://issues.apache.org/jira/browse/HADOOP-11052) | Critical |  (scripts) | hadoop\_verify\_secure\_prereq's results aren't checked in bin/hdfs
* [HADOOP-11041](https://issues.apache.org/jira/browse/HADOOP-11041) | Minor |  (build) | VersionInfo output specifies subversion

This changes the output of the 'hadoop version' command to generically say 'Source code repository' rather than specify which type of repo.

* [HADOOP-11033](https://issues.apache.org/jira/browse/HADOOP-11033) | Major |  (scripts) | shell scripts ignore JAVA\_HOME on OS X
* [HADOOP-11025](https://issues.apache.org/jira/browse/HADOOP-11025) | Major |  (scripts) | hadoop-daemons.sh should just call hdfs directly
* [HADOOP-11022](https://issues.apache.org/jira/browse/HADOOP-11022) | Critical |  (scripts) | User replaced functions get lost 2-3 levels deep (e.g., sbin)
* [HADOOP-11013](https://issues.apache.org/jira/browse/HADOOP-11013) | Major |   | CLASSPATH handling should be consolidated, debuggable
* [HADOOP-11002](https://issues.apache.org/jira/browse/HADOOP-11002) | Major |  (scripts) | shell escapes are incompatible with previous releases
* [HADOOP-10996](https://issues.apache.org/jira/browse/HADOOP-10996) | Major |  (scripts) | Stop violence in the *\_HOME
* [HADOOP-10950](https://issues.apache.org/jira/browse/HADOOP-10950) | Major |  (scripts) | rework  heap management  vars

* HADOOP\_HEAPSIZE variable has been deprecated  (It will still be honored if set, but expect it to go away in the future).    In its place, HADOOP\_HEAPSIZE\_MAX and HADOOP\_HEAPSIZE\_MIN have been introduced to set Xmx and Xms, respectively. 

* The internal variable JAVA\_HEAP\_MAX has been removed.

* Default heap sizes have been removed.  To re-enable the old default, configure HADOOP\_HEAPSIZE\_MAX="1g" in hadoop-env.sh. This will allow for the JVM to use auto-tuning based upon the memory size of the host. 

* All global and daemon-specific heap size variables now support units.  If the variable is only a number, the size is assumed to be in megabytes.

* [HADOOP-10926](https://issues.apache.org/jira/browse/HADOOP-10926) | Major |   | Improve smart-apply-patch.sh to apply binary diffs
* [HADOOP-10908](https://issues.apache.org/jira/browse/HADOOP-10908) | Major |  (documentation) | Common needs updates for shell rewrite
* [HADOOP-10834](https://issues.apache.org/jira/browse/HADOOP-10834) | Minor |  (security) | Typo in CredentialShell usage
* [HADOOP-10831](https://issues.apache.org/jira/browse/HADOOP-10831) | Major |  (security) | UserProvider is not thread safe
* [HADOOP-10774](https://issues.apache.org/jira/browse/HADOOP-10774) | Major |  (security) | Update KerberosTestUtils for hadoop-auth tests when using IBM Java
* [HADOOP-10485](https://issues.apache.org/jira/browse/HADOOP-10485) | Major |  (tools) | Remove dead classes in hadoop-streaming
* [HADOOP-10474](https://issues.apache.org/jira/browse/HADOOP-10474) | Major |   | Move o.a.h.record to hadoop-streaming
* [HADOOP-10325](https://issues.apache.org/jira/browse/HADOOP-10325) | Major |   | improve jenkins javadoc warnings from test-patch.sh
* [HADOOP-9902](https://issues.apache.org/jira/browse/HADOOP-9902) | Major |  (scripts) | Shell script rewrite

The Hadoop shell scripts have been rewritten to fix many long standing bugs and include some new features.  While an eye has been kept towards compatibility, some changes may break existing installations.

INCOMPATIBLE CHANGES:

* The pid and out files for secure daemons have been renamed to include the appropriate ${HADOOP\_IDENT\_STR}.  This should allow, with proper configurations in place, for multiple versions of the same secure daemon to run on a host. Additionally, pid files are now created when daemons are run in interactive mode.  This will also prevent the accidental starting of two daemons with the same configuration prior to launching java (i.e., "fast fail" without having to wait for socket opening).
* All Hadoop shell script subsystems now execute hadoop-env.sh, which allows for all of the environment variables to be in one location.  This was not the case previously.
* The default content of *-env.sh has been significantly altered, with the majority of defaults moved into more protected areas inside the code. Additionally, these files do not auto-append anymore; setting a variable on the command line prior to calling a shell command must contain the entire content, not just any extra settings.  This brings Hadoop more in-line with the vast majority of other software packages.
* All HDFS\_*, YARN\_*, and MAPRED\_* environment variables act as overrides to their equivalent HADOOP\_* environment variables when 'hdfs', 'yarn', 'mapred', and related commands are executed. Previously, these were separated out which meant a significant amount of duplication of common settings.  
* hdfs-config.sh and hdfs-config.cmd were inadvertently duplicated into libexec and sbin.  The sbin versions have been removed.
* The log4j settings forcibly set by some *-daemon.sh commands have been removed.  These settings are now configurable in the *-env.sh files via *\_OPT. 
* Some formerly 'documented' entries in yarn-env.sh have been undocumented as a simple form of deprecration in order to greatly simplify configuration and reduce unnecessary duplication.  They still work, but those variables will likely be removed in a future release.
* Support for various undocumented YARN log4j.properties files has been removed.
* Support for ${HADOOP\_MASTER} and the related rsync code have been removed.
* The undocumented and unused yarn.id.str Java property has been removed.
* The unused yarn.policy.file Java property has been removed.
* We now require bash v3 (released July 27, 2004) or better in order to take advantage of better regex handling and ${BASH\_SOURCE}.  POSIX sh will not work.
* Support for --script has been removed. We now use ${HADOOP\_*\_PATH} or ${HADOOP\_PREFIX} to find the necessary binaries.  (See other note regarding ${HADOOP\_PREFIX} auto discovery.)
* Non-existent classpaths, ld.so library paths, JNI library paths, etc, will be ignored and stripped from their respective environment settings.
* cygwin support has been removed.

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

* [HADOOP-9583](https://issues.apache.org/jira/browse/HADOOP-9583) | Critical |   | test-patch gives +1 despite build failure when running tests
* [HADOOP-9433](https://issues.apache.org/jira/browse/HADOOP-9433) | Major |  (fs , test) | TestLocalFileSystem#testHasFileDescriptor leaks file handle
* [HADOOP-9431](https://issues.apache.org/jira/browse/HADOOP-9431) | Trivial |  (security , test) | TestSecurityUtil#testLocalHostNameForNullOrWild on systems where hostname contains capital letters
* [HADOOP-9394](https://issues.apache.org/jira/browse/HADOOP-9394) | Minor |   | Port findHangingTest.sh from HBase to Hadoop
* [HADOOP-9393](https://issues.apache.org/jira/browse/HADOOP-9393) | Major |   | TestRPC fails with JDK7
* [HADOOP-9277](https://issues.apache.org/jira/browse/HADOOP-9277) | Minor |   | Improve javadoc for FileContext
* [HADOOP-9265](https://issues.apache.org/jira/browse/HADOOP-9265) | Major |  (fs/s3) | S3 blockstore filesystem breaks part of the Filesystem contract

fixed in HADOOP-9258

* [HADOOP-9261](https://issues.apache.org/jira/browse/HADOOP-9261) | Major |  (fs/s3) | S3n filesystem can move a directory under itself -and so lose data

fixed in HADOOP-9258

* [HADOOP-9249](https://issues.apache.org/jira/browse/HADOOP-9249) | Major |  (build) | hadoop-maven-plugins version-info goal causes build failure when running with Clover
* [HADOOP-9202](https://issues.apache.org/jira/browse/HADOOP-9202) | Major |  (build) | test-patch.sh fails during mvn eclipse:eclipse if patch adds a new module to the build
* [HADOOP-9186](https://issues.apache.org/jira/browse/HADOOP-9186) | Major |   | test-patch.sh should report build failure to JIRA
* [HADOOP-9139](https://issues.apache.org/jira/browse/HADOOP-9139) | Minor |   | improve script hadoop-common-project/hadoop-common/src/test/resources/kdc/killKdc.sh
* [HADOOP-9121](https://issues.apache.org/jira/browse/HADOOP-9121) | Trivial |  (fs) | InodeTree.java has redundant check for vName while throwing exception
* [HADOOP-9075](https://issues.apache.org/jira/browse/HADOOP-9075) | Minor |   | FileContext#FSLinkResolver should be made static
* [HADOOP-9044](https://issues.apache.org/jira/browse/HADOOP-9044) | Minor |  (util) | add FindClass main class to provide classpath checking of installations
* [HADOOP-9037](https://issues.apache.org/jira/browse/HADOOP-9037) | Critical |  (build) | Bug in test-patch.sh and precommit build process
* [HADOOP-8974](https://issues.apache.org/jira/browse/HADOOP-8974) | Major |  (fs) | TestDFVariations fails on Windows
* [HADOOP-8934](https://issues.apache.org/jira/browse/HADOOP-8934) | Minor |  (fs) | Shell command ls should include sort options

Options to sort output of fs -ls comment: -t (mtime), -S (size), -u (atime), -r (reverse)

* [HADOOP-8920](https://issues.apache.org/jira/browse/HADOOP-8920) | Minor |  (metrics) | Add more javadoc to metrics2 related classes
* [HADOOP-8918](https://issues.apache.org/jira/browse/HADOOP-8918) | Major |  (build) | dev-support/test-patch.sh is parsing modified files wrong
* [HADOOP-8910](https://issues.apache.org/jira/browse/HADOOP-8910) | Minor |  (fs) | Add examples to GlobExpander#expand method
* [HADOOP-8864](https://issues.apache.org/jira/browse/HADOOP-8864) | Trivial |   | Addendum to HADOOP-8840: Add a coloring case for +0 results too.
* [HADOOP-8844](https://issues.apache.org/jira/browse/HADOOP-8844) | Major |  (fs) | Add a plaintext fs -text test-case
* [HADOOP-8840](https://issues.apache.org/jira/browse/HADOOP-8840) | Major |  (build) | Fix the test-patch colorizer to cover all sorts of +1 lines.
* [HADOOP-8839](https://issues.apache.org/jira/browse/HADOOP-8839) | Trivial |  (build) | test-patch's -1 on @author tag presence doesn't cause a -1 to the overall result
* [HADOOP-8838](https://issues.apache.org/jira/browse/HADOOP-8838) | Trivial |  (build) | Colorize the test-patch output sent to JIRA
* [HADOOP-8821](https://issues.apache.org/jira/browse/HADOOP-8821) | Trivial |   | Findbugs warning Configuration.dumpDeprecatedKeys() concatenates strings using + in a loop
* [HADOOP-8818](https://issues.apache.org/jira/browse/HADOOP-8818) | Minor |  (fs , io) | Should use equals() rather than == to compare String or Text in MD5MD5CRC32FileChecksum and TFileDumper
* [HADOOP-8813](https://issues.apache.org/jira/browse/HADOOP-8813) | Trivial |  (ipc) | RPC Server and Client classes need InterfaceAudience and InterfaceStability annotations
* [HADOOP-8776](https://issues.apache.org/jira/browse/HADOOP-8776) | Minor |  (build) | Provide an option in test-patch that can enable / disable compiling native code

test-patch.sh adds a new option "--build-native". When set to false native
components are built. When set to true native components are built. The
default value is true.


* [HADOOP-8719](https://issues.apache.org/jira/browse/HADOOP-8719) | Trivial |   | Workaround for kerberos-related log errors upon running any hadoop command on OSX
* [HADOOP-8593](https://issues.apache.org/jira/browse/HADOOP-8593) | Minor |  (metrics) | add  the missed @Override to methods in Metric/Metric2 package
* [HADOOP-8588](https://issues.apache.org/jira/browse/HADOOP-8588) | Minor |  (io) | SerializationFactory shouldn't throw a NullPointerException if the serializations list is empty
* [HADOOP-8584](https://issues.apache.org/jira/browse/HADOOP-8584) | Major |   | test-patch.sh should not immediately exit when no tests are added or modified
* [HADOOP-8548](https://issues.apache.org/jira/browse/HADOOP-8548) | Major |  (build) | test-patch.sh shows an incorrect link in Jekins builds
* [HADOOP-8523](https://issues.apache.org/jira/browse/HADOOP-8523) | Minor |  (build) | test-patch.sh doesn't validate patches before building
* [HADOOP-8521](https://issues.apache.org/jira/browse/HADOOP-8521) | Major |   | Port StreamInputFormat to new Map Reduce API
* [HADOOP-8436](https://issues.apache.org/jira/browse/HADOOP-8436) | Major |  (fs) | NPE In getLocalPathForWrite ( path, conf ) when the required context item is not configured
* [HADOOP-8434](https://issues.apache.org/jira/browse/HADOOP-8434) | Major |   | TestConfiguration currently has no tests for direct setter methods
* [HADOOP-8413](https://issues.apache.org/jira/browse/HADOOP-8413) | Minor |   | test-patch.sh gives out the wrong links for newPatchFindbugsWarnings
* [HADOOP-8395](https://issues.apache.org/jira/browse/HADOOP-8395) | Trivial |  (util) | Text shell command unnecessarily demands that a SequenceFile's key class be WritableComparable
* [HADOOP-8375](https://issues.apache.org/jira/browse/HADOOP-8375) | Major |  (build) | test-patch should stop immediately once it has found compilation errors
* [HADOOP-8360](https://issues.apache.org/jira/browse/HADOOP-8360) | Minor |  (test) | empty-configuration.xml fails xml validation
* [HADOOP-8354](https://issues.apache.org/jira/browse/HADOOP-8354) | Major |  (build) | test-patch findbugs may fail if a dependent module is changed
* [HADOOP-8339](https://issues.apache.org/jira/browse/HADOOP-8339) | Major |  (build) | jenkins complaining about 16 javadoc warnings 
* [HADOOP-8312](https://issues.apache.org/jira/browse/HADOOP-8312) | Major |  (scripts) | testpatch.sh should provide a simpler way to see which warnings changed
* [HADOOP-8308](https://issues.apache.org/jira/browse/HADOOP-8308) | Major |  (build) | Support cross-project Jenkins builds
* [HADOOP-8297](https://issues.apache.org/jira/browse/HADOOP-8297) | Trivial |  (documentation) | Writable javadocs don't carry default constructor
* [HADOOP-8290](https://issues.apache.org/jira/browse/HADOOP-8290) | Trivial |  (test) | Remove two remaining references to "hadoop.native.lib" oldprop
* [HADOOP-8177](https://issues.apache.org/jira/browse/HADOOP-8177) | Minor |  (metrics) | MBeans shouldn't try to register when it fails to create MBeanName
* [HADOOP-8151](https://issues.apache.org/jira/browse/HADOOP-8151) | Major |  (io , native) | Error handling in snappy decompressor throws invalid exceptions
* [HADOOP-8147](https://issues.apache.org/jira/browse/HADOOP-8147) | Major |  (test) | test-patch should run tests with -fn to avoid masking test failures
* [HADOOP-8124](https://issues.apache.org/jira/browse/HADOOP-8124) | Major |  (fs) | Remove the deprecated Syncable.sync() method

Remove the deprecated FSDataOutputStream constructor, FSDataOutputStream.sync() and Syncable.sync().  

* [HADOOP-8078](https://issues.apache.org/jira/browse/HADOOP-8078) | Major |  (test) | Add capability to turn on security in unit tests.
* [HADOOP-8059](https://issues.apache.org/jira/browse/HADOOP-8059) | Major |  (documentation) | Add javadoc to InterfaceAudience and InterfaceStability
* [HADOOP-8017](https://issues.apache.org/jira/browse/HADOOP-8017) | Major |  (build) | Configure hadoop-main pom to get rid of M2E plugin execution not covered
* [HADOOP-7930](https://issues.apache.org/jira/browse/HADOOP-7930) | Major |  (security) | Kerberos relogin interval in UserGroupInformation should be configurable
* [HADOOP-7769](https://issues.apache.org/jira/browse/HADOOP-7769) | Major |   | TestJMXJsonServlet is failing
* [HADOOP-7757](https://issues.apache.org/jira/browse/HADOOP-7757) | Major |  (build) | Test file reference count is at least 3x actual value
* [HADOOP-7713](https://issues.apache.org/jira/browse/HADOOP-7713) | Trivial |   | dfs -count -q should label output column

Added -v option to fs -count command to display a header record in the report.

* [HADOOP-7704](https://issues.apache.org/jira/browse/HADOOP-7704) | Minor |   | JsonFactory can be created only once and used for every next request to create JsonGenerator inside JMXJsonServlet 

Reduce number of object created by JMXJsonServlet. (Devaraj K via Eric Yang)

* [HADOOP-7659](https://issues.apache.org/jira/browse/HADOOP-7659) | Minor |  (fs) | fs -getmerge isn't guaranteed to work well over non-HDFS filesystems

Documented that the "fs -getmerge" shell command may not work properly over non HDFS-filesystem implementations due to platform-varying file list ordering.

* [HADOOP-7256](https://issues.apache.org/jira/browse/HADOOP-7256) | Minor |   | Resource leak during failure scenario of closing of resources. 
* [HADOOP-6964](https://issues.apache.org/jira/browse/HADOOP-6964) | Major |  (conf) | Allow compact property description in xml
* [HADOOP-6871](https://issues.apache.org/jira/browse/HADOOP-6871) | Major |  (conf) | When the value of a configuration key is set to its unresolved form, it causes the IllegalStateException in Configuration.get() stating that substitution depth is too large.
* [HADOOP-6857](https://issues.apache.org/jira/browse/HADOOP-6857) | Major |  (fs) | FsShell should report raw disk usage including replication factor

The output format of hadoop fs -du has been changed. It shows not only the file size but also the raw disk usage including the replication factor.

* [HADOOP-6616](https://issues.apache.org/jira/browse/HADOOP-6616) | Major |  (documentation) | Improve documentation for rack awareness
* [HADOOP-6590](https://issues.apache.org/jira/browse/HADOOP-6590) | Minor |  (scripts) | Add a username check for hadoop sub-commands
* [HADOOP-6220](https://issues.apache.org/jira/browse/HADOOP-6220) | Minor |  (util) | HttpServer wraps InterruptedExceptions by IOExceptions if interrupted in startup


