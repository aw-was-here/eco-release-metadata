
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
# Hadoop HADOOP 2.5.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HADOOP-10568](https://issues.apache.org/jira/browse/HADOOP-10568) | *Major* | **Add s3 server-side encryption**

s3 server-side encryption is now supported.

To enable this feature, specify the following in your client-side configuration:

name: fs.s3n.server-side-encryption-algorithm
value: AES256


---

* [HADOOP-10451](https://issues.apache.org/jira/browse/HADOOP-10451) | *Trivial* | **Remove unused field and imports from SaslRpcServer**

SaslRpcServer.SASL\_PROPS is removed.
Any use of this variable  should be replaced with the following code: 
SaslPropertiesResolver saslPropsResolver = SaslPropertiesResolver.getInstance(conf); 
Map<String, String> sasl\_props = saslPropsResolver.getDefaultProperties();


---

* [HADOOP-10342](https://issues.apache.org/jira/browse/HADOOP-10342) | *Major* | **Extend UserGroupInformation to return a UGI given a preauthenticated kerberos Subject**

Add getUGIFromSubject to leverage an external kerberos authentication


---

* [HADOOP-9919](https://issues.apache.org/jira/browse/HADOOP-9919) | *Major* | **Update hadoop-metrics2.properties examples to Yarn**

Remove MRv1 settings from hadoop-metrics2.properties, add YARN settings instead.



