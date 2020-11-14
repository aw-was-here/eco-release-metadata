
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
# Apache Yetus  0.13.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [YETUS-964](https://issues.apache.org/jira/browse/YETUS-964) | *Critical* | **Replace prototool with buf**

<!-- markdown -->
Support for prototool has been removed and replaced with buf.


---

* [YETUS-982](https://issues.apache.org/jira/browse/YETUS-982) | *Major* | **Upgrade to Ubuntu Focal and update all dependencies/built-ins**

<!-- markdown --> 
This change moves the default Apache Yetus docker image to a new version of Ubuntu as well as upgrades many, many bundled components to new releases.  Users utilizing the docker image should upgrade carefully!

Early removal notice:

* Python 2.x support.  It will be removed from:
  * Docker image
  * precommit
  * releasedocmaker
  * shelldocs
* FindBugs support; please migrate to SpotBugs.


---

* [YETUS-986](https://issues.apache.org/jira/browse/YETUS-986) | *Major* | **Switch development branch to 'main'**

<!-- markdown -->
Users:

The default branch setting for patch testing is now 'main'. Docker images based  upon Apache Yetus' top of tree are now tagged with 'main'.

Developers:

All references have been switched to 'main'.


---

* [YETUS-21](https://issues.apache.org/jira/browse/YETUS-21) | *Major* | **patch to a unit test should only trigger that unit test**

<!-- markdown -->
If `--mvn-only-changed-tests=true` is added to the command line and a patch has only unit test modifications, test-patch will limit unit testing to just those tests.

This feature should be considered experimental at this time.


---

* [YETUS-995](https://issues.apache.org/jira/browse/YETUS-995) | *Major* | **vote table should have access to the log filename**

<!-- markdown -->
Users:

The log files for tests have been popped up into the voting table for many of the generated reports.

Developers:

This is a breaking change.  It reworks how tests should be registering the logfiles that they present to users and how bugsystem reporting engines should retrieve the filenames for those logfiles:

* add_vote_table() has been deprecated and replaced with add_vote_table_v2() that now takes an additional parameter.  Code that uses add_vote_table()/add_footer_table() combo will NOT have their log file entries reported with some bugsystem reporting engines.
* The TP_VOTE_TABLE has been re-arranged a bit to add in the log filename. Custom reporting engines will need to modified.


---

* [YETUS-994](https://issues.apache.org/jira/browse/YETUS-994) | *Major* | **Add GitHub Status as a report type**

<!-- markdown -->
This change replaces the Apache Yetus comment with (GitHub Status)[https://docs.github.com/en/rest/reference/repos#statuses] notifications.  Note that your GitHub Token requires repo:status write or better privileges.


---

* [YETUS-990](https://issues.apache.org/jira/browse/YETUS-990) | *Major* | **ENTRYPOINT for apache/yetus:(tag) container images**

<!-- markdown -->
The apache/yetus docker image now defaults to running test-patch.


---

* [YETUS-966](https://issues.apache.org/jira/browse/YETUS-966) | *Critical* | **don't reset on FETCH\_HEAD for git tags**

<!-- markdown -->
Prior to this change, using `qbt` or running `test-patch` on the tag of a repository under certain situations may have resulted in the tests being executed on a different commit.  After this change, the local repository's tags are forcibly updated from the remote repository's references when `--resetrepo` is passed as an argument.


---

* [YETUS-1000](https://issues.apache.org/jira/browse/YETUS-1000) | *Major* | **GitHub Actions: use GitHub Checks for line comments support**

<!-- markdown -->
Users:
Comments added on a per line basis were only ever shipped with support on GitHub, only on PRs, and was rarely used due to being very noisy.  That functionality has been removed and replaced with GitHub Checks Annotations when run under GitHub Actions with support for both branches and PRs.  Future/other changes may re-introduce support for non-GitHub Actions. Any 3rd party plug-ins that support line-level comments will need to be updated to support the new API.

Developers:
With GitHub Checks Annotations being the preferred way on GitHub for CI systems to make individual notes, the API requirements and surrounding support structure for line comments have also changed:

*  The unidiff line calculations (`compute_unidiff`)  has been removed.  This should greatly increase performance for large patches.
* Relatedly, `GITUNIDIFFLINES` has been removed from the global variables.
* `(bugsystem)_linecoments` and related functions should now expect and pass a column parameter. Log files should be in typical file:line[:column]:text format, where the missing column or 0 or "" will be used for no column/whole file.
* `BUGLINECOMMENTS` is no longer wiped when doing a diff vs. patch.
* `(bugsystem)_linecomments` will no longer receive comments grouped by file names.  Implementers will need to do their own grouping, if required.
* A new `(bugsystem)_linecomments_end` will be called when all line comments have been processed if there is any final work that needs to be done.


---

* [YETUS-1012](https://issues.apache.org/jira/browse/YETUS-1012) | *Major* | **Major overhaul of precommit documentation**

<!-- markdown -->
The [precommit documentation on the ASF site](http://yetus.apache.org/documentation/in-progress/precommit/) has been revamped! It now features greatly expanded information, more parameters are documented, more commands are documented, and even separate pages per plug-in!


---

* [YETUS-1017](https://issues.apache.org/jira/browse/YETUS-1017) | *Major* | **Rework post-processing comparison to de-duplicate code**

<!-- markdown -->
Users:

With this change, several plugins that did not generate line comments now do.

Developers:

The `generic_postlog_compare` / `generic_pre_handler` / `generic_post_handler` functions have been deprecated and replaced with `module_postlog_compare` / `module_pre_handler` / `module_post_handler` functions.  A new `root_postlog_compare` has been added that works similarly to `module_postlog_compare` for plug-ins that do not support the MODULE system.  Using `root_postlog_compare` makes writing plug-ins for static linters significantly easier.  See the associated APIs for more information.


---

* [YETUS-1019](https://issues.apache.org/jira/browse/YETUS-1019) | *Major* | **Rename 'whitespace' to 'blanks**

<!-- markdown -->
With this change, the whitespace plug-in has been renamed 'blanks'.   Users who specifically add `whitespace` to the plug-in list will need to change their parameters.  The old parameters are still supported (`--whitespace-tabs-ignore-list=<list>` and `--whitespace-eol-ignore-list=<list>`) in this release but will likely be removed in the next one.

It also takes two different parameters: `--blanks-eol-ignore-file=<file>` and `--blanks-tabs-ignore-file=<file>` . These files contain regular expressions of files to ignore for their various targets, similar to the --excludes file option.   By default, Apache Yetus will automatically use `.yetus/blanks-eol.txt` and `.yetus/blanks-tabs.txt` if they exist.


---

* [YETUS-1021](https://issues.apache.org/jira/browse/YETUS-1021) | *Major* | **Lots of minor documentation updates post-overhaul**

<!-- markdown -->
Developers:

A new website link checker has been added to the CI process to verify that links are actually valid.


---

* [YETUS-1022](https://issues.apache.org/jira/browse/YETUS-1022) | *Major* | **Get commit sha from github PR json**

<!-- markdown -->
Git SHAs should now be more consistent on repositories hosted on GitHub, especially when running on Jenkins.


---

* [YETUS-1027](https://issues.apache.org/jira/browse/YETUS-1027) | *Blocker* | **checkmake output is incorrect**

<!-- markdown -->
Prior to this fix, `checkmake` may have returned irrelevant results for a given change.


---

* [YETUS-992](https://issues.apache.org/jira/browse/YETUS-992) | *Major* | **Create and publish a github action**

<!-- markdown -->
With this release, Apache Yetus' `test-patch` facility is now available as a Github Action! Please see the documentation for more details.


---

* [YETUS-1028](https://issues.apache.org/jira/browse/YETUS-1028) | *Major* | **Various missing github annotations**

<!-- markdown -->
Many outputs for plug-ins have been reworked to provide a consistent format as well as compatibility with such features as GitHub Checks Annotations.  Additionally, most of the log files have been renamed to be prefixed with `results` to make them more consistent between the various modes.


---

* [YETUS-1033](https://issues.apache.org/jira/browse/YETUS-1033) | *Blocker* | **Move homebrew tap into it's own repository**

<!-- markdown -->
Homebrew support has been moved into its own repository. The new tap name is `apache/yetus-homebrew`.  See the downloads documentation for more information.


---

* [YETUS-1036](https://issues.apache.org/jira/browse/YETUS-1036) | *Major* | **Provide comprehensive changelogs and release notes**

<!-- markdown -->
The website now has links to all of the changelogs and releasenotes of every Apache Yetus release!


---

* [YETUS-1046](https://issues.apache.org/jira/browse/YETUS-1046) | *Major* | **remove jython releasedocmaker and shelldocs**

<!-- markdown -->
The jython versions of releasedocmaker and shelldocs have been removed.  The releasedocmaker and shelldocs features of yetus-maven-plugin have been removed.


---

* [YETUS-1053](https://issues.apache.org/jira/browse/YETUS-1053) | *Major* | **Add Apache Creadur RAT to the docker image**

<!-- markdown -->
The Docker image now as the Apache Creadur RAT jar.  This change should allow for the `asflicense` plug-in for `test-patch` to work out of the box.


---

* [YETUS-1061](https://issues.apache.org/jira/browse/YETUS-1061) | *Major* | **remove github user and password support**

<!-- markdown -->
Apache Yetus no longer supports GitHub username and password logins.  You must use a GitHub tokens in lieu.


---

* [YETUS-1059](https://issues.apache.org/jira/browse/YETUS-1059) | *Major* | **Github Status Recovery Tool**

<!-- markdown -->
The new `github-status-recovery` program is a way to feed GitHub results from an already executed precommit run.  It requires a GitHub App token to populate the GitHub Checks and GitHub Statuses data.


---

* [YETUS-1054](https://issues.apache.org/jira/browse/YETUS-1054) | *Major* | **Support buildkit**

<!-- markdown -->
precommit now defaults to using Docker BuildKit (with the notable exception of Travis CI).  To disable, use `--docker-buildkit=false`.



