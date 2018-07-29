
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
# Apache Knox  1.1.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [KNOX-1332](https://issues.apache.org/jira/browse/KNOX-1332) | *Critical* | **Document for the New Knox Gateway Service - ElasticSearch**

The newly developed Knox Gateway service - ElasticSearch  needs User's Guide documentation for users to correctly configure topology for the service and perform ElasticSearch operations (root query and index creating, refreshing, deleting and data operations - writing, upgrading and retrieval) via Knox. This Jira of Knox is created as per the request/suggest of Larry McCay of Apache Knox Community (https://issues.apache.org/jira/browse/KNOX-1155).


---

* [KNOX-1155](https://issues.apache.org/jira/browse/KNOX-1155) | *Critical* | **Knox Gateway Service for ElasticSearch**

We have used a lot of Knox Gateway Services and ElasticSearch service on our Big Data platforms. However there are no Knox Gateway Service for ElasticSearch yet.  In our situation, we need such a Knox Gateway Service for ElasticSearch without Knox to do the …
authentication but ElasticSearch Rest Server(s) to do the authentication. As per our use case, we have developed such a Knox Gateway ElasticSearch Service (services/elasticsearch/1.0.0), and we are in a mode to share the code to the Apache Knox community because it has been fully tested for the following scenarios:
(1)	No-LDAP, Local-LDAP or company-specific-LDAP authentication in the Knox gateway;
(2)	Any Elasitcsearch Index - creation, deletion, refresshing and data - writing, updating and retrieval;
(3)	Elasticsearch node root query.



