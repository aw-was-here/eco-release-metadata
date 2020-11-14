
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
# Apache Yetus  0.9.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [YETUS-15](https://issues.apache.org/jira/browse/YETUS-15) | *Critical* | **build environment**

<!-- markdown -->
Apache Yetus has been converted to use Apache Maven as a build tool. As a result, many changes have taken place that directly impacts the project.  

* Source directories have been re-arranged and re-named:
  * All bash code is now in (feature)/src/main/shell
  * All python code is now in (feature)/src/main/python
* audience-annotations is mostly unchanged.
* releasedocmaker and shelldocs are now available as Jython-built jars.
* Introduction of the yetus-minimaven-plugin and yetus-maven-plugins.  The yetus-minimaven-plugin is used to build Apache Yetus.  yetus-maven-plugin is an end-user artifact that gives access some Apache Yetus features to Apache Maven and compatible build systems without needing any external help (e.g., yetus-wrapper)
* Middleman is still used for creating the static website, however, it is now tied into the 'mvn site' command. 'mvn install' MUST be executed before running 'mvn site' as website generation depends upon the yetus-minimaven-plugin.
* The content of yetus-project is now in the root of the source tree.
* The new yetus-dist module handles the creation of a complete distribution. The artifacts are now in the yetus-dist/target directory.  The artifact contents are largely unchanged.  New yetus-assemblies module and various Apache Maven configuration files have been added to create distribution parity.
* The website is also available as a tar.gz tarball in the yetus-dist artifact area.
* The jdiff module is now always built.
* Version handling has been modified in several different locations and the executables themselves.

Also, other changes  introduced:

* start-build-env.sh has been added to create a Docker-ized development environment. In particular, this imports the .ssh and .gnupg directories and has all pre-requisites for building Apache Yetus and making releases.
* A Dockerfile in root has been added for hub.docker.com and CI-system integration.
* The old Dockerfile (previously located at precommit/test-patch-docker and now located at precommit/src/main/shell/test-patch-docker) has been changed to be able also to run releasedocmaker.
* Some ruby dependencies for the website have been updated for security reasons.
* JDK8 is now the minimum version of Java used to build the Apache Yetus Java components.
* precommit's shellcheck.sh now recognizes src/main/shell as containing shell code to check.
* releasedocmaker and shelldocs now explicitly call for python2


---

* [YETUS-681](https://issues.apache.org/jira/browse/YETUS-681) | *Major* | **Add robots plugin type**

<!-- markdown -->

This change makes significant changes to precommit to support a variety of automation systems for continuous integration (aka robots or the `--robot` flag) as well as rework the existing Jenkins support (`--jenkins`).

End User Changes
================

* `--jenkins` flag has been removed.  `test-patch`/`qbt` should now autodetect not only if it is running Jenkins, but also Circle CI, Gitlab CI, and Travis CI.  Please see the robots document for specifics as to how that works, limitations, etc.
* In the specific case of Jenkins, much better support for general Jenkins settings but also Github Branch Source Plugin using Pipelines and Github Pull Request Plugin.  In many cases, options that were previously set specifically on the command line may be unnecessary/duplicate information and should be removed.
* Configuration for how to run Apache Yetus against Apache Yetus for various CI systems is now bundled with the project source.
* When running under a robot, `test-patch`/`qbt` may update the git remote repository information for branches.  This is done because in some configurations, the information is missing and is required for proper functionality. In cases where this is not possible, the programs will treat the remote repositories as offline or the local repository as shallow. As a result, some functionality may not be available.  The limitations may include `test-patch` functioning as though it was `qbt`. In other words, performing a full build rather than a patch-based build.
* `--git-shallow` may be used to pre-warn that the local checkout is shallow/other branches are not available.
* `--git-offline` may be used to pre-warn that remote repositories are not available/pulls will fail.
* `--offline` sets `--git-offline` as well.
* As a result of that work, git repositories that require authentication, are non-HTTP-based, and various other configurations should be much better understood and handled much more appropriately.
* precommit will now attempt to guess what build tool a repository may be using.  This may be overridden by specifying the build tool with `--build-tool` set to the appropriate plugin, including `nobuild` to disable build tools altogether.
* If Apache Yetus is launched in a Docker container under a Jenkins pipeline as the agent definition, `${HOME}` should now be set to somewhere valid if it isn't valid.  This will enable Apache Maven and other utilities that would otherwise crash due to broken homes.


Developer Changes
================= 

* Personalities setting `${GITHUB_REPO}` information will likely cause problems with autodetection of Github information.  See YETUS-721 for more information.
* Developers that check for `${JENKINS}` should specifically start checking for `${ROBOTTYPE}=jenkins` for equivalent functionality.  But be aware that coding specifically for Jenkins may be incorrect.
* Environment variable handling for Docker has been given a rewrite with the introduction of `add_docker_env`.  For environment variables, this should be used instead of directly setting `${DOCKER_EXTRAARGS}`.  Environment variables set via `add_docker_env` will be resolved just prior to Docker run thus enabling the value to change.
* It is now possible set `${BUILDMODE}` during `locate_patch` resolution.  This change was made due to limitations with some bug system/CI integrations.  See `set_buildmode` for more information.
* `github_breakup_url` can now be used for Github repo URLs and not just pull requests.
* `gitlab_breakup_url` can now be used for Gitlab repo URLs and not just merge requests.
* A lot of defaults are now defined much later.  This should only impact plug-ins and overrides that are triggered extremely early in the boot up process.


---

* [YETUS-723](https://issues.apache.org/jira/browse/YETUS-723) | *Major* | **Overhaul the docker support for 2018**

<!-- markdown -->
This change represents a fairly large overhaul of precommit's Docker support in order to fix many outstanding bugs and feature requests.  As a result, there are several incompatible changes from previous versions.  Please see the precommit Docker documentation for additional information.

End Users: New Features
=======================

* Support for pulling a pre-built tag instead of building the base image, platforms, non-standard dockerd socket, and Docker-in-Docker.
* `COPY` and `ADD` support when building (requires Docker API version 18+).
* All Yetus built images are now labeled with `org.apache.yetus` to make them easier to find via docker inspect.
* Docker information in the vote table now properly includes a link to the Dockerfile if URLs, artifacting, etc, are turned on.
* Image cleanup should be more reliable.

End Users: Incompatible Changes
===============================

* The minimum Docker version is now version 17.xx.  It was previously 6.xx.
* `--dockeronfail` is no longer supported.
* `ANT_ARGS`, `ANT_OPTS`, and `MAVEN_OPTS` are now honored.  Before they were always overwritten.
* `yetus/tp-(number)` images are now removed after normal completion.
* Because of the addition of Docker-in-Docker support, Docker mode no longer defaults to privileged mode and the flag has been renamed to be consistent with the other flags.  To enable privileged mode, the `--docker-privd` flag must be set to true.

Developers: New Features
========================

* `--docker-bash-debug` will run test-patch.sh with `bash -x` inside the container for extensive debugging.
* yetuslib now sports a new `yetus_file_to_array` function.

Developers: Incompatible Changes
================================

* test-patch.sh's `relative_dir` has been promoted to yetuslib as `yetus_relative_dir` 
* The internal `ANT_ARGS` has been replaced with `YETUS_ANT_ARGS`
* Many changes to how parameters are passed between pre-Docker and post-Docker.


---

* [YETUS-750](https://issues.apache.org/jira/browse/YETUS-750) | *Major* | **don't try patch on a git format-patch file**

Apache Yetus tools no longer support patch levels greater than 1.


---

* [YETUS-751](https://issues.apache.org/jira/browse/YETUS-751) | *Minor* | **line comments generate too many messages; not obvious how to disable**

<!-- markdown -->
The API for bug system line comments has completely changed.  Please see the relevant documentation.


---

* [YETUS-721](https://issues.apache.org/jira/browse/YETUS-721) | *Critical* | **personalities shouldn't directly set repository information**

<!-- markdown -->
Personalities should no longer directly set GITHUB_REPO or GITLAB_REPO.  Instead, they should set GITHUB_REPO_DEFAULT and GITLAB_REPO_DEFAULT.  This will allow for certain CI environments to proper auto-determine the place where the build is coming from.



