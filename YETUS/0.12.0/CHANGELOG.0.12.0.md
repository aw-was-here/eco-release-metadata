
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
# Apache Yetus Changelog

## Release 0.12.0 - 2020-04-13



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-936](https://issues.apache.org/jira/browse/YETUS-936) | test-patch.sh does not do gradle |  Blocker | build | Pierre Smits | Allen Wittenauer |
| [YETUS-955](https://issues.apache.org/jira/browse/YETUS-955) | Update many of the binaries in Dockerfile |  Major | build, Precommit | Allen Wittenauer | Allen Wittenauer |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-947](https://issues.apache.org/jira/browse/YETUS-947) | Support github actions as a robot |  Major | build | Allen Wittenauer | Allen Wittenauer |
| [YETUS-954](https://issues.apache.org/jira/browse/YETUS-954) | Re-instate github token support |  Blocker | Precommit | Allen Wittenauer | Allen Wittenauer |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-893](https://issues.apache.org/jira/browse/YETUS-893) | Update the link to doclet javadoc |  Minor | website and documentation | Akira Ajisaka | Frederick Ayala |
| [YETUS-919](https://issues.apache.org/jira/browse/YETUS-919) | Support extra Docker build-args |  Minor | Precommit | Clay B. | Clay B. |
| [YETUS-926](https://issues.apache.org/jira/browse/YETUS-926) | Add visual separation to console report summary |  Minor | Precommit | Nick Dimiduk | Nick Dimiduk |
| [YETUS-937](https://issues.apache.org/jira/browse/YETUS-937) | Fix Release Doc Maker link in README.md |  Minor | website and documentation | alfonso | alfonso |
| [YETUS-895](https://issues.apache.org/jira/browse/YETUS-895) | Add ZStandard Compression support in Hadoop precommit |  Major | Precommit | Wei-Chiu Chuang | Akira Ajisaka |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-915](https://issues.apache.org/jira/browse/YETUS-915) | Update GitHub vote emojis for usability by color blind folks |  Critical | Precommit | Duo Zhang | Duo Zhang |
| [YETUS-927](https://issues.apache.org/jira/browse/YETUS-927) | GITHUB\_PASSWD environment variable is not effective |  Major | Precommit | Akira Ajisaka | Akira Ajisaka |
| [YETUS-897](https://issues.apache.org/jira/browse/YETUS-897) | Remove duplicate jdk.tools dependency from audience-annotations module |  Major | Audience Annotations | Martin Todorov | Priyank Bagrecha |
| [YETUS-931](https://issues.apache.org/jira/browse/YETUS-931) | golangci.sh is not executable |  Minor | Precommit | Akira Ajisaka | Akira Ajisaka |
| [YETUS-863](https://issues.apache.org/jira/browse/YETUS-863) | Wrong quote characters in the RC verification document |  Trivial | website and documentation | Kengo Seki | Jan Hentschel |
| [YETUS-939](https://issues.apache.org/jira/browse/YETUS-939) | shellcheck plugin's exclusion support is broken |  Critical | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-941](https://issues.apache.org/jira/browse/YETUS-941) | Wrong URL in the checkstyle report |  Major | Precommit | Siyao Meng | Akira Ajisaka |
| [YETUS-945](https://issues.apache.org/jira/browse/YETUS-945) | Update some dependencies |  Major | build | Allen Wittenauer | Allen Wittenauer |
| [YETUS-942](https://issues.apache.org/jira/browse/YETUS-942) | yetus-dl for specific versions is broken |  Blocker | build | Allen Wittenauer | Allen Wittenauer |
| [YETUS-949](https://issues.apache.org/jira/browse/YETUS-949) | remove empty filenames in find\_changed\_files |  Blocker | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-925](https://issues.apache.org/jira/browse/YETUS-925) | Fix link error in README.md |  Minor | website and documentation | Kevin Su | Kevin Su |
| [YETUS-943](https://issues.apache.org/jira/browse/YETUS-943) | Test patch fails to extract version information from a JDK11 jvm |  Minor | Precommit | Nick Dimiduk | Nick Dimiduk |
| [YETUS-957](https://issues.apache.org/jira/browse/YETUS-957) | maven.sh fails to parse maven version |  Critical | Precommit | Akira Ajisaka | Akira Ajisaka |
| [YETUS-958](https://issues.apache.org/jira/browse/YETUS-958) | precommit-basic docs contains merge conflict marker |  Major | website and documentation | Nick Dimiduk | Akira Ajisaka |
| [YETUS-960](https://issues.apache.org/jira/browse/YETUS-960) | Yetus build env cannot execute pylint2 |  Critical | Precommit | Akira Ajisaka | Akira Ajisaka |
| [YETUS-959](https://issues.apache.org/jira/browse/YETUS-959) | Dead link in precommit-advanced |  Major | website and documentation | Nick Dimiduk | Akira Ajisaka |
| [YETUS-961](https://issues.apache.org/jira/browse/YETUS-961) | Upgrade prototool to include the fix for the walktimeout |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-962](https://issues.apache.org/jira/browse/YETUS-962) | markdownlint is smashing lines together |  Blocker | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-963](https://issues.apache.org/jira/browse/YETUS-963) | prototool-basedir should be a cwd |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-932](https://issues.apache.org/jira/browse/YETUS-932) | Update copyrights for 2020 |  Major | website and documentation | Sean Busbey | Sean Busbey |
| [YETUS-933](https://issues.apache.org/jira/browse/YETUS-933) | Release 0.12.0 |  Major | website and documentation | Sean Busbey | Allen Wittenauer |


