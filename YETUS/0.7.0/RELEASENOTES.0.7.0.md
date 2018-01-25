
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
# Apache Yetus  0.7.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [YETUS-561](https://issues.apache.org/jira/browse/YETUS-561) | *Critical* | **Ability to limit user process counts and Docker container's RAM usage**

<!-- markdown -->
Apache Yetus now enforces some basic controls around resource limits.

* `--proclimit` sets `ulimit -Sh` for an upper bound on the amount of processes and Java native threads that may be spawned.  The default is set to 1000.

* Docker `--memory` sizes are now sized with the `--dockermemlimit` option.  By default,  4 gigabytes are allocated.

* Docker mode will set the OOM adjustment value for any process within the container to 500.  This is to help guide the kernel to kill Apache Yetus spawned processes before potentially killing any others in low memory conditions.  This is to prevent the death of, for example, the Jenkins agent.

If any process attempts to violate those controls over those limits, there is a very high chance that any process spawned by Apache Yetus and Apache Yetus itself will be killed.


---

* [YETUS-570](https://issues.apache.org/jira/browse/YETUS-570) | *Major* | **Report and optionally kill stale JVMs between unit test modules**

<!-- markdown -->

This change enables two new features:

* A thread monitor to help determine how `--proclimit` should be  configured.

* A process reaper to automatically eliminate processes that match certain names after some operations to limit the impact of "stuck" unit tests.


---

* [YETUS-580](https://issues.apache.org/jira/browse/YETUS-580) | *Blocker* | **build a wrapper around docker in jenkins mode**

Apache Yetus' Docker support now handles SIGTERM and SIGINT, killing any spawned docker instance when either is received.


---

* [YETUS-568](https://issues.apache.org/jira/browse/YETUS-568) | *Major* | **break apart versioning of files and directories**

<!-- markdown -->

`releasedocmaker` no longer automatically creates files or directories that represent the version being built. In addition, the names of the CHANGES file has been renamed to CHANGELOG.

Versioned files may be requested via the `--fileversions` option.  Versioned directories may be requested via the `dirversions` option.  Either option or both are required when releasedocmaker is used with multiple versions or ranges.


---

* [YETUS-244](https://issues.apache.org/jira/browse/YETUS-244) | *Major* | **make yetus available via homebrew**

<!-- markdown -->

The latest version of Apache Yetus is also available via Homebrew on Mac OS X:

```
brew tap apache/yetus https://github.com/apache/yetus
brew install yetus
```



