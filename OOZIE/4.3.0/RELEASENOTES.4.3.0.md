
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
# Apache Oozie  4.3.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [OOZIE-2400](https://issues.apache.org/jira/browse/OOZIE-2400) | *Major* | **Workflow xml configuration parser cannot deal with namespace prefix**

When running a java action and a spark action via an oozie workflow xml, the xml contains multiple namespaces (e.g. uri:oozie:workflow:0.5 and uri:oozie:spark-action:0.1).
Thus the elements need to be prefixed by the namespace prefix. But when running this workflow, the configuration parser throws the exception "\*JA009: bad conf file: top-level element not \<configuration\>\*".

The bug is located in class org.apache.oozie.util.XConfiguration in methods "parseDocument(Document doc)" and "processNodes(Element root)". The xml tags here are retrieved via "getTagName()", (which gets the full tag name) and compared against string constants like "configuration". So this fails in case the tag contains a namespace prefix and it seems there is no workaround!

Here is an easy fix for this. All calls of "getTagName()" in these 2 methods can be replaced by "getLocalName()".


---

* [OOZIE-2565](https://issues.apache.org/jira/browse/OOZIE-2565) | *Minor* | **[Oozie web Console] Make the timezones in settings tab to be sorted by default**

Currently, the timezone field in the settings tab in the oozie web console is not sorted.
This makes it difficult to select the intended timezone as the user has to scroll through all the timezones until he finds the intended one.

Is the field is sorted, this will help him to navigate to the concerned timezone.



