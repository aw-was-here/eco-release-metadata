
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
# Apache Yetus  0.2.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [YETUS-62](https://issues.apache.org/jira/browse/YETUS-62) | *Major* | **add auto-formatting of usage options**

<!-- markdown -->
test-patch and smart-apply-patch now have variable size output to match the screen dimensions when printing the usage information.  As a result, the `plugin_usage` functions now use the `yetus_add_option` to add options to output. Plug-ins written to use raw echos will still work, but the output will be strange looking.


---

* [YETUS-241](https://issues.apache.org/jira/browse/YETUS-241) | *Major* | **revamp parameterized site**

Website layout was changed to better accommodate multiple versions.


---

* [YETUS-187](https://issues.apache.org/jira/browse/YETUS-187) | *Blocker* | **maven javac/javadoc can\'t use calcdiffs**

The calcdiff function has been changed to be pluggable to allow for a variety of difference calculators to allow for greater accuracy when more information is available.  As a result, this fixes some (but not all!) instances where pre-existing errors were reported as new in some reports.


---

* [YETUS-214](https://issues.apache.org/jira/browse/YETUS-214) | *Major* | **release doc maker should have option to specify output directory**

Allow specifying of output directory in releasedocmaker


---

* [YETUS-280](https://issues.apache.org/jira/browse/YETUS-280) | *Major* | **build systems should be able to predetermine module order**

<!-- markdown -->
Users:
* Maven will now attempt to do a better job of determining the order with which modules should be handled.

Developers:
* There is now a hook to allow build tools to re-order the module listing.


---

* [YETUS-173](https://issues.apache.org/jira/browse/YETUS-173) | *Major* | **report fixed issues**

There is now code in place to allow for plug-ins to report a much more nuanced report in the form of an equation.  This equation tells exactly how many new, unchanged, and fixed issues a patch causes/removes as well as the old and new totals for issues.  For patches where the totals are unchanged, the generic "passed" message is returned. Summarization is automatically as appropriate turned off as well. 

With this change, most plug-ins have been updated to report these numbers.


---

* [YETUS-70](https://issues.apache.org/jira/browse/YETUS-70) | *Major* | **add support for make, including cmake and autoconf**

<!-- markdown -->
User-facing:

* make, cmake, and autoconf are now supported build tools
* ctest is now a supported test format
* Dockerfile content has been slimmed down and enhanced to just what is needed to run Apache Yetus

Developer-facing:

* BUILDTOOLCWD has changed in an incompatible way: instead of true/false it nows takes several different types of values.  See documentation for more information
* `modules_workers` now supports @@@BASEDIR@@@@ and @@@MODULEDIR@@@ as replaceable parameters on the command line
* New `buildtool_changed_modules` function support to allow build tools to change the module list


---

* [YETUS-282](https://issues.apache.org/jira/browse/YETUS-282) | *Major* | **Allow the specification of a base JIRA URL**

Allow specification of the Base JIRA URL as a command line option


---

* [YETUS-229](https://issues.apache.org/jira/browse/YETUS-229) | *Major* | **split --jenkins up**

<!-- markdown -->
User-impacting:
* Docker 1.6.0 or higher is now required.
* --robot has been added to provide the same functionality as the older --jenkins flags, but without the assumptions of actually running underneath Jenkins.
* --jenkins is now effectively --robot + some specific handling in messages and instances when running under Jenkins.
* --sentinel has been added to provide cleaning of non-Yetus-based Docker containers and images.  It automatically enables --robot.
* --dockerdelrep has been added to only print what would be cleaned in --robot, --jenkins, and --sentinel.
* Options have been added to override the Jenkins-specific defaults for various settings:  
  * --build-url to provide the base URL of the robot's web server
  * --build-url-console to provide the relative URL to the console for this run
  * --build-url-patchdir to provide the relative URL to the patch directory
  * --instance to provide a string for parallelization differentiation
* --console-urls option has been added to print locations using the --build-url on the console instead of absolute file system locations.  This is useful when looking at the test-patch console via something like the Jenkins console so that locations become clickable.
* In rare situations, Docker images may not have been unique per run.  This should now be fixed.
* The time reported for switching execution modes (reexec and docker) were missing.  This should now be fixed.
* If --docker was the last option on the command line, it was not being removed when test-patch was being re-invoked inside the container.  This should now be fixed.
* test-patch is now much better about telling you what options have been turned on.  This is useful when looking at test-patch's console when the actual command line options may not be visible.
* Hadoop personality no longer has special options to run outside of it's Dockerfile on the ASF Jenkins.
* The default project is now set to 'unknown'.

Dev-impacting:
* A ton of Docker-specific arg handling has been moved out of test-patch and into docker.sh, where it really belongs.
* This removes a lot more hard-coded, ASF-specific Jenkins setup bits.  In some cases it was simply removed and in others, configurable.
*  New EXEC_MODES may be manipulated via the standard yetus_add_entry to list additional modes that test-patch may be running under.  Note that this gets printed to the screen *very* soon in the bootstrap process.


---

* [YETUS-144](https://issues.apache.org/jira/browse/YETUS-144) | *Blocker* | **mvn install usually required on mvn builds**

Plug-ins that use maven services should now use maven\_add\_install to be certain that a mvn install has been executed prior to their plug-in.  This will help guarantee that all root-level maven dependencies have been satisfied.  See the build system documentation for more information.


---

* [YETUS-285](https://issues.apache.org/jira/browse/YETUS-285) | *Blocker* | **flag to enable/disable docker privileged mode**

By default, Yetus now runs docker in privileged execution mode (when docker support is enabled).

To opt instead for the previous behavior, use the cli option {{--dockerprivd=false}}.


---

* [YETUS-297](https://issues.apache.org/jira/browse/YETUS-297) | *Major* | **when verify\_multijdk\_test is no, use JAVA\_HOME, not JDK\_DIR\_LIST**

<!-- markdown -->
For downstream users:

The cli for configuring which tests should be run during Multi-JDK mode now works correctly. e.g. "--multijdktests=compile" will cause just compilation against additional jdk versions.

Note that the full suite of tests is always run against the java version given in JAVA_HOME.

For plugin developers:

Authors of new plugins that wish to make them multi-jdk aware can add them to the default list by calling the `yetus_add_entry` function. i.e.:

```bash
yetus_add_entry JDK_TEST_LIST my_foo_test
```



