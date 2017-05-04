
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

## Release 0.8.3 - 2016-04-15



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3109](https://issues.apache.org/jira/browse/TEZ-3109) | Tez UI 2: Add Vertex swimlanes |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3079](https://issues.apache.org/jira/browse/TEZ-3079) | Fix tez-tfile parser documentation |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2974](https://issues.apache.org/jira/browse/TEZ-2974) | Tez tools: TFileRecordReader in tez-tools should support reading \>2 GB tfiles |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-3093](https://issues.apache.org/jira/browse/TEZ-3093) | CriticalPathAnalyzer should be accessible via zeppelin |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-3090](https://issues.apache.org/jira/browse/TEZ-3090) | MRInput should make dagIdentifier, vertexIdentifier, etc available to the InputFormat jobConf |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2980](https://issues.apache.org/jira/browse/TEZ-2980) | Tez UI 2 - Umbrella |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3149](https://issues.apache.org/jira/browse/TEZ-3149) | Tez-tools: Add username in DagInfo |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2756](https://issues.apache.org/jira/browse/TEZ-2756) | MergeManager close should not try merging files on close if invoked after a shuffle exception |  Major | . | Siddharth Seth | Tsuyoshi Ozawa |
| [TEZ-3140](https://issues.apache.org/jira/browse/TEZ-3140) | Reduce AM memory usage while serialization |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [TEZ-3108](https://issues.apache.org/jira/browse/TEZ-3108) | Add support for external services to local mode |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-3161](https://issues.apache.org/jira/browse/TEZ-3161) | Allow task to report different kinds of errors - fatal / kill |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-3183](https://issues.apache.org/jira/browse/TEZ-3183) | Change the taskFailed method on plugin contexts to specify the type of failure |  Critical | . | Siddharth Seth | Siddharth Seth |
| [TEZ-3199](https://issues.apache.org/jira/browse/TEZ-3199) | Rename getCredentials in TaskCommunicatorContext to be less confusing |  Minor | . | Siddharth Seth | Siddharth Seth |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-1491](https://issues.apache.org/jira/browse/TEZ-1491) | Tez reducer-side merge\'s counter update is slow |  Major | . | Gopal V | Gopal V |
| [TEZ-3032](https://issues.apache.org/jira/browse/TEZ-3032) | DAG start time getting logged using system time instead of recorded time in startTime field |  Minor | . | Hitesh Shah | Hitesh Shah |
| [TEZ-3037](https://issues.apache.org/jira/browse/TEZ-3037) | History URL should be set regardless of which history logging service is enabled |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2937](https://issues.apache.org/jira/browse/TEZ-2937) | Can Processor.close() be called after closing inputs and outputs? |  Major | . | Rohini Palaniswamy | Jonathan Eagles |
| [TEZ-2898](https://issues.apache.org/jira/browse/TEZ-2898) | tez tools : swimlanes.py is broken in master |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-3053](https://issues.apache.org/jira/browse/TEZ-3053) | Containers timeout if they do not receive a task within the container timeout interval |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-3052](https://issues.apache.org/jira/browse/TEZ-3052) | Task internal error due to Invalid event: T\_ATTEMPT\_FAILED at FAILED |  Major | . | Jason Lowe | Jason Lowe |
| [TEZ-3036](https://issues.apache.org/jira/browse/TEZ-3036) | Tez AM can hang on startup with no indication of error |  Critical | . | Jason Lowe | Jason Lowe |
| [TEZ-3066](https://issues.apache.org/jira/browse/TEZ-3066) | TaskAttemptFinishedEvent ConcurrentModificationException in recovery or history logging services |  Major | . | Jason Lowe | Jeff Zhang |
| [TEZ-3081](https://issues.apache.org/jira/browse/TEZ-3081) | Update tez website for trademarks feedback |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-3076](https://issues.apache.org/jira/browse/TEZ-3076) | Reduce merge memory overhead to support large number of in-memory mapoutputs |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-2307](https://issues.apache.org/jira/browse/TEZ-2307) | Possible wrong error message when submitting new dag |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-3089](https://issues.apache.org/jira/browse/TEZ-3089) | TaskConcurrencyAnalyzer can return negative task count with very large jobs |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-3103](https://issues.apache.org/jira/browse/TEZ-3103) | Shuffle can hang when memory to memory merging enabled |  Critical | . | Jason Lowe | Jason Lowe |
| [TEZ-3101](https://issues.apache.org/jira/browse/TEZ-3101) | Tez UI: Task attempt log link doesn\'t have the correct protocol |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3117](https://issues.apache.org/jira/browse/TEZ-3117) | Deadlock in Edge and Vertex code |  Major | . | Yesha Vora | Bikas Saha |
| [TEZ-3104](https://issues.apache.org/jira/browse/TEZ-3104) | Tez fails on Bzip2 intermediate output format on hadoop 2.7.1 and earlier |  Critical | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3123](https://issues.apache.org/jira/browse/TEZ-3123) | Containers can get re-used even with conflicting local resources |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-3067](https://issues.apache.org/jira/browse/TEZ-3067) | Links to tez configs documentation should be bubbled up to top-level release page |  Major | . | Hitesh Shah | Tsuyoshi Ozawa |
| [TEZ-3131](https://issues.apache.org/jira/browse/TEZ-3131) | Support a way to override test\_root\_dir for FaultToleranceTestRunner |  Minor | . | Hitesh Shah | Hitesh Shah |
| [TEZ-3126](https://issues.apache.org/jira/browse/TEZ-3126) | Log reason for not reducing parallelism |  Minor | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3134](https://issues.apache.org/jira/browse/TEZ-3134) | tez-dag should depend on commons-collections4 |  Trivial | . | Hitesh Shah | Hitesh Shah |
| [TEZ-3135](https://issues.apache.org/jira/browse/TEZ-3135) | tez-ext-service-tests, tez-plugins/tez-yarn-timeline-history and tez-tools/tez-javadoc-tools missing dependencies |  Major | . | Vijay Kumar | Vijay Kumar |
| [TEZ-3124](https://issues.apache.org/jira/browse/TEZ-3124) | Running task hangs due to missing event to initialize input in recovery |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-3102](https://issues.apache.org/jira/browse/TEZ-3102) | Fetch failure of a speculated task causes job hang |  Critical | . | Jason Lowe | Jason Lowe |
| [TEZ-1911](https://issues.apache.org/jira/browse/TEZ-1911) | MergeManager\'s unconditionalReserve() should check for memory limits before allocating memory to IntermediateMemoryToMemoryMerger |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-3114](https://issues.apache.org/jira/browse/TEZ-3114) | Shuffle OOM due to EventMetaData flood |  Major | . | Jason Lowe | Jason Lowe |
| [TEZ-3129](https://issues.apache.org/jira/browse/TEZ-3129) | Tez task and task attempt UI needs application fails with NotFoundException |  Major | UI | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3128](https://issues.apache.org/jira/browse/TEZ-3128) | Avoid stopping containers on the AM shutdown thread |  Major | . | Siddharth Seth | Tsuyoshi Ozawa |
| [TEZ-3141](https://issues.apache.org/jira/browse/TEZ-3141) | mapreduce.task.timeout is not translated to container heartbeat timeout |  Major | . | Jason Lowe | Jason Lowe |
| [TEZ-3147](https://issues.apache.org/jira/browse/TEZ-3147) | Intermediate mem-to-mem: Fix early exit when only one segment can fit into memory |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2988](https://issues.apache.org/jira/browse/TEZ-2988) | DAGAppMaster::shutdownTezAM should return with a no-op if it has been invoked earlier |  Major | . | Hitesh Shah | Tsuyoshi Ozawa |
| [TEZ-3151](https://issues.apache.org/jira/browse/TEZ-3151) | expose DAG credentials to plugins |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [TEZ-3115](https://issues.apache.org/jira/browse/TEZ-3115) | Shuffle string handling adds significant memory overhead |  Major | . | Jason Lowe | Jonathan Eagles |
| [TEZ-3156](https://issues.apache.org/jira/browse/TEZ-3156) | Tez client keeps trying to talk to RM even if RM does not know about the application |  Major | . | Yesha Vora | Hitesh Shah |
| [TEZ-2863](https://issues.apache.org/jira/browse/TEZ-2863) | Container, node, and logs not available in UI for tasks that fail to launch |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3155](https://issues.apache.org/jira/browse/TEZ-3155) | Support a way to submit DAGs to a session where the DAG plan exceeds hadoop ipc limits |  Major | . | Hitesh Shah | Zhiyuan Yang |
| [TEZ-3105](https://issues.apache.org/jira/browse/TEZ-3105) | TezMxBeanResourceCalculator does not work on IBM JDK 7 or 8 causing Tez failures |  Major | . | Greg Senia | Greg Senia |
| [TEZ-3148](https://issues.apache.org/jira/browse/TEZ-3148) | Invalid event TA\_TEZ\_EVENT\_UPDATE on TaskAttempt |  Major | . | Rajesh Balamohan | Tsuyoshi Ozawa |
| [TEZ-2936](https://issues.apache.org/jira/browse/TEZ-2936) | Create ATS implementation that enables support for YARN-4265 |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-3166](https://issues.apache.org/jira/browse/TEZ-3166) | Counters aren\'t fully updated and sent for failed tasks |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [TEZ-3175](https://issues.apache.org/jira/browse/TEZ-3175) | Add tez client submit host |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-2967](https://issues.apache.org/jira/browse/TEZ-2967) | Vertex start time should be that of first task start time in UI |  Major | UI | Rohini Palaniswamy | Jonathan Eagles |
| [TEZ-3189](https://issues.apache.org/jira/browse/TEZ-3189) | Pre-warm dags should not be counted in submitted dags count by DAGAppMaster |  Trivial | . | Zhiyuan Yang | Zhiyuan Yang |
| [TEZ-3192](https://issues.apache.org/jira/browse/TEZ-3192) | IFile#checkState creating unnecessary objects though auto-boxing |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3177](https://issues.apache.org/jira/browse/TEZ-3177) | Non-DAG events should use the session domain or no domain if the data does not need protection |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-3201](https://issues.apache.org/jira/browse/TEZ-3201) | Tez-UI build broken |  Blocker | . | Siddharth Seth | Sreenath Somarajapuram |
| [TEZ-3196](https://issues.apache.org/jira/browse/TEZ-3196) | java.lang.InternalError from decompression codec is fatal to a task during shuffle |  Major | . | Jason Lowe | Jason Lowe |
| [TEZ-3180](https://issues.apache.org/jira/browse/TEZ-3180) | Update master docs to declare hadoop-2.6.x as a minimum requirement |  Major | . | Hitesh Shah | Hitesh Shah |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2982](https://issues.apache.org/jira/browse/TEZ-2982) | Tez UI 2: Create tez-ui2 directory and get a basic dummy page working in ember 2.2 |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3016](https://issues.apache.org/jira/browse/TEZ-3016) | Tez UI 2: Make bower dependency silent. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2983](https://issues.apache.org/jira/browse/TEZ-2983) | Tez UI 2: Get ember initializers functional. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3018](https://issues.apache.org/jira/browse/TEZ-3018) | Tez UI 2: Add config.env |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3019](https://issues.apache.org/jira/browse/TEZ-3019) | Tez UI 2: Replace BaseURL with Host |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2984](https://issues.apache.org/jira/browse/TEZ-2984) | Tez UI 2: Create abstract classes |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3020](https://issues.apache.org/jira/browse/TEZ-3020) | Tez UI 2: Add entity blueprint |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2985](https://issues.apache.org/jira/browse/TEZ-2985) | Tez UI 2: Create loader and entity classes |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3021](https://issues.apache.org/jira/browse/TEZ-3021) | Tez UI 2: Add env service & initializer |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3023](https://issues.apache.org/jira/browse/TEZ-3023) | Tez UI 2: Abstract adapter and route |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3022](https://issues.apache.org/jira/browse/TEZ-3022) | Tez UI 2: Add serializer & adapter for timeline server |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3026](https://issues.apache.org/jira/browse/TEZ-3026) | Tez UI 2: Add adapters for RM & AM |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3027](https://issues.apache.org/jira/browse/TEZ-3027) | Tez UI 2: Add header and footer elements |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2986](https://issues.apache.org/jira/browse/TEZ-2986) | Tez UI 2: Implement All DAGs page |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3038](https://issues.apache.org/jira/browse/TEZ-3038) | Tez UI 2: Create DAG details page |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3039](https://issues.apache.org/jira/browse/TEZ-3039) | Tez UI 2: Create all sub-pages for DAG |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3040](https://issues.apache.org/jira/browse/TEZ-3040) | Tez UI 2: Create Vertex details page & sub tables |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3041](https://issues.apache.org/jira/browse/TEZ-3041) | Tez UI 2: Create Task & Attempt details page with sub tables |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3045](https://issues.apache.org/jira/browse/TEZ-3045) | Tez UI 2: Create application details page with DAGs tab |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3048](https://issues.apache.org/jira/browse/TEZ-3048) | Tez UI 2: Make PhantomJS a local dependency for build tests |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3042](https://issues.apache.org/jira/browse/TEZ-3042) | Tez UI 2: Create Counters pages |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3043](https://issues.apache.org/jira/browse/TEZ-3043) | Tez UI 2: Create configurations page |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3049](https://issues.apache.org/jira/browse/TEZ-3049) | Tez UI 2: Add column selector |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3050](https://issues.apache.org/jira/browse/TEZ-3050) | Tez UI 2: Add counter columns |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3056](https://issues.apache.org/jira/browse/TEZ-3056) | Tez UI 2: Remove version changes in TEZ-2980 branch |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3064](https://issues.apache.org/jira/browse/TEZ-3064) | Tez UI 2: Add All DAGs filters |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3059](https://issues.apache.org/jira/browse/TEZ-3059) | Tez UI 2: Make refresh functional |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3070](https://issues.apache.org/jira/browse/TEZ-3070) | Tez UI 2: Jenkins build is failing |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3060](https://issues.apache.org/jira/browse/TEZ-3060) | Tez UI 2: Activate auto-refresh |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3061](https://issues.apache.org/jira/browse/TEZ-3061) | Tez UI 2: Display in-progress vertex table in DAG details |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3069](https://issues.apache.org/jira/browse/TEZ-3069) | Tez UI 2: Make error bar fully functional |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3062](https://issues.apache.org/jira/browse/TEZ-3062) | Tez UI 2: Integrate graphical view |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3058](https://issues.apache.org/jira/browse/TEZ-3058) | Tez UI 2: Add download data functionality |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3084](https://issues.apache.org/jira/browse/TEZ-3084) | Tez UI 2: Display caller type and info |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3080](https://issues.apache.org/jira/browse/TEZ-3080) | Tez UI 2: Ensure UI 2 is in-line with UI 1 |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3092](https://issues.apache.org/jira/browse/TEZ-3092) | Tez UI 2: Tuneups & Improvements |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3095](https://issues.apache.org/jira/browse/TEZ-3095) | Tez UI 2: Tuneups & Improvements |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3088](https://issues.apache.org/jira/browse/TEZ-3088) | Tez UI 2: Licenses of all the packages used by Tez Ui must be documented |  Blocker | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2916](https://issues.apache.org/jira/browse/TEZ-2916) | Tez UI 2: Show counts of running tasks on the DAG visualization page |  Major | . | Siddharth Seth | Sreenath Somarajapuram |
| [TEZ-3029](https://issues.apache.org/jira/browse/TEZ-3029) | Add an onError method to service plugin contexts |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-3125](https://issues.apache.org/jira/browse/TEZ-3125) | Tez UI 2: All auto-refresh pages refresh multiple times shortly after application complete |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3127](https://issues.apache.org/jira/browse/TEZ-3127) | Tez UI 2: Release audit is failing |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3136](https://issues.apache.org/jira/browse/TEZ-3136) | Tez UI 2: Pre-merge: Update CHANGES.txt and remove from excluded list |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3143](https://issues.apache.org/jira/browse/TEZ-3143) | Tez UI 2: Make the build faster |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3160](https://issues.apache.org/jira/browse/TEZ-3160) | Tez UI 2: Swimlane - Create swimlane page & component |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2958](https://issues.apache.org/jira/browse/TEZ-2958) | Recovered TA, whose commit cannot be recovered, should move to killed state |  Major | . | Bikas Saha | Jason Lowe |
| [TEZ-3170](https://issues.apache.org/jira/browse/TEZ-3170) | Tez UI 2: Swimlane - Display computed events, event bars & dependencies |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3152](https://issues.apache.org/jira/browse/TEZ-3152) | Tez UI 2: Build fails when run by multiple users or when node\_modules is old |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3171](https://issues.apache.org/jira/browse/TEZ-3171) | Tez UI 2: Swimlane - Tooltip, zoom & redirection |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3173](https://issues.apache.org/jira/browse/TEZ-3173) | Update Tez AM REST APIs for more information for each vertex |  Major | . | Sreenath Somarajapuram | Zhiyuan Yang |
| [TEZ-3172](https://issues.apache.org/jira/browse/TEZ-3172) | Tez UI: Swimlane - In progress & Shadow |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3194](https://issues.apache.org/jira/browse/TEZ-3194) | Tez UI: Swimlane improve in-progress experience |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3033](https://issues.apache.org/jira/browse/TEZ-3033) | changes for 0.8.2 release |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2594](https://issues.apache.org/jira/browse/TEZ-2594) | Fix LICENSE for missing entries for full and minimal tarballs |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-3120](https://issues.apache.org/jira/browse/TEZ-3120) | Remove TaskCommContext.getCurrentDagName, Identifier |  Major | . | Siddharth Seth | Tsuyoshi Ozawa |


