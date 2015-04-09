
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
#  4.0.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [OOZIE-1756](https://issues.apache.org/jira/browse/OOZIE-1756) | *Major* | **hadoop-auth version is wrong if profile isn't selected**

In the hadooplibs for the non-sepecified version of hadoop (e.g. if you build with no profile (i.e. Hadoop 1) and look at the hadoop-2 sharelib), it will have the wrong version of the hadoop-auth jar.


---

* [OOZIE-1736](https://issues.apache.org/jira/browse/OOZIE-1736) | *Major* | **Switch to Hadoop 2.3.0 for the hadoop-2 profile**

We should update the "hadoop-2" profile to use Hadoop 2.3.0 instead of 2.2.0.  Y! has done some QE runs on it and I also just tried all of the unit tests.


---

* [OOZIE-1630](https://issues.apache.org/jira/browse/OOZIE-1630) | *Major* | **\<prepare\> operations fail when path doesn't have scheme**

hitting exception "Scheme not present in uri /user/aaaa/test\_hbase\_workflow/output" when doing something like <mkdir path ="/user/aaaa/test\_hbase\_workflow/output"/>.  it should default to hdfs when no scheme specified considering typical use case, also use default namenode if not specified.


---

* [OOZIE-1626](https://issues.apache.org/jira/browse/OOZIE-1626) | *Major* | **pig action pop-up is not working properly in UI**

pop-up doesn't show up when pig job failed and externalChildIDs is "null" (as string)


---

* [OOZIE-1607](https://issues.apache.org/jira/browse/OOZIE-1607) | *Minor* | **[Doc]Update workflow specification for chgrp command.**

Current Doc...
----------------------
workflow-app name="[WF-DEF-NAME]" xmlns="uri:oozie:workflow:0.1">
    ...
    <action name="[NODE-NAME]">
        <fs>
            <delete path='[PATH]'/>
            ...
            <mkdir path='[PATH]'/>
            ...
            <move source='[SOURCE-PATH]' target='[TARGET-PATH]'/>
            ...
            <chmod path='[PATH]' permissions='[PERMISSIONS]' dir-files='false' />
            ...
            <touchz path='[PATH]' />
            ...
            <chmod path='[PATH]' group='[GROUP]' dir-files='false' />  <<<<< This should be chgrp 
        </fs>
        <ok to="[NODE-NAME]"/>
        <error to="[NODE-NAME]"/>
    </action>
    ...
</workflow-app>
-----------------------------

Last command "<chmod path='[PATH]' group='[GROUP]' dir-files='false' /> " is for chgrp.


---

* [OOZIE-1582](https://issues.apache.org/jira/browse/OOZIE-1582) | *Major* | **Bump up Tomcat version to 6.0.37**

Tomcat 6.0.37 fixes two security issues (http://tomcat.apache.org/security-6.html).  We should upgrade from 6.0.36 to incorporate them.


---

* [OOZIE-1573](https://issues.apache.org/jira/browse/OOZIE-1573) | *Major* | **coord:tzOffset() gives incorrect offset for daylight saving timezones**

Case 1:

Daily job run through oozie bundle
Coordinator time Zone: UTC
Dataset timezone: America/New\_York
Start Time: 2013-10-13T00:00Z
End Time: 2013-10-14T00:00Z

Return from tzOffset() function: 4 hrs (which is correct)


Case 2:

Daily job run through oozie bundle
Coordinator time Zone: UTC
Dataset timezone: America/New\_York
Start Time: 2012-11-13T00:00Z
End Time: 2012-11-14T00:00Z

Return from tzOffset() function: 4 hrs (which is not correct as difference between GMT and America/New\_York timezone should be 5 hrs).


---

* [OOZIE-1565](https://issues.apache.org/jira/browse/OOZIE-1565) | *Major* | **OOZIE-1481 should only affect v2 of the API, not v1**

OOZIE-1481 changed the behavior of the v1 API such that when getting coord info, specifying {{len=0}} now returns 0 actions instead of all actions.  Also, on the REST call, not specifying any {{len}} parameter is interpreted by the Oozie server as {{len=0}}.  

This is a logically backwards incompatible change.  We should keep this change in the v2 API, but change the v1 API back to the original (incorrect) behavior.


---

* [OOZIE-1563](https://issues.apache.org/jira/browse/OOZIE-1563) | *Major* | **colt jar includes GPL licence**

I believe the colt jar is introduced in the SLA feature. The "Hep" class inside the jar has GPL licence which restricts the usage and distribution of oozie.


---

* [OOZIE-1551](https://issues.apache.org/jira/browse/OOZIE-1551) | *Blocker* | **Change hadoop-2 profile to use 2.2.0**

We should change the hadoop-2 profile to use 2.2.0 (GA) instead of 2.2.0-SNAPSHOT now that its been released.


---

* [OOZIE-1542](https://issues.apache.org/jira/browse/OOZIE-1542) | *Minor* | **When extjs isn't installed, the web UI is unhelpfully blank**

When extjs isn't installed, the web UI page is currently unhelpfully blank (it has the oozie logo and docs link).  In the past (when it used to be an html page instead of a jsp page) it had some text to let the user know that they have to install extjs to see the UI.  

It would be good to put back the same or similar text; otherwise, users may be confused why they can't see the UI if they forget to install extjs.


---

* [OOZIE-1284](https://issues.apache.org/jira/browse/OOZIE-1284) | *Major* | **oozie.service.SchemaService.wf.ext.schemas in oozie-site is missing some newer xsd files**

In oozie-site.xml, we have the following listed under {{oozie.service.SchemaService.wf.ext.schemas}}:
{noformat}
shell-action-0.1.xsd
shell-action-0.2.xsd
email-action-0.1.xsd
hive-action-0.2.xsd
hive-action-0.3.xsd
sqoop-action-0.2.xsd
sqoop-action-0.3.xsd
ssh-action-0.1.xsd
distcp-action-0.1.xsd
{noformat}

It's missing the following xsd files:
{noformat}
distcp-action-0.2.xsd
hive-action-0.4.xsd
shell-action-0.3.xsd
sqoop-action-0.4.xsd
{noformat}

If I recall correctly, this will cause Oozie to reject workflows using those versions of those extension action schemas.



