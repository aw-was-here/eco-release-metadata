
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
# Apache Tez  0.5.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [TEZ-1509](https://issues.apache.org/jira/browse/TEZ-1509) | *Major* | **Set a useful default value for java opts**

A subset of the following should be considered for the defaults:

-server -XX:+UseCompressedStrings -Djava.net.preferIPv4Stack=true -XX:+PrintGCDetails -verbose:gc -XX:+PrintGCTimeStamps -XX:+UseNUMA -XX:+UseParallelGC


---

* [TEZ-1500](https://issues.apache.org/jira/browse/TEZ-1500) | *Blocker* | **DAG should be created via a create method**

TEZ-1246 seems to have missed DAG.


---

* [TEZ-1472](https://issues.apache.org/jira/browse/TEZ-1472) | *Major* | **Separate method calls for creating InputDataInformationEvent with serialized/unserialized payloads**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1469](https://issues.apache.org/jira/browse/TEZ-1469) | *Blocker* | **AM/Session LRs are not shipped to vertices in new API use-case**

Previously in the tez codebase, the session LRs were part of each vertex's LRs, automatically.

During 0.5.0 API changes, the following no longer provides local LRs to the vertices, even if it is part of the session LR.


---

* [TEZ-1465](https://issues.apache.org/jira/browse/TEZ-1465) | *Blocker* | **Update and document IntersectExample. Change name to JoinExample**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1450](https://issues.apache.org/jira/browse/TEZ-1450) | *Blocker* | **Documentation of TezConfiguration**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1449](https://issues.apache.org/jira/browse/TEZ-1449) | *Blocker* | **Change user payloads to work with a byte buffer**

From discussions with [~bikassaha] and [~gopalv] - we should move the events to use bytebuffers as well.
- This is where excessive copying can be avoided once we move to PB based RPC (or to other libraries which rely on nio)
- Future proofing the API


---

* [TEZ-1438](https://issues.apache.org/jira/browse/TEZ-1438) | *Blocker* | **Annotate add java doc for tez-runtime-library and tez-mapreduce**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1432](https://issues.apache.org/jira/browse/TEZ-1432) | *Blocker* | **TEZ\_AM\_CANCEL\_DELEGATION\_TOKEN is named inorrectly**

TEZ\_AM\_CANCEL\_DELEGATION\_TOKEN is currently tez.am.am.complete.cancel.delegation.tokens


---

* [TEZ-1427](https://issues.apache.org/jira/browse/TEZ-1427) | *Blocker* | **Change remaining classes that are using byte[] to UserPayload**

EdgeManagerPluginContext is the most important.
SleepProcessor configuration
All the Configurers.


---

* [TEZ-1426](https://issues.apache.org/jira/browse/TEZ-1426) | *Blocker* | **Create configuration helpers for ShuffleVertexManager and TezGrouping code**

This allows moving their configuration out of TezConfiguration.


---

* [TEZ-1425](https://issues.apache.org/jira/browse/TEZ-1425) | *Blocker* | **Move constants to TezConstants**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1423](https://issues.apache.org/jira/browse/TEZ-1423) | *Major* | **Ability to pass custom properties to keySerializer for OnFileUnorderedPartitionedKVOutput**

Using OnFileUnorderedPartitionedKVOutput there is no way of passing custom properties to its keySerializer class given that this class implements Configurable. 

For OnFileSortedOutput this is possible because comparatorConf and partitionerConf touching both sides, the input and the output.

Possible solutions could be either passing a map to keySerializer configuration as well or have custom properties for the input and the output of an edge.


---

* [TEZ-1418](https://issues.apache.org/jira/browse/TEZ-1418) | *Blocker* | **Provide Default value for TEZ\_AM\_LAUNCH\_ENV and TEZ\_TASK\_LAUNCH**

As part of the fix for the issue TEZ-1127 two new configurations have  been introduced:
# \_TEZ\_AM\_LAUNCH\_ENV\_
# \_TEZ\_TASK\_LAUNCH\_

Ideally these properties should be configured with default value of:
"LD\_LIBRARY\_PATH=$HADOOP\_COMMON\_HOME/lib/native"

as in the case for \_mapreduce.admin.user.env\_

The default value for these properties are set to "" (empty string).
Now user has to explicitly set these values from the application code to use the native libs (like for compression).

From Hitesh:
{quote}As commented on TEZ-1127, it is a question as to what the default should be - whether HADOOP\_COMMON\_HOME or HADOOP\_PREFIX and to some extent, it needs to handle Windows deployments too.{quote}


---

* [TEZ-1417](https://issues.apache.org/jira/browse/TEZ-1417) | *Blocker* | **Rename \*Configurer**

From offline feedback from [~bikassaha], [~acmurthy] and [~hagleitn] - this needs to be renamed.
Something like Configurator as Bikas had earlier suggested, or ConfigBuilder which I like more.

This can be done as a last refactor before 0.5 since it's very disruptive to patches in progress.


---

* [TEZ-1416](https://issues.apache.org/jira/browse/TEZ-1416) | *Blocker* | **tez-api project javadoc/annotations review and clean up.**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1410](https://issues.apache.org/jira/browse/TEZ-1410) | *Blocker* | **DAGClient#waitForCompletion() methods should not swallow interrupts**

Based on TEZ-1331 i found that the 3 waitForCompletion() methods of DAGClient swallowing interrupts as well. That way you never can stop the wait call since all interrupts are caught and the wait logic just happily proceeds (same as TEZ-1278).


---

* [TEZ-1407](https://issues.apache.org/jira/browse/TEZ-1407) | *Blocker* | **Move MRInput related methods out of MRHelpers and consolidate**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1400](https://issues.apache.org/jira/browse/TEZ-1400) | *Major* | **Reducers stuck when enabling auto-reduce parallelism (MRR case)**

In M -\> R1 -\> R2 case, if R1 is optimized by auto-parallelism R2 gets stuck waiting for events.

e.g

Map 1: 0/1      Map 2: -/-      Map 5: 0/1      Map 6: 0/1      Map 7: 0/1      Reducer 3: 0/23 Reducer 4: 0/1
...
...
Map 1: 1/1      Map 2: 148(+13)/161     Map 5: 1/1      Map 6: 1/1      Map 7: 1/1      Reducer 3: 0(+3)/3      Reducer 4: 0(+1)/1  \<== Auto reduce parallelism kicks in
..
Map 1: 1/1      Map 2: 161/161  Map 5: 1/1      Map 6: 1/1      Map 7: 1/1      Reducer 3: 3/3  Reducer 4: 0(+1)/1

Job is stuck waiting for events in Reducer 4.

 [fetcher [Reducer\_3] #23] org.apache.tez.runtime.library.common.shuffle.impl.ShuffleScheduler: copy(3 of 23 at 0.02 MB/s) \<=== \*Waiting for 20 more partitions, even though Reducer3 has been optimized to use 3 reducers


---

* [TEZ-1394](https://issues.apache.org/jira/browse/TEZ-1394) | *Major* | **Create example code for OrderedWordCount**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1390](https://issues.apache.org/jira/browse/TEZ-1390) | *Blocker* | **Replace byte[] with ByteBuffer as the type of user payload in the API**

This is just and API change. Internally we can continue to use byte[] since thats a much bigger change.
The translation from ByteBuffer to byte[] in the API layer should not have perf impact.


---

* [TEZ-1382](https://issues.apache.org/jira/browse/TEZ-1382) | *Blocker* | **Change ObjectRegistry API to allow for future extensions**

Per comments on https://issues.apache.org/jira/browse/TEZ-1153


---

* [TEZ-1372](https://issues.apache.org/jira/browse/TEZ-1372) | *Blocker* | **Fix preWarm to work after recent API changes**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1351](https://issues.apache.org/jira/browse/TEZ-1351) | *Major* | **MROutput needs a flush method to ensure data is materialized for FileOutputCommitter**

In MROutput.commit, we need to check isCommitRequired before invoking commitTask.

Currently we did this check inside Pig:
{code}
                if (fileOutput.isCommitRequired()) {
                    fileOutput.commit();
                }
{code}
However, in some loader, output file is generated only after fileOutput.close, which is part of fileOutput.commit. The isCommitRequired check is too early. A walk around is to invoke fileOutput.close before isCommitRequired:
{code}
                fileOutput.close();
                if (fileOutput.isCommitRequired()) {
                    fileOutput.commit();
                }
{code}
But we are told there is a plan to make MROutput.close private.


---

* [TEZ-1347](https://issues.apache.org/jira/browse/TEZ-1347) | *Blocker* | **Consolidate MRHelpers**

- Remove methods which don't belong in MRHelpers and potentially move them to TezHelpers.
- Get rid of methods which we don't expect/want users to use.
- Get rid of multiple variants of the same method, if these exist.
- Investigate other cleanup in MRHelpers.


---

* [TEZ-1346](https://issues.apache.org/jira/browse/TEZ-1346) | *Blocker* | **Change Processor construction to make use of contexts**

TEZ-1303 made changes for Inputs, Outputs etc but missed the Processor. This is a follow up to change the Processor interface.


---

* [TEZ-1334](https://issues.apache.org/jira/browse/TEZ-1334) | *Blocker* | **Annotate all non public classes in tez-runtime-library with @private**

This prevents javadoc from being generated.
Alternative would be to mark classes explicitly public using annotation.


---

* [TEZ-1320](https://issues.apache.org/jira/browse/TEZ-1320) | *Blocker* | **Remove getApplicationId from DAGClient**

We should either get rid of this, or convert it to a String. Not sure why this API needs to be exposed.


---

* [TEZ-1317](https://issues.apache.org/jira/browse/TEZ-1317) | *Blocker* | **Simplify MRinput/MROutput configuration**

Should at least be possible to generate the correct Descriptors.

Potentially change the addInput / addOutput APIs to accept a single entity which encapsulates InputDescriptor and InputInitializerDescriptor. Similarly for Outputs.


---

* [TEZ-1312](https://issues.apache.org/jira/browse/TEZ-1312) | *Blocker* | **rename vertex.addInput/Output() to vertex.addDataSource/Sink()**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1311](https://issues.apache.org/jira/browse/TEZ-1311) | *Blocker* | **get sharedobjectregistry from the context instead of a static**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1300](https://issues.apache.org/jira/browse/TEZ-1300) | *Major* | **Change default tez classpath to not include hadoop jars from the cluster**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1279](https://issues.apache.org/jira/browse/TEZ-1279) | *Major* | **Rename \*EdgeConfiguration to \*EdgeConfigurer**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1278](https://issues.apache.org/jira/browse/TEZ-1278) | *Blocker* | **TezClient#waitTillReady() should not swallow interrupts**

Current code is:
{code}
  while (true) {
      TezAppMasterStatus status = getAppMasterStatus();
      if (status.equals(TezAppMasterStatus.SHUTDOWN)) {
        throw new SessionNotRunning("TezSession has already shutdown");
      }
      if (status.equals(TezAppMasterStatus.READY)) {
        return;
      }
      try {
        Thread.sleep(SLEEP\_FOR\_READY);
      } catch (InterruptedException e) {
        LOG.info("Sleep interrupted", e);
        continue;
      }
    }
{code}
That way you never can stop the wait call since all interrupts are caught and the wait logic just happily proceeds.

\*Suggestion\*: InterruptedException could be part of the method signature so the caller can handle this in a way which is adequate to the context.

Nice read on handling interrupts: http://www.ibm.com/developerworks/library/j-jtp05236/


---

* [TEZ-1272](https://issues.apache.org/jira/browse/TEZ-1272) | *Major* | **Change YARNRunner to make use of EdgeConfigurations**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1269](https://issues.apache.org/jira/browse/TEZ-1269) | *Major* | **TaskScheduler prematurely releases containers**

It checks for session mode and if not true, and if there are no outstanding requests, then it releases the containers before the container timeout has expired. If the state machine is on its way to scheduling new tasks during this time then they will not be able to reuse these containers.


---

* [TEZ-1266](https://issues.apache.org/jira/browse/TEZ-1266) | *Major* | **Create \*EdgeConfigurer.createDefaultCustomEdge() and force setting partitioners**

Reference https://issues.apache.org/jira/browse/TEZ-1080?focusedCommentId=14054194&page=com.atlassian.jira.plugin.system.issuetabpanels:comment-tabpanel#comment-14054194 from TEZ-1080

cc [~sseth]


---

* [TEZ-1246](https://issues.apache.org/jira/browse/TEZ-1246) | *Blocker* | **Replace constructors with create() methods for DAG, Vertex, Edge etc in the API**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1237](https://issues.apache.org/jira/browse/TEZ-1237) | *Blocker* | **Consolidate naming of API classes**

The user component for Vertex is called 'VertexManagerPlugin', for the edge it's just called 'EdgeManager'. This jira is to use a similar naming convention.


---

* [TEZ-1234](https://issues.apache.org/jira/browse/TEZ-1234) | *Major* | **Replace Interfaces with Abstract classes for VertexManagerPlugin and EdgeManager**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1231](https://issues.apache.org/jira/browse/TEZ-1231) | *Blocker* | **Clean up TezRuntimeConfiguration**

Separate configs used by runtime Inputs/Outputs and framework specific configs As an example - task memory configs are not related to any Input / Output. Similarly for Credentials.

Other possible config changes
- Rename TEZ\_RUNTIME\_INPUT\_BUFFER\_PERCENT, which is a fairly confusing name
- Get rid of the separation between INPUT/OUTPU in config names (e.g. INPUT\_KEY, OUTPUT\_KEY replaced with just KEY)
- Move TEZ\_RUNTIME\_INTERMEDIATE\_INPUT\_KEY\_SECONDARY\_COMPARATOR\_CLASS to MapReduce


---

* [TEZ-1213](https://issues.apache.org/jira/browse/TEZ-1213) | *Major* | **Fix parameter naming in TezJobConfig**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1194](https://issues.apache.org/jira/browse/TEZ-1194) | *Blocker* | **Make TezUserPayload user facing for payload specification**

Now that we have TezUserPayload being used internally to represent user payload it may be useful to make it user facing on the API for specifying payloads. Advantages
1) Clear code for the user instead of having untyped byte[] everywhere
2) Lets us internally evolve the representation of user payload and make it more efficient without having to break APIs. We can start with TezUserPayload(byte[]) and then move on to TezUserPayload(ByteBuffer) and so on while maintaining backwards compatibility without needing to add new methods. Old code can be translated within TezUserPayload while user migrates the code.


---

* [TEZ-1169](https://issues.apache.org/jira/browse/TEZ-1169) | *Major* | **Allow numPhysicalInputs to be specified for RootInputs**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1137](https://issues.apache.org/jira/browse/TEZ-1137) | *Major* | **Move TezJobConfig to runtime-library and rename to TezRuntimeConfiguration**

Its currently sitting in the API project. Some values from here may need to move to TezConfiguration.


---

* [TEZ-1134](https://issues.apache.org/jira/browse/TEZ-1134) | *Major* | **InputInitializer and OutputCommitter implicitly use payloads of the input and output**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1133](https://issues.apache.org/jira/browse/TEZ-1133) | *Blocker* | **Remove unnecessary MRHelpers methods or make them private**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1132](https://issues.apache.org/jira/browse/TEZ-1132) | *Blocker* | **Consistent naming of Input and Outputs**

Some places we should Sorted Partitioned. In others we should Shuffled. We should use a consistent naming scheme based on Sorted, Grouped, Partitioned sub-terms so that the function is clear from the name.


---

* [TEZ-1131](https://issues.apache.org/jira/browse/TEZ-1131) | *Major* | **Simplify EdgeManager APIs**

2 pieces of feedback from [~daijy] 
1) Its not clear the event.sourceIndex needs to be accessed. Solution - Make it part of the method parameters
2) the Map\<InputIndex, List\<TaskIndex\>\> is convoluted. Solution - Replace with Map\<TaskIndex, InputIndex\>. Amazing why we did not do this in the first place.


---

* [TEZ-1130](https://issues.apache.org/jira/browse/TEZ-1130) | *Major* | **Replace confusing names on Vertex API**

Make it language agnostic.


---

* [TEZ-1127](https://issues.apache.org/jira/browse/TEZ-1127) | *Major* | **Add TEZ\_TASK\_JAVA\_OPTS and TEZ\_ENV configs to specify values from config**

There is no global setting available to specify JVM parameters for tez tasks (e.g: specifying native library location with java.library.path). Yarn allows specifying application.classpath, but not java opts. The only option right now is to set mapreduce.map.java.opts in the tez job config (or hive.tez.java.opts for Hive on Tez).

Suggestion from Bikas, while discussing this in tez-user group, is tez should have "TEZ\_TASK\_JAVA\_OPTS so that you don’t have to specify this via mapreduce configuration parameters"


---

* [TEZ-1058](https://issues.apache.org/jira/browse/TEZ-1058) | *Blocker* | **Replace user land interfaces with abstract classes**

Similar to Input/Processor/Output, there are other interfaces that users may implement. These should move to abstract classes for better compatibility management and sharing common basic functionality in the base abstract class.


---

* [TEZ-1057](https://issues.apache.org/jira/browse/TEZ-1057) | *Blocker* | **Replace interfaces with abstract classes for Processor/Input/Output classes**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1055](https://issues.apache.org/jira/browse/TEZ-1055) | *Blocker* | **Rename tez-mapreduce-examples to tez-examples**

And also the internal classes where applicable to remove MR references.


---

* [TEZ-1041](https://issues.apache.org/jira/browse/TEZ-1041) | *Blocker* | **Use VertexLocationHint consistently everywhere in the API**

VertexLocationHint is used internally and not by end users.


---

* [TEZ-1038](https://issues.apache.org/jira/browse/TEZ-1038) | *Major* | **Move TaskLocationHint outside of VertexLocationHint**

We could also use this to rename TaskLocation.getDataLocalHosts() to just TaskLocation.getHosts(). Data locality, while relevant, is not necessary.


---

* [TEZ-1025](https://issues.apache.org/jira/browse/TEZ-1025) | *Major* | **Rename tez.am.max.task.attempts to tez.am.task.max.failed.attempts**

The usage of the value is to determine the number of failed attempts that will be tolerated before failing the job. A rename to add failed in the config string will help clear the confusion. This will be an incompatible change.


---

* [TEZ-1018](https://issues.apache.org/jira/browse/TEZ-1018) | *Major* | **VertexManagerPluginContext should enable assigning locality to scheduled tasks**

This may be used by VertexManager to decide the location of their tasks depending on the location of source tasks.


---

* [TEZ-960](https://issues.apache.org/jira/browse/TEZ-960) | *Minor* | **Typos in MRJobConfig**

{code}
MR\_TEZ\_INPUT\_INITIALIZER\_SERIALIZE\_EVENT\_PAYLAOD,
MR\_TEZ\_INPUT\_INITIALIZER\_SERIALIZE\_EVENT\_PAYLAOD\_DEFAULT

VertexManagerPluginContext getTotalAVailableResource
{code}


---

* [TEZ-866](https://issues.apache.org/jira/browse/TEZ-866) | *Major* | **Add a TezMergedInputContext for MergedInputs**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-696](https://issues.apache.org/jira/browse/TEZ-696) | *Major* | **Remove implicit copying of processor payload to input and output**

In the task, the processor payload is implicitly copied to the input and output if they dont have one. While this may have been convenient in some cases, its very confusing when things dont work or when they surprisingly work. Also, its probably clearer to specify payload where appropriate so that its clear which one is for which. While writing the word count example I had to spend a lot of time debugging why my outputs had stopped working when I removed the map reduce confs from my non-MR processors.


---

* [TEZ-692](https://issues.apache.org/jira/browse/TEZ-692) | *Major* | **Unify job submission in either TezClient or TezSession**

Its confusing to have 2 ways to create and submit a tez job. The developer has to spend time thinking about and deciding which method to use.



