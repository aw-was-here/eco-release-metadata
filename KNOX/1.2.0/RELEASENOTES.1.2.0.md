
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
# Apache 1.5.0  1.2.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [KNOX-1421](https://issues.apache.org/jira/browse/KNOX-1421) | *Major* | **Enable OWASP Dependency Check**

 Please add OWASP Dependency Check to the build (pom.xml).  OWASP DC makes an outbound REST call to MITRE Common Vulnerabilities & Exposures (CVE) to perform a lookup for each dependant .jar to list any/all known vulnerabilities for each jar.  This step is needed because a manual MITRE CVE lookup/check on the main component does not include checking for vulnerabilities in components or in dependant libraries.

OWASP Dependency check : https://www.owasp.org/index.php/OWASP\_Dependency\_Check has plug-ins for most Java build/make types (ant, maven, ivy, gradle).   

Also, add the appropriate command to the nightly build to generate a report of all known vulnerabilities in any/all third party libraries/dependencies that get pulled in. example : mvn -Powasp -Dtest=false -DfailIfNoTests=false clean aggregate

Generating this report nightly/weekly will help inform the project's development team if any dependant libraries have a newly discovered & reported known vulnerailities.  Project teams that keep up with removing vulnerabilities on a weekly basis will help protect businesses that rely on these open source componets.



