
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
#  0.8.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [TEZ-2455](https://issues.apache.org/jira/browse/TEZ-2455) | *Major* | **Tez UI: Dag view caching, error handling and minor layout changes**

# Enable caching in Dag View.
# View throws error when all vertex data are not loaded
# Display single outputs directly below the vertex
# Vetex & Input nodes at the same level slightly overlaps at times
# Entities under a DAG not loading in IE
# Prevent 'All DAGs' page from hitting ATS with a huge limit when rowCount is manually edited


---

* [TEZ-2453](https://issues.apache.org/jira/browse/TEZ-2453) | *Major* | **Tez UI: show the dagInfo is the application has set the same.**

hive/pig etc can set additional info on the dag using 

{code}
/**
   * Set description info for this DAG that can be used for visualization purposes.
   * @param dagInfo JSON blob as a serialized string.
   *                Recognized keys by the UI are:
   *                    "context" - The application context in which this DAG is being used.
   *                                For example, this could be set to "Hive" or "Pig" if
   *                                this is being run as part of a Hive or Pig script.
   *                    "description" - General description on what this DAG is going to do.
   *                                In the case of Hive, this could be the SQL query text.
   * @return {@link DAG}
   */
{code}
It would be useful to show this information.


---

* [TEZ-2447](https://issues.apache.org/jira/browse/TEZ-2447) | *Major* | **Tez UI: Generic changes based on feedbacks.**

1. Status icon in all DAGs table is not inline with the text always.
2. Downloaded zip file must have type application/zip
3. KILLED status must be removed from All Dags status dropdown.
4. Text color must be made darker.


---

* [TEZ-2446](https://issues.apache.org/jira/browse/TEZ-2446) | *Major* | **Tez UI: Add tezVersion details when downloading timeline data for offline use**

TEZ-2159 - Enables downloading timeline data for offline use.  It would be good to add TEZ\_APPLICATION (Which contains tezVersion, configs etc) along with this.
\cc [~pramachandran]


---

* [TEZ-2436](https://issues.apache.org/jira/browse/TEZ-2436) | *Major* | **Tez UI: Add cancel button in column selector.**

Add cancel button beside OK and realign select all checkbox.


---

* [TEZ-2423](https://issues.apache.org/jira/browse/TEZ-2423) | *Major* | **Tez UI: Remove Attempt Index column from task-\>attempts page**

Attempt Index and Attempt No serves the same purpose.


---

* [TEZ-2406](https://issues.apache.org/jira/browse/TEZ-2406) | *Major* | **Tez UI: Display per-io counter columns in task and attempt pages under vertex**

- We will auto-populate all the counter names including io counter names to the tasks (under a vertex) and task attempts (under task, vertex).
- To enable navigation the column names will be searchable in the pop-up for column selection.
- Per-io counter names will not be stored in the personalization settings given they are dag / vertex specific.


---

* [TEZ-1970](https://issues.apache.org/jira/browse/TEZ-1970) | *Major* | **Fix javadoc warnings in SortMergeJoinExample**

test-patch reports 3 existing javadoc warnings.


---

* [TEZ-1752](https://issues.apache.org/jira/browse/TEZ-1752) | *Major* | **Inputs / Outputs in the Runtime library should be interruptable**

Not possible to preempt tasks without killing containers without this.

There's still the problem of Processors not supporting interrupts. We may need API enhancements to either query IPOs on whether they are interrupbtible.



