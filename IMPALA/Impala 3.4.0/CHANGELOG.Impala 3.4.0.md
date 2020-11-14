
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
# Apache Impala Changelog

## Release Impala 3.4.0 - 2020-04-24



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-8909](https://issues.apache.org/jira/browse/IMPALA-8909) | Timestamp timezone conversion causes impalad crash |  Blocker | Backend | qi | Csaba Ringhofer |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-8913](https://issues.apache.org/jira/browse/IMPALA-8913) | Add query option for disabling HBase row estimation |  Major | . | Quanlong Huang | Quanlong Huang |
| [IMPALA-8228](https://issues.apache.org/jira/browse/IMPALA-8228) | Support for object ownership with Ranger authorization provider |  Major | Catalog, Frontend | Fredy Wijaya | Bharath Vissapragada |
| [IMPALA-4050](https://issues.apache.org/jira/browse/IMPALA-4050) | Support starting webserver specified by hostname |  Major | Backend | hewenting | Thomas Tauber-Marshall |
| [IMPALA-9092](https://issues.apache.org/jira/browse/IMPALA-9092) | Add support for creating external Kudu table |  Blocker | Frontend | Joe McDonnell | Vihang Karajgaonkar |
| [IMPALA-9009](https://issues.apache.org/jira/browse/IMPALA-9009) | Core support for column mask transformation in select list |  Critical | Frontend | Kurt Deschler | Quanlong Huang |
| [IMPALA-9010](https://issues.apache.org/jira/browse/IMPALA-9010) | Support pre-defined mask types from Ranger UI |  Blocker | Frontend | Kurt Deschler | Quanlong Huang |
| [IMPALA-9348](https://issues.apache.org/jira/browse/IMPALA-9348) | Add flag to disable column masking feature |  Critical | . | Quanlong Huang | Quanlong Huang |
| [IMPALA-5092](https://issues.apache.org/jira/browse/IMPALA-5092) | Support for VARCHAR for Kudu tables |  Major | Backend | Farzana Kader | Grant Henke |
| [IMPALA-6169](https://issues.apache.org/jira/browse/IMPALA-6169) | Implement DATE type |  Major | Backend | Quanlong Huang | Attila Jeges |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-8866](https://issues.apache.org/jira/browse/IMPALA-8866) | Bump versions of components |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-8885](https://issues.apache.org/jira/browse/IMPALA-8885) | Improve parquet version metadata error |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-8584](https://issues.apache.org/jira/browse/IMPALA-8584) | Add support for cookie-based authentication |  Critical | Backend | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-8895](https://issues.apache.org/jira/browse/IMPALA-8895) | Expose daemon health on /healthz endpoint |  Major | Backend | Lars Volker | Lars Volker |
| [IMPALA-8892](https://issues.apache.org/jira/browse/IMPALA-8892) | Add tools to Docker images |  Major | . | Lars Volker | Lars Volker |
| [IMPALA-8912](https://issues.apache.org/jira/browse/IMPALA-8912) | Avoid calling computeStats twice on HBaseScanNode |  Major | Frontend | Quanlong Huang | Quanlong Huang |
| [IMPALA-8797](https://issues.apache.org/jira/browse/IMPALA-8797) | Blacklist "sys" and "information\_schema" databases from Hive |  Critical | Catalog, Frontend | Bharath Vissapragada | Quanlong Huang |
| [IMPALA-8897](https://issues.apache.org/jira/browse/IMPALA-8897) | Fully qualify all paths on the webserver |  Critical | Infrastructure | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-8923](https://issues.apache.org/jira/browse/IMPALA-8923) | Don't need synchronized in HBaseTable.getEstimatedRowStats |  Major | Frontend | Quanlong Huang | Quanlong Huang |
| [IMPALA-8580](https://issues.apache.org/jira/browse/IMPALA-8580) | Impala Doc: Explain SimpleDateFormat in Impala |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8548](https://issues.apache.org/jira/browse/IMPALA-8548) | Include Documentation About Ordinal Substitution |  Minor | Docs | David Mollitor | Alexandra Rodoni |
| [IMPALA-8586](https://issues.apache.org/jira/browse/IMPALA-8586) | bin/bootstrap\_toolchain.py should support URL environment variables for CDP components |  Critical | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-8936](https://issues.apache.org/jira/browse/IMPALA-8936) | Make queuing reason for unhealthy executor groups more generic |  Major | Backend | Lars Volker | Lars Volker |
| [IMPALA-8935](https://issues.apache.org/jira/browse/IMPALA-8935) | Add links to other daemons from webui |  Major | Infrastructure | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-8634](https://issues.apache.org/jira/browse/IMPALA-8634) | Catalog client should be resilient to temporary Catalog outage |  Critical | Catalog | Michael Ho | Sahil Takiar |
| [IMPALA-7350](https://issues.apache.org/jira/browse/IMPALA-7350) | More accurate memory estimates for admission |  Major | Frontend | Tim Armstrong | Bikramjeet Vig |
| [IMPALA-8942](https://issues.apache.org/jira/browse/IMPALA-8942) | Set file format specific values for split sizes on non-block stores |  Major | Frontend | Sahil Takiar | Sahil Takiar |
| [IMPALA-4268](https://issues.apache.org/jira/browse/IMPALA-4268) | Rework coordinator buffering to buffer more data |  Major | Backend | Henry Robinson |  |
| [IMPALA-8451](https://issues.apache.org/jira/browse/IMPALA-8451) | Default configs for admission control |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-8905](https://issues.apache.org/jira/browse/IMPALA-8905) | Add admission control metric to expose queue time out config for a pool |  Major | . | Bikramjeet Vig | Tim Armstrong |
| [IMPALA-8928](https://issues.apache.org/jira/browse/IMPALA-8928) | Add query option to only set the mem limit on executors |  Major | . | Bikramjeet Vig | Bikramjeet Vig |
| [IMPALA-7322](https://issues.apache.org/jira/browse/IMPALA-7322) | Add storage wait time to profile for operations with metadata load |  Major | Frontend | Balazs Jeszenszky | Yongzhi Chen |
| [IMPALA-7637](https://issues.apache.org/jira/browse/IMPALA-7637) | Include more hash table stats in profile |  Major | Backend | Tim Armstrong | Yongzhi Chen |
| [IMPALA-9005](https://issues.apache.org/jira/browse/IMPALA-9005) | Simplify distcc server bootstrapping |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-8656](https://issues.apache.org/jira/browse/IMPALA-8656) | Support for eagerly fetching and spooling all query result rows |  Critical | Backend | Michael Ho | Sahil Takiar |
| [IMPALA-8899](https://issues.apache.org/jira/browse/IMPALA-8899) | Add cookie support to the webui |  Major | Infrastructure | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-8898](https://issues.apache.org/jira/browse/IMPALA-8898) | Delete cookies on 401 |  Critical | Clients | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-9033](https://issues.apache.org/jira/browse/IMPALA-9033) | Log metrics for slow I/Os |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-9028](https://issues.apache.org/jira/browse/IMPALA-9028) | Impala shell should not try to reconnect when quitting |  Major | Clients | Joe McDonnell | Joe McDonnell |
| [IMPALA-9002](https://issues.apache.org/jira/browse/IMPALA-9002) | Add flag to only check SELECT priviledge in GET\_TABLES |  Major | Security | Quanlong Huang | Quanlong Huang |
| [IMPALA-8884](https://issues.apache.org/jira/browse/IMPALA-8884) | Track Read(), Open() and Write() operation time per disk queue |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-9070](https://issues.apache.org/jira/browse/IMPALA-9070) | Include table location information in lineage graphs for external tables. |  Critical | Frontend | Anurag Mantripragada | Anurag Mantripragada |
| [IMPALA-6501](https://issues.apache.org/jira/browse/IMPALA-6501) | Optimize count(\*) for Kudu scans |  Major | Backend | Tim Armstrong | Norbert Luksa |
| [IMPALA-9066](https://issues.apache.org/jira/browse/IMPALA-9066) | Add a favicon to the webui |  Major | . | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-9060](https://issues.apache.org/jira/browse/IMPALA-9060) | Slow I/O logging is quite verbose on S3 |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7504](https://issues.apache.org/jira/browse/IMPALA-7504) | ParseKerberosPrincipal() should use krb5\_parse\_name() instead |  Minor | Security | Michael Ho | Xiaomeng Zhang |
| [IMPALA-8855](https://issues.apache.org/jira/browse/IMPALA-8855) | Impala docs do not mention all places VALUES clause can be used |  Major | Docs | Tim Armstrong | Alexandra Rodoni |
| [IMPALA-8525](https://issues.apache.org/jira/browse/IMPALA-8525) | preads should use hdfsPreadFully rather than hdfsPread |  Major | Backend | Sahil Takiar | Sahil Takiar |
| [IMPALA-9026](https://issues.apache.org/jira/browse/IMPALA-9026) | Add an option to use resolved IP address for Statestore subscriber |  Minor | Distributed Exec | Michael Ho | Michael Ho |
| [IMPALA-9090](https://issues.apache.org/jira/browse/IMPALA-9090) | Scan node in HDFS profile should include name of table being scanned |  Critical | Backend | Tim Armstrong | Xiaomeng Zhang |
| [IMPALA-9127](https://issues.apache.org/jira/browse/IMPALA-9127) | Clean up probe-side state machine in hash join |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-8863](https://issues.apache.org/jira/browse/IMPALA-8863) | Add support to run tests over HS2-HTTP |  Major | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-9198](https://issues.apache.org/jira/browse/IMPALA-9198) | Add docs about impala-shell with tlsv1.2 |  Major | Docs | Thomas Marshall | Alexandra Rodoni |
| [IMPALA-8065](https://issues.apache.org/jira/browse/IMPALA-8065) | OSInfo produces somewhat misleading output when running in container |  Critical | Backend | Tim Armstrong | Xiaomeng Zhang |
| [IMPALA-9181](https://issues.apache.org/jira/browse/IMPALA-9181) | Serialize TQueryCtx once per query |  Major | Backend | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-9126](https://issues.apache.org/jira/browse/IMPALA-9126) | Cleanly separate build and probe state in hash join node |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-9235](https://issues.apache.org/jira/browse/IMPALA-9235) | Backport Kudu socket stats for /rpcz |  Major | Distributed Exec | Tim Armstrong | Tim Armstrong |
| [IMPALA-7117](https://issues.apache.org/jira/browse/IMPALA-7117) | Lower debug level for HDFS S3 connector back to INFO |  Blocker | Frontend | Lars Volker | Sahil Takiar |
| [IMPALA-9231](https://issues.apache.org/jira/browse/IMPALA-9231) | Use simplified privilege checks for show databases |  Major | . | Vihang Karajgaonkar | Quanlong Huang |
| [IMPALA-9195](https://issues.apache.org/jira/browse/IMPALA-9195) | Using multithreaded execution to accelerate ‘show tables/databases’ |  Critical | Frontend | xuzhou | xuzhou |
| [IMPALA-9197](https://issues.apache.org/jira/browse/IMPALA-9197) | Hash table lookup should be read-only |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-9302](https://issues.apache.org/jira/browse/IMPALA-9302) | Multithreaded scanners don't check for filter effectiveness |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6393](https://issues.apache.org/jira/browse/IMPALA-6393) | live\_summary and live\_progress are not supported in impalarc |  Minor | Infrastructure | Lars Volker | Wenzhe Zhou |
| [IMPALA-4400](https://issues.apache.org/jira/browse/IMPALA-4400) | Aggregate runtime filters locally |  Major | Backend | Marcel Kinard | Tim Armstrong |
| [IMPALA-9330](https://issues.apache.org/jira/browse/IMPALA-9330) | Support masking queries containing correlated collection references |  Critical | . | Quanlong Huang | Quanlong Huang |
| [IMPALA-4224](https://issues.apache.org/jira/browse/IMPALA-4224) | Add backend support for join build sinks in parallel plans |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-8759](https://issues.apache.org/jira/browse/IMPALA-8759) | Use double precision for HLL |  Major | Backend | Peter Ebert | Wenzhe Zhou |
| [IMPALA-9226](https://issues.apache.org/jira/browse/IMPALA-9226) | Improve string allocations of the ORC scanner |  Major | . | Zoltán Borók-Nagy | Norbert Luksa |
| [IMPALA-9439](https://issues.apache.org/jira/browse/IMPALA-9439) | Make --scale a mandatory option in single\_node\_perf\_run.py |  Major | . | Sahil Takiar | Sahil Takiar |
| [IMPALA-9228](https://issues.apache.org/jira/browse/IMPALA-9228) | ORC scanner could be vectorized |  Major | . | Zoltán Borók-Nagy | Gabor Kaszab |
| [IMPALA-9384](https://issues.apache.org/jira/browse/IMPALA-9384) | Improve Impala shell usability by enabling live\_progress in interactive mode |  Major | Clients | Alice Fan | Alice Fan |
| [IMPALA-9456](https://issues.apache.org/jira/browse/IMPALA-9456) | Allow disabling kerberos for incoming internal and external connections even if --principal is set |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-9359](https://issues.apache.org/jira/browse/IMPALA-9359) | Recover gracefully from corrupt kerberos credential cache |  Major | Security | Tim Armstrong | Tim Armstrong |
| [IMPALA-9430](https://issues.apache.org/jira/browse/IMPALA-9430) | Kerberos configs should be passed through to Kerberos libraries even if principal is not set |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-8361](https://issues.apache.org/jira/browse/IMPALA-8361) | Bound predicates optimization doesn't work for InlineView |  Major | Frontend | Fu Lili | Xianqing He |
| [IMPALA-8583](https://issues.apache.org/jira/browse/IMPALA-8583) | Add metrics for authentication |  Major | Backend | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-9577](https://issues.apache.org/jira/browse/IMPALA-9577) | Use \`system\_unsync\` time for Kudu test clusters |  Major | . | Grant Henke | Grant Henke |
| [IMPALA-9462](https://issues.apache.org/jira/browse/IMPALA-9462) | Switch website links to downloads.apache.org |  Blocker | Infrastructure | Tim Armstrong | Laszlo Gaal |
| [IMPALA-9182](https://issues.apache.org/jira/browse/IMPALA-9182) | Print the socket address of the client closing a session or cancelling a query from the WebUI |  Minor | . | Vincent Tran | Vincent Tran |
| [IMPALA-8005](https://issues.apache.org/jira/browse/IMPALA-8005) | Randomize partitioning exchanges destinations |  Major | Distributed Exec | Michael Ho | Anurag Mantripragada |
| [IMPALA-6506](https://issues.apache.org/jira/browse/IMPALA-6506) | Codegen in ORC scanner |  Major | Backend | Quanlong Huang | Gabor Kaszab |
| [IMPALA-6042](https://issues.apache.org/jira/browse/IMPALA-6042) | Allow Impala shell to also use a global impalarc configuration |  Minor | Clients | Balazs Jeszenszky | Ethan |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-8869](https://issues.apache.org/jira/browse/IMPALA-8869) | Fix handling of HTTP keep-alive when returning 401 |  Blocker | Clients | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-8880](https://issues.apache.org/jira/browse/IMPALA-8880) | EventsProcessorStressTest.testUsingRandomHiveQueries seems to be a flaky test |  Blocker | . | Fang-Yu Rao | Vihang Karajgaonkar |
| [IMPALA-8873](https://issues.apache.org/jira/browse/IMPALA-8873) | LdapImpalaShellTest.testShellLdapAuth failed because Python version is too old |  Blocker | . | Fang-Yu Rao | Bharath Vissapragada |
| [IMPALA-7027](https://issues.apache.org/jira/browse/IMPALA-7027) | Multiple Cast to Varchar with different limit fails with "AnalysisException: null CAUSED BY: IllegalArgumentException: " |  Major | Frontend | Meenakshi | Yongzhi Chen |
| [IMPALA-8760](https://issues.apache.org/jira/browse/IMPALA-8760) | TestAdmissionControllerStress.test\_mem\_limit timed out waiting for query to end |  Major | Backend | Sahil Takiar | Bikramjeet Vig |
| [IMPALA-7604](https://issues.apache.org/jira/browse/IMPALA-7604) | In AggregationNode.computeStats, handle cardinality overflow better |  Major | Frontend | Paul Rogers | Tim Armstrong |
| [IMPALA-8902](https://issues.apache.org/jira/browse/IMPALA-8902) | TestResultSpooling.test\_spilling is flaky |  Critical | . | Attila Jeges | Sahil Takiar |
| [IMPALA-8896](https://issues.apache.org/jira/browse/IMPALA-8896) | alterPartitionsWithTransaction() emits too many alter table operations |  Major | . | Zoltán Borók-Nagy | Zoltán Borók-Nagy |
| [IMPALA-8907](https://issues.apache.org/jira/browse/IMPALA-8907) | TestResultSpooling.test\_slow\_query is flaky |  Major | . | Sahil Takiar | Sahil Takiar |
| [IMPALA-8791](https://issues.apache.org/jira/browse/IMPALA-8791) | Handle the case where there is no fragment scheduled on the coordinator for a query |  Major | . | Bikramjeet Vig | Bikramjeet Vig |
| [IMPALA-8921](https://issues.apache.org/jira/browse/IMPALA-8921) | Use kerberos short name for ranger requests. |  Blocker | Catalog, Frontend | Bharath Vissapragada | Bharath Vissapragada |
| [IMPALA-8931](https://issues.apache.org/jira/browse/IMPALA-8931) | Fe not generating lineages when event hooks are configured |  Major | Frontend | Bharath Vissapragada | Bharath Vissapragada |
| [IMPALA-8915](https://issues.apache.org/jira/browse/IMPALA-8915) | Re-fix # links on /catalog page. |  Minor | . | Thomas Tauber-Marshall | Tim Armstrong |
| [IMPALA-8904](https://issues.apache.org/jira/browse/IMPALA-8904) | Daemons fails fast when statestore has not started up |  Major | Distributed Exec | Tim Armstrong | Tim Armstrong |
| [IMPALA-8917](https://issues.apache.org/jira/browse/IMPALA-8917) | Including hostnames in debug UI URLs breaks a lot of use cases |  Blocker | Infrastructure | Tim Armstrong | Thomas Tauber-Marshall |
| [IMPALA-8933](https://issues.apache.org/jira/browse/IMPALA-8933) | Ranger column deny policies not respected under certain circumstances |  Major | Security | Kurt Deschler | Kurt Deschler |
| [IMPALA-8718](https://issues.apache.org/jira/browse/IMPALA-8718) | Incorrect AnalysisException with outer join complex type column |  Major | Frontend | Tamas Mate | Quanlong Huang |
| [IMPALA-8932](https://issues.apache.org/jira/browse/IMPALA-8932) | impala shell shouldn't retry with kerberos when connecting over http |  Critical | Clients | Tim Armstrong | Tim Armstrong |
| [IMPALA-8945](https://issues.apache.org/jira/browse/IMPALA-8945) | Impala Doc: Incorrect Claim of Equivalence in Impala Docs |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8947](https://issues.apache.org/jira/browse/IMPALA-8947) | SCRATCH\_ALLOCATION\_FAILED error uses wrong utilisation metric |  Critical | . | Tim Armstrong | Tim Armstrong |
| [IMPALA-8948](https://issues.apache.org/jira/browse/IMPALA-8948) | [DOCS]  Review "How Impala Works with Hadoop File Formats" |  Minor | Docs | Vincent Tran | Alexandra Rodoni |
| [IMPALA-4057](https://issues.apache.org/jira/browse/IMPALA-4057) | Start webserver with interface"127.0.0.1" failed. |  Trivial | Infrastructure | hewenting | Thomas Tauber-Marshall |
| [IMPALA-8858](https://issues.apache.org/jira/browse/IMPALA-8858) |  Add metrics to improve observability of idle executor groups |  Major | . | Andrew Sherman | Bikramjeet Vig |
| [IMPALA-2312](https://issues.apache.org/jira/browse/IMPALA-2312) | Timing bug in both MonotonicStopWatch and StopWatch |  Minor | Backend | Henry Robinson | Tim Armstrong |
| [IMPALA-8647](https://issues.apache.org/jira/browse/IMPALA-8647) | The cardinality associated with a SelectNode is 0 even if its child node has a non-zero cardinality |  Minor | Frontend | Fang-Yu Rao | Tim Armstrong |
| [IMPALA-8957](https://issues.apache.org/jira/browse/IMPALA-8957) | TestFetchAndSpooling.test\_rows\_sent\_counters is flaky |  Major | Backend | Sahil Takiar | Sahil Takiar |
| [IMPALA-8982](https://issues.apache.org/jira/browse/IMPALA-8982) | Fix webserver handling of OPTIONS |  Major | Clients | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-8946](https://issues.apache.org/jira/browse/IMPALA-8946) | Prometheus histograms do not follow conventions |  Minor | Backend | Guillem | Guillem |
| [IMPALA-8973](https://issues.apache.org/jira/browse/IMPALA-8973) | Update Kudu version to fix openssl1.1.1 compatibility issue |  Major | Infrastructure | Kurt Deschler | Kurt Deschler |
| [IMPALA-8977](https://issues.apache.org/jira/browse/IMPALA-8977) | Native toolchain docker image build references non-existent maven tarball |  Blocker | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-8960](https://issues.apache.org/jira/browse/IMPALA-8960) | test\_drop\_if\_exists fails on S3 due to incomplete URI |  Critical | . | Zoltán Borók-Nagy | Joe McDonnell |
| [IMPALA-9001](https://issues.apache.org/jira/browse/IMPALA-9001) | Fix SPNEGO for requests with no "Authorization" |  Critical | . | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-8978](https://issues.apache.org/jira/browse/IMPALA-8978) | Native toolchain Centos 6 docker image build is broken |  Blocker | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-8962](https://issues.apache.org/jira/browse/IMPALA-8962) | FETCH\_ROWS\_TIMEOUT\_MS should apply before rows are available |  Major | Clients | Sahil Takiar | Sahil Takiar |
| [IMPALA-8996](https://issues.apache.org/jira/browse/IMPALA-8996) | test\_show\_create\_table in test\_zorder.py failed |  Major | Frontend | Michael Ho | Norbert Luksa |
| [IMPALA-9034](https://issues.apache.org/jira/browse/IMPALA-9034) | ccache + distcc doesn't work with local ccache |  Minor | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-8498](https://issues.apache.org/jira/browse/IMPALA-8498) | Write column index for floating types when NaN is not present |  Major | . | Zoltán Borók-Nagy | Norbert Luksa |
| [IMPALA-9054](https://issues.apache.org/jira/browse/IMPALA-9054) | Flaky test: test\_misformatted\_profile\_text in query\_test/test\_cancellation.py |  Major | . | Quanlong Huang | Tim Armstrong |
| [IMPALA-8742](https://issues.apache.org/jira/browse/IMPALA-8742) | ScannerContext::eosr() should depends on scan\_range-\>bytes\_to\_read() instead of scan\_range-\>len() |  Minor | Backend | Chen Wang | Zoltán Borók-Nagy |
| [IMPALA-9025](https://issues.apache.org/jira/browse/IMPALA-9025) | An Impala query fails with error "ERROR: IllegalStateException: null" |  Major | Frontend | Yongzhi Chen | Yongzhi Chen |
| [IMPALA-8969](https://issues.apache.org/jira/browse/IMPALA-8969) | Grouping aggregator can cause segmentation fault when doing multiple aggregations. |  Major | . | Zoltán Borók-Nagy | Zoltán Borók-Nagy |
| [IMPALA-9055](https://issues.apache.org/jira/browse/IMPALA-9055) | HDFS Caching with Impala: Expiration 26687997791:19:48:13.951 exceeds the max relative expiration time of \<maxTtl\> |  Major | Catalog | Adriano | Zoltán Borók-Nagy |
| [IMPALA-9087](https://issues.apache.org/jira/browse/IMPALA-9087) | test\_mt\_dop\_fallback appears flaky |  Blocker | Infrastructure | Thomas Tauber-Marshall | Tim Armstrong |
| [IMPALA-8995](https://issues.apache.org/jira/browse/IMPALA-8995) | TestAdmissionController.test\_statestore\_outage seems flaky |  Blocker | Backend | Alice Fan | Bikramjeet Vig |
| [IMPALA-8842](https://issues.apache.org/jira/browse/IMPALA-8842) | Impala should set correct value for 'engine' column in TAB\_COL\_STATS HMS table and read stats accordingly |  Critical | Catalog | Attila Jeges | Attila Jeges |
| [IMPALA-9095](https://issues.apache.org/jira/browse/IMPALA-9095) | Alter table events generated by renames are not renaming the table to a different DB. |  Critical | Frontend | Anurag Mantripragada | Anurag Mantripragada |
| [IMPALA-9067](https://issues.apache.org/jira/browse/IMPALA-9067) | Impala Doc: Relabel the Ports table correctly |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8815](https://issues.apache.org/jira/browse/IMPALA-8815) | Ranger fail to start in minicluster if you source set-classpath.sh |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-9108](https://issues.apache.org/jira/browse/IMPALA-9108) | Unused leveldbjni dependency triggers some security scanners |  Critical | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-9073](https://issues.apache.org/jira/browse/IMPALA-9073) | Failed test during pre-commit: custom\_cluster.test\_executor\_groups.TestExecutorGroups.test\_executor\_concurrency |  Critical | Backend | Anurag Mantripragada | Tim Armstrong |
| [IMPALA-9094](https://issues.apache.org/jira/browse/IMPALA-9094) | Update test\_hms\_integration.py test\_compute\_stats\_get\_to\_hive to account for separate Hive/Impala statistics |  Blocker | Frontend | Joe McDonnell | Attila Jeges |
| [IMPALA-9030](https://issues.apache.org/jira/browse/IMPALA-9030) | Handle translated external Kudu tables |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [IMPALA-9052](https://issues.apache.org/jira/browse/IMPALA-9052) | Events processor goes into error state if there are events on blacklisted db or table |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [IMPALA-8692](https://issues.apache.org/jira/browse/IMPALA-8692) | Gracefully fail complex type inserts |  Blocker | Frontend | Abhishek Rawat | Abhishek Rawat |
| [IMPALA-8557](https://issues.apache.org/jira/browse/IMPALA-8557) | Impala on ABFS failed with error "IllegalArgumentException: ABFS does not allow files or directories to end with a dot." |  Major | Backend | Eric Lin | Sahil Takiar |
| [IMPALA-7726](https://issues.apache.org/jira/browse/IMPALA-7726) | Drop with purge tests fail against ABFS due to trash misbehavior |  Major | . | Sean Mackrory | Sean Mackrory |
| [IMPALA-7860](https://issues.apache.org/jira/browse/IMPALA-7860) | Tests use partition name that isn't supported on ABFS |  Major | Infrastructure | Sean Mackrory |  |
| [IMPALA-9132](https://issues.apache.org/jira/browse/IMPALA-9132) | Explain statements should not cause NPE in LogLineageRecord() |  Blocker | Backend | Anurag Mantripragada | Anurag Mantripragada |
| [IMPALA-9093](https://issues.apache.org/jira/browse/IMPALA-9093) | Fix ACID upgrade tests to account for HIVE-22158 (table translation) |  Blocker | Frontend | Joe McDonnell | Gabor Kaszab |
| [IMPALA-9071](https://issues.apache.org/jira/browse/IMPALA-9071) | When metastore.warehouse.dir != metastore.warehouse.external.dir, Impala writes to the wrong location for external tables |  Blocker | Frontend | Joe McDonnell | Quanlong Huang |
| [IMPALA-9023](https://issues.apache.org/jira/browse/IMPALA-9023) | select statement fails with "ERROR: IllegalStateException: null" after expression rewrite |  Major | Frontend | Alice Fan | Alice Fan |
| [IMPALA-9136](https://issues.apache.org/jira/browse/IMPALA-9136) | IllegalStateException in calling Table.toThrift() without holding the table lock |  Major | Catalog | Quanlong Huang | Quanlong Huang |
| [IMPALA-9047](https://issues.apache.org/jira/browse/IMPALA-9047) | Some Ranger related test cases fail when using a newer version of Ranger |  Major | Frontend | Fang-Yu Rao | Fang-Yu Rao |
| [IMPALA-9150](https://issues.apache.org/jira/browse/IMPALA-9150) | Restarting minicluster breaks HBase on CDH GBN 1582079 |  Blocker | Infrastructure | Joe McDonnell |  |
| [IMPALA-9128](https://issues.apache.org/jira/browse/IMPALA-9128) | Improve debugging for slow sends in KrpcDataStreamSender |  Major | Distributed Exec | Tim Armstrong | Tim Armstrong |
| [IMPALA-9105](https://issues.apache.org/jira/browse/IMPALA-9105) | Catalog debug page top-n table has a URL generation issue |  Major | . | Jiawei Wang | Jiawei Wang |
| [IMPALA-8906](https://issues.apache.org/jira/browse/IMPALA-8906) | TestObservability.test\_query\_profile\_contains\_query\_compilation\_metadata\_load\_events is flaky |  Major | Backend | Sahil Takiar | Tamas Mate |
| [IMPALA-9166](https://issues.apache.org/jira/browse/IMPALA-9166) | Need to restore HIVE\_MAJOR\_VERSION=2 limitation for resource-requirements.test |  Blocker | Frontend | Joe McDonnell | Tim Armstrong |
| [IMPALA-9177](https://issues.apache.org/jira/browse/IMPALA-9177) | TestTpchQuery.test\_tpch query 18 on Kudu sometimes hits memory limit on dockerised tests |  Critical | Backend | Joe McDonnell | Joe McDonnell |
| [IMPALA-9167](https://issues.apache.org/jira/browse/IMPALA-9167) | stress/test\_acid\_stress.py gets TimeoutError on s3 |  Blocker | . | Joe McDonnell | Zoltán Borók-Nagy |
| [IMPALA-9100](https://issues.apache.org/jira/browse/IMPALA-9100) | tests/run-tests.py should handle duplicate --skip-stress flags |  Critical | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-9045](https://issues.apache.org/jira/browse/IMPALA-9045) | Filter base directories of open/aborted compactions |  Critical | Frontend | Csaba Ringhofer | Zoltán Borók-Nagy |
| [IMPALA-9171](https://issues.apache.org/jira/browse/IMPALA-9171) | Update to impyla 0.16.1 is not Python 2.6 compatible |  Major | Infrastructure | Joe McDonnell | Tim Armstrong |
| [IMPALA-9085](https://issues.apache.org/jira/browse/IMPALA-9085) | Impala Doc: Refactor impala\_s3.html |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-9157](https://issues.apache.org/jira/browse/IMPALA-9157) | TestAuthorizationProvider.test\_invalid\_provider\_flag fails due to Python 2.6 incompatible code |  Blocker | Infrastructure | Joe McDonnell | David Knupp |
| [IMPALA-9188](https://issues.apache.org/jira/browse/IMPALA-9188) | Dataload is failing when USE\_CDP\_HIVE=true |  Critical | . | Sahil Takiar | Anurag Mantripragada |
| [IMPALA-6660](https://issues.apache.org/jira/browse/IMPALA-6660) | -0/+0 floating point do not compare as equal in hash table |  Major | Backend | Tim Armstrong | Norbert Luksa |
| [IMPALA-9151](https://issues.apache.org/jira/browse/IMPALA-9151) | Number of executors during planning needs to account for suspended executor groupa |  Major | Frontend | Lars Volker | Lars Volker |
| [IMPALA-4618](https://issues.apache.org/jira/browse/IMPALA-4618) | # hosts is inaccurate in exec summary when mt\_dop \> 0 |  Major | Backend | Tim Armstrong | Norbert Luksa |
| [IMPALA-9211](https://issues.apache.org/jira/browse/IMPALA-9211) | CreateTable with sync\_ddl may fail with concurrent INVALIDATE METADATA |  Major | Catalog | Quanlong Huang | Quanlong Huang |
| [IMPALA-9098](https://issues.apache.org/jira/browse/IMPALA-9098) | TestQueries.test\_union failed |  Blocker | Backend | Andrew Sherman | Tim Armstrong |
| [IMPALA-9146](https://issues.apache.org/jira/browse/IMPALA-9146) | Limit the size of the broadcast input on build side of hash join |  Minor | . | Aman Sinha | Aman Sinha |
| [IMPALA-9162](https://issues.apache.org/jira/browse/IMPALA-9162) | Incorrect redundant predicate applied to outer join |  Major | Frontend | Aman Sinha | Aman Sinha |
| [IMPALA-9209](https://issues.apache.org/jira/browse/IMPALA-9209) | TestRPCException.test\_end\_data\_stream\_error is flaky |  Major | . | Sahil Takiar | Thomas Tauber-Marshall |
| [IMPALA-9165](https://issues.apache.org/jira/browse/IMPALA-9165) | Precommit jobs getting stuck in testdata/bin/create-hbase.sh |  Blocker | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-9122](https://issues.apache.org/jira/browse/IMPALA-9122) | Ignore FileNotFoundException when loading a table |  Critical | Infrastructure | Tim Armstrong | Anurag Mantripragada |
| [IMPALA-9116](https://issues.apache.org/jira/browse/IMPALA-9116) | SASL server fails when FQDN is greater than 63 characters long in Kudu RPC |  Critical | Backend | Anurag Mantripragada | Anurag Mantripragada |
| [IMPALA-9248](https://issues.apache.org/jira/browse/IMPALA-9248) | test\_krpc\_rpcz breaks on Centos6 with missing "bytes\_acked" |  Blocker | Backend | Laszlo Gaal | Tim Armstrong |
| [IMPALA-9257](https://issues.apache.org/jira/browse/IMPALA-9257) | Events processor last synced event does not advance if all the events are filtered out |  Minor | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [IMPALA-8891](https://issues.apache.org/jira/browse/IMPALA-8891) | concat\_ws() null handling is non-standard |  Major | Backend | Tim Armstrong | jichen |
| [IMPALA-9272](https://issues.apache.org/jira/browse/IMPALA-9272) | PlannerTest.testHdfs fails due to dependence on result of year(now()) |  Blocker | . | Quanlong Huang | Quanlong Huang |
| [IMPALA-9241](https://issues.apache.org/jira/browse/IMPALA-9241) | Minicluster service status ambiguous when pids wrap around |  Critical | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-9277](https://issues.apache.org/jira/browse/IMPALA-9277) | Crash due to unhandled exception thrown from orc::ColumnSelector::updateSelectedByTypeId |  Blocker | . | Quanlong Huang | Zoltán Borók-Nagy |
| [IMPALA-9101](https://issues.apache.org/jira/browse/IMPALA-9101) | Unneccessary REFRESH due to wrong self-event detection |  Critical | . | Quanlong Huang | Vihang Karajgaonkar |
| [IMPALA-8984](https://issues.apache.org/jira/browse/IMPALA-8984) | Submit several same kudu table created query concurrently may result in table deleted in Kudu storage |  Critical | Frontend | Sheng Wang | Sheng Wang |
| [IMPALA-9267](https://issues.apache.org/jira/browse/IMPALA-9267) | Impala hits DCHECK in ClientRequestState due to invalid state transition |  Blocker | Backend | Joe McDonnell | Sahil Takiar |
| [IMPALA-8501](https://issues.apache.org/jira/browse/IMPALA-8501) | RpcMgrTest.SlowCallback and RpcMgrTest.AsyncCall sometimes have port conflicts |  Critical | Backend | Tim Armstrong | Thomas Tauber-Marshall |
| [IMPALA-9295](https://issues.apache.org/jira/browse/IMPALA-9295) | RPC failures don't always trigger a blacklist |  Major | Backend | Sahil Takiar | Sahil Takiar |
| [IMPALA-9296](https://issues.apache.org/jira/browse/IMPALA-9296) | Move FragmentInstanceExecStatus' AuxErrorInfo to StatefulStatus |  Major | Backend | Sahil Takiar | Sahil Takiar |
| [IMPALA-9251](https://issues.apache.org/jira/browse/IMPALA-9251) | HdfsOrcScanner crash in AssembleRows |  Blocker | Backend | Quanlong Huang | Quanlong Huang |
| [IMPALA-9250](https://issues.apache.org/jira/browse/IMPALA-9250) | HdfsOrcScanner crash in calling orc::createReader |  Blocker | . | Quanlong Huang | Quanlong Huang |
| [IMPALA-9306](https://issues.apache.org/jira/browse/IMPALA-9306) | HdfsOrcScanner crashes in orc::readFully |  Blocker | Backend | Quanlong Huang | Quanlong Huang |
| [IMPALA-9266](https://issues.apache.org/jira/browse/IMPALA-9266) | TestLogFragments.test\_log\_fragments fails due to missing log |  Blocker | Infrastructure | Joe McDonnell | Sheng Wang |
| [IMPALA-9312](https://issues.apache.org/jira/browse/IMPALA-9312) | run\_clang\_tidy.sh hides errors in buildall.sh |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-9154](https://issues.apache.org/jira/browse/IMPALA-9154) | KRPC DataStreamService threads blocked in PublishFilter |  Blocker | Distributed Exec | Tim Armstrong | Fang-Yu Rao |
| [IMPALA-9068](https://issues.apache.org/jira/browse/IMPALA-9068) | Impala should respect the distinction between the managed warehouse and the external warehouse |  Blocker | Infrastructure | Joe McDonnell |  |
| [IMPALA-9297](https://issues.apache.org/jira/browse/IMPALA-9297) | HdfsOrcScanner crash in orc::RleDecoderV2::next |  Blocker | Backend | Quanlong Huang | Zoltán Borók-Nagy |
| [IMPALA-9291](https://issues.apache.org/jira/browse/IMPALA-9291) | MemTracker's TryConsume() should behave consistent with Consume()/Release() |  Major | . | Zoltán Borók-Nagy | Zoltán Borók-Nagy |
| [IMPALA-9288](https://issues.apache.org/jira/browse/IMPALA-9288) | Crash due to memory leak in scan node of orc scanner |  Blocker | . | Quanlong Huang | Zoltán Borók-Nagy |
| [IMPALA-9265](https://issues.apache.org/jira/browse/IMPALA-9265) | Add support for toolchain Kudu to provide maven artifacts |  Critical | Infrastructure | Joe McDonnell | Attila Jeges |
| [IMPALA-9324](https://issues.apache.org/jira/browse/IMPALA-9324) | HdfsOrcScanner crashes in DCHECK failure in OrcSchemaResolver::BuildSchemaPath |  Blocker | Backend | Quanlong Huang | Quanlong Huang |
| [IMPALA-6772](https://issues.apache.org/jira/browse/IMPALA-6772) | Enable test\_scanners\_fuzz for ORC format |  Critical | . | Quanlong Huang | Quanlong Huang |
| [IMPALA-9349](https://issues.apache.org/jira/browse/IMPALA-9349) | output\_unmatched\_batch\_ holds onto buffers for too long |  Critical | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-9262](https://issues.apache.org/jira/browse/IMPALA-9262) | Blacklist test test\_kill\_impalad\_with\_running\_queries fails in exhaustive mode |  Blocker | Distributed Exec | Laszlo Gaal | Sahil Takiar |
| [IMPALA-9346](https://issues.apache.org/jira/browse/IMPALA-9346) | TestImpalaShell.test\_config\_file failing on CentOS6/Python 2.6 |  Blocker | Infrastructure | Tim Armstrong | Wenzhe Zhou |
| [IMPALA-9329](https://issues.apache.org/jira/browse/IMPALA-9329) | Table masking view should not have nested columns in select list |  Critical | Security | Quanlong Huang | Quanlong Huang |
| [IMPALA-9335](https://issues.apache.org/jira/browse/IMPALA-9335) | Rebase KRPC |  Critical | . | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-9289](https://issues.apache.org/jira/browse/IMPALA-9289) | TestConcurrentKuduCreate is flaky |  Major | . | Quanlong Huang | Quanlong Huang |
| [IMPALA-9309](https://issues.apache.org/jira/browse/IMPALA-9309) | Crash in failure/test\_failpoints.py with PREPARE:FAIL debug option |  Blocker | . | Quanlong Huang | Tim Armstrong |
| [IMPALA-9345](https://issues.apache.org/jira/browse/IMPALA-9345) | Hang in TestOrc::test\_type\_conversions when running create table in hive |  Blocker | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-9358](https://issues.apache.org/jira/browse/IMPALA-9358) | Query slowdown with inline views and hundreds of columns |  Major | Frontend | Kurt Deschler | Kurt Deschler |
| [IMPALA-9168](https://issues.apache.org/jira/browse/IMPALA-9168) | TestConcurrentDdls flaky on s3 (Could not resolve table reference) |  Blocker | Frontend | Joe McDonnell | Quanlong Huang |
| [IMPALA-9159](https://issues.apache.org/jira/browse/IMPALA-9159) | test\_concurrent\_ddls.py's test\_ddls\_with\_invalidate\_metadata\_sync\_ddl timed out after 17 hours |  Critical | Frontend | Joe McDonnell | Quanlong Huang |
| [IMPALA-9279](https://issues.apache.org/jira/browse/IMPALA-9279) | Update the Kudu version to include VARCHAR support (and other functionality) |  Critical | Infrastructure | Joe McDonnell | Attila Jeges |
| [IMPALA-9280](https://issues.apache.org/jira/browse/IMPALA-9280) | Time string with signed TZH token preceded by dash cannot be cast to timestamp |  Minor | Backend | Jozsef Koza | Riza Suminto |
| [IMPALA-9340](https://issues.apache.org/jira/browse/IMPALA-9340) | statestore\_max\_missed\_heartbeats is off by one |  Minor | Backend | Sahil Takiar | Riza Suminto |
| [IMPALA-8698](https://issues.apache.org/jira/browse/IMPALA-8698) | test\_bloom\_filters fails when run on seq/gzip/record table format |  Critical | . | Bikramjeet Vig | Fang-Yu Rao |
| [IMPALA-8059](https://issues.apache.org/jira/browse/IMPALA-8059) | TestWebPage::test\_backend\_states is flaky |  Blocker | . | Pooja Nilangekar | Sahil Takiar |
| [IMPALA-8867](https://issues.apache.org/jira/browse/IMPALA-8867) | test\_auto\_scaling is flaky |  Critical | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-9022](https://issues.apache.org/jira/browse/IMPALA-9022) | test\_query\_profile\_storage\_load\_time\_filesystem is flaky |  Critical | Infrastructure | Tim Armstrong | Yongzhi Chen |
| [IMPALA-9372](https://issues.apache.org/jira/browse/IMPALA-9372) | PartialCatalogInfoTest.testGetSqlConstraints fails in comparison of PK table name |  Major | Frontend | Aman Sinha | Anurag Mantripragada |
| [IMPALA-9383](https://issues.apache.org/jira/browse/IMPALA-9383) | HS2 HTTP server hangs on large chunked requests |  Critical | . | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-9386](https://issues.apache.org/jira/browse/IMPALA-9386) | IMPALA-9287 breaks catalog table loading |  Blocker | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [IMPALA-9402](https://issues.apache.org/jira/browse/IMPALA-9402) | bootstrap\_system.sh fails to configure PostgreSQL 9 on some CentOS 7 systems |  Critical | . | Laszlo Gaal | Laszlo Gaal |
| [IMPALA-9390](https://issues.apache.org/jira/browse/IMPALA-9390) | Maven download location change breaks all Impala builds |  Critical | Infrastructure | Laszlo Gaal | Laszlo Gaal |
| [IMPALA-8115](https://issues.apache.org/jira/browse/IMPALA-8115) | some jenkins workers slow to do real work due to dpkg lock conflicts |  Major | Infrastructure | Michael Brown | Laszlo Gaal |
| [IMPALA-9395](https://issues.apache.org/jira/browse/IMPALA-9395) | RuntimeFilter causes impalad crash |  Blocker | Backend | Attila Jeges | Tim Armstrong |
| [IMPALA-9036](https://issues.apache.org/jira/browse/IMPALA-9036) | Unable to CTRL+C an unfinished query in impala-shell |  Minor | Infrastructure | Gabor Kaszab | Adam Tamas |
| [IMPALA-9423](https://issues.apache.org/jira/browse/IMPALA-9423) | Fix cookie auth with Knox |  Major | Clients | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-9445](https://issues.apache.org/jira/browse/IMPALA-9445) | custom\_cluster/test\_local\_tz\_conversion.py fails on S3 configuration |  Blocker | Backend | Joe McDonnell | Csaba Ringhofer |
| [IMPALA-9444](https://issues.apache.org/jira/browse/IMPALA-9444) | Invalid URL to get postgresql from central.maven.org |  Blocker | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-9449](https://issues.apache.org/jira/browse/IMPALA-9449) | Crash in LZO scan with fuzz test |  Critical | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-9452](https://issues.apache.org/jira/browse/IMPALA-9452) | test\_spilling\_aggs fails with missing SpilledPartitions |  Critical | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-9447](https://issues.apache.org/jira/browse/IMPALA-9447) | TupleRowCompareTest.DecimalTest crashes on release build |  Blocker | Backend | Joe McDonnell | Norbert Luksa |
| [IMPALA-8674](https://issues.apache.org/jira/browse/IMPALA-8674) | REMOTE runtime filters are always shown as disabled in the final filter routing table |  Major | Backend | Tim Armstrong | Riza Suminto |
| [IMPALA-7784](https://issues.apache.org/jira/browse/IMPALA-7784) | Partition pruning handles escaped strings incorrectly |  Critical | Frontend | Csaba Ringhofer | Quanlong Huang |
| [IMPALA-9425](https://issues.apache.org/jira/browse/IMPALA-9425) | Statestore may fail to report when an impalad has failed |  Critical | Distributed Exec | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-9152](https://issues.apache.org/jira/browse/IMPALA-9152) | AuthorizationStmtTest.testColumnMaskEnabled failed in precommits. |  Critical | . | Anurag Mantripragada | Quanlong Huang |
| [IMPALA-9385](https://issues.apache.org/jira/browse/IMPALA-9385) | Orc scanner does UTC-\>local conversion if use\_local\_tz\_for\_unix\_timestamp\_conversions=1 |  Major | Backend | Csaba Ringhofer | Csaba Ringhofer |
| [IMPALA-9357](https://issues.apache.org/jira/browse/IMPALA-9357) | Fix race condition in alter\_database event |  Blocker | . | Fang-Yu Rao | Vihang Karajgaonkar |
| [IMPALA-9492](https://issues.apache.org/jira/browse/IMPALA-9492) | TestRecoverPartitions::test\_unescaped\_string\_partition failing on S3 |  Blocker | . | David Rorke | Quanlong Huang |
| [IMPALA-9513](https://issues.apache.org/jira/browse/IMPALA-9513) | query\_test.test\_kudu.TestKuduOperations.test\_column\_storage\_attributes fails on exhaustive tests |  Blocker | . | Norbert Luksa | Joe McDonnell |
| [IMPALA-9560](https://issues.apache.org/jira/browse/IMPALA-9560) | Changing version from 3.4.0-SNAPSHOT to 3.4.0-RELEASE breaks TestStatsExtrapolation |  Critical | Frontend | Joe McDonnell | Joe McDonnell |
| [IMPALA-8533](https://issues.apache.org/jira/browse/IMPALA-8533) | Impala daemon crash on sort |  Blocker | Backend | Jacob Evan Beard | Kurt Deschler |
| [IMPALA-9202](https://issues.apache.org/jira/browse/IMPALA-9202) | Fix flakiness in TestExecutorGroups |  Minor | . | Bikramjeet Vig | Bikramjeet Vig |
| [IMPALA-9582](https://issues.apache.org/jira/browse/IMPALA-9582) | Update thift\_sasl 0.4.1 --\> 0.4.2 for impala-shell |  Blocker | Clients | David Knupp | David Knupp |
| [IMPALA-9429](https://issues.apache.org/jira/browse/IMPALA-9429) | Unioned partition columns break partition pruning |  Critical | Frontend | Max Mizikar | Kurt Deschler |
| [IMPALA-9571](https://issues.apache.org/jira/browse/IMPALA-9571) | Impala fails to start up due to exception from boost::filesystem::remove\_all() |  Blocker | Backend | Yongzhi Chen | Joe McDonnell |
| [IMPALA-9555](https://issues.apache.org/jira/browse/IMPALA-9555) | TestDateQueries.test\_queries failing because Hive3 switched back to the hybrid Julian Gregorian calendar |  Critical | . | Attila Jeges | Attila Jeges |
| [IMPALA-9529](https://issues.apache.org/jira/browse/IMPALA-9529) | Predicates on nested types may not be applied correctly on table masking view |  Critical | . | Quanlong Huang | Quanlong Huang |
| [IMPALA-9351](https://issues.apache.org/jira/browse/IMPALA-9351) | AnalyzeDDLTest.TestCreateTableLikeFileOrc failed due to non-existing path |  Blocker | Frontend | Fang-Yu Rao | Quanlong Huang |
| [IMPALA-9240](https://issues.apache.org/jira/browse/IMPALA-9240) | Impala shell using hs2-http reports all http error codes as EOFError |  Major | . | Andrew Sherman | Andrew Sherman |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-8944](https://issues.apache.org/jira/browse/IMPALA-8944) | Update and re-enable S3PlannerTest |  Major | . | Sahil Takiar | Sahil Takiar |
| [IMPALA-8950](https://issues.apache.org/jira/browse/IMPALA-8950) | Add -d and -f option to copyFromLocal and re-enable disabled S3 tests |  Major | . | Sahil Takiar | Sahil Takiar |
| [IMPALA-9117](https://issues.apache.org/jira/browse/IMPALA-9117) | test\_lineage.py and test\_mt\_dop.py are failing on ABFS |  Major | . | Sahil Takiar | Sahil Takiar |
| [IMPALA-9311](https://issues.apache.org/jira/browse/IMPALA-9311) | test\_show\_create\_table failed with primary key mismatch |  Critical | . | Xiaomeng Zhang | Anurag Mantripragada |
| [IMPALA-9322](https://issues.apache.org/jira/browse/IMPALA-9322) | authorization.test\_grant\_revoke.TestGrantRevoke.test\_grant\_revoke failed with "Unable to start Sentry" |  Major | Infrastructure | Xiaomeng Zhang | Xiaomeng Zhang |
| [IMPALA-9321](https://issues.apache.org/jira/browse/IMPALA-9321) | TestParquetMaxPageHeader.test\_large\_page\_header\_config failed with error "Invalid configuration of tez jars" |  Major | Infrastructure | Xiaomeng Zhang | Xiaomeng Zhang |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-8845](https://issues.apache.org/jira/browse/IMPALA-8845) | Close ExecNode tree prior to calling FlushFinal in FragmentInstanceState |  Major | Backend | Sahil Takiar | Michael Ho |
| [IMPALA-8890](https://issues.apache.org/jira/browse/IMPALA-8890) | DCHECK(!page-\>attached\_to\_output\_batch) in SpillableRowBatchQueue::AddBatch |  Blocker | Backend | Sahil Takiar | Sahil Takiar |
| [IMPALA-8819](https://issues.apache.org/jira/browse/IMPALA-8819) | BufferedPlanRootSink should handle non-default fetch sizes |  Major | Backend | Sahil Takiar | Sahil Takiar |
| [IMPALA-1618](https://issues.apache.org/jira/browse/IMPALA-1618) | Impala server should always try to fulfill requested fetch size |  Minor | Backend | casey |  |
| [IMPALA-5802](https://issues.apache.org/jira/browse/IMPALA-5802) | COMPUTE STATS uses MT\_DOP=4 by default |  Major | Backend, Frontend | Alexander Behm | Tim Armstrong |
| [IMPALA-8803](https://issues.apache.org/jira/browse/IMPALA-8803) | Coordinator should release admitted memory per-backend rather than per-query |  Major | . | Sahil Takiar | Sahil Takiar |
| [IMPALA-8818](https://issues.apache.org/jira/browse/IMPALA-8818) | Replace deque queue with spillable queue in BufferedPlanRootSink |  Major | Backend | Sahil Takiar | Sahil Takiar |
| [IMPALA-7312](https://issues.apache.org/jira/browse/IMPALA-7312) | Non-blocking mode for Fetch() RPC |  Major | Clients | Tim Armstrong | Sahil Takiar |
| [IMPALA-7351](https://issues.apache.org/jira/browse/IMPALA-7351) | Add memory estimates for plan nodes and sinks with missing estimates |  Major | Frontend | Tim Armstrong | Bikramjeet Vig |
| [IMPALA-8572](https://issues.apache.org/jira/browse/IMPALA-8572) | Move query hook execution to before query unregistration |  Critical | Backend | radford nguyen | Bharath Vissapragada |
| [IMPALA-8825](https://issues.apache.org/jira/browse/IMPALA-8825) | Add additional counters to PlanRootSink |  Major | Backend | Sahil Takiar | Sahil Takiar |
| [IMPALA-8930](https://issues.apache.org/jira/browse/IMPALA-8930) | Impala Doc: Document object ownership with Ranger authorization provider |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8903](https://issues.apache.org/jira/browse/IMPALA-8903) | Impala Doc: TRUNCATE for Insert-only ACID tables |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8924](https://issues.apache.org/jira/browse/IMPALA-8924) | DCHECK(!closed\_) in SpillableRowBatchQueue::IsEmpty |  Blocker | Backend | Sahil Takiar | Sahil Takiar |
| [IMPALA-8934](https://issues.apache.org/jira/browse/IMPALA-8934) | Add failpoint tests to result spooling code |  Major | . | Sahil Takiar | Sahil Takiar |
| [IMPALA-8703](https://issues.apache.org/jira/browse/IMPALA-8703) | SQL:2016 datetime patterns - Milestone 1 |  Critical | Backend, Frontend | Gabor Kaszab | Gabor Kaszab |
| [IMPALA-8878](https://issues.apache.org/jira/browse/IMPALA-8878) | Impala Doc: Query Profile Exported to JSON |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8861](https://issues.apache.org/jira/browse/IMPALA-8861) | Impala Doc: Document Jaro-winkler edit distance and similarity built-in functions |  Major | . | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8988](https://issues.apache.org/jira/browse/IMPALA-8988) | Impala Doc: Document that DATE type supports Avro |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8971](https://issues.apache.org/jira/browse/IMPALA-8971) | Impala Doc: Document the PARQUET\_OBJECT\_STORE\_SPLIT\_SIZE query option |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8826](https://issues.apache.org/jira/browse/IMPALA-8826) | Impala Doc: Add docs for PLAN\_ROOT\_SINK and result spooling |  Major | Docs | Sahil Takiar | Alexandra Rodoni |
| [IMPALA-9015](https://issues.apache.org/jira/browse/IMPALA-9015) | Use better algorithm for allocating scan ranges to finstances within a daemon in schedule |  Major | Distributed Exec | Tim Armstrong | Tim Armstrong |
| [IMPALA-8893](https://issues.apache.org/jira/browse/IMPALA-8893) | Impala Doc: Document cookie-based authentication |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-9003](https://issues.apache.org/jira/browse/IMPALA-9003) | Document IMPALA-8376 Add per-directory limits for scratch disk usage |  Major | Docs | Tim Armstrong | Alexandra Rodoni |
| [IMPALA-8920](https://issues.apache.org/jira/browse/IMPALA-8920) | Impala Doc: Document the query option for disabling HBase row estimation |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8998](https://issues.apache.org/jira/browse/IMPALA-8998) | Admission control accounting for mt\_dop |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-8970](https://issues.apache.org/jira/browse/IMPALA-8970) | Impala Doc: Document Prometheus integration |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8997](https://issues.apache.org/jira/browse/IMPALA-8997) | Allow graceful fallback to mt\_dop=0 |  Major | Frontend | Tim Armstrong | Tim Armstrong |
| [IMPALA-9019](https://issues.apache.org/jira/browse/IMPALA-9019) | Fix runtime filter bugs with mt\_dop |  Major | Distributed Exec | Tim Armstrong | Tim Armstrong |
| [IMPALA-8999](https://issues.apache.org/jira/browse/IMPALA-8999) | Parallelise all plans, including UNION, when mt\_dop \> 1 |  Major | Distributed Exec | Tim Armstrong | Tim Armstrong |
| [IMPALA-9065](https://issues.apache.org/jira/browse/IMPALA-9065) | Fix cancellation of RuntimeFilter::WaitForArrival() |  Major | Distributed Exec | Tim Armstrong | Tim Armstrong |
| [IMPALA-9027](https://issues.apache.org/jira/browse/IMPALA-9027) | Update planner decisions to factor in mt\_dop |  Major | Frontend | Tim Armstrong | Tim Armstrong |
| [IMPALA-8704](https://issues.apache.org/jira/browse/IMPALA-8704) | SQL:2016 datetime patterns - Milestone 2 |  Major | Backend | Gabor Kaszab | Gabor Kaszab |
| [IMPALA-9081](https://issues.apache.org/jira/browse/IMPALA-9081) | testMtDopValidationWithHDFSNumRowsEstDisabled toggles isTestEnv() changing table loading behaviour |  Critical | Frontend | Thomas Tauber-Marshall | Tim Armstrong |
| [IMPALA-7506](https://issues.apache.org/jira/browse/IMPALA-7506) | Support global INVALIDATE METADATA on fetch-on-demand impalad |  Major | . | Todd Lipcon | Quanlong Huang |
| [IMPALA-9125](https://issues.apache.org/jira/browse/IMPALA-9125) | Add general mechanism to find DataSink from other fragments |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-9134](https://issues.apache.org/jira/browse/IMPALA-9134) | Parallelise flush in data stream sender |  Major | Distributed Exec | Tim Armstrong | Tim Armstrong |
| [IMPALA-8607](https://issues.apache.org/jira/browse/IMPALA-8607) | Update documentation to reflect IMPALA-6042 |  Minor | Docs | Ethan | Alexandra Rodoni |
| [IMPALA-9141](https://issues.apache.org/jira/browse/IMPALA-9141) | Impala Doc: Document SQL:2016 datetime patterns - Milestone 2 |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8705](https://issues.apache.org/jira/browse/IMPALA-8705) | SQL:2016 datetime patterns - Milestone 3 |  Major | Backend | Gabor Kaszab | Gabor Kaszab |
| [IMPALA-9219](https://issues.apache.org/jira/browse/IMPALA-9219) | Impala Doc: Document SQL:2016 datetime patterns - Milestone 3 |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-9207](https://issues.apache.org/jira/browse/IMPALA-9207) | Impala Doc: Document adding #Inst in exec summary |  Major | . | Norbert Luksa | Alexandra Rodoni |
| [IMPALA-6894](https://issues.apache.org/jira/browse/IMPALA-6894) | Use an internal representation of query states in ClientRequestState |  Major | Backend | Bikramjeet Vig | Sahil Takiar |
| [IMPALA-8706](https://issues.apache.org/jira/browse/IMPALA-8706) | SQL:2016 datetime patterns - Milestone 4 |  Major | Backend | Gabor Kaszab | Attila Jeges |
| [IMPALA-9104](https://issues.apache.org/jira/browse/IMPALA-9104) | Add support for retrieval of primary keys and foreign keys in impala-hs2-server. |  Critical | . | Anurag Mantripragada | Anurag Mantripragada |
| [IMPALA-9137](https://issues.apache.org/jira/browse/IMPALA-9137) | Blacklist node if a DataStreamService RPC to the node fails |  Major | Backend | Sahil Takiar | Sahil Takiar |
| [IMPALA-9274](https://issues.apache.org/jira/browse/IMPALA-9274) | Implement phased barrier synchronisation construct |  Major | . | Tim Armstrong | Tim Armstrong |
| [IMPALA-8801](https://issues.apache.org/jira/browse/IMPALA-8801) | Add DATE type support to ORC scanner |  Critical | . | Attila Jeges | Gabor Kaszab |
| [IMPALA-8290](https://issues.apache.org/jira/browse/IMPALA-8290) | Display constraint information in 'SHOW CREATE' statement |  Critical | Frontend | Anurag Mantripragada | Anurag Mantripragada |
| [IMPALA-9158](https://issues.apache.org/jira/browse/IMPALA-9158) | Support loading PK/FK constraints in LocalCatalog. |  Critical | Frontend | Anurag Mantripragada | Anurag Mantripragada |
| [IMPALA-9334](https://issues.apache.org/jira/browse/IMPALA-9334) | Log node blacklisting removals in ClusterMembershipMgr |  Major | Backend | Sahil Takiar | Sahil Takiar |
| [IMPALA-9342](https://issues.apache.org/jira/browse/IMPALA-9342) | Membership updates should only remove quiescing nodes from the blacklist |  Major | Backend | Sahil Takiar | Sahil Takiar |
| [IMPALA-9361](https://issues.apache.org/jira/browse/IMPALA-9361) | Support running kerberized minicluster against manually configured KDC |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-9243](https://issues.apache.org/jira/browse/IMPALA-9243) | Coordinator Web UI should list which executors have been blacklisted |  Major | . | Sahil Takiar | Thomas Tauber-Marshall |
| [IMPALA-9308](https://issues.apache.org/jira/browse/IMPALA-9308) | TSAN data race in ReservationTracker::used\_reservation\_ updates |  Major | Backend | Sahil Takiar | Sahil Takiar |
| [IMPALA-8587](https://issues.apache.org/jira/browse/IMPALA-8587) | Show inherited privileges in show grant w/ Ranger |  Critical | Frontend | Austin Nobis | Fang-Yu Rao |
| [IMPALA-9336](https://issues.apache.org/jira/browse/IMPALA-9336) | Impala doc: Document the create table syntax for Primary Key and Foreign Keys spec. |  Critical | Docs | Anurag Mantripragada | Kris Hahn |
| [IMPALA-9256](https://issues.apache.org/jira/browse/IMPALA-9256) | Refactor constraint information into a separate class. |  Major | Frontend | Anurag Mantripragada | Anurag Mantripragada |
| [IMPALA-9396](https://issues.apache.org/jira/browse/IMPALA-9396) | Add arm64 openjdk version for Ubuntu 18.04 in bootstrap\_system.sh |  Major | . | zhaorenhai | zhaorenhai |
| [IMPALA-9392](https://issues.apache.org/jira/browse/IMPALA-9392) | Replace Boost-1.57.0-p3 to Boost-1.61.0.-p2 for aarch64 supporting |  Major | . | zhaorenhai | zhaorenhai |
| [IMPALA-9399](https://issues.apache.org/jira/browse/IMPALA-9399) | Optimise RuntimeProfile::ToThrift() |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-8712](https://issues.apache.org/jira/browse/IMPALA-8712) | Convert ExecQueryFInstance() RPC to become asynchronous |  Major | Distributed Exec | Michael Ho | Thomas Tauber-Marshall |
| [IMPALA-9381](https://issues.apache.org/jira/browse/IMPALA-9381) | Lazily convert and/or cache different representations of the query profile |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-9313](https://issues.apache.org/jira/browse/IMPALA-9313) | TSAN data race in TmpFileMgr::File::Blacklist |  Major | Backend | Sahil Takiar | Sahil Takiar |
| [IMPALA-8800](https://issues.apache.org/jira/browse/IMPALA-8800) | Add DATE type support to Kudu scanner |  Major | . | Attila Jeges | Attila Jeges |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-8879](https://issues.apache.org/jira/browse/IMPALA-8879) | Upgrade bootstrap.js |  Major | Frontend | Tim Armstrong | Tim Armstrong |
| [IMPALA-9014](https://issues.apache.org/jira/browse/IMPALA-9014) | Impala Doc: Update the logging doc |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8768](https://issues.apache.org/jira/browse/IMPALA-8768) | Clarifying the conditions in which audit logs record a query |  Minor | Docs | Vincent Tran | Alexandra Rodoni |
| [IMPALA-9048](https://issues.apache.org/jira/browse/IMPALA-9048) | Impala Doc: Document the global INVALIDATE METADATA on fetch-on-demand impalad |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-9293](https://issues.apache.org/jira/browse/IMPALA-9293) | Impala Doc: Revise explanation of HDFS trashcan usage on S3 |  Major | Docs | Sahil Takiar | Sahil Takiar |
| [IMPALA-9196](https://issues.apache.org/jira/browse/IMPALA-9196) | Dump jstack and backup logs when Jenkins job timeouts |  Major | Infrastructure | Quanlong Huang | Quanlong Huang |
| [IMPALA-7984](https://issues.apache.org/jira/browse/IMPALA-7984) | Port UpdateFilter() and PublishFilter() to KRPC |  Major | Distributed Exec | Michael Ho | Fang-Yu Rao |
| [IMPALA-9304](https://issues.apache.org/jira/browse/IMPALA-9304) | Add script to launch Hive with Ranger in minicluster |  Major | . | Quanlong Huang | Quanlong Huang |
| [IMPALA-9029](https://issues.apache.org/jira/browse/IMPALA-9029) | Impala Doc: 3.4 Release Notes |  Major | Docs | Alexandra Rodoni | Joe McDonnell |
| [IMPALA-9644](https://issues.apache.org/jira/browse/IMPALA-9644) | Set core file size 0 in docker entrypoint script |  Major | Infrastructure | Abhishek Rawat | Abhishek Rawat |


