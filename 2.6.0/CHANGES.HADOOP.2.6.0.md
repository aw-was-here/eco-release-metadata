# Hadoop Changelog

## Release 2.6.0 - 2014-11-18

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-8944](https://issues.apache.org/jira/browse/HADOOP-8944) | Shell command fs -count should include human readable option |  Trivial | . | Jonathan Allen | Jonathan Allen |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-10893](https://issues.apache.org/jira/browse/HADOOP-10893) | isolated classloader on the client side |  Major | util | Sangjin Lee | Sangjin Lee |
| [HADOOP-10719](https://issues.apache.org/jira/browse/HADOOP-10719) | Add generateEncryptedKey and decryptEncryptedKey methods to KeyProvider |  Major | security | Alejandro Abdelnur | Arun Suresh |
| [HADOOP-10607](https://issues.apache.org/jira/browse/HADOOP-10607) | Create an API to Separate Credentials/Password Storage from Applications |  Major | security | Larry McCay | Larry McCay |
| [HADOOP-10400](https://issues.apache.org/jira/browse/HADOOP-10400) | Incorporate new S3A FileSystem implementation |  Major | fs, fs/s3 | Jordan Mendelson | Jordan Mendelson |
| [HADOOP-10150](https://issues.apache.org/jira/browse/HADOOP-10150) | Hadoop cryptographic file system |  Major | security | Yi Liu | Yi Liu |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-11216](https://issues.apache.org/jira/browse/HADOOP-11216) | Improve Openssl library finding |  Major | security | Yi Liu | Colin Patrick McCabe |
| [HADOOP-11195](https://issues.apache.org/jira/browse/HADOOP-11195) | Move Id-Name mapping in NFS to the hadoop-common area for better maintenance |  Major | nfs, security | Yongjun Zhang | Yongjun Zhang |
| [HADOOP-11184](https://issues.apache.org/jira/browse/HADOOP-11184) | Update Hadoop's lz4 to r123 |  Major | native | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-11153](https://issues.apache.org/jira/browse/HADOOP-11153) | Make number of KMS threads configurable |  Major | kms | Andrew Wang | Andrew Wang |
| [HADOOP-11111](https://issues.apache.org/jira/browse/HADOOP-11111) | MiniKDC to use locale EN\_US for case conversions |  Minor | tools | Steve Loughran | Steve Loughran |
| [HADOOP-11106](https://issues.apache.org/jira/browse/HADOOP-11106) | Document considerations of HAR and Encryption |  Minor | documentation | Andrew Wang | Charles Lamb |
| [HADOOP-11101](https://issues.apache.org/jira/browse/HADOOP-11101) | How about inputstream close statement from catch block to finally block in FileContext#copy() ? |  Minor | . | skrho | skrho |
| [HADOOP-11068](https://issues.apache.org/jira/browse/HADOOP-11068) | Match hadoop.auth cookie format to jetty output |  Major | security | Gregory Chanan | Gregory Chanan |
| [HADOOP-11057](https://issues.apache.org/jira/browse/HADOOP-11057) | checknative command to probe for winutils.exe on windows |  Minor | native | Steve Loughran | Xiaoyu Yao |
| [HADOOP-11054](https://issues.apache.org/jira/browse/HADOOP-11054) | Add a KeyProvider instantiation based on a URI |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-11030](https://issues.apache.org/jira/browse/HADOOP-11030) | Define a variable jackson.version instead of using constant at multiple places |  Minor | . | Juan Yu | Juan Yu |
| [HADOOP-11021](https://issues.apache.org/jira/browse/HADOOP-11021) | Configurable replication factor in the hadoop archive command |  Minor | . | Zhe Zhang | Zhe Zhang |
| [HADOOP-11017](https://issues.apache.org/jira/browse/HADOOP-11017) | KMS delegation token secret manager should be able to use zookeeper as store |  Major | security | Alejandro Abdelnur | Arun Suresh |
| [HADOOP-11016](https://issues.apache.org/jira/browse/HADOOP-11016) | KMS should support signing cookies with zookeeper secret manager |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-11015](https://issues.apache.org/jira/browse/HADOOP-11015) | Http server/client utils to propagate and recreate Exceptions from server to client |  Major | . | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-11009](https://issues.apache.org/jira/browse/HADOOP-11009) | Add Timestamp Preservation to DistCp |  Major | tools/distcp | Gary Steelman | Gary Steelman |
| [HADOOP-11007](https://issues.apache.org/jira/browse/HADOOP-11007) | Reinstate building of ant tasks support |  Major | build, fs | Jason Lowe | Jason Lowe |
| [HADOOP-10998](https://issues.apache.org/jira/browse/HADOOP-10998) | Fix bash tab completion code to work |  Trivial | scripts | Jim Hester | Jim Hester |
| [HADOOP-10990](https://issues.apache.org/jira/browse/HADOOP-10990) | Add missed NFSv3 request and response classes |  Major | nfs | Brandon Li | Brandon Li |
| [HADOOP-10982](https://issues.apache.org/jira/browse/HADOOP-10982) | KMS: Support for multiple Kerberos principals |  Major | . | Andrew Wang | Alejandro Abdelnur |
| [HADOOP-10975](https://issues.apache.org/jira/browse/HADOOP-10975) | org.apache.hadoop.util.DataChecksum should support native checksum calculation |  Major | performance | James Thomas | James Thomas |
| [HADOOP-10970](https://issues.apache.org/jira/browse/HADOOP-10970) | Cleanup KMS configuration keys |  Major | . | Andrew Wang | Andrew Wang |
| [HADOOP-10967](https://issues.apache.org/jira/browse/HADOOP-10967) | Improve DefaultCryptoExtension#generateEncryptedKey performance |  Major | security | Yi Liu | Yi Liu |
| [HADOOP-10954](https://issues.apache.org/jira/browse/HADOOP-10954) | Adding site documents of hadoop-tools |  Minor | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-10936](https://issues.apache.org/jira/browse/HADOOP-10936) | Change default KeyProvider bitlength to 128 |  Major | . | Andrew Wang | Andrew Wang |
| [HADOOP-10922](https://issues.apache.org/jira/browse/HADOOP-10922) | User documentation for CredentialShell |  Major | . | Andrew Wang | Larry McCay |
| [HADOOP-10903](https://issues.apache.org/jira/browse/HADOOP-10903) | Enhance hadoop classpath command to expand wildcards or write classpath into jar manifest. |  Major | scripts, util | Chris Nauroth | Chris Nauroth |
| [HADOOP-10902](https://issues.apache.org/jira/browse/HADOOP-10902) | Deletion of directories with snapshots will not output reason for trash move failure |  Minor | . | Stephen Chu | Stephen Chu |
| [HADOOP-10891](https://issues.apache.org/jira/browse/HADOOP-10891) | Add EncryptedKeyVersion factory method to KeyProviderCryptoExtension |  Major | . | Andrew Wang | Andrew Wang |
| [HADOOP-10881](https://issues.apache.org/jira/browse/HADOOP-10881) | Clarify usage of encryption and encrypted encryption key in KeyProviderCryptoExtension |  Major | . | Andrew Wang | Andrew Wang |
| [HADOOP-10863](https://issues.apache.org/jira/browse/HADOOP-10863) | KMS should have a blacklist for decrypting EEKs |  Major | security | Alejandro Abdelnur | Arun Suresh |
| [HADOOP-10855](https://issues.apache.org/jira/browse/HADOOP-10855) | Allow Text to be read with a known length |  Minor | io | Todd Lipcon | Todd Lipcon |
| [HADOOP-10845](https://issues.apache.org/jira/browse/HADOOP-10845) | Add common tests for ACLs in combination with viewfs. |  Major | fs, test | Chris Nauroth | Stephen Chu |
| [HADOOP-10841](https://issues.apache.org/jira/browse/HADOOP-10841) | EncryptedKeyVersion should have a key name property |  Major | security | Alejandro Abdelnur | Arun Suresh |
| [HADOOP-10839](https://issues.apache.org/jira/browse/HADOOP-10839) | Add unregisterSource() to MetricsSystem API |  Major | metrics | shanyu zhao | shanyu zhao |
| [HADOOP-10838](https://issues.apache.org/jira/browse/HADOOP-10838) | Byte array native checksumming |  Major | performance | James Thomas | James Thomas |
| [HADOOP-10835](https://issues.apache.org/jira/browse/HADOOP-10835) | Implement HTTP proxyuser support in HTTP authentication client/server libraries |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-10833](https://issues.apache.org/jira/browse/HADOOP-10833) | Remove unused cache in UserProvider |  Major | security | Benoy Antony | Benoy Antony |
| [HADOOP-10826](https://issues.apache.org/jira/browse/HADOOP-10826) | Iteration on KeyProviderFactory.serviceLoader  is thread-unsafe |  Major | security | Benoy Antony | Benoy Antony |
| [HADOOP-10824](https://issues.apache.org/jira/browse/HADOOP-10824) | Refactor KMSACLs to avoid locking |  Major | security | Benoy Antony | Benoy Antony |
| [HADOOP-10817](https://issues.apache.org/jira/browse/HADOOP-10817) | ProxyUsers configuration should support configurable prefixes |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-10815](https://issues.apache.org/jira/browse/HADOOP-10815) | Implement Windows equivalent of mlock. |  Major | native | Chris Nauroth | Chris Nauroth |
| [HADOOP-10812](https://issues.apache.org/jira/browse/HADOOP-10812) | Delegate KeyProviderExtension#toString to underlying KeyProvider |  Trivial | . | Andrew Wang | Andrew Wang |
| [HADOOP-10808](https://issues.apache.org/jira/browse/HADOOP-10808) | Remove unused native code for munlock. |  Minor | native | Chris Nauroth | Chris Nauroth |
| [HADOOP-10793](https://issues.apache.org/jira/browse/HADOOP-10793) | KeyShell args should use single-dash style |  Major | security | Mike Yoder | Andrew Wang |
| [HADOOP-10791](https://issues.apache.org/jira/browse/HADOOP-10791) | AuthenticationFilter should support externalizing the secret for signing and provide rotation support |  Major | security | Alejandro Abdelnur | Robert Kanter |
| [HADOOP-10771](https://issues.apache.org/jira/browse/HADOOP-10771) | Refactor HTTP delegation support out of httpfs to common |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-10770](https://issues.apache.org/jira/browse/HADOOP-10770) | KMS add delegation token support |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-10769](https://issues.apache.org/jira/browse/HADOOP-10769) | Create KeyProvider extension to handle delegation tokens |  Major | security | Alejandro Abdelnur | Arun Suresh |
| [HADOOP-10758](https://issues.apache.org/jira/browse/HADOOP-10758) | KMS: add ACLs on per key basis. |  Major | security | Alejandro Abdelnur | Arun Suresh |
| [HADOOP-10757](https://issues.apache.org/jira/browse/HADOOP-10757) | KeyProvider KeyVersion should provide the key name |  Major | security | Alejandro Abdelnur | Arun Suresh |
| [HADOOP-10756](https://issues.apache.org/jira/browse/HADOOP-10756) | KMS audit log should consolidate successful similar requests |  Major | security | Alejandro Abdelnur | Arun Suresh |
| [HADOOP-10755](https://issues.apache.org/jira/browse/HADOOP-10755) | Support negative caching of user-group mapping |  Major | security | Andrew Wang | Lei (Eddy) Xu |
| [HADOOP-10750](https://issues.apache.org/jira/browse/HADOOP-10750) | KMSKeyProviderCache should be in hadoop-common |  Major | security | Alejandro Abdelnur | Arun Suresh |
| [HADOOP-10736](https://issues.apache.org/jira/browse/HADOOP-10736) | Add key attributes to the key shell |  Major | security | Mike Yoder | Mike Yoder |
| [HADOOP-10731](https://issues.apache.org/jira/browse/HADOOP-10731) | Remove @date JavaDoc comment in ProgramDriver class |  Trivial | documentation | Henry Saputra | Henry Saputra |
| [HADOOP-10720](https://issues.apache.org/jira/browse/HADOOP-10720) | KMS: Implement generateEncryptedKey and decryptEncryptedKey in the REST API |  Major | security | Alejandro Abdelnur | Arun Suresh |
| [HADOOP-10698](https://issues.apache.org/jira/browse/HADOOP-10698) | KMS, add proxyuser support |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-10696](https://issues.apache.org/jira/browse/HADOOP-10696) | Add optional attributes to KeyProvider Options and Metadata |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-10695](https://issues.apache.org/jira/browse/HADOOP-10695) | KMSClientProvider should respect a configurable timeout. |  Major | . | Andrew Wang | Mike Yoder |
| [HADOOP-10675](https://issues.apache.org/jira/browse/HADOOP-10675) | Add server-side encryption functionality to s3a |  Major | fs/s3 | David S. Wang | David S. Wang |
| [HADOOP-10620](https://issues.apache.org/jira/browse/HADOOP-10620) | /docs/current doesn't point to the latest version 2.4.0 |  Major | documentation | Jacek Laskowski |  |
| [HADOOP-10610](https://issues.apache.org/jira/browse/HADOOP-10610) | Upgrade S3n fs.s3.buffer.dir to support multi directories |  Minor | fs/s3 | Ted Malaska | Ted Malaska |
| [HADOOP-10433](https://issues.apache.org/jira/browse/HADOOP-10433) | Key Management Server based on KeyProvider API |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-10432](https://issues.apache.org/jira/browse/HADOOP-10432) | Refactor SSLFactory to expose static method to determine HostnameVerifier |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-10431](https://issues.apache.org/jira/browse/HADOOP-10431) | Change visibility of KeyStore.Options getter methods to public |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-10430](https://issues.apache.org/jira/browse/HADOOP-10430) | KeyProvider Metadata should have an optional description, there should be a method to retrieve the metadata from all keys |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-10429](https://issues.apache.org/jira/browse/HADOOP-10429) | KeyStores should have methods to generate the materials themselves, KeyShell should use them |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-10428](https://issues.apache.org/jira/browse/HADOOP-10428) | JavaKeyStoreProvider should accept keystore password via configuration falling back to ENV VAR |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-10427](https://issues.apache.org/jira/browse/HADOOP-10427) | KeyProvider implementations should be thread safe |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-10373](https://issues.apache.org/jira/browse/HADOOP-10373) | create tools/hadoop-amazon for aws/EMR support |  Major | fs/s3 | Steve Loughran | Steve Loughran |
| [HADOOP-10335](https://issues.apache.org/jira/browse/HADOOP-10335) | An ip whilelist based implementation to resolve Sasl properties per connection |  Major | . | Benoy Antony | Benoy Antony |
| [HADOOP-10231](https://issues.apache.org/jira/browse/HADOOP-10231) | Add some components in Native Libraries document |  Minor | documentation | Akira AJISAKA | Akira AJISAKA |
| [HADOOP-9540](https://issues.apache.org/jira/browse/HADOOP-9540) | Expose the InMemoryS3 and S3N FilesystemStores implementations for Unit testing. |  Minor | fs/s3, test | Hari |  |
| [HADOOP-9457](https://issues.apache.org/jira/browse/HADOOP-9457) | add an SCM-ignored XML filename to keep secrets in (auth-keys.xml?) |  Minor | build | Steve Loughran |  |
| [HADOOP-8896](https://issues.apache.org/jira/browse/HADOOP-8896) | Javadoc points to Wrong Reader and Writer classes in SequenceFile |  Trivial | documentation, io | Timothy Mann | Ray Chiang |
| [HADOOP-8815](https://issues.apache.org/jira/browse/HADOOP-8815) | RandomDatum overrides equals(Object) but no hashCode() |  Minor | test | Brandon Li | Brandon Li |
| [HADOOP-8069](https://issues.apache.org/jira/browse/HADOOP-8069) | Enable TCP\_NODELAY by default for IPC |  Major | ipc | Todd Lipcon | Todd Lipcon |
| [HADOOP-7664](https://issues.apache.org/jira/browse/HADOOP-7664) | o.a.h.conf.Configuration complains of overriding final parameter even if the value with which its attempting to override is the same. |  Minor | conf | Ravi Prakash | Ravi Prakash |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-11286](https://issues.apache.org/jira/browse/HADOOP-11286) | Map/Reduce dangerously adds Guava @Beta class to CryptoUtils |  Blocker | . | Christopher Tubbs |  |
| [HADOOP-11282](https://issues.apache.org/jira/browse/HADOOP-11282) | Skip NFS TestShellBasedIdMapping tests that are irrelevant on Windows. |  Trivial | test | Chris Nauroth | Chris Nauroth |
| [HADOOP-11280](https://issues.apache.org/jira/browse/HADOOP-11280) | TestWinUtils#testChmod fails after removal of NO\_PROPAGATE\_INHERIT\_ACE. |  Trivial | native, test | Chris Nauroth | Chris Nauroth |
| [HADOOP-11265](https://issues.apache.org/jira/browse/HADOOP-11265) | Credential and Key Shell Commands not available on Windows |  Major | scripts | Larry McCay | Larry McCay |
| [HADOOP-11260](https://issues.apache.org/jira/browse/HADOOP-11260) | Patch up Jetty to disable SSLv3 |  Blocker | security | Karthik Kambatla | Mike Yoder |
| [HADOOP-11254](https://issues.apache.org/jira/browse/HADOOP-11254) | Promoting AccessControlList to be public |  Major | . | Zhijie Shen | Zhijie Shen |
| [HADOOP-11250](https://issues.apache.org/jira/browse/HADOOP-11250) | fix endmacro of set\_find\_shared\_library\_without\_version in CMakeLists |  Minor | build | Yi Liu | Yi Liu |
| [HADOOP-11247](https://issues.apache.org/jira/browse/HADOOP-11247) | Fix a couple javac warnings in NFS |  Major | nfs | Brandon Li | Brandon Li |
| [HADOOP-11243](https://issues.apache.org/jira/browse/HADOOP-11243) | SSLFactory shouldn't allow SSLv3 |  Blocker | . | Wei Yan | Wei Yan |
| [HADOOP-11233](https://issues.apache.org/jira/browse/HADOOP-11233) | hadoop.security.kms.client.encrypted.key.cache.expiry property spelled wrong in core-default |  Minor | conf | Steve Loughran | Stephen Chu |
| [HADOOP-11228](https://issues.apache.org/jira/browse/HADOOP-11228) | winutils task: unsecure path should not call AddNodeManagerAndUserACEsToObject |  Major | . | Remus Rusanu | Remus Rusanu |
| [HADOOP-11221](https://issues.apache.org/jira/browse/HADOOP-11221) | JAVA specification for hashcode does not enforce it to be non-negative, but IdentityHashStore assumes System.identityHashCode() is non-negative |  Major | util | Jinghui Wang | Jinghui Wang |
| [HADOOP-11217](https://issues.apache.org/jira/browse/HADOOP-11217) | Disable SSLv3 in KMS |  Blocker | kms | Robert Kanter | Robert Kanter |
| [HADOOP-11207](https://issues.apache.org/jira/browse/HADOOP-11207) | DelegationTokenAuthenticationHandler needs to support DT operations for proxy user |  Major | security | Zhijie Shen | Zhijie Shen |
| [HADOOP-11198](https://issues.apache.org/jira/browse/HADOOP-11198) | Fix typo in javadoc for FileSystem#listStatus() |  Minor | . | Ted Yu | Li Lu |
| [HADOOP-11194](https://issues.apache.org/jira/browse/HADOOP-11194) | Ignore .keep files |  Major | . | Karthik Kambatla | Karthik Kambatla |
| [HADOOP-11193](https://issues.apache.org/jira/browse/HADOOP-11193) | Fix uninitialized variables in NativeIO.c |  Major | native | Xiaoyu Yao | Xiaoyu Yao |
| [HADOOP-11182](https://issues.apache.org/jira/browse/HADOOP-11182) | GraphiteSink emits wrong timestamps |  Major | . | Sascha Coenen | Ravi Prakash |
| [HADOOP-11181](https://issues.apache.org/jira/browse/HADOOP-11181) | o.a.h.security.token.delegation.DelegationTokenManager should be more generalized to handle other DelegationTokenIdentifier |  Major | security | Zhijie Shen | Zhijie Shen |
| [HADOOP-11179](https://issues.apache.org/jira/browse/HADOOP-11179) | Tarball as local resource type archive fails to localize on Windows |  Major | . | Hitesh Shah | Craig Welch |
| [HADOOP-11178](https://issues.apache.org/jira/browse/HADOOP-11178) | Fix findbugs exclude file |  Minor | build | Arun Suresh | Arun Suresh |
| [HADOOP-11176](https://issues.apache.org/jira/browse/HADOOP-11176) | KMSClientProvider authentication fails when both currentUgi and loginUgi are a proxied user |  Major | . | Arun Suresh | Arun Suresh |
| [HADOOP-11175](https://issues.apache.org/jira/browse/HADOOP-11175) | Fix several issues of hadoop security configuration in user doc. |  Trivial | documentation, security | Yi Liu | Yi Liu |
| [HADOOP-11174](https://issues.apache.org/jira/browse/HADOOP-11174) | Delegation token for KMS should only be got once if it already exists |  Major | kms, security | Yi Liu | Yi Liu |
| [HADOOP-11170](https://issues.apache.org/jira/browse/HADOOP-11170) | ZKDelegationTokenSecretManager fails to renewToken created by a peer |  Major | . | Arun Suresh | Arun Suresh |
| [HADOOP-11169](https://issues.apache.org/jira/browse/HADOOP-11169) | Fix DelegationTokenAuthenticatedURL to pass the connection Configurator to the authenticator |  Major | . | Arun Suresh | Arun Suresh |
| [HADOOP-11168](https://issues.apache.org/jira/browse/HADOOP-11168) | Remove duplicated entry "dfs.webhdfs.enabled" in the user doc |  Trivial | documentation | Yi Liu | Yi Liu |
| [HADOOP-11163](https://issues.apache.org/jira/browse/HADOOP-11163) | MetricsSystemImpl may miss a registered source |  Minor | metrics | Chuan Liu | Chuan Liu |
| [HADOOP-11161](https://issues.apache.org/jira/browse/HADOOP-11161) | Expose close method in KeyProvider to give clients of Provider implementations a hook to release resources |  Major | . | Arun Suresh | Arun Suresh |
| [HADOOP-11160](https://issues.apache.org/jira/browse/HADOOP-11160) | Fix  typo in nfs3 server duplicate entry reporting |  Trivial | nfs | Charles Lamb | Charles Lamb |
| [HADOOP-11154](https://issues.apache.org/jira/browse/HADOOP-11154) | Update BUILDING.txt to state that CMake 3.0 or newer is required on Mac. |  Trivial | documentation, native | Chris Nauroth | Chris Nauroth |
| [HADOOP-11151](https://issues.apache.org/jira/browse/HADOOP-11151) | Automatically refresh auth token and retry on auth failure |  Major | security | zhubin | Arun Suresh |
| [HADOOP-11145](https://issues.apache.org/jira/browse/HADOOP-11145) | TestFairCallQueue fails |  Major | test | Akira AJISAKA | Akira AJISAKA |
| [HADOOP-11143](https://issues.apache.org/jira/browse/HADOOP-11143) | NetUtils.wrapException loses inner stack trace on BindException |  Minor | net | Steve Loughran | Steve Loughran |
| [HADOOP-11140](https://issues.apache.org/jira/browse/HADOOP-11140) | hadoop-aws only need test-scoped dependency on hadoop-common's tests jar |  Major | . | Juan Yu | Juan Yu |
| [HADOOP-11133](https://issues.apache.org/jira/browse/HADOOP-11133) | Should trim the content of keystore password file for JavaKeyStoreProvider |  Minor | security | zhubin | Yi Liu |
| [HADOOP-11130](https://issues.apache.org/jira/browse/HADOOP-11130) | NFS updateMaps OS check is reversed |  Major | nfs | Allen Wittenauer | Brandon Li |
| [HADOOP-11122](https://issues.apache.org/jira/browse/HADOOP-11122) | Fix findbugs in ZK DelegationTokenSecretManagers |  Blocker | . | Karthik Kambatla | Arun Suresh |
| [HADOOP-11113](https://issues.apache.org/jira/browse/HADOOP-11113) | Namenode not able to reconnect to KMS after KMS restart |  Major | security | Arun Suresh | Arun Suresh |
| [HADOOP-11112](https://issues.apache.org/jira/browse/HADOOP-11112) | TestKMSWithZK does not use KEY\_PROVIDER\_URI |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-11110](https://issues.apache.org/jira/browse/HADOOP-11110) | JavaKeystoreProvider should not report a key as created if it was not flushed to the backing file |  Major | . | Andrew Wang | Arun Suresh |
| [HADOOP-11109](https://issues.apache.org/jira/browse/HADOOP-11109) | Site build is broken |  Major | . | Jian He | Jian He |
| [HADOOP-11105](https://issues.apache.org/jira/browse/HADOOP-11105) | MetricsSystemImpl could leak memory in registered callbacks |  Major | metrics | Chuan Liu | Chuan Liu |
| [HADOOP-11099](https://issues.apache.org/jira/browse/HADOOP-11099) | KMS return HTTP UNAUTHORIZED 401 on ACL failure |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-11097](https://issues.apache.org/jira/browse/HADOOP-11097) | kms docs say proxyusers, not proxyuser for config params |  Trivial | documentation | Charles Lamb | Charles Lamb |
| [HADOOP-11096](https://issues.apache.org/jira/browse/HADOOP-11096) | KMS: KeyAuthorizationKeyProvider should verify the keyversion belongs to the keyname on decrypt |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-11091](https://issues.apache.org/jira/browse/HADOOP-11091) | Eliminate old configuration parameter names from s3a |  Minor | fs/s3 | David S. Wang | David S. Wang |
| [HADOOP-11085](https://issues.apache.org/jira/browse/HADOOP-11085) | Excessive logging by org.apache.hadoop.util.Progress when value is NaN |  Major | . | Mit Desai | Mit Desai |
| [HADOOP-11083](https://issues.apache.org/jira/browse/HADOOP-11083) | After refactoring of HTTP proxyuser to common, doAs param is case sensitive |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-11077](https://issues.apache.org/jira/browse/HADOOP-11077) | NPE if hosts not specified in ProxyUsers |  Major | security | Gregory Chanan | Gregory Chanan |
| [HADOOP-11069](https://issues.apache.org/jira/browse/HADOOP-11069) | KMSClientProvider should use getAuthenticationMethod() to determine if in proxyuser mode or not |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-11067](https://issues.apache.org/jira/browse/HADOOP-11067) | warning message 'ssl.client.truststore.location has not been set' gets printed for hftp command |  Major | . | Yesha Vora | Xiaoyu Yao |
| [HADOOP-11064](https://issues.apache.org/jira/browse/HADOOP-11064) | UnsatisifedLinkError with hadoop 2.4 JARs on hadoop-2.6 due to NativeCRC32 method changes |  Blocker | native | Steve Loughran | Chris Nauroth |
| [HADOOP-11063](https://issues.apache.org/jira/browse/HADOOP-11063) | KMS cannot deploy on Windows, because class names are too long. |  Blocker | . | Chris Nauroth | Chris Nauroth |
| [HADOOP-11062](https://issues.apache.org/jira/browse/HADOOP-11062) | CryptoCodec testcases requiring OpenSSL should be run only if -Pnative is used |  Major | security, test | Alejandro Abdelnur | Arun Suresh |
| [HADOOP-11056](https://issues.apache.org/jira/browse/HADOOP-11056) | OsSecureRandom.setConf() might leak file descriptors. |  Major | security | Yongjun Zhang | Yongjun Zhang |
| [HADOOP-11049](https://issues.apache.org/jira/browse/HADOOP-11049) | javax package system class default is too broad |  Minor | util | Sangjin Lee | Sangjin Lee |
| [HADOOP-11048](https://issues.apache.org/jira/browse/HADOOP-11048) | user/custom LogManager fails to load if the client classloader is enabled |  Minor | util | Sangjin Lee | Sangjin Lee |
| [HADOOP-11040](https://issues.apache.org/jira/browse/HADOOP-11040) | Return value of read(ByteBuffer buf) in CryptoInputStream is incorrect in some cases |  Major | security | Yi Liu | Yi Liu |
| [HADOOP-11036](https://issues.apache.org/jira/browse/HADOOP-11036) | Add build directory to .gitignore |  Minor | . | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [HADOOP-11012](https://issues.apache.org/jira/browse/HADOOP-11012) | hadoop fs -text of zero-length file causes EOFException |  Major | fs | Eric Payne | Eric Payne |
| [HADOOP-11005](https://issues.apache.org/jira/browse/HADOOP-11005) | Fix HTTP content type for ReconfigurationServlet |  Minor | conf | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HADOOP-10989](https://issues.apache.org/jira/browse/HADOOP-10989) | Work around buggy getgrouplist() implementations on Linux that return 0 on failure |  Major | native | Chris Nauroth | Chris Nauroth |
| [HADOOP-10973](https://issues.apache.org/jira/browse/HADOOP-10973) | Native Libraries Guide contains format error |  Minor | documentation | Peter Klavins | Peter Klavins |
| [HADOOP-10972](https://issues.apache.org/jira/browse/HADOOP-10972) | Native Libraries Guide contains mis-spelt build line |  Major | documentation | Peter Klavins | Peter Klavins |
| [HADOOP-10968](https://issues.apache.org/jira/browse/HADOOP-10968) | hadoop native build fails to detect java\_libarch on ppc64le |  Major | build | Dinar Valeev |  |
| [HADOOP-10966](https://issues.apache.org/jira/browse/HADOOP-10966) | Hadoop Common native compilation broken in windows |  Blocker | native | Vinayakumar B | David Villegas |
| [HADOOP-10964](https://issues.apache.org/jira/browse/HADOOP-10964) | Small fix for NetworkTopologyWithNodeGroup#sortByDistance |  Minor | . | Yi Liu | Yi Liu |
| [HADOOP-10962](https://issues.apache.org/jira/browse/HADOOP-10962) | Flags for posix\_fadvise are not valid in some architectures |  Major | native | David Villegas | David Villegas |
| [HADOOP-10946](https://issues.apache.org/jira/browse/HADOOP-10946) | Fix a bunch of typos in log messages |  Trivial | . | Ray Chiang | Ray Chiang |
| [HADOOP-10939](https://issues.apache.org/jira/browse/HADOOP-10939) | Fix TestKeyProviderFactory testcases to use default 128 bit length keys |  Major | . | Arun Suresh | Arun Suresh |
| [HADOOP-10937](https://issues.apache.org/jira/browse/HADOOP-10937) | Need to set version name correctly before decrypting EEK |  Major | security | Arun Suresh | Arun Suresh |
| [HADOOP-10931](https://issues.apache.org/jira/browse/HADOOP-10931) | compile error on project "Apache Hadoop OpenStack support" |  Minor | build, fs/swift | xukun |  |
| [HADOOP-10929](https://issues.apache.org/jira/browse/HADOOP-10929) | Typo in Configuration.getPasswordFromCredentialProviders |  Trivial | security | Larry McCay | Larry McCay |
| [HADOOP-10928](https://issues.apache.org/jira/browse/HADOOP-10928) | Incorrect usage on 'hadoop credential list' |  Trivial | security | Josh Elser | Josh Elser |
| [HADOOP-10927](https://issues.apache.org/jira/browse/HADOOP-10927) | Fix CredentialShell help behavior and error codes |  Minor | security | Josh Elser | Josh Elser |
| [HADOOP-10925](https://issues.apache.org/jira/browse/HADOOP-10925) | Compilation fails in native link0 function on Windows. |  Blocker | native | Chris Nauroth | Chris Nauroth |
| [HADOOP-10920](https://issues.apache.org/jira/browse/HADOOP-10920) | site plugin couldn't parse hadoop-kms index.apt.vm |  Minor | documentation | Ted Yu | Akira AJISAKA |
| [HADOOP-10918](https://issues.apache.org/jira/browse/HADOOP-10918) | JMXJsonServlet fails when used within Tomcat |  Major | . | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-10911](https://issues.apache.org/jira/browse/HADOOP-10911) | hadoop.auth cookie after HADOOP-10710 still not proper according to RFC2109 |  Major | security | Gregory Chanan |  |
| [HADOOP-10900](https://issues.apache.org/jira/browse/HADOOP-10900) | CredentialShell args should use single-dash style |  Minor | . | Andrew Wang | Andrew Wang |
| [HADOOP-10887](https://issues.apache.org/jira/browse/HADOOP-10887) | Add XAttrs to ViewFs and make XAttrs + ViewFileSystem internal dir behavior consistent |  Major | fs, test | Stephen Chu | Stephen Chu |
| [HADOOP-10880](https://issues.apache.org/jira/browse/HADOOP-10880) | Move HTTP delegation tokens out of URL querystring to a header |  Blocker | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-10866](https://issues.apache.org/jira/browse/HADOOP-10866) | RawLocalFileSystem fails to read symlink targets via the stat command when the format of stat command uses non-curly quotes |  Major | . | Yongjun Zhang | Yongjun Zhang |
| [HADOOP-10862](https://issues.apache.org/jira/browse/HADOOP-10862) | Miscellaneous trivial corrections to KMS classes |  Major | security | Alejandro Abdelnur | Arun Suresh |
| [HADOOP-10857](https://issues.apache.org/jira/browse/HADOOP-10857) | Native Libraries Guide doen't mention a dependency on openssl-development package |  Major | documentation | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [HADOOP-10851](https://issues.apache.org/jira/browse/HADOOP-10851) | NetgroupCache does not remove group memberships |  Major | security | Benoy Antony | Benoy Antony |
| [HADOOP-10843](https://issues.apache.org/jira/browse/HADOOP-10843) | TestGridmixRecord unit tests failure on PowerPC |  Major | test, tools | Jinghui Wang | Jinghui Wang |
| [HADOOP-10842](https://issues.apache.org/jira/browse/HADOOP-10842) | CryptoExtension generateEncryptedKey method should receive the key name |  Major | security | Alejandro Abdelnur | Arun Suresh |
| [HADOOP-10830](https://issues.apache.org/jira/browse/HADOOP-10830) | Missing lock in JavaKeyStoreProvider.createCredentialEntry |  Major | security | Benoy Antony | Benoy Antony |
| [HADOOP-10820](https://issues.apache.org/jira/browse/HADOOP-10820) | Throw an exception in GenericOptionsParser when passed an empty Path |  Minor | . | Alex Holmes | zhihai xu |
| [HADOOP-10816](https://issues.apache.org/jira/browse/HADOOP-10816) | KeyShell returns -1 on error to the shell, should be 1 |  Major | security | Mike Yoder | Mike Yoder |
| [HADOOP-10814](https://issues.apache.org/jira/browse/HADOOP-10814) | Update Tomcat version used by HttpFS and KMS to latest 6.x version |  Major | . | Alejandro Abdelnur | Robert Kanter |
| [HADOOP-10810](https://issues.apache.org/jira/browse/HADOOP-10810) | Clean up native code compilation warnings. |  Minor | native | Chris Nauroth | Chris Nauroth |
| [HADOOP-10781](https://issues.apache.org/jira/browse/HADOOP-10781) | Unportable getgrouplist() usage breaks FreeBSD |  Major | . | Dmitry Sivachenko | Dmitry Sivachenko |
| [HADOOP-10780](https://issues.apache.org/jira/browse/HADOOP-10780) | hadoop\_user\_info\_alloc fails on FreeBSD due to incorrect sysconf use |  Major | . | Dmitry Sivachenko | Dmitry Sivachenko |
| [HADOOP-10744](https://issues.apache.org/jira/browse/HADOOP-10744) | LZ4 Compression fails to recognize PowerPC Little Endian Architecture |  Major | io, native | Ayappan | Bert Sanders |
| [HADOOP-10733](https://issues.apache.org/jira/browse/HADOOP-10733) | Potential null dereference in CredentialShell#promptForCredential() |  Minor | . | Ted Yu | Ted Yu |
| [HADOOP-10732](https://issues.apache.org/jira/browse/HADOOP-10732) | Update without holding write lock in JavaKeyStoreProvider#innerSetCredential() |  Minor | . | Ted Yu | Ted Yu |
| [HADOOP-10681](https://issues.apache.org/jira/browse/HADOOP-10681) | Remove synchronized blocks from SnappyCodec and ZlibCodec buffering inner loop |  Major | performance | Gopal V | Gopal V |
| [HADOOP-10677](https://issues.apache.org/jira/browse/HADOOP-10677) | ExportSnapshot fails on kerberized cluster using s3a |  Major | fs/s3 | David S. Wang | David S. Wang |
| [HADOOP-10676](https://issues.apache.org/jira/browse/HADOOP-10676) | S3AOutputStream not reading new config knobs for multipart configs |  Major | fs/s3 | David S. Wang | David S. Wang |
| [HADOOP-10673](https://issues.apache.org/jira/browse/HADOOP-10673) | Update rpc metrics when the call throws an exception |  Major | . | Ming Ma | Ming Ma |
| [HADOOP-10645](https://issues.apache.org/jira/browse/HADOOP-10645) | TestKMS fails because race condition writing acl files |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-10611](https://issues.apache.org/jira/browse/HADOOP-10611) | KMS, keyVersion name should not be assumed to be keyName@versionNumber |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-10591](https://issues.apache.org/jira/browse/HADOOP-10591) | Compression codecs must used pooled direct buffers or deallocate direct buffers when stream is closed |  Major | . | Hari Shreedharan | Colin Patrick McCabe |
| [HADOOP-10586](https://issues.apache.org/jira/browse/HADOOP-10586) | KeyShell doesn't allow setting Options via CLI |  Minor | bin | Charles Lamb | Charles Lamb |
| [HADOOP-10583](https://issues.apache.org/jira/browse/HADOOP-10583) | bin/hadoop key throws NPE with no args and assorted other fixups |  Minor | bin | Charles Lamb | Charles Lamb |
| [HADOOP-10552](https://issues.apache.org/jira/browse/HADOOP-10552) | Fix usage and example at FileSystemShell.apt.vm |  Trivial | documentation | Kenji Kikushima | Kenji Kikushima |
| [HADOOP-10534](https://issues.apache.org/jira/browse/HADOOP-10534) | KeyProvider API should using windowing for retrieving metadata |  Major | . | Owen O'Malley | Owen O'Malley |
| [HADOOP-10507](https://issues.apache.org/jira/browse/HADOOP-10507) | FsShell setfacl can throw ArrayIndexOutOfBoundsException when no perm is specified |  Minor | fs | Stephen Chu | sathish |
| [HADOOP-10488](https://issues.apache.org/jira/browse/HADOOP-10488) | TestKeyProviderFactory fails randomly |  Major | test | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-10404](https://issues.apache.org/jira/browse/HADOOP-10404) | Some accesses to DomainSocketWatcher#closed are not protected by lock |  Minor | . | Ted Yu | Colin Patrick McCabe |
| [HADOOP-10402](https://issues.apache.org/jira/browse/HADOOP-10402) | Configuration.getValByRegex does not substitute for variables |  Major | . | Robert Kanter | Robert Kanter |
| [HADOOP-10244](https://issues.apache.org/jira/browse/HADOOP-10244) | TestKeyShell improperly tests the results of a Delete |  Major | security | Larry McCay | Larry McCay |
| [HADOOP-10237](https://issues.apache.org/jira/browse/HADOOP-10237) | JavaKeyStoreProvider needs to set keystore permissions properly |  Major | security | Larry McCay | Larry McCay |
| [HADOOP-10224](https://issues.apache.org/jira/browse/HADOOP-10224) | JavaKeyStoreProvider has to protect against corrupting underlying store |  Major | security | Larry McCay | Arun Suresh |
| [HADOOP-10177](https://issues.apache.org/jira/browse/HADOOP-10177) | Create CLI tools for managing keys via the KeyProvider API |  Major | security | Owen O'Malley | Larry McCay |
| [HADOOP-10141](https://issues.apache.org/jira/browse/HADOOP-10141) | Create an API to separate encryption key storage from applications |  Major | security | Owen O'Malley | Owen O'Malley |
| [HADOOP-10131](https://issues.apache.org/jira/browse/HADOOP-10131) | NetWorkTopology#countNumOfAvailableNodes() is returning wrong value if excluded nodes passed are not part of the cluster tree |  Major | . | Vinayakumar B | Vinayakumar B |
| [HADOOP-10121](https://issues.apache.org/jira/browse/HADOOP-10121) | Fix javadoc spelling for HadoopArchives#writeTopLevelDirs |  Trivial | documentation | Akira AJISAKA | Akira AJISAKA |
| [HADOOP-10059](https://issues.apache.org/jira/browse/HADOOP-10059) | RPC authentication and authorization metrics overflow to negative values on busy clusters |  Minor | metrics | Jason Lowe | Tsuyoshi Ozawa |
| [HADOOP-10037](https://issues.apache.org/jira/browse/HADOOP-10037) | s3n read truncated, but doesn't throw exception |  Major | fs/s3 | David Rosenstrauch |  |
| [HADOOP-9989](https://issues.apache.org/jira/browse/HADOOP-9989) | Bug introduced in HADOOP-9374, which parses the -tokenCacheFile as binary file but set it to the configuration as JSON file. |  Major | security, util | Jinghui Wang | zhihai xu |
| [HADOOP-9921](https://issues.apache.org/jira/browse/HADOOP-9921) | daemon scripts should remove pid file on stop call after stop or process is found not running |  Major | . | Vinayakumar B | Vinayakumar B |
| [HADOOP-9740](https://issues.apache.org/jira/browse/HADOOP-9740) | FsShell's Text command does not read avro data files stored on HDFS |  Major | fs | Allan Yan | Allan Yan |
| [HADOOP-9576](https://issues.apache.org/jira/browse/HADOOP-9576) | Make NetUtils.wrapException throw EOFException instead of wrapping it as IOException |  Major | . | Jian He | Steve Loughran |
| [HADOOP-8808](https://issues.apache.org/jira/browse/HADOOP-8808) | Update FsShell documentation to mention deprecation of some of the commands, and mention alternatives |  Major | documentation, fs | Hemanth Yamijala | Akira AJISAKA |
| [HADOOP-8158](https://issues.apache.org/jira/browse/HADOOP-8158) | Interrupting hadoop fs -put from the command line causes a LeaseExpiredException |  Major | . | Todd Lipcon | Daryn Sharp |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-11253](https://issues.apache.org/jira/browse/HADOOP-11253) | Hadoop streaming test TestStreamXmlMultipleRecords fails on Windows |  Major | tools | Varun Vasudev | Varun Vasudev |
| [HADOOP-11241](https://issues.apache.org/jira/browse/HADOOP-11241) | TestNMSimulator fails sometimes due to timing issue |  Major | . | Varun Vasudev | Varun Vasudev |
| [HADOOP-11088](https://issues.apache.org/jira/browse/HADOOP-11088) | Unittest TestKeyShell, TestCredShell and TestKMS assume UNIX path separator for JECKS key store path |  Major | security | Xiaoyu Yao | Xiaoyu Yao |
| [HADOOP-11073](https://issues.apache.org/jira/browse/HADOOP-11073) | Credential Provider related Unit Tests Failure on Windows |  Major | security | Xiaoyu Yao | Xiaoyu Yao |
| [HADOOP-11071](https://issues.apache.org/jira/browse/HADOOP-11071) | KMSClientProvider should drain the local generated EEK cache on key rollover |  Minor | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-11070](https://issues.apache.org/jira/browse/HADOOP-11070) | Create MiniKMS for testing |  Major | security, test | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-11060](https://issues.apache.org/jira/browse/HADOOP-11060) | Create a CryptoCodec test that verifies interoperability between the JCE and OpenSSL implementations |  Major | security | Alejandro Abdelnur | Yi Liu |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-11074](https://issues.apache.org/jira/browse/HADOOP-11074) | Move s3-related FS connector code to hadoop-aws |  Major | fs/s3 | David S. Wang | David S. Wang |
| [HADOOP-10933](https://issues.apache.org/jira/browse/HADOOP-10933) | FileBasedKeyStoresFactory Should use Configuration.getPassword for SSL Passwords |  Major | security | Larry McCay | Larry McCay |
| [HADOOP-10905](https://issues.apache.org/jira/browse/HADOOP-10905) | LdapGroupsMapping Should use configuration.getPassword for SSL and LDAP Passwords |  Major | security | Larry McCay | Larry McCay |
| [HADOOP-10886](https://issues.apache.org/jira/browse/HADOOP-10886) | CryptoCodec#getCodecclasses throws NPE when configurations not loaded. |  Major | fs | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HADOOP-10884](https://issues.apache.org/jira/browse/HADOOP-10884) | Fix dead link in Configuration javadoc |  Minor | documentation | Akira AJISAKA | Akira AJISAKA |
| [HADOOP-10868](https://issues.apache.org/jira/browse/HADOOP-10868) | Create a ZooKeeper-backed secret provider |  Major | security | Robert Kanter | Robert Kanter |
| [HADOOP-10650](https://issues.apache.org/jira/browse/HADOOP-10650) | Add ability to specify a reverse ACL (black list) of users and groups |  Major | security | Benoy Antony | Benoy Antony |
| [HADOOP-10635](https://issues.apache.org/jira/browse/HADOOP-10635) | Add a method to CryptoCodec to generate SRNs for IV |  Major | security | Alejandro Abdelnur | Yi Liu |
| [HADOOP-10632](https://issues.apache.org/jira/browse/HADOOP-10632) | Minor improvements to Crypto input and output streams |  Major | security | Alejandro Abdelnur | Yi Liu |
| [HADOOP-10281](https://issues.apache.org/jira/browse/HADOOP-10281) | Create a scheduler, which assigns schedulables a priority level |  Major | . | Chris Li | Chris Li |
| [HADOOP-10201](https://issues.apache.org/jira/browse/HADOOP-10201) | Add Listing Support to Key Management APIs |  Major | security | Larry McCay | Larry McCay |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-10994](https://issues.apache.org/jira/browse/HADOOP-10994) | KeyProviderCryptoExtension should use CryptoCodec for generation/decryption of keys |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-10992](https://issues.apache.org/jira/browse/HADOOP-10992) | Merge KMS to branch-2 |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-10882](https://issues.apache.org/jira/browse/HADOOP-10882) | Move DirectBufferPool into common util |  Minor | util | Todd Lipcon | Todd Lipcon |


