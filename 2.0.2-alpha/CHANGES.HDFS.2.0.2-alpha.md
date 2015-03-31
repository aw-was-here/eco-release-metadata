# Hadoop Changelog

## Release 2.0.2-alpha - 2012-10-09

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-3675](https://issues.apache.org/jira/browse/HDFS-3675) | libhdfs: follow documented return codes |  Minor | libhdfs | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3522](https://issues.apache.org/jira/browse/HDFS-3522) | If NN is in safemode, it should throw SafeModeException when getBlockLocations has zero locations |  Major | namenode | Brandon Li | Brandon Li |
| [HDFS-3446](https://issues.apache.org/jira/browse/HDFS-3446) | HostsFileReader silently ignores bad includes/excludes |  Major | namenode | Matthew Jacobs | Matthew Jacobs |
| [HDFS-3318](https://issues.apache.org/jira/browse/HDFS-3318) | Hftp hangs on transfers \>2GB |  Blocker | hdfs-client | Daryn Sharp | Daryn Sharp |
| [HDFS-2727](https://issues.apache.org/jira/browse/HDFS-2727) | libhdfs should get the default block size from the server |  Minor | libhdfs | Sho Shimauchi | Colin Patrick McCabe |
| [HDFS-2686](https://issues.apache.org/jira/browse/HDFS-2686) | Remove DistributedUpgrade related code |  Major | datanode, namenode | Todd Lipcon | Suresh Srinivas |
| [HDFS-2617](https://issues.apache.org/jira/browse/HDFS-2617) | Replaced Kerberized SSL for image transfer and fsck with SPNEGO-based solution |  Major | security | Jakob Homan | Jakob Homan |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-3637](https://issues.apache.org/jira/browse/HDFS-3637) | Add support for encrypting the DataTransferProtocol |  Major | datanode, hdfs-client, security | Aaron T. Myers | Aaron T. Myers |
| [HDFS-3535](https://issues.apache.org/jira/browse/HDFS-3535) | Audit logging should log denied accesses |  Major | namenode | Andy Isaacson | Andy Isaacson |
| [HDFS-3150](https://issues.apache.org/jira/browse/HDFS-3150) | Add option for clients to contact DNs via hostname |  Major | datanode, hdfs-client | Eli Collins | Eli Collins |
| [HDFS-3113](https://issues.apache.org/jira/browse/HDFS-3113) | httpfs does not support delegation tokens |  Major | . | Alejandro Abdelnur | Alejandro Abdelnur |
| [HDFS-3042](https://issues.apache.org/jira/browse/HDFS-3042) | Automatic failover support for NN HA |  Major | auto-failover, ha | Todd Lipcon | Todd Lipcon |
| [HDFS-2978](https://issues.apache.org/jira/browse/HDFS-2978) | The NameNode should expose name dir statuses via JMX |  Major | namenode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-2793](https://issues.apache.org/jira/browse/HDFS-2793) | Add an admin command to trigger an edit log roll |  Major | namenode | Aaron T. Myers | Todd Lipcon |
| [HDFS-744](https://issues.apache.org/jira/browse/HDFS-744) | Support hsync in HDFS |  Major | datanode, hdfs-client | Hairong Kuang | Lars Hofhansl |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-3907](https://issues.apache.org/jira/browse/HDFS-3907) | Allow multiple users for local block readers |  Major | datanode | Eli Collins | Eli Collins |
| [HDFS-3887](https://issues.apache.org/jira/browse/HDFS-3887) | Remove redundant chooseTarget methods in BlockPlacementPolicy.java |  Trivial | namenode | Jing Zhao | Jing Zhao |
| [HDFS-3871](https://issues.apache.org/jira/browse/HDFS-3871) | Change NameNodeProxies to use HADOOP-8748 |  Minor | hdfs-client | Arun C Murthy | Arun C Murthy |
| [HDFS-3866](https://issues.apache.org/jira/browse/HDFS-3866) | HttpFS POM should have property where to download tomcat from |  Minor | build | Ryan Hennig | Plamen Jeliazkov |
| [HDFS-3844](https://issues.apache.org/jira/browse/HDFS-3844) | Add @Override where necessary and remove unnecessary {@inheritdoc} and imports |  Trivial | . | Jing Zhao | Jing Zhao |
| [HDFS-3819](https://issues.apache.org/jira/browse/HDFS-3819) | Should check whether invalidate work percentage default value is not greater than 1.0f |  Minor | . | Jing Zhao | Jing Zhao |
| [HDFS-3802](https://issues.apache.org/jira/browse/HDFS-3802) | StartupOption.name in HdfsServerConstants should be final |  Trivial | . | Jing Zhao | Jing Zhao |
| [HDFS-3796](https://issues.apache.org/jira/browse/HDFS-3796) | Speed up edit log tests by avoiding fsync() |  Minor | test | Todd Lipcon | Todd Lipcon |
| [HDFS-3765](https://issues.apache.org/jira/browse/HDFS-3765) | Namenode INITIALIZESHAREDEDITS should be able to initialize all shared storages |  Major | ha | Vinayakumar B | Vinayakumar B |
| [HDFS-3723](https://issues.apache.org/jira/browse/HDFS-3723) | All commands should support meaningful --help |  Major | scripts, tools | E. Sammer | Jing Zhao |
| [HDFS-3711](https://issues.apache.org/jira/browse/HDFS-3711) | Manually convert remaining tests to JUnit4 |  Major | . | Andrew Wang | Andrew Wang |
| [HDFS-3697](https://issues.apache.org/jira/browse/HDFS-3697) | Enable fadvise readahead by default |  Minor | datanode, performance | Todd Lipcon | Todd Lipcon |
| [HDFS-3672](https://issues.apache.org/jira/browse/HDFS-3672) | Expose disk-location information for blocks to enable better scheduling |  Major | . | Andrew Wang | Andrew Wang |
| [HDFS-3666](https://issues.apache.org/jira/browse/HDFS-3666) | Plumb more exception messages to terminate |  Minor | . | Eli Collins | Eli Collins |
| [HDFS-3663](https://issues.apache.org/jira/browse/HDFS-3663) | MiniDFSCluster should capture the code path that led to the first ExitException |  Major | test | Eli Collins | Eli Collins |
| [HDFS-3659](https://issues.apache.org/jira/browse/HDFS-3659) | Add missing @Override to methods across the hadoop-hdfs project |  Minor | documentation | Brandon Li | Brandon Li |
| [HDFS-3650](https://issues.apache.org/jira/browse/HDFS-3650) | Use MutableQuantiles to provide latency histograms for various operations |  Major | . | Andrew Wang | Andrew Wang |
| [HDFS-3641](https://issues.apache.org/jira/browse/HDFS-3641) | Move server Util time methods to common and use now instead of System#currentTimeMillis |  Minor | . | Eli Collins | Eli Collins |
| [HDFS-3613](https://issues.apache.org/jira/browse/HDFS-3613) | GSet prints some INFO level values, which aren't really very useful to all |  Trivial | namenode | Harsh J | Andrew Wang |
| [HDFS-3612](https://issues.apache.org/jira/browse/HDFS-3612) | Single namenode image directory config warning can be improved |  Trivial | namenode | Harsh J | Andy Isaacson |
| [HDFS-3610](https://issues.apache.org/jira/browse/HDFS-3610) | fuse\_dfs: Provide a way to use the default (configured) NN URI |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3607](https://issues.apache.org/jira/browse/HDFS-3607) | log a message when fuse\_dfs is not built |  Minor | fuse-dfs | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3604](https://issues.apache.org/jira/browse/HDFS-3604) | Add dfs.webhdfs.enabled to hdfs-default.xml |  Minor | . | Eli Collins | Eli Collins |
| [HDFS-3583](https://issues.apache.org/jira/browse/HDFS-3583) | Convert remaining tests to Junit4 |  Major | test | Eli Collins | Andrew Wang |
| [HDFS-3582](https://issues.apache.org/jira/browse/HDFS-3582) | Hook daemon process exit for testing |  Minor | test | Eli Collins | Eli Collins |
| [HDFS-3568](https://issues.apache.org/jira/browse/HDFS-3568) | fuse\_dfs: add support for security |  Major | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3537](https://issues.apache.org/jira/browse/HDFS-3537) | Move libhdfs and fuse-dfs source to native subdirectories |  Minor | fuse-dfs, libhdfs | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3520](https://issues.apache.org/jira/browse/HDFS-3520) | Add transfer rate logging to TransferFsImage |  Minor | namenode | Eli Collins | Eli Collins |
| [HDFS-3516](https://issues.apache.org/jira/browse/HDFS-3516) | Check content-type in WebHdfsFileSystem |  Major | hdfs-client, webhdfs | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-3514](https://issues.apache.org/jira/browse/HDFS-3514) | Add missing TestParallelLocalRead |  Major | test | Henry Robinson | Henry Robinson |
| [HDFS-3513](https://issues.apache.org/jira/browse/HDFS-3513) | HttpFS should cache filesystems |  Major | . | Alejandro Abdelnur | Alejandro Abdelnur |
| [HDFS-3504](https://issues.apache.org/jira/browse/HDFS-3504) | Configurable retry in DFSClient |  Major | hdfs-client | Siddharth Seth | Tsz Wo Nicholas Sze |
| [HDFS-3481](https://issues.apache.org/jira/browse/HDFS-3481) | Refactor HttpFS handling of JAX-RS query string parameters |  Major | . | Alejandro Abdelnur | Alejandro Abdelnur |
| [HDFS-3475](https://issues.apache.org/jira/browse/HDFS-3475) | Make the replication and invalidation rates configurable |  Trivial | . | Harsh J | Harsh J |
| [HDFS-3454](https://issues.apache.org/jira/browse/HDFS-3454) | Balancer unconditionally logs InterruptedException at INFO level on shutdown if security is enabled |  Minor | balancer & mover | Eli Collins | Eli Collins |
| [HDFS-3438](https://issues.apache.org/jira/browse/HDFS-3438) | BootstrapStandby should not require a rollEdits on active node |  Major | ha | Todd Lipcon | Todd Lipcon |
| [HDFS-3419](https://issues.apache.org/jira/browse/HDFS-3419) | Cleanup LocatedBlock |  Minor | . | Eli Collins | Eli Collins |
| [HDFS-3417](https://issues.apache.org/jira/browse/HDFS-3417) | Rename BalancerDatanode#getName to getDisplayName to be consistent with Datanode |  Minor | datanode | Eli Collins | Eli Collins |
| [HDFS-3416](https://issues.apache.org/jira/browse/HDFS-3416) | Cleanup DatanodeID and DatanodeRegistration constructors used by testing |  Minor | datanode | Eli Collins | Eli Collins |
| [HDFS-3404](https://issues.apache.org/jira/browse/HDFS-3404) | Make putImage in GetImageServlet infer remote address to fetch from request |  Major | . | Aaron T. Myers | Aaron T. Myers |
| [HDFS-3401](https://issues.apache.org/jira/browse/HDFS-3401) | Cleanup DatanodeDescriptor creation in the tests |  Major | datanode, test | Eli Collins | Eli Collins |
| [HDFS-3400](https://issues.apache.org/jira/browse/HDFS-3400) | DNs should be able start with jsvc even if security is disabled |  Major | datanode, scripts | Aaron T. Myers | Aaron T. Myers |
| [HDFS-3394](https://issues.apache.org/jira/browse/HDFS-3394) | Do not use generic in INodeFile.getLastBlock() |  Minor | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-3390](https://issues.apache.org/jira/browse/HDFS-3390) | DFSAdmin should print full stack traces of errors when DEBUG logging is enabled |  Minor | hdfs-client | Aaron T. Myers | Aaron T. Myers |
| [HDFS-3372](https://issues.apache.org/jira/browse/HDFS-3372) | offlineEditsViewer should be able to read a binary edits file with recovery mode |  Minor | tools | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3343](https://issues.apache.org/jira/browse/HDFS-3343) | Improve metrics for DN read latency |  Major | datanode | Todd Lipcon | Andrew Wang |
| [HDFS-3341](https://issues.apache.org/jira/browse/HDFS-3341) | Change minimum RPC versions to 2.0.0-SNAPSHOT instead of 2.0.0 |  Minor | . | Todd Lipcon | Todd Lipcon |
| [HDFS-3335](https://issues.apache.org/jira/browse/HDFS-3335) | check for edit log corruption at the end of the log |  Major | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3276](https://issues.apache.org/jira/browse/HDFS-3276) | initializeSharedEdits should have a -nonInteractive flag |  Minor | ha, namenode | Vinithra Varadharajan | Todd Lipcon |
| [HDFS-3230](https://issues.apache.org/jira/browse/HDFS-3230) | Cleanup DatanodeID creation in the tests |  Minor | test | Eli Collins | Eli Collins |
| [HDFS-3227](https://issues.apache.org/jira/browse/HDFS-3227) | Mavenise libhdfs tests |  Major | libhdfs | Henry Robinson |  |
| [HDFS-3170](https://issues.apache.org/jira/browse/HDFS-3170) | Add more useful metrics for write latency |  Major | datanode | Todd Lipcon | Matthew Jacobs |
| [HDFS-3134](https://issues.apache.org/jira/browse/HDFS-3134) | Harden edit log loader against malformed or malicious input |  Major | namenode | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3110](https://issues.apache.org/jira/browse/HDFS-3110) | libhdfs implementation of direct read API |  Major | libhdfs, performance | Henry Robinson | Henry Robinson |
| [HDFS-3040](https://issues.apache.org/jira/browse/HDFS-3040) | TestMulitipleNNDataBlockScanner is misspelled |  Trivial | test | Aaron T. Myers | madhukara phatak |
| [HDFS-3002](https://issues.apache.org/jira/browse/HDFS-3002) | TestNameNodeMetrics need not wait for metrics update with new metrics framework |  Trivial | test | Suresh Srinivas | Suresh Srinivas |
| [HDFS-2988](https://issues.apache.org/jira/browse/HDFS-2988) | Improve error message when storage directory lock fails |  Minor | namenode | Todd Lipcon | Miomir Boljanovic |
| [HDFS-2885](https://issues.apache.org/jira/browse/HDFS-2885) | Remove "federation" from the nameservice config options |  Major | namenode | Eli Collins | Tsz Wo Nicholas Sze |
| [HDFS-2834](https://issues.apache.org/jira/browse/HDFS-2834) | ByteBuffer-based read API for DFSInputStream |  Major | hdfs-client, performance | Henry Robinson | Henry Robinson |
| [HDFS-2652](https://issues.apache.org/jira/browse/HDFS-2652) | Port token service changes from 205 |  Major | . | Daryn Sharp | Daryn Sharp |
| [HDFS-2421](https://issues.apache.org/jira/browse/HDFS-2421) | Improve the concurrency of  SerialNumberMap in NameNode |  Major | namenode | Hairong Kuang | Jing Zhao |
| [HDFS-2391](https://issues.apache.org/jira/browse/HDFS-2391) | Newly set BalancerBandwidth value is not displayed anywhere |  Major | balancer & mover | Rajit Saha | Harsh J |
| [HDFS-1013](https://issues.apache.org/jira/browse/HDFS-1013) | Miscellaneous improvements to HTML markup for web UIs |  Minor | . | Todd Lipcon | Eugene Koontz |
| [HDFS-799](https://issues.apache.org/jira/browse/HDFS-799) | libhdfs must call DetachCurrentThread when a thread is destroyed |  Major | . | Christian Kunz | Colin Patrick McCabe |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-3972](https://issues.apache.org/jira/browse/HDFS-3972) | Trash emptier fails in secure HA cluster |  Critical | namenode | Todd Lipcon | Todd Lipcon |
| [HDFS-3928](https://issues.apache.org/jira/browse/HDFS-3928) | MiniDFSCluster should reset the first ExitException on shutdown |  Major | test | Eli Collins | Eli Collins |
| [HDFS-3902](https://issues.apache.org/jira/browse/HDFS-3902) | TestDatanodeBlockScanner#testBlockCorruptionPolicy is broken |  Minor | . | Andy Isaacson | Andy Isaacson |
| [HDFS-3895](https://issues.apache.org/jira/browse/HDFS-3895) | hadoop-client must include commons-cli |  Major | build | Alejandro Abdelnur | Alejandro Abdelnur |
| [HDFS-3890](https://issues.apache.org/jira/browse/HDFS-3890) | filecontext mkdirs doesn't apply umask as expected |  Critical | . | Thomas Graves | Thomas Graves |
| [HDFS-3888](https://issues.apache.org/jira/browse/HDFS-3888) | BlockPlacementPolicyDefault code cleanup |  Minor | . | Jing Zhao | Jing Zhao |
| [HDFS-3879](https://issues.apache.org/jira/browse/HDFS-3879) | Fix findbugs warning in TransferFsImage on branch-2 |  Minor | namenode | Eli Collins | Eli Collins |
| [HDFS-3873](https://issues.apache.org/jira/browse/HDFS-3873) | Hftp assumes security is disabled if token fetch fails |  Major | hdfs-client | Daryn Sharp | Daryn Sharp |
| [HDFS-3864](https://issues.apache.org/jira/browse/HDFS-3864) | NN does not update internal file mtime for OP\_CLOSE when reading from the edit log |  Major | namenode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-3861](https://issues.apache.org/jira/browse/HDFS-3861) | Deadlock in DFSClient |  Blocker | hdfs-client | Kihwal Lee | Kihwal Lee |
| [HDFS-3860](https://issues.apache.org/jira/browse/HDFS-3860) | HeartbeatManager#Monitor may wrongly hold the writelock of namesystem |  Major | . | Jing Zhao | Jing Zhao |
| [HDFS-3856](https://issues.apache.org/jira/browse/HDFS-3856) | TestHDFSServerPorts failure is causing surefire fork failure |  Blocker | test | Thomas Graves | Eli Collins |
| [HDFS-3853](https://issues.apache.org/jira/browse/HDFS-3853) | Port MiniDFSCluster enableManagedDfsDirsRedundancy option to branch-2 |  Minor | namenode | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3852](https://issues.apache.org/jira/browse/HDFS-3852) | TestHftpDelegationToken is broken after HADOOP-8225 |  Major | hdfs-client, security | Aaron T. Myers | Daryn Sharp |
| [HDFS-3849](https://issues.apache.org/jira/browse/HDFS-3849) | When re-loading the FSImage, we should clear the existing genStamp and leases. |  Critical | namenode | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3841](https://issues.apache.org/jira/browse/HDFS-3841) | Port HDFS-3835 to branch-0.23 |  Major | . | Robert Joseph Evans | Robert Joseph Evans |
| [HDFS-3837](https://issues.apache.org/jira/browse/HDFS-3837) | Fix DataNode.recoverBlock findbugs warning |  Major | datanode | Eli Collins | Eli Collins |
| [HDFS-3835](https://issues.apache.org/jira/browse/HDFS-3835) | Long-lived 2NN cannot perform a checkpoint if security is enabled and the NN restarts with outstanding delegation tokens |  Major | namenode, security | Aaron T. Myers | Aaron T. Myers |
| [HDFS-3833](https://issues.apache.org/jira/browse/HDFS-3833) | TestDFSShell fails on Windows due to file concurrent read write |  Major | test | Brandon Li | Brandon Li |
| [HDFS-3832](https://issues.apache.org/jira/browse/HDFS-3832) | Remove protocol methods related to DistributedUpgrade |  Major | datanode, namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-3830](https://issues.apache.org/jira/browse/HDFS-3830) | test\_libhdfs\_threaded: use forceNewInstance |  Minor | libhdfs | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3816](https://issues.apache.org/jira/browse/HDFS-3816) | Invalidate work percentage default value should be 0.32f instead of 32 |  Major | namenode | Jing Zhao | Jing Zhao |
| [HDFS-3808](https://issues.apache.org/jira/browse/HDFS-3808) | fuse\_dfs: postpone libhdfs intialization until after fork |  Critical | fuse-dfs | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3803](https://issues.apache.org/jira/browse/HDFS-3803) | BlockPoolSliceScanner new work period notice is very chatty at INFO level |  Minor | datanode | Andrew Purtell |  |
| [HDFS-3794](https://issues.apache.org/jira/browse/HDFS-3794) | WebHDFS Open used with Offset returns the original (and incorrect) Content Length in the HTTP Header. |  Major | webhdfs | Ravi Prakash | Ravi Prakash |
| [HDFS-3790](https://issues.apache.org/jira/browse/HDFS-3790) | test\_fuse\_dfs.c doesn't compile on centos 5 |  Minor | fuse-dfs | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3788](https://issues.apache.org/jira/browse/HDFS-3788) | distcp can't copy large files using webhdfs due to missing Content-Length header |  Critical | webhdfs | Eli Collins | Tsz Wo Nicholas Sze |
| [HDFS-3760](https://issues.apache.org/jira/browse/HDFS-3760) | primitiveCreate is a write, not a read |  Minor | hdfs-client | Andy Isaacson | Andy Isaacson |
| [HDFS-3758](https://issues.apache.org/jira/browse/HDFS-3758) | TestFuseDFS test failing |  Minor | fuse-dfs | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3756](https://issues.apache.org/jira/browse/HDFS-3756) | DelegationTokenFetcher creates 2 HTTP connections, the second one not properly configured |  Critical | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HDFS-3755](https://issues.apache.org/jira/browse/HDFS-3755) | Creating an already-open-for-write file with overwrite=true fails |  Major | namenode | Todd Lipcon | Todd Lipcon |
| [HDFS-3754](https://issues.apache.org/jira/browse/HDFS-3754) | BlockSender doesn't shutdown ReadaheadPool threads |  Major | datanode | Eli Collins | Eli Collins |
| [HDFS-3738](https://issues.apache.org/jira/browse/HDFS-3738) | TestDFSClientRetries#testFailuresArePerOperation sets incorrect timeout config |  Minor | test | Aaron T. Myers | Aaron T. Myers |
| [HDFS-3733](https://issues.apache.org/jira/browse/HDFS-3733) | Audit logs should include WebHDFS access |  Major | webhdfs | Andy Isaacson | Andy Isaacson |
| [HDFS-3732](https://issues.apache.org/jira/browse/HDFS-3732) | fuse\_dfs: incorrect configuration value checked for connection expiry timer period |  Minor | fuse-dfs | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3731](https://issues.apache.org/jira/browse/HDFS-3731) | 2.0 release upgrade must handle blocks being written from 1.0 |  Blocker | datanode | Suresh Srinivas | Kihwal Lee |
| [HDFS-3724](https://issues.apache.org/jira/browse/HDFS-3724) | add InterfaceAudience annotations to HttpFS classes and making inner enum static |  Major | . | Alejandro Abdelnur | Alejandro Abdelnur |
| [HDFS-3721](https://issues.apache.org/jira/browse/HDFS-3721) | hsync support broke wire compatibility |  Critical | datanode, hdfs-client | Todd Lipcon | Aaron T. Myers |
| [HDFS-3720](https://issues.apache.org/jira/browse/HDFS-3720) | hdfs.h must get packaged |  Major | libhdfs | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3718](https://issues.apache.org/jira/browse/HDFS-3718) | Datanode won't shutdown because of runaway DataBlockScanner thread |  Critical | datanode | Kihwal Lee | Kihwal Lee |
| [HDFS-3715](https://issues.apache.org/jira/browse/HDFS-3715) | Fix TestFileCreation#testFileCreationNamenodeRestart |  Major | test | Eli Collins | Andrew Wang |
| [HDFS-3710](https://issues.apache.org/jira/browse/HDFS-3710) | libhdfs misuses O\_RDONLY/WRONLY/RDWR |  Minor | libhdfs | Andy Isaacson | Andy Isaacson |
| [HDFS-3707](https://issues.apache.org/jira/browse/HDFS-3707) | TestFSInputChecker: improper use of skip |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3696](https://issues.apache.org/jira/browse/HDFS-3696) | Create files with WebHdfsFileSystem goes OOM when file size is big |  Critical | webhdfs | Kihwal Lee | Tsz Wo Nicholas Sze |
| [HDFS-3690](https://issues.apache.org/jira/browse/HDFS-3690) | BlockPlacementPolicyDefault incorrectly casts LOG |  Major | . | Eli Collins | Eli Collins |
| [HDFS-3688](https://issues.apache.org/jira/browse/HDFS-3688) | Namenode loses datanode hostname if datanode re-registers |  Major | datanode | Jason Lowe | Jason Lowe |
| [HDFS-3683](https://issues.apache.org/jira/browse/HDFS-3683) | Edit log replay progress indicator shows \>100% complete |  Minor | namenode | Todd Lipcon | Plamen Jeliazkov |
| [HDFS-3679](https://issues.apache.org/jira/browse/HDFS-3679) | fuse\_dfs notrash option sets usetrash |  Minor | fuse-dfs | Conrad Meyer | Conrad Meyer |
| [HDFS-3673](https://issues.apache.org/jira/browse/HDFS-3673) | libhdfs: fix some compiler warnings |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3664](https://issues.apache.org/jira/browse/HDFS-3664) | BlockManager race when stopping active services |  Major | test | Eli Collins | Colin Patrick McCabe |
| [HDFS-3658](https://issues.apache.org/jira/browse/HDFS-3658) | TestDFSClientRetries#testNamenodeRestart failed |  Major | . | Eli Collins | Tsz Wo Nicholas Sze |
| [HDFS-3646](https://issues.apache.org/jira/browse/HDFS-3646) | LeaseRenewer can hold reference to inactive DFSClient instances forever |  Critical | hdfs-client | Kihwal Lee | Kihwal Lee |
| [HDFS-3633](https://issues.apache.org/jira/browse/HDFS-3633) | libhdfs: hdfsDelete should pass JNI\_FALSE or JNI\_TRUE |  Minor | libhdfs | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3629](https://issues.apache.org/jira/browse/HDFS-3629) | fix the typo in the error message about inconsistent storage layout version |  Trivial | namenode | Brandon Li | Brandon Li |
| [HDFS-3622](https://issues.apache.org/jira/browse/HDFS-3622) | Backport HDFS-3541 to branch-0.23 |  Major | . | Robert Joseph Evans | Robert Joseph Evans |
| [HDFS-3615](https://issues.apache.org/jira/browse/HDFS-3615) | Two BlockTokenSecretManager findbugs warnings |  Major | security | Eli Collins | Aaron T. Myers |
| [HDFS-3611](https://issues.apache.org/jira/browse/HDFS-3611) | NameNode prints unnecessary WARNs about edit log normally skipping a few bytes |  Trivial | namenode | Harsh J | Colin Patrick McCabe |
| [HDFS-3609](https://issues.apache.org/jira/browse/HDFS-3609) | libhdfs: don't force the URI to look like hdfs://hostname:port |  Major | libhdfs | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3608](https://issues.apache.org/jira/browse/HDFS-3608) | fuse\_dfs: detect changes in UID ticket cache |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3605](https://issues.apache.org/jira/browse/HDFS-3605) | Block mistakenly marked corrupt during edit log catchup phase of failover |  Major | ha, namenode | Brahma Reddy Battula | Todd Lipcon |
| [HDFS-3603](https://issues.apache.org/jira/browse/HDFS-3603) | Decouple TestHDFSTrash from TestTrash |  Major | test | Jason Lowe | Jason Lowe |
| [HDFS-3597](https://issues.apache.org/jira/browse/HDFS-3597) | SNN can fail to start on upgrade |  Minor | namenode | Andy Isaacson | Andy Isaacson |
| [HDFS-3591](https://issues.apache.org/jira/browse/HDFS-3591) | Backport HDFS-3357 to branch-0.23 |  Major | . | Robert Joseph Evans | Robert Joseph Evans |
| [HDFS-3581](https://issues.apache.org/jira/browse/HDFS-3581) | FSPermissionChecker#checkPermission sticky bit check missing range check |  Major | namenode | Eli Collins | Eli Collins |
| [HDFS-3580](https://issues.apache.org/jira/browse/HDFS-3580) | incompatible types; no instance(s) of type variable(s) V exist so that V conforms to boolean compiling HttpFSServer.java with OpenJDK |  Minor | . | Andy Isaacson | Andy Isaacson |
| [HDFS-3579](https://issues.apache.org/jira/browse/HDFS-3579) | libhdfs: fix exception handling |  Major | libhdfs | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3577](https://issues.apache.org/jira/browse/HDFS-3577) | WebHdfsFileSystem can not read files larger than 24KB |  Blocker | webhdfs | Alejandro Abdelnur | Tsz Wo Nicholas Sze |
| [HDFS-3575](https://issues.apache.org/jira/browse/HDFS-3575) | HttpFS does not log Exception Stacktraces |  Minor | . | Brock Noland | Brock Noland |
| [HDFS-3574](https://issues.apache.org/jira/browse/HDFS-3574) | Fix small race and do some cleanup in GetImageServlet |  Minor | namenode | Todd Lipcon | Todd Lipcon |
| [HDFS-3572](https://issues.apache.org/jira/browse/HDFS-3572) | Cleanup code which inits SPNEGO in HttpServer |  Minor | namenode, security | Todd Lipcon | Todd Lipcon |
| [HDFS-3559](https://issues.apache.org/jira/browse/HDFS-3559) | DFSTestUtil: use Builder class to construct DFSTestUtil instances |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3555](https://issues.apache.org/jira/browse/HDFS-3555) | idle client socket triggers DN ERROR log (should be INFO or DEBUG) |  Major | datanode, hdfs-client | Jeff Lord | Andy Isaacson |
| [HDFS-3551](https://issues.apache.org/jira/browse/HDFS-3551) | WebHDFS CREATE does not use client location for redirection |  Major | webhdfs | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-3548](https://issues.apache.org/jira/browse/HDFS-3548) | NamenodeFsck.copyBlock fails to create a Block Reader |  Critical | namenode | Todd Lipcon | Colin Patrick McCabe |
| [HDFS-3541](https://issues.apache.org/jira/browse/HDFS-3541) | Deadlock between recovery, xceiver and packet responder |  Major | datanode | suja s | Vinayakumar B |
| [HDFS-3539](https://issues.apache.org/jira/browse/HDFS-3539) | libhdfs code cleanups |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3531](https://issues.apache.org/jira/browse/HDFS-3531) | EditLogFileOutputStream#preallocate should check for incomplete writes |  Minor | namenode | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3524](https://issues.apache.org/jira/browse/HDFS-3524) | TestFileLengthOnClusterRestart failed due to error message change |  Major | test | Eli Collins | Brandon Li |
| [HDFS-3518](https://issues.apache.org/jira/browse/HDFS-3518) | Provide API to check HDFS operational state |  Major | hdfs-client | Bikas Saha | Tsz Wo Nicholas Sze |
| [HDFS-3517](https://issues.apache.org/jira/browse/HDFS-3517) | TestStartup should bind ephemeral ports |  Minor | test | Eli Collins | Eli Collins |
| [HDFS-3505](https://issues.apache.org/jira/browse/HDFS-3505) | DirectoryScanner does not join all threads in shutdown |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3501](https://issues.apache.org/jira/browse/HDFS-3501) | Checkpointing with security enabled will stop working after ticket lifetime expires |  Major | ha, namenode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-3491](https://issues.apache.org/jira/browse/HDFS-3491) | HttpFs does not set permissions correctly |  Major | . | Romain Rigaux | Alejandro Abdelnur |
| [HDFS-3490](https://issues.apache.org/jira/browse/HDFS-3490) | DN WebHDFS methods throw NPE if Namenode RPC address param not specified |  Minor | webhdfs | Todd Lipcon | Tsz Wo Nicholas Sze |
| [HDFS-3487](https://issues.apache.org/jira/browse/HDFS-3487) | offlineimageviewer should give byte offset information when it encounters an exception |  Minor | tools | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3486](https://issues.apache.org/jira/browse/HDFS-3486) | offlineimageviewer can't read fsimage files that contain persistent delegation tokens |  Minor | security, tools | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3485](https://issues.apache.org/jira/browse/HDFS-3485) | DataTransferThrottler will over-throttle when currentTimeMillis jumps |  Minor | . | Andy Isaacson | Andy Isaacson |
| [HDFS-3484](https://issues.apache.org/jira/browse/HDFS-3484) | hdfs fsck doesn't work if NN HTTP address is set to 0.0.0.0 even if NN RPC address is configured |  Minor | hdfs-client | Aaron T. Myers | Aaron T. Myers |
| [HDFS-3480](https://issues.apache.org/jira/browse/HDFS-3480) | Multiple SLF4J binding warning |  Major | build | Eli Collins | Vinayakumar B |
| [HDFS-3469](https://issues.apache.org/jira/browse/HDFS-3469) | start-dfs.sh will start zkfc, but stop-dfs.sh will not stop zkfc similarly. |  Minor | auto-failover | Vinayakumar B | Vinayakumar B |
| [HDFS-3466](https://issues.apache.org/jira/browse/HDFS-3466) | The SPNEGO filter for the NameNode should come out of the web keytab file |  Major | namenode, security | Owen O'Malley | Owen O'Malley |
| [HDFS-3460](https://issues.apache.org/jira/browse/HDFS-3460) | HttpFS proxyuser validation with Kerberos ON uses full principal name |  Critical | . | Alejandro Abdelnur | Alejandro Abdelnur |
| [HDFS-3444](https://issues.apache.org/jira/browse/HDFS-3444) | hdfs groups command doesn't work with security enabled |  Major | hdfs-client | Aaron T. Myers | Aaron T. Myers |
| [HDFS-3442](https://issues.apache.org/jira/browse/HDFS-3442) | Incorrect count for Missing Replicas in FSCK report |  Minor | . | suja s | Andrew Wang |
| [HDFS-3440](https://issues.apache.org/jira/browse/HDFS-3440) | should more effectively limit stream memory consumption when reading corrupt edit logs |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3436](https://issues.apache.org/jira/browse/HDFS-3436) | adding new datanode to existing  pipeline fails in case of Append/Recovery |  Major | datanode | Brahma Reddy Battula | Vinayakumar B |
| [HDFS-3433](https://issues.apache.org/jira/browse/HDFS-3433) | GetImageServlet should allow administrative requestors when security is enabled |  Major | namenode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-3428](https://issues.apache.org/jira/browse/HDFS-3428) | move DelegationTokenRenewer to common |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HDFS-3422](https://issues.apache.org/jira/browse/HDFS-3422) | TestStandbyIsHot timeouts too aggressive |  Minor | test | Todd Lipcon | Todd Lipcon |
| [HDFS-3415](https://issues.apache.org/jira/browse/HDFS-3415) | During NameNode starting up, it may pick wrong storage directory inspector when the layout versions of the storage directories are different |  Major | namenode | Brahma Reddy Battula | Brandon Li |
| [HDFS-3414](https://issues.apache.org/jira/browse/HDFS-3414) | Balancer does not find NameNode if rpc-address or servicerpc-address are not set in client configs |  Minor | balancer & mover | Aaron T. Myers | Aaron T. Myers |
| [HDFS-3413](https://issues.apache.org/jira/browse/HDFS-3413) | TestFailureToReadEdits timing out |  Critical | ha, test | Todd Lipcon | Aaron T. Myers |
| [HDFS-3398](https://issues.apache.org/jira/browse/HDFS-3398) | Client will not retry when primaryDN is down once it's just got pipeline |  Minor | hdfs-client | Brahma Reddy Battula | amith |
| [HDFS-3391](https://issues.apache.org/jira/browse/HDFS-3391) | TestPipelinesFailover#testLeaseRecoveryAfterFailover is failing |  Critical | . | Arun C Murthy | Todd Lipcon |
| [HDFS-3385](https://issues.apache.org/jira/browse/HDFS-3385) | ClassCastException when trying to append a file |  Major | namenode | Brahma Reddy Battula | Tsz Wo Nicholas Sze |
| [HDFS-3368](https://issues.apache.org/jira/browse/HDFS-3368) | Missing blocks due to bad DataNodes coming up and down. |  Major | namenode | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-3359](https://issues.apache.org/jira/browse/HDFS-3359) | DFSClient.close should close cached sockets |  Critical | hdfs-client | Todd Lipcon | Todd Lipcon |
| [HDFS-3334](https://issues.apache.org/jira/browse/HDFS-3334) | ByteRangeInputStream leaks streams |  Major | hdfs-client | Daryn Sharp | Daryn Sharp |
| [HDFS-3331](https://issues.apache.org/jira/browse/HDFS-3331) | setBalancerBandwidth do not checkSuperuserPrivilege |  Major | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-3321](https://issues.apache.org/jira/browse/HDFS-3321) | Error message for insufficient data nodes to come out of safemode is wrong. |  Major | . | Ravi Prakash | Ravi Prakash |
| [HDFS-3312](https://issues.apache.org/jira/browse/HDFS-3312) | Hftp selects wrong token service |  Blocker | hdfs-client | Daryn Sharp | Daryn Sharp |
| [HDFS-3308](https://issues.apache.org/jira/browse/HDFS-3308) | hftp/webhdfs can't get tokens if authority has no port |  Critical | webhdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-3306](https://issues.apache.org/jira/browse/HDFS-3306) | fuse\_dfs: don't lock release operations |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3275](https://issues.apache.org/jira/browse/HDFS-3275) | Format command overwrites contents of non-empty shared edits dir if name dirs are empty without any prompting |  Major | ha, namenode | Vinithra Varadharajan | amith |
| [HDFS-3266](https://issues.apache.org/jira/browse/HDFS-3266) | DFSTestUtil#waitCorruptReplicas doesn't sleep between checks |  Minor | . | Aaron T. Myers | madhukara phatak |
| [HDFS-3243](https://issues.apache.org/jira/browse/HDFS-3243) | TestParallelRead timing out on jenkins |  Major | hdfs-client, test | Todd Lipcon | Henry Robinson |
| [HDFS-3235](https://issues.apache.org/jira/browse/HDFS-3235) | MiniDFSClusterManager doesn't correctly support -format option |  Minor | . | Henry Robinson | Henry Robinson |
| [HDFS-3194](https://issues.apache.org/jira/browse/HDFS-3194) | DataNode block scanner is running too frequently |  Major | datanode | suja s | Andy Isaacson |
| [HDFS-3177](https://issues.apache.org/jira/browse/HDFS-3177) | Allow DFSClient to find out and use the CRC type being used for a file. |  Major | datanode, hdfs-client | Kihwal Lee | Kihwal Lee |
| [HDFS-3176](https://issues.apache.org/jira/browse/HDFS-3176) | JsonUtil should not parse the MD5MD5CRC32FileChecksum bytes on its own. |  Major | hdfs-client | Kihwal Lee | Kihwal Lee |
| [HDFS-3166](https://issues.apache.org/jira/browse/HDFS-3166) | Hftp connections do not have a timeout |  Critical | hdfs-client | Daryn Sharp | Daryn Sharp |
| [HDFS-3157](https://issues.apache.org/jira/browse/HDFS-3157) | Error in deleting block is keep on coming from DN even after the block report and directory scanning has happened |  Major | namenode | J.Andreina | Ashish Singhi |
| [HDFS-3136](https://issues.apache.org/jira/browse/HDFS-3136) | Multiple SLF4J binding warning |  Major | build | Jason Lowe | Jason Lowe |
| [HDFS-3067](https://issues.apache.org/jira/browse/HDFS-3067) | NPE in DFSInputStream.readBuffer if read is repeated on corrupted block |  Major | hdfs-client | Henry Robinson | Henry Robinson |
| [HDFS-3054](https://issues.apache.org/jira/browse/HDFS-3054) | distcp -skipcrccheck has no effect |  Major | tools | patrick white | Colin Patrick McCabe |
| [HDFS-3048](https://issues.apache.org/jira/browse/HDFS-3048) | Small race in BlockManager#close |  Major | namenode | Eli Collins | Andy Isaacson |
| [HDFS-3037](https://issues.apache.org/jira/browse/HDFS-3037) | TestMulitipleNNDataBlockScanner#testBlockScannerAfterRestart is racy |  Minor | test | Aaron T. Myers | Aaron T. Myers |
| [HDFS-3031](https://issues.apache.org/jira/browse/HDFS-3031) | HA: Fix complete() and getAdditionalBlock() RPCs to be idempotent. |  Major | ha | Stephen Chu | Todd Lipcon |
| [HDFS-2982](https://issues.apache.org/jira/browse/HDFS-2982) | Startup performance suffers when there are many edit log segments |  Critical | namenode | Todd Lipcon | Colin Patrick McCabe |
| [HDFS-2966](https://issues.apache.org/jira/browse/HDFS-2966) | TestNameNodeMetrics tests can fail under load |  Minor | test | Steve Loughran | Steve Loughran |
| [HDFS-2963](https://issues.apache.org/jira/browse/HDFS-2963) | Console Output is confusing while executing metasave (dfsadmin command) |  Minor | . | J.Andreina | Andrew Wang |
| [HDFS-2914](https://issues.apache.org/jira/browse/HDFS-2914) | HA: Standby should not enter safemode when resources are low |  Major | ha, namenode | Hari Mankude | Vinayakumar B |
| [HDFS-2800](https://issues.apache.org/jira/browse/HDFS-2800) | HA: TestStandbyCheckpoints.testCheckpointCancellation is racy |  Major | ha, test | Aaron T. Myers | Todd Lipcon |
| [HDFS-2797](https://issues.apache.org/jira/browse/HDFS-2797) | Fix misuses of InputStream#skip in the edit log code |  Major | ha, namenode | Aaron T. Myers | Colin Patrick McCabe |
| [HDFS-2759](https://issues.apache.org/jira/browse/HDFS-2759) | Pre-allocate HDFS edit log files after writing version number |  Major | ha, namenode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-2757](https://issues.apache.org/jira/browse/HDFS-2757) | Cannot read a local block that's being written to when using the local read short circuit |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HDFS-2619](https://issues.apache.org/jira/browse/HDFS-2619) | Remove my personal email address from the libhdfs build file. |  Major | build | Owen O'Malley | Owen O'Malley |
| [HDFS-2285](https://issues.apache.org/jira/browse/HDFS-2285) | BackupNode should reject requests trying to modify namespace |  Major | namenode | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-2025](https://issues.apache.org/jira/browse/HDFS-2025) | Go Back to File View link is not working in tail.jsp |  Minor | datanode | sravankorumilli | Ashish Singhi |
| [HDFS-1490](https://issues.apache.org/jira/browse/HDFS-1490) | TransferFSImage should timeout |  Minor | namenode | Dmytro Molkov | Vinayakumar B |
| [HDFS-1249](https://issues.apache.org/jira/browse/HDFS-1249) | with fuse-dfs, chown which only has owner (or only group) argument fails with Input/output error. |  Minor | fuse-dfs | matsusaka kentaro | Colin Patrick McCabe |
| [HDFS-1153](https://issues.apache.org/jira/browse/HDFS-1153) | dfsnodelist.jsp should handle invalid input parameters |  Minor | datanode | Ravi Phulari | Ravi Phulari |
| [HDFS-766](https://issues.apache.org/jira/browse/HDFS-766) | Error message not clear for set space quota out of boundary  values. |  Minor | . | Ravi Phulari | Jon Zuanich |
| [HDFS-711](https://issues.apache.org/jira/browse/HDFS-711) | hdfsUtime does not handle atime = 0 or mtime = 0 correctly |  Major | documentation | freestyler | Colin Patrick McCabe |
| [HDFS-470](https://issues.apache.org/jira/browse/HDFS-470) | libhdfs should handle 0-length reads from FSInputStream correctly |  Minor | . | Pete Wyckoff | Colin Patrick McCabe |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-3709](https://issues.apache.org/jira/browse/HDFS-3709) | TestStartup tests still binding to the ephemeral port |  Major | test | Eli Collins | Eli Collins |
| [HDFS-3665](https://issues.apache.org/jira/browse/HDFS-3665) | Add a test for renaming across file systems via a symlink |  Major | test | Eli Collins | Eli Collins |
| [HDFS-3634](https://issues.apache.org/jira/browse/HDFS-3634) | Add self-contained, mavenized fuse\_dfs test |  Minor | fuse-dfs | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3606](https://issues.apache.org/jira/browse/HDFS-3606) | libhdfs: create self-contained unit test |  Minor | libhdfs | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3291](https://issues.apache.org/jira/browse/HDFS-3291) | add test that covers HttpFS working w/ a non-HDFS Hadoop filesystem |  Major | . | Alejandro Abdelnur | Alejandro Abdelnur |
| [HDFS-3258](https://issues.apache.org/jira/browse/HDFS-3258) | Test for HADOOP-8144 (pseudoSortByDistance in NetworkTopology for first rack local node) |  Major | test | Eli Collins | Junping Du |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-3502](https://issues.apache.org/jira/browse/HDFS-3502) | Change INodeFile and INodeFileUnderConstruction to package private |  Major | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-3474](https://issues.apache.org/jira/browse/HDFS-3474) | Cleanup Exception handling in BookKeeper journal manager |  Major | . | Ivan Kelly | Ivan Kelly |
| [HDFS-3468](https://issues.apache.org/jira/browse/HDFS-3468) | Make BKJM-ZK session timeout configurable. |  Major | . | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-3452](https://issues.apache.org/jira/browse/HDFS-3452) | BKJM:Switch from standby to active fails and NN gets shut down due to delay in clearing of lock |  Blocker | . | suja s | Uma Maheswara Rao G |
| [HDFS-3441](https://issues.apache.org/jira/browse/HDFS-3441) | Race condition between rolling logs at active NN and purging at standby |  Major | . | suja s | Rakesh R |
| [HDFS-3423](https://issues.apache.org/jira/browse/HDFS-3423) | BKJM: NN startup is failing, when tries to recoverUnfinalizedSegments() a bad inProgress\_ ZNodes |  Major | . | Rakesh R | Ivan Kelly |
| [HDFS-3408](https://issues.apache.org/jira/browse/HDFS-3408) | BKJM : Namenode format fails, if there is no BK root |  Minor | namenode | Rakesh R | Rakesh R |
| [HDFS-3389](https://issues.apache.org/jira/browse/HDFS-3389) | Document the BKJM usage in Namenode HA. |  Major | namenode | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-3369](https://issues.apache.org/jira/browse/HDFS-3369) | change variable names referring to inode in blockmanagement to more appropriate |  Minor | namenode | John George | John George |
| [HDFS-3190](https://issues.apache.org/jira/browse/HDFS-3190) | Simple refactors in existing NN code to assist QuorumJournalManager extension |  Minor | namenode | Todd Lipcon | Todd Lipcon |
| [HDFS-3168](https://issues.apache.org/jira/browse/HDFS-3168) | Clean up FSNamesystem and BlockManager |  Major | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-3058](https://issues.apache.org/jira/browse/HDFS-3058) | HA: Bring BookKeeperJournalManager up to date with HA changes |  Major | . | Ivan Kelly | Ivan Kelly |
| [HDFS-2717](https://issues.apache.org/jira/browse/HDFS-2717) | BookKeeper Journal output stream doesn't check addComplete rc |  Major | . | Ivan Kelly | Ivan Kelly |
| [HDFS-2330](https://issues.apache.org/jira/browse/HDFS-2330) | In NNStorage.java, IOExceptions of stream closures  can mask root exceptions. |  Major | namenode | Uma Maheswara Rao G | Uma Maheswara Rao G |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


