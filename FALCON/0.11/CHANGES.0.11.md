
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
# Apache Falcon Changelog

## Release 0.11 - Unreleased (as of 2017-05-04)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-2289](https://issues.apache.org/jira/browse/FALCON-2289) | Report final state of metrics into graphite before stopping metric notification service |  Major | common | Pracheer Agarwal | Pracheer Agarwal |
| [FALCON-2288](https://issues.apache.org/jira/browse/FALCON-2288) | Remove job\_name validations for trusted extensions |  Major | . | Pracheer Agarwal | Pracheer Agarwal |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FALCON-2275](https://issues.apache.org/jira/browse/FALCON-2275) | Unable to list instances of an extension |  Major | extensions | Pragya Mittal | Pracheer Agarwal |
| [FALCON-2273](https://issues.apache.org/jira/browse/FALCON-2273) | Disallow external entity injection and clean up some log messages |  Major | general | Venkat Ranganathan | Venkat Ranganathan |
| [FALCON-2274](https://issues.apache.org/jira/browse/FALCON-2274) | Job list in extension is failing with IllegalArgumentException |  Major | extensions | Pragya Mittal | Pracheer Agarwal |
| [FALCON-2276](https://issues.apache.org/jira/browse/FALCON-2276) | FalconCLIException while submitting trusted extension job |  Major | extensions | Richie Varghese | sandeep samudrala |
| [FALCON-2277](https://issues.apache.org/jira/browse/FALCON-2277) | Incorrect error message on registering trusted exceptions |  Major | extensions | Richie Varghese | Pracheer Agarwal |
| [FALCON-2279](https://issues.apache.org/jira/browse/FALCON-2279) | Killed instances are not rerun via falcon |  Major | rerun | Pragya Mittal | sandeep samudrala |
| [FALCON-2283](https://issues.apache.org/jira/browse/FALCON-2283) | Internal Server Error : On trying to submit a trusted extension job |  Major | extensions | Richie Varghese | sandeep samudrala |
| [FALCON-2287](https://issues.apache.org/jira/browse/FALCON-2287) | Extension list fails with MIME type error on server |  Major | extensions | Pragya Mittal | Pracheer Agarwal |
| [FALCON-2290](https://issues.apache.org/jira/browse/FALCON-2290) | Change staging directory for entity creation while extension job submission |  Major | . | Pracheer Agarwal | Pracheer Agarwal |
| [FALCON-2291](https://issues.apache.org/jira/browse/FALCON-2291) | Incorrect path to the REST calls on extension (POST) |  Major | docs | Pengfei Xuan | Pengfei Xuan |
| [FALCON-2292](https://issues.apache.org/jira/browse/FALCON-2292) | User Extension submission is failing because of the validate late inputs |  Major | . | sandeep samudrala | sandeep samudrala |
| [FALCON-2286](https://issues.apache.org/jira/browse/FALCON-2286) | Falcon upgradation fails to create new tables |  Major | extensions | Pragya Mittal | Pracheer Agarwal |
| [FALCON-2293](https://issues.apache.org/jira/browse/FALCON-2293) | falcon extension fails for deletion if 2 extensions have same entity name |  Major | . | sandeep samudrala | sandeep samudrala |


