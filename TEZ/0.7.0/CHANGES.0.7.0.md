
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
# Apache Tez Changelog

## Release 0.7.0 - 2015-05-18

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2437](https://issues.apache.org/jira/browse/TEZ-2437) | FilterLinesByWord NPEs when run in Localmode |  Major | . | Amit Tiwari |  |
| [TEZ-2424](https://issues.apache.org/jira/browse/TEZ-2424) | Bump up max counter group name length limit to account for per\_io counters |  Minor | . | Hitesh Shah | Hitesh Shah |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2159](https://issues.apache.org/jira/browse/TEZ-2159) | Tez UI: download timeline data for offline use. |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2016](https://issues.apache.org/jira/browse/TEZ-2016) | Tez UI: Dag View Fit and Finish |  Major | UI | Jonathan Eagles | Sreenath Somarajapuram |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2417](https://issues.apache.org/jira/browse/TEZ-2417) | Tez UI: Counters are blank in the Attempts page if all attempts failed |  Major | UI | Sreenath Somarajapuram | Prakash Ramachandran |
| [TEZ-2401](https://issues.apache.org/jira/browse/TEZ-2401) | Tez UI: All-dag page has duration keep counting for KILLED dag. |  Critical | UI | Tassapol Athiapinya | Prakash Ramachandran |
| [TEZ-2395](https://issues.apache.org/jira/browse/TEZ-2395) | Tez UI: Minimum/Maximum Duration show a empty bracket next to 0 secs when you purposefully failed a job. |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2386](https://issues.apache.org/jira/browse/TEZ-2386) | Tez UI: Inconsistent usage of icon colors |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2357](https://issues.apache.org/jira/browse/TEZ-2357) | Tez UI: misc.js.orig is committed by accident |  Major | UI | Jeff Zhang | Prakash Ramachandran |
| [TEZ-2318](https://issues.apache.org/jira/browse/TEZ-2318) | Tez UI: source and sink page is broken as they are not populated. |  Major | UI | Prakash Ramachandran | Sreenath Somarajapuram |
| [TEZ-2252](https://issues.apache.org/jira/browse/TEZ-2252) | Tez UI: in graphical view some of the sinks are hidden as they overlap |  Major | UI | Rohini Palaniswamy | Sreenath Somarajapuram |
| [TEZ-2084](https://issues.apache.org/jira/browse/TEZ-2084) | Tez UI: Stacktrace format info is lost in diagnostics |  Major | UI | Jeff Zhang | Prakash Ramachandran |
| [TEZ-1988](https://issues.apache.org/jira/browse/TEZ-1988) | Tez UI: does not work when using file:// in a browser |  Major | UI | Hitesh Shah | Prakash Ramachandran |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2275](https://issues.apache.org/jira/browse/TEZ-2275) | Tez UI: enable faster loading and caching of data in tables |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


