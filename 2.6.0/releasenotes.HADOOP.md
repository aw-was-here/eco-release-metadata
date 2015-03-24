# Hadoop HADOOP 2.6.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.

---

* [HADOOP-11286](https://issues.apache.org/jira/browse/HADOOP-11286) | *Blocker* | **Map/Reduce dangerously adds Guava @Beta class to CryptoUtils**
---

* [HADOOP-11282](https://issues.apache.org/jira/browse/HADOOP-11282) | *Trivial* | **Skip NFS TestShellBasedIdMapping tests that are irrelevant on Windows.**
---

* [HADOOP-11280](https://issues.apache.org/jira/browse/HADOOP-11280) | *Trivial* | **TestWinUtils#testChmod fails after removal of NO\_PROPAGATE\_INHERIT\_ACE.**
---

* [HADOOP-11265](https://issues.apache.org/jira/browse/HADOOP-11265) | *Major* | **Credential and Key Shell Commands not available on Windows**
---

* [HADOOP-11260](https://issues.apache.org/jira/browse/HADOOP-11260) | *Blocker* | **Patch up Jetty to disable SSLv3**
---

* [HADOOP-11254](https://issues.apache.org/jira/browse/HADOOP-11254) | *Major* | **Promoting AccessControlList to be public**
---

* [HADOOP-11253](https://issues.apache.org/jira/browse/HADOOP-11253) | *Major* | **Hadoop streaming test TestStreamXmlMultipleRecords fails on Windows**
---

* [HADOOP-11250](https://issues.apache.org/jira/browse/HADOOP-11250) | *Minor* | **fix endmacro of set\_find\_shared\_library\_without\_version in CMakeLists**
---

* [HADOOP-11247](https://issues.apache.org/jira/browse/HADOOP-11247) | *Major* | **Fix a couple javac warnings in NFS**
---

* [HADOOP-11243](https://issues.apache.org/jira/browse/HADOOP-11243) | *Blocker* | **SSLFactory shouldn't allow SSLv3**
---

* [HADOOP-11241](https://issues.apache.org/jira/browse/HADOOP-11241) | *Major* | **TestNMSimulator fails sometimes due to timing issue**
---

* [HADOOP-11233](https://issues.apache.org/jira/browse/HADOOP-11233) | *Minor* | **hadoop.security.kms.client.encrypted.key.cache.expiry property spelled wrong in core-default**
---

* [HADOOP-11228](https://issues.apache.org/jira/browse/HADOOP-11228) | *Major* | **winutils task: unsecure path should not call AddNodeManagerAndUserACEsToObject**
---

* [HADOOP-11221](https://issues.apache.org/jira/browse/HADOOP-11221) | *Major* | **JAVA specification for hashcode does not enforce it to be non-negative, but IdentityHashStore assumes System.identityHashCode() is non-negative**
---

* [HADOOP-11217](https://issues.apache.org/jira/browse/HADOOP-11217) | *Blocker* | **Disable SSLv3 in KMS**
---

* [HADOOP-11216](https://issues.apache.org/jira/browse/HADOOP-11216) | *Major* | **Improve Openssl library finding**
---

* [HADOOP-11207](https://issues.apache.org/jira/browse/HADOOP-11207) | *Major* | **DelegationTokenAuthenticationHandler needs to support DT operations for proxy user**
---

* [HADOOP-11198](https://issues.apache.org/jira/browse/HADOOP-11198) | *Minor* | **Fix typo in javadoc for FileSystem#listStatus()**
---

* [HADOOP-11195](https://issues.apache.org/jira/browse/HADOOP-11195) | *Major* | **Move Id-Name mapping in NFS to the hadoop-common area for better maintenance**
---

* [HADOOP-11194](https://issues.apache.org/jira/browse/HADOOP-11194) | *Major* | **Ignore .keep files**
---

* [HADOOP-11193](https://issues.apache.org/jira/browse/HADOOP-11193) | *Major* | **Fix uninitialized variables in NativeIO.c**
---

* [HADOOP-11184](https://issues.apache.org/jira/browse/HADOOP-11184) | *Major* | **Update Hadoop's lz4 to r123**
---

* [HADOOP-11182](https://issues.apache.org/jira/browse/HADOOP-11182) | *Major* | **GraphiteSink emits wrong timestamps**
---

* [HADOOP-11181](https://issues.apache.org/jira/browse/HADOOP-11181) | *Major* | **o.a.h.security.token.delegation.DelegationTokenManager should be more generalized to handle other DelegationTokenIdentifier**
---

* [HADOOP-11179](https://issues.apache.org/jira/browse/HADOOP-11179) | *Major* | **Tarball as local resource type archive fails to localize on Windows**
---

* [HADOOP-11178](https://issues.apache.org/jira/browse/HADOOP-11178) | *Minor* | **Fix findbugs exclude file**
---

* [HADOOP-11176](https://issues.apache.org/jira/browse/HADOOP-11176) | *Major* | **KMSClientProvider authentication fails when both currentUgi and loginUgi are a proxied user**
---

* [HADOOP-11175](https://issues.apache.org/jira/browse/HADOOP-11175) | *Trivial* | **Fix several issues of hadoop security configuration in user doc.**
---

* [HADOOP-11174](https://issues.apache.org/jira/browse/HADOOP-11174) | *Major* | **Delegation token for KMS should only be got once if it already exists**
---

* [HADOOP-11170](https://issues.apache.org/jira/browse/HADOOP-11170) | *Major* | **ZKDelegationTokenSecretManager fails to renewToken created by a peer**
---

* [HADOOP-11169](https://issues.apache.org/jira/browse/HADOOP-11169) | *Major* | **Fix DelegationTokenAuthenticatedURL to pass the connection Configurator to the authenticator**
---

* [HADOOP-11168](https://issues.apache.org/jira/browse/HADOOP-11168) | *Trivial* | **Remove duplicated entry "dfs.webhdfs.enabled" in the user doc**
---

* [HADOOP-11163](https://issues.apache.org/jira/browse/HADOOP-11163) | *Minor* | **MetricsSystemImpl may miss a registered source**
---

* [HADOOP-11161](https://issues.apache.org/jira/browse/HADOOP-11161) | *Major* | **Expose close method in KeyProvider to give clients of Provider implementations a hook to release resources**
---

* [HADOOP-11160](https://issues.apache.org/jira/browse/HADOOP-11160) | *Trivial* | **Fix  typo in nfs3 server duplicate entry reporting**
---

* [HADOOP-11154](https://issues.apache.org/jira/browse/HADOOP-11154) | *Trivial* | **Update BUILDING.txt to state that CMake 3.0 or newer is required on Mac.**
---

* [HADOOP-11153](https://issues.apache.org/jira/browse/HADOOP-11153) | *Major* | **Make number of KMS threads configurable**
---

* [HADOOP-11151](https://issues.apache.org/jira/browse/HADOOP-11151) | *Major* | **Automatically refresh auth token and retry on auth failure**
---

* [HADOOP-11145](https://issues.apache.org/jira/browse/HADOOP-11145) | *Major* | **TestFairCallQueue fails**
---

* [HADOOP-11143](https://issues.apache.org/jira/browse/HADOOP-11143) | *Minor* | **NetUtils.wrapException loses inner stack trace on BindException**
---

* [HADOOP-11140](https://issues.apache.org/jira/browse/HADOOP-11140) | *Major* | **hadoop-aws only need test-scoped dependency on hadoop-common's tests jar**
---

* [HADOOP-11133](https://issues.apache.org/jira/browse/HADOOP-11133) | *Minor* | **Should trim the content of keystore password file for JavaKeyStoreProvider**
---

* [HADOOP-11130](https://issues.apache.org/jira/browse/HADOOP-11130) | *Major* | **NFS updateMaps OS check is reversed**
---

* [HADOOP-11122](https://issues.apache.org/jira/browse/HADOOP-11122) | *Blocker* | **Fix findbugs in ZK DelegationTokenSecretManagers**
---

* [HADOOP-11113](https://issues.apache.org/jira/browse/HADOOP-11113) | *Major* | **Namenode not able to reconnect to KMS after KMS restart**
---

* [HADOOP-11112](https://issues.apache.org/jira/browse/HADOOP-11112) | *Major* | **TestKMSWithZK does not use KEY\_PROVIDER\_URI**
---

* [HADOOP-11111](https://issues.apache.org/jira/browse/HADOOP-11111) | *Minor* | **MiniKDC to use locale EN\_US for case conversions**
---

* [HADOOP-11110](https://issues.apache.org/jira/browse/HADOOP-11110) | *Major* | **JavaKeystoreProvider should not report a key as created if it was not flushed to the backing file**
---

* [HADOOP-11109](https://issues.apache.org/jira/browse/HADOOP-11109) | *Major* | **Site build is broken**
---

* [HADOOP-11106](https://issues.apache.org/jira/browse/HADOOP-11106) | *Minor* | **Document considerations of HAR and Encryption**
---

* [HADOOP-11105](https://issues.apache.org/jira/browse/HADOOP-11105) | *Major* | **MetricsSystemImpl could leak memory in registered callbacks**
---

* [HADOOP-11101](https://issues.apache.org/jira/browse/HADOOP-11101) | *Minor* | **How about inputstream close statement from catch block to finally block in FileContext#copy() ?**
---

* [HADOOP-11099](https://issues.apache.org/jira/browse/HADOOP-11099) | *Major* | **KMS return HTTP UNAUTHORIZED 401 on ACL failure**
---

* [HADOOP-11097](https://issues.apache.org/jira/browse/HADOOP-11097) | *Trivial* | **kms docs say proxyusers, not proxyuser for config params**
---

* [HADOOP-11096](https://issues.apache.org/jira/browse/HADOOP-11096) | *Major* | **KMS: KeyAuthorizationKeyProvider should verify the keyversion belongs to the keyname on decrypt**
---

* [HADOOP-11091](https://issues.apache.org/jira/browse/HADOOP-11091) | *Minor* | **Eliminate old configuration parameter names from s3a**
---

* [HADOOP-11088](https://issues.apache.org/jira/browse/HADOOP-11088) | *Major* | **Unittest TestKeyShell, TestCredShell and TestKMS assume UNIX path separator for JECKS key store path**
---

* [HADOOP-11085](https://issues.apache.org/jira/browse/HADOOP-11085) | *Major* | **Excessive logging by org.apache.hadoop.util.Progress when value is NaN**
---

* [HADOOP-11083](https://issues.apache.org/jira/browse/HADOOP-11083) | *Major* | **After refactoring of HTTP proxyuser to common, doAs param is case sensitive**
---

* [HADOOP-11077](https://issues.apache.org/jira/browse/HADOOP-11077) | *Major* | **NPE if hosts not specified in ProxyUsers**
---

* [HADOOP-11074](https://issues.apache.org/jira/browse/HADOOP-11074) | *Major* | **Move s3-related FS connector code to hadoop-aws**
---

* [HADOOP-11073](https://issues.apache.org/jira/browse/HADOOP-11073) | *Major* | **Credential Provider related Unit Tests Failure on Windows**
---

* [HADOOP-11071](https://issues.apache.org/jira/browse/HADOOP-11071) | *Minor* | **KMSClientProvider should drain the local generated EEK cache on key rollover**
---

* [HADOOP-11070](https://issues.apache.org/jira/browse/HADOOP-11070) | *Major* | **Create MiniKMS for testing**
---

* [HADOOP-11069](https://issues.apache.org/jira/browse/HADOOP-11069) | *Major* | **KMSClientProvider should use getAuthenticationMethod() to determine if in proxyuser mode or not**
---

* [HADOOP-11068](https://issues.apache.org/jira/browse/HADOOP-11068) | *Major* | **Match hadoop.auth cookie format to jetty output**
---

* [HADOOP-11067](https://issues.apache.org/jira/browse/HADOOP-11067) | *Major* | **warning message 'ssl.client.truststore.location has not been set' gets printed for hftp command**
---

* [HADOOP-11064](https://issues.apache.org/jira/browse/HADOOP-11064) | *Blocker* | **UnsatisifedLinkError with hadoop 2.4 JARs on hadoop-2.6 due to NativeCRC32 method changes**
---

* [HADOOP-11063](https://issues.apache.org/jira/browse/HADOOP-11063) | *Blocker* | **KMS cannot deploy on Windows, because class names are too long.**
---

* [HADOOP-11062](https://issues.apache.org/jira/browse/HADOOP-11062) | *Major* | **CryptoCodec testcases requiring OpenSSL should be run only if -Pnative is used**
---

* [HADOOP-11060](https://issues.apache.org/jira/browse/HADOOP-11060) | *Major* | **Create a CryptoCodec test that verifies interoperability between the JCE and OpenSSL implementations**
---

* [HADOOP-11057](https://issues.apache.org/jira/browse/HADOOP-11057) | *Minor* | **checknative command to probe for winutils.exe on windows**
---

* [HADOOP-11056](https://issues.apache.org/jira/browse/HADOOP-11056) | *Major* | **OsSecureRandom.setConf() might leak file descriptors.**
---

* [HADOOP-11054](https://issues.apache.org/jira/browse/HADOOP-11054) | *Major* | **Add a KeyProvider instantiation based on a URI**
---

* [HADOOP-11049](https://issues.apache.org/jira/browse/HADOOP-11049) | *Minor* | **javax package system class default is too broad**
---

* [HADOOP-11048](https://issues.apache.org/jira/browse/HADOOP-11048) | *Minor* | **user/custom LogManager fails to load if the client classloader is enabled**
---

* [HADOOP-11040](https://issues.apache.org/jira/browse/HADOOP-11040) | *Major* | **Return value of read(ByteBuffer buf) in CryptoInputStream is incorrect in some cases**
---

* [HADOOP-11036](https://issues.apache.org/jira/browse/HADOOP-11036) | *Minor* | **Add build directory to .gitignore**
---

* [HADOOP-11030](https://issues.apache.org/jira/browse/HADOOP-11030) | *Minor* | **Define a variable jackson.version instead of using constant at multiple places**
---

* [HADOOP-11021](https://issues.apache.org/jira/browse/HADOOP-11021) | *Minor* | **Configurable replication factor in the hadoop archive command**
---

* [HADOOP-11017](https://issues.apache.org/jira/browse/HADOOP-11017) | *Major* | **KMS delegation token secret manager should be able to use zookeeper as store**
---

* [HADOOP-11016](https://issues.apache.org/jira/browse/HADOOP-11016) | *Major* | **KMS should support signing cookies with zookeeper secret manager**
---

* [HADOOP-11015](https://issues.apache.org/jira/browse/HADOOP-11015) | *Major* | **Http server/client utils to propagate and recreate Exceptions from server to client**
---

* [HADOOP-11012](https://issues.apache.org/jira/browse/HADOOP-11012) | *Major* | **hadoop fs -text of zero-length file causes EOFException**
---

* [HADOOP-11009](https://issues.apache.org/jira/browse/HADOOP-11009) | *Major* | **Add Timestamp Preservation to DistCp**
---

* [HADOOP-11007](https://issues.apache.org/jira/browse/HADOOP-11007) | *Major* | **Reinstate building of ant tasks support**
---

* [HADOOP-11005](https://issues.apache.org/jira/browse/HADOOP-11005) | *Minor* | **Fix HTTP content type for ReconfigurationServlet**
---

* [HADOOP-10998](https://issues.apache.org/jira/browse/HADOOP-10998) | *Trivial* | **Fix bash tab completion code to work**
---

* [HADOOP-10994](https://issues.apache.org/jira/browse/HADOOP-10994) | *Major* | **KeyProviderCryptoExtension should use CryptoCodec for generation/decryption of keys**
---

* [HADOOP-10992](https://issues.apache.org/jira/browse/HADOOP-10992) | *Major* | **Merge KMS to branch-2**
---

* [HADOOP-10990](https://issues.apache.org/jira/browse/HADOOP-10990) | *Major* | **Add missed NFSv3 request and response classes**
---

* [HADOOP-10989](https://issues.apache.org/jira/browse/HADOOP-10989) | *Major* | **Work around buggy getgrouplist() implementations on Linux that return 0 on failure**
---

* [HADOOP-10982](https://issues.apache.org/jira/browse/HADOOP-10982) | *Major* | **KMS: Support for multiple Kerberos principals**
---

* [HADOOP-10975](https://issues.apache.org/jira/browse/HADOOP-10975) | *Major* | **org.apache.hadoop.util.DataChecksum should support native checksum calculation**
---

* [HADOOP-10973](https://issues.apache.org/jira/browse/HADOOP-10973) | *Minor* | **Native Libraries Guide contains format error**
---

* [HADOOP-10972](https://issues.apache.org/jira/browse/HADOOP-10972) | *Major* | **Native Libraries Guide contains mis-spelt build line**
---

* [HADOOP-10970](https://issues.apache.org/jira/browse/HADOOP-10970) | *Major* | **Cleanup KMS configuration keys**
---

* [HADOOP-10968](https://issues.apache.org/jira/browse/HADOOP-10968) | *Major* | **hadoop native build fails to detect java\_libarch on ppc64le**
---

* [HADOOP-10967](https://issues.apache.org/jira/browse/HADOOP-10967) | *Major* | **Improve DefaultCryptoExtension#generateEncryptedKey performance**
---

* [HADOOP-10966](https://issues.apache.org/jira/browse/HADOOP-10966) | *Blocker* | **Hadoop Common native compilation broken in windows**
---

* [HADOOP-10964](https://issues.apache.org/jira/browse/HADOOP-10964) | *Minor* | **Small fix for NetworkTopologyWithNodeGroup#sortByDistance**
---

* [HADOOP-10962](https://issues.apache.org/jira/browse/HADOOP-10962) | *Major* | **Flags for posix\_fadvise are not valid in some architectures**
---

* [HADOOP-10954](https://issues.apache.org/jira/browse/HADOOP-10954) | *Minor* | **Adding site documents of hadoop-tools**
---

* [HADOOP-10946](https://issues.apache.org/jira/browse/HADOOP-10946) | *Trivial* | **Fix a bunch of typos in log messages**
---

* [HADOOP-10939](https://issues.apache.org/jira/browse/HADOOP-10939) | *Major* | **Fix TestKeyProviderFactory testcases to use default 128 bit length keys**
---

* [HADOOP-10937](https://issues.apache.org/jira/browse/HADOOP-10937) | *Major* | **Need to set version name correctly before decrypting EEK**
---

* [HADOOP-10936](https://issues.apache.org/jira/browse/HADOOP-10936) | *Major* | **Change default KeyProvider bitlength to 128**
---

* [HADOOP-10933](https://issues.apache.org/jira/browse/HADOOP-10933) | *Major* | **FileBasedKeyStoresFactory Should use Configuration.getPassword for SSL Passwords**
---

* [HADOOP-10931](https://issues.apache.org/jira/browse/HADOOP-10931) | *Minor* | **compile error on project "Apache Hadoop OpenStack support"**
---

* [HADOOP-10929](https://issues.apache.org/jira/browse/HADOOP-10929) | *Trivial* | **Typo in Configuration.getPasswordFromCredentialProviders**
---

* [HADOOP-10928](https://issues.apache.org/jira/browse/HADOOP-10928) | *Trivial* | **Incorrect usage on 'hadoop credential list'**
---

* [HADOOP-10927](https://issues.apache.org/jira/browse/HADOOP-10927) | *Minor* | **Fix CredentialShell help behavior and error codes**
---

* [HADOOP-10925](https://issues.apache.org/jira/browse/HADOOP-10925) | *Blocker* | **Compilation fails in native link0 function on Windows.**
---

* [HADOOP-10922](https://issues.apache.org/jira/browse/HADOOP-10922) | *Major* | **User documentation for CredentialShell**
---

* [HADOOP-10920](https://issues.apache.org/jira/browse/HADOOP-10920) | *Minor* | **site plugin couldn't parse hadoop-kms index.apt.vm**
---

* [HADOOP-10918](https://issues.apache.org/jira/browse/HADOOP-10918) | *Major* | **JMXJsonServlet fails when used within Tomcat**
---

* [HADOOP-10911](https://issues.apache.org/jira/browse/HADOOP-10911) | *Major* | **hadoop.auth cookie after HADOOP-10710 still not proper according to RFC2109**
---

* [HADOOP-10905](https://issues.apache.org/jira/browse/HADOOP-10905) | *Major* | **LdapGroupsMapping Should use configuration.getPassword for SSL and LDAP Passwords**
---

* [HADOOP-10903](https://issues.apache.org/jira/browse/HADOOP-10903) | *Major* | **Enhance hadoop classpath command to expand wildcards or write classpath into jar manifest.**

The "hadoop classpath" command has been enhanced to support options for automatic expansion of wildcards in classpath elements and writing the classpath to a jar file manifest.  These options make it easier to construct a correct classpath for libhdfs applications.

---

* [HADOOP-10902](https://issues.apache.org/jira/browse/HADOOP-10902) | *Minor* | **Deletion of directories with snapshots will not output reason for trash move failure**
---

* [HADOOP-10900](https://issues.apache.org/jira/browse/HADOOP-10900) | *Minor* | **CredentialShell args should use single-dash style**
---

* [HADOOP-10893](https://issues.apache.org/jira/browse/HADOOP-10893) | *Major* | **isolated classloader on the client side**
---

* [HADOOP-10891](https://issues.apache.org/jira/browse/HADOOP-10891) | *Major* | **Add EncryptedKeyVersion factory method to KeyProviderCryptoExtension**
---

* [HADOOP-10887](https://issues.apache.org/jira/browse/HADOOP-10887) | *Major* | **Add XAttrs to ViewFs and make XAttrs + ViewFileSystem internal dir behavior consistent**
---

* [HADOOP-10886](https://issues.apache.org/jira/browse/HADOOP-10886) | *Major* | **CryptoCodec#getCodecclasses throws NPE when configurations not loaded.**
---

* [HADOOP-10884](https://issues.apache.org/jira/browse/HADOOP-10884) | *Minor* | **Fix dead link in Configuration javadoc**
---

* [HADOOP-10882](https://issues.apache.org/jira/browse/HADOOP-10882) | *Minor* | **Move DirectBufferPool into common util**
---

* [HADOOP-10881](https://issues.apache.org/jira/browse/HADOOP-10881) | *Major* | **Clarify usage of encryption and encrypted encryption key in KeyProviderCryptoExtension**
---

* [HADOOP-10880](https://issues.apache.org/jira/browse/HADOOP-10880) | *Blocker* | **Move HTTP delegation tokens out of URL querystring to a header**
---

* [HADOOP-10868](https://issues.apache.org/jira/browse/HADOOP-10868) | *Major* | **Create a ZooKeeper-backed secret provider**
---

* [HADOOP-10866](https://issues.apache.org/jira/browse/HADOOP-10866) | *Major* | **RawLocalFileSystem fails to read symlink targets via the stat command when the format of stat command uses non-curly quotes**
---

* [HADOOP-10863](https://issues.apache.org/jira/browse/HADOOP-10863) | *Major* | **KMS should have a blacklist for decrypting EEKs**
---

* [HADOOP-10862](https://issues.apache.org/jira/browse/HADOOP-10862) | *Major* | **Miscellaneous trivial corrections to KMS classes**
---

* [HADOOP-10857](https://issues.apache.org/jira/browse/HADOOP-10857) | *Major* | **Native Libraries Guide doen't mention a dependency on openssl-development package**
---

* [HADOOP-10855](https://issues.apache.org/jira/browse/HADOOP-10855) | *Minor* | **Allow Text to be read with a known length**
---

* [HADOOP-10851](https://issues.apache.org/jira/browse/HADOOP-10851) | *Major* | **NetgroupCache does not remove group memberships**
---

* [HADOOP-10845](https://issues.apache.org/jira/browse/HADOOP-10845) | *Major* | **Add common tests for ACLs in combination with viewfs.**
---

* [HADOOP-10843](https://issues.apache.org/jira/browse/HADOOP-10843) | *Major* | **TestGridmixRecord unit tests failure on PowerPC**
---

* [HADOOP-10842](https://issues.apache.org/jira/browse/HADOOP-10842) | *Major* | **CryptoExtension generateEncryptedKey method should receive the key name**
---

* [HADOOP-10841](https://issues.apache.org/jira/browse/HADOOP-10841) | *Major* | **EncryptedKeyVersion should have a key name property**
---

* [HADOOP-10839](https://issues.apache.org/jira/browse/HADOOP-10839) | *Major* | **Add unregisterSource() to MetricsSystem API**

The MetricsSystem abstract class has added a new abstract method, unregisterSource, for unregistering a previously registered metrics source.  Custom subclasses of MetricsSystem must be updated to provide an implementation of this method.

---

* [HADOOP-10838](https://issues.apache.org/jira/browse/HADOOP-10838) | *Major* | **Byte array native checksumming**
---

* [HADOOP-10835](https://issues.apache.org/jira/browse/HADOOP-10835) | *Major* | **Implement HTTP proxyuser support in HTTP authentication client/server libraries**
---

* [HADOOP-10833](https://issues.apache.org/jira/browse/HADOOP-10833) | *Major* | **Remove unused cache in UserProvider**
---

* [HADOOP-10830](https://issues.apache.org/jira/browse/HADOOP-10830) | *Major* | **Missing lock in JavaKeyStoreProvider.createCredentialEntry**
---

* [HADOOP-10826](https://issues.apache.org/jira/browse/HADOOP-10826) | *Major* | **Iteration on KeyProviderFactory.serviceLoader  is thread-unsafe**
---

* [HADOOP-10824](https://issues.apache.org/jira/browse/HADOOP-10824) | *Major* | **Refactor KMSACLs to avoid locking**
---

* [HADOOP-10820](https://issues.apache.org/jira/browse/HADOOP-10820) | *Minor* | **Throw an exception in GenericOptionsParser when passed an empty Path**
---

* [HADOOP-10817](https://issues.apache.org/jira/browse/HADOOP-10817) | *Major* | **ProxyUsers configuration should support configurable prefixes**
---

* [HADOOP-10816](https://issues.apache.org/jira/browse/HADOOP-10816) | *Major* | **KeyShell returns -1 on error to the shell, should be 1**
---

* [HADOOP-10815](https://issues.apache.org/jira/browse/HADOOP-10815) | *Major* | **Implement Windows equivalent of mlock.**
---

* [HADOOP-10814](https://issues.apache.org/jira/browse/HADOOP-10814) | *Major* | **Update Tomcat version used by HttpFS and KMS to latest 6.x version**
---

* [HADOOP-10812](https://issues.apache.org/jira/browse/HADOOP-10812) | *Trivial* | **Delegate KeyProviderExtension#toString to underlying KeyProvider**
---

* [HADOOP-10810](https://issues.apache.org/jira/browse/HADOOP-10810) | *Minor* | **Clean up native code compilation warnings.**
---

* [HADOOP-10808](https://issues.apache.org/jira/browse/HADOOP-10808) | *Minor* | **Remove unused native code for munlock.**
---

* [HADOOP-10793](https://issues.apache.org/jira/browse/HADOOP-10793) | *Major* | **KeyShell args should use single-dash style**
---

* [HADOOP-10791](https://issues.apache.org/jira/browse/HADOOP-10791) | *Major* | **AuthenticationFilter should support externalizing the secret for signing and provide rotation support**
---

* [HADOOP-10781](https://issues.apache.org/jira/browse/HADOOP-10781) | *Major* | **Unportable getgrouplist() usage breaks FreeBSD**
---

* [HADOOP-10780](https://issues.apache.org/jira/browse/HADOOP-10780) | *Major* | **hadoop\_user\_info\_alloc fails on FreeBSD due to incorrect sysconf use**
---

* [HADOOP-10771](https://issues.apache.org/jira/browse/HADOOP-10771) | *Major* | **Refactor HTTP delegation support out of httpfs to common**
---

* [HADOOP-10770](https://issues.apache.org/jira/browse/HADOOP-10770) | *Major* | **KMS add delegation token support**
---

* [HADOOP-10769](https://issues.apache.org/jira/browse/HADOOP-10769) | *Major* | **Create KeyProvider extension to handle delegation tokens**
---

* [HADOOP-10758](https://issues.apache.org/jira/browse/HADOOP-10758) | *Major* | **KMS: add ACLs on per key basis.**
---

* [HADOOP-10757](https://issues.apache.org/jira/browse/HADOOP-10757) | *Major* | **KeyProvider KeyVersion should provide the key name**
---

* [HADOOP-10756](https://issues.apache.org/jira/browse/HADOOP-10756) | *Major* | **KMS audit log should consolidate successful similar requests**
---

* [HADOOP-10755](https://issues.apache.org/jira/browse/HADOOP-10755) | *Major* | **Support negative caching of user-group mapping**
---

* [HADOOP-10750](https://issues.apache.org/jira/browse/HADOOP-10750) | *Major* | **KMSKeyProviderCache should be in hadoop-common**
---

* [HADOOP-10744](https://issues.apache.org/jira/browse/HADOOP-10744) | *Major* | **LZ4 Compression fails to recognize PowerPC Little Endian Architecture**
---

* [HADOOP-10736](https://issues.apache.org/jira/browse/HADOOP-10736) | *Major* | **Add key attributes to the key shell**
---

* [HADOOP-10733](https://issues.apache.org/jira/browse/HADOOP-10733) | *Minor* | **Potential null dereference in CredentialShell#promptForCredential()**
---

* [HADOOP-10732](https://issues.apache.org/jira/browse/HADOOP-10732) | *Minor* | **Update without holding write lock in JavaKeyStoreProvider#innerSetCredential()**
---

* [HADOOP-10731](https://issues.apache.org/jira/browse/HADOOP-10731) | *Trivial* | **Remove @date JavaDoc comment in ProgramDriver class**
---

* [HADOOP-10720](https://issues.apache.org/jira/browse/HADOOP-10720) | *Major* | **KMS: Implement generateEncryptedKey and decryptEncryptedKey in the REST API**
---

* [HADOOP-10719](https://issues.apache.org/jira/browse/HADOOP-10719) | *Major* | **Add generateEncryptedKey and decryptEncryptedKey methods to KeyProvider**
---

* [HADOOP-10698](https://issues.apache.org/jira/browse/HADOOP-10698) | *Major* | **KMS, add proxyuser support**
---

* [HADOOP-10696](https://issues.apache.org/jira/browse/HADOOP-10696) | *Major* | **Add optional attributes to KeyProvider Options and Metadata**
---

* [HADOOP-10695](https://issues.apache.org/jira/browse/HADOOP-10695) | *Major* | **KMSClientProvider should respect a configurable timeout.**
---

* [HADOOP-10681](https://issues.apache.org/jira/browse/HADOOP-10681) | *Major* | **Remove synchronized blocks from SnappyCodec and ZlibCodec buffering inner loop**

Remove unnecessary synchronized blocks from Snappy/Zlib codecs.

---

* [HADOOP-10677](https://issues.apache.org/jira/browse/HADOOP-10677) | *Major* | **ExportSnapshot fails on kerberized cluster using s3a**
---

* [HADOOP-10676](https://issues.apache.org/jira/browse/HADOOP-10676) | *Major* | **S3AOutputStream not reading new config knobs for multipart configs**
---

* [HADOOP-10675](https://issues.apache.org/jira/browse/HADOOP-10675) | *Major* | **Add server-side encryption functionality to s3a**
---

* [HADOOP-10673](https://issues.apache.org/jira/browse/HADOOP-10673) | *Major* | **Update rpc metrics when the call throws an exception**
---

* [HADOOP-10650](https://issues.apache.org/jira/browse/HADOOP-10650) | *Major* | **Add ability to specify a reverse ACL (black list) of users and groups**
---

* [HADOOP-10645](https://issues.apache.org/jira/browse/HADOOP-10645) | *Major* | **TestKMS fails because race condition writing acl files**
---

* [HADOOP-10635](https://issues.apache.org/jira/browse/HADOOP-10635) | *Major* | **Add a method to CryptoCodec to generate SRNs for IV**
---

* [HADOOP-10632](https://issues.apache.org/jira/browse/HADOOP-10632) | *Major* | **Minor improvements to Crypto input and output streams**
---

* [HADOOP-10620](https://issues.apache.org/jira/browse/HADOOP-10620) | *Major* | **/docs/current doesn't point to the latest version 2.4.0**

Verified http://hadoop.apache.org/docs/current/ link now point to current release (v2.6.0).

---

* [HADOOP-10611](https://issues.apache.org/jira/browse/HADOOP-10611) | *Major* | **KMS, keyVersion name should not be assumed to be keyName@versionNumber**
---

* [HADOOP-10610](https://issues.apache.org/jira/browse/HADOOP-10610) | *Minor* | **Upgrade S3n fs.s3.buffer.dir to support multi directories**
---

* [HADOOP-10607](https://issues.apache.org/jira/browse/HADOOP-10607) | *Major* | **Create an API to Separate Credentials/Password Storage from Applications**
---

* [HADOOP-10591](https://issues.apache.org/jira/browse/HADOOP-10591) | *Major* | **Compression codecs must used pooled direct buffers or deallocate direct buffers when stream is closed**
---

* [HADOOP-10586](https://issues.apache.org/jira/browse/HADOOP-10586) | *Minor* | **KeyShell doesn't allow setting Options via CLI**
---

* [HADOOP-10583](https://issues.apache.org/jira/browse/HADOOP-10583) | *Minor* | **bin/hadoop key throws NPE with no args and assorted other fixups**

bin/hadoop key
with no args would throw an NPE.

---

* [HADOOP-10552](https://issues.apache.org/jira/browse/HADOOP-10552) | *Trivial* | **Fix usage and example at FileSystemShell.apt.vm**
---

* [HADOOP-10534](https://issues.apache.org/jira/browse/HADOOP-10534) | *Major* | **KeyProvider API should using windowing for retrieving metadata**
---

* [HADOOP-10507](https://issues.apache.org/jira/browse/HADOOP-10507) | *Minor* | **FsShell setfacl can throw ArrayIndexOutOfBoundsException when no perm is specified**
---

* [HADOOP-10488](https://issues.apache.org/jira/browse/HADOOP-10488) | *Major* | **TestKeyProviderFactory fails randomly**
---

* [HADOOP-10433](https://issues.apache.org/jira/browse/HADOOP-10433) | *Major* | **Key Management Server based on KeyProvider API**
---

* [HADOOP-10432](https://issues.apache.org/jira/browse/HADOOP-10432) | *Major* | **Refactor SSLFactory to expose static method to determine HostnameVerifier**
---

* [HADOOP-10431](https://issues.apache.org/jira/browse/HADOOP-10431) | *Major* | **Change visibility of KeyStore.Options getter methods to public**
---

* [HADOOP-10430](https://issues.apache.org/jira/browse/HADOOP-10430) | *Major* | **KeyProvider Metadata should have an optional description, there should be a method to retrieve the metadata from all keys**
---

* [HADOOP-10429](https://issues.apache.org/jira/browse/HADOOP-10429) | *Major* | **KeyStores should have methods to generate the materials themselves, KeyShell should use them**
---

* [HADOOP-10428](https://issues.apache.org/jira/browse/HADOOP-10428) | *Major* | **JavaKeyStoreProvider should accept keystore password via configuration falling back to ENV VAR**
---

* [HADOOP-10427](https://issues.apache.org/jira/browse/HADOOP-10427) | *Major* | **KeyProvider implementations should be thread safe**
---

* [HADOOP-10404](https://issues.apache.org/jira/browse/HADOOP-10404) | *Minor* | **Some accesses to DomainSocketWatcher#closed are not protected by lock**
---

* [HADOOP-10402](https://issues.apache.org/jira/browse/HADOOP-10402) | *Major* | **Configuration.getValByRegex does not substitute for variables**
---

* [HADOOP-10400](https://issues.apache.org/jira/browse/HADOOP-10400) | *Major* | **Incorporate new S3A FileSystem implementation**
---

* [HADOOP-10373](https://issues.apache.org/jira/browse/HADOOP-10373) | *Major* | **create tools/hadoop-amazon for aws/EMR support**
---

* [HADOOP-10335](https://issues.apache.org/jira/browse/HADOOP-10335) | *Major* | **An ip whilelist based implementation to resolve Sasl properties per connection**
---

* [HADOOP-10281](https://issues.apache.org/jira/browse/HADOOP-10281) | *Major* | **Create a scheduler, which assigns schedulables a priority level**
---

* [HADOOP-10244](https://issues.apache.org/jira/browse/HADOOP-10244) | *Major* | **TestKeyShell improperly tests the results of a Delete**

Fix of inappropriate test of delete functionality.

---

* [HADOOP-10237](https://issues.apache.org/jira/browse/HADOOP-10237) | *Major* | **JavaKeyStoreProvider needs to set keystore permissions properly**
---

* [HADOOP-10231](https://issues.apache.org/jira/browse/HADOOP-10231) | *Minor* | **Add some components in Native Libraries document**
---

* [HADOOP-10224](https://issues.apache.org/jira/browse/HADOOP-10224) | *Major* | **JavaKeyStoreProvider has to protect against corrupting underlying store**
---

* [HADOOP-10201](https://issues.apache.org/jira/browse/HADOOP-10201) | *Major* | **Add Listing Support to Key Management APIs**

I just committed this. Thanks, Larry!

---

* [HADOOP-10177](https://issues.apache.org/jira/browse/HADOOP-10177) | *Major* | **Create CLI tools for managing keys via the KeyProvider API**
---

* [HADOOP-10150](https://issues.apache.org/jira/browse/HADOOP-10150) | *Major* | **Hadoop cryptographic file system**
---

* [HADOOP-10141](https://issues.apache.org/jira/browse/HADOOP-10141) | *Major* | **Create an API to separate encryption key storage from applications**
---

* [HADOOP-10131](https://issues.apache.org/jira/browse/HADOOP-10131) | *Major* | **NetWorkTopology#countNumOfAvailableNodes() is returning wrong value if excluded nodes passed are not part of the cluster tree**
---

* [HADOOP-10121](https://issues.apache.org/jira/browse/HADOOP-10121) | *Trivial* | **Fix javadoc spelling for HadoopArchives#writeTopLevelDirs**
---

* [HADOOP-10059](https://issues.apache.org/jira/browse/HADOOP-10059) | *Minor* | **RPC authentication and authorization metrics overflow to negative values on busy clusters**
---

* [HADOOP-10037](https://issues.apache.org/jira/browse/HADOOP-10037) | *Major* | **s3n read truncated, but doesn't throw exception**
---

* [HADOOP-9989](https://issues.apache.org/jira/browse/HADOOP-9989) | *Major* | **Bug introduced in HADOOP-9374, which parses the -tokenCacheFile as binary file but set it to the configuration as JSON file.**
---

* [HADOOP-9921](https://issues.apache.org/jira/browse/HADOOP-9921) | *Major* | **daemon scripts should remove pid file on stop call after stop or process is found not running**
---

* [HADOOP-9740](https://issues.apache.org/jira/browse/HADOOP-9740) | *Major* | **FsShell's Text command does not read avro data files stored on HDFS**
---

* [HADOOP-9576](https://issues.apache.org/jira/browse/HADOOP-9576) | *Major* | **Make NetUtils.wrapException throw EOFException instead of wrapping it as IOException**
---

* [HADOOP-9540](https://issues.apache.org/jira/browse/HADOOP-9540) | *Minor* | **Expose the InMemoryS3 and S3N FilesystemStores implementations for Unit testing.**
---

* [HADOOP-9457](https://issues.apache.org/jira/browse/HADOOP-9457) | *Minor* | **add an SCM-ignored XML filename to keep secrets in (auth-keys.xml?)**
---

* [HADOOP-8944](https://issues.apache.org/jira/browse/HADOOP-8944) | *Trivial* | **Shell command fs -count should include human readable option**

Implements -h option for fs -count to show file sizes in human readable format. Additionally, ContentSummary.getHeader() now returns a different string that is incompatible with previous releases.

---

* [HADOOP-8896](https://issues.apache.org/jira/browse/HADOOP-8896) | *Trivial* | **Javadoc points to Wrong Reader and Writer classes in SequenceFile**
---

* [HADOOP-8815](https://issues.apache.org/jira/browse/HADOOP-8815) | *Minor* | **RandomDatum overrides equals(Object) but no hashCode()**
---

* [HADOOP-8808](https://issues.apache.org/jira/browse/HADOOP-8808) | *Major* | **Update FsShell documentation to mention deprecation of some of the commands, and mention alternatives**
---

* [HADOOP-8158](https://issues.apache.org/jira/browse/HADOOP-8158) | *Major* | **Interrupting hadoop fs -put from the command line causes a LeaseExpiredException**
---

* [HADOOP-8069](https://issues.apache.org/jira/browse/HADOOP-8069) | *Major* | **Enable TCP\_NODELAY by default for IPC**

This change enables the TCP\_NODELAY flag for all Hadoop IPC connections, hence bypassing TCP Nagling. Nagling interacts poorly with TCP delayed ACKs especially for request-response protocols.

---

* [HADOOP-7664](https://issues.apache.org/jira/browse/HADOOP-7664) | *Minor* | **o.a.h.conf.Configuration complains of overriding final parameter even if the value with which its attempting to override is the same.**


