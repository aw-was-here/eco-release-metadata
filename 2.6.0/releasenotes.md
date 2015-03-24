# Hadoop  2.6.0 Release Notes

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
---

* [HDFS-7391](https://issues.apache.org/jira/browse/HDFS-7391) | *Blocker* | **Renable SSLv2Hello in HttpFS**
---

* [HDFS-7387](https://issues.apache.org/jira/browse/HDFS-7387) | *Critical* | **NFS may only do partial commit due to a race between COMMIT and write**
---

* [HDFS-7385](https://issues.apache.org/jira/browse/HDFS-7385) | *Blocker* | **ThreadLocal used in FSEditLog class causes FSImage permission mess up**
---

* [HDFS-7383](https://issues.apache.org/jira/browse/HDFS-7383) | *Major* | **DataNode.requestShortCircuitFdsForRead may throw NullPointerException**
---

* [HDFS-7382](https://issues.apache.org/jira/browse/HDFS-7382) | *Minor* | **DataNode in secure mode may throw NullPointerException if client connects before DataNode registers itself with NameNode.**
---

* [HDFS-7379](https://issues.apache.org/jira/browse/HDFS-7379) | *Minor* | **TestBalancer#testBalancerWithRamDisk creates test files incorrectly**
---

* [HDFS-7367](https://issues.apache.org/jira/browse/HDFS-7367) | *Major* | **HDFS short-circuit read cannot negotiate shared memory slot and file descriptors when SASL is enabled on DataTransferProtocol.**
---

* [HDFS-7364](https://issues.apache.org/jira/browse/HDFS-7364) | *Minor* | **Balancer always shows zero Bytes Already Moved**
---

* [HDFS-7359](https://issues.apache.org/jira/browse/HDFS-7359) | *Major* | **NameNode in secured HA cluster fails to start if dfs.namenode.secondary.http-address cannot be interpreted as a network address.**
---

* [HDFS-7355](https://issues.apache.org/jira/browse/HDFS-7355) | *Trivial* | **TestDataNodeVolumeFailure#testUnderReplicationAfterVolFailure fails on Windows, because we cannot deny access to the file owner.**
---

* [HDFS-7340](https://issues.apache.org/jira/browse/HDFS-7340) | *Major* | **make rollingUpgrade start/finalize idempotent**
---

* [HDFS-7334](https://issues.apache.org/jira/browse/HDFS-7334) | *Minor* | **Fix periodic failures of TestCheckpoint#testTooManyEditReplayFailures**
---

* [HDFS-7328](https://issues.apache.org/jira/browse/HDFS-7328) | *Trivial* | **TestTraceAdmin assumes Unix line endings.**
---

* [HDFS-7313](https://issues.apache.org/jira/browse/HDFS-7313) | *Major* | **Support optional configuration of AES cipher suite on DataTransferProtocol.**
---

* [HDFS-7309](https://issues.apache.org/jira/browse/HDFS-7309) | *Minor* | **XMLUtils.mangleXmlString doesn't seem to handle less than sign**
---

* [HDFS-7305](https://issues.apache.org/jira/browse/HDFS-7305) | *Minor* | **NPE seen in wbhdfs FS while running SLive**
---

* [HDFS-7300](https://issues.apache.org/jira/browse/HDFS-7300) | *Critical* | **The getMaxNodesPerRack() method in BlockPlacementPolicyDefault is flawed**
---

* [HDFS-7296](https://issues.apache.org/jira/browse/HDFS-7296) | *Minor* | **HdfsConstants#MEMORY\_STORAGE\_POLICY\_ID and HdfsConstants#MEMORY\_STORAGE\_POLICY\_ID are missing in branch-2**
---

* [HDFS-7291](https://issues.apache.org/jira/browse/HDFS-7291) | *Major* | **Persist in-memory replicas with appropriate unbuffered copy API on POSIX and Windows**
---

* [HDFS-7287](https://issues.apache.org/jira/browse/HDFS-7287) | *Major* | **The OfflineImageViewer (OIV) can output invalid XML depending on the filename**
---

* [HDFS-7276](https://issues.apache.org/jira/browse/HDFS-7276) | *Major* | **Limit the number of byte arrays used by DFSOutputStream**

The following configuration properties are added.

- dfs.client.write.byte-array-manager.enabled:
for enabling/disabling byte array manger.  Default is false.

- dfs.client.write.byte-array-manager.count-threshold:
The count threshold for each array length so that a manager is created only after the allocation count exceeds the threshold.  In other words, the particular array length is not managed until the allocation count exceeds the threshold.  Default is 128.

- dfs.client.write.byte-array-manager.count-limit:
The maximum number of arrays allowed for each array length.  Default is 2048.

- dfs.client.write.byte-array-manager.count-reset-time-period-ms:
The time period in milliseconds that the allocation count for each array length is reset to zero if there is no increment.  Default is 10,000ms, i.e. 10 seconds.

---

* [HDFS-7274](https://issues.apache.org/jira/browse/HDFS-7274) | *Blocker* | **Disable SSLv3 in HttpFS**
---

* [HDFS-7260](https://issues.apache.org/jira/browse/HDFS-7260) | *Minor* | **Make DFSOutputStream.MAX\_PACKETS configurable**
---

* [HDFS-7259](https://issues.apache.org/jira/browse/HDFS-7259) | *Major* | **Unresponseive NFS mount point due to deferred COMMIT response**
---

* [HDFS-7243](https://issues.apache.org/jira/browse/HDFS-7243) | *Major* | **HDFS concat operation should not be allowed in Encryption Zone**
---

* [HDFS-7237](https://issues.apache.org/jira/browse/HDFS-7237) | *Minor* | **namenode -rollingUpgrade throws ArrayIndexOutOfBoundsException**
---

* [HDFS-7236](https://issues.apache.org/jira/browse/HDFS-7236) | *Major* | **Fix TestOpenFilesWithSnapshot#testOpenFilesWithMultipleSnapshots**
---

* [HDFS-7233](https://issues.apache.org/jira/browse/HDFS-7233) | *Major* | **NN logs unnecessary org.apache.hadoop.hdfs.protocol.UnresolvedPathException**
---

* [HDFS-7230](https://issues.apache.org/jira/browse/HDFS-7230) | *Major* | **Add rolling downgrade documentation**
---

* [HDFS-7228](https://issues.apache.org/jira/browse/HDFS-7228) | *Major* | **Add an SSD policy into the default BlockStoragePolicySuite**
---

* [HDFS-7226](https://issues.apache.org/jira/browse/HDFS-7226) | *Major* | **TestDNFencing.testQueueingWithAppend failed often in latest test**
---

* [HDFS-7221](https://issues.apache.org/jira/browse/HDFS-7221) | *Minor* | **TestDNFencingWithReplication fails consistently**
---

* [HDFS-7218](https://issues.apache.org/jira/browse/HDFS-7218) | *Minor* | **FSNamesystem ACL operations should write to audit log on failure**
---

* [HDFS-7217](https://issues.apache.org/jira/browse/HDFS-7217) | *Major* | **Better batching of IBRs**
---

* [HDFS-7215](https://issues.apache.org/jira/browse/HDFS-7215) | *Minor* | **Add JvmPauseMonitor to NFS gateway**
---

* [HDFS-7208](https://issues.apache.org/jira/browse/HDFS-7208) | *Major* | **NN doesn't schedule replication when a DN storage fails**
---

* [HDFS-7199](https://issues.apache.org/jira/browse/HDFS-7199) | *Critical* | **DFSOutputStream should not silently drop data if DataStreamer crashes with an unchecked exception**
---

* [HDFS-7195](https://issues.apache.org/jira/browse/HDFS-7195) | *Major* | **Update user doc of secure mode about Datanodes don't require root or jsvc**
---

* [HDFS-7185](https://issues.apache.org/jira/browse/HDFS-7185) | *Major* | **The active NameNode will not accept an fsimage sent from the standby during rolling upgrade**
---

* [HDFS-7181](https://issues.apache.org/jira/browse/HDFS-7181) | *Critical* | **Remove incorrect precondition check on key length in FileEncryptionInfo**
---

* [HDFS-7180](https://issues.apache.org/jira/browse/HDFS-7180) | *Critical* | **NFSv3 gateway frequently gets stuck due to GC**
---

* [HDFS-7179](https://issues.apache.org/jira/browse/HDFS-7179) | *Critical* | **DFSClient should instantiate a KeyProvider, not a KeyProviderCryptoExtension**
---

* [HDFS-7178](https://issues.apache.org/jira/browse/HDFS-7178) | *Major* | **Additional unit test for replica write with full disk**
---

* [HDFS-7176](https://issues.apache.org/jira/browse/HDFS-7176) | *Minor* | **The namenode usage message doesn't include "-rollingupgrade started"**
---

* [HDFS-7172](https://issues.apache.org/jira/browse/HDFS-7172) | *Trivial* | **Test data files may be checked out of git with incorrect line endings, causing test failures in TestHDFSCLI.**
---

* [HDFS-7171](https://issues.apache.org/jira/browse/HDFS-7171) | *Major* | **Fix Jenkins failures in HDFS-6581 branch**
---

* [HDFS-7169](https://issues.apache.org/jira/browse/HDFS-7169) | *Minor* | **Fix a findbugs warning in ReplaceDatanodeOnFailure**
---

* [HDFS-7167](https://issues.apache.org/jira/browse/HDFS-7167) | *Major* | **NPE while running Mover if the given path is for a file**
---

* [HDFS-7162](https://issues.apache.org/jira/browse/HDFS-7162) | *Major* | **Wrong path when deleting through fuse-dfs a file which already exists in trash**
---

* [HDFS-7159](https://issues.apache.org/jira/browse/HDFS-7159) | *Major* | **Use block storage policy to set lazy persist preference**
---

* [HDFS-7158](https://issues.apache.org/jira/browse/HDFS-7158) | *Major* | **Reduce the memory usage of WebImageViewer**
---

* [HDFS-7157](https://issues.apache.org/jira/browse/HDFS-7157) | *Major* | **Using Time.now() for recording start/end time of reconfiguration tasks**
---

* [HDFS-7156](https://issues.apache.org/jira/browse/HDFS-7156) | *Major* | **Fsck documentation is outdated.**
---

* [HDFS-7155](https://issues.apache.org/jira/browse/HDFS-7155) | *Major* | **Bugfix in createLocatedFileStatus caused by bad merge**
---

* [HDFS-7154](https://issues.apache.org/jira/browse/HDFS-7154) | *Major* | **Fix returning value of starting reconfiguration task**
---

* [HDFS-7153](https://issues.apache.org/jira/browse/HDFS-7153) | *Major* | **Add storagePolicy to NN edit log during file creation**
---

* [HDFS-7148](https://issues.apache.org/jira/browse/HDFS-7148) | *Major* | **TestEncryptionZones#testIsEncryptedMethod fails on branch-2 after archival storage merge**
---

* [HDFS-7147](https://issues.apache.org/jira/browse/HDFS-7147) | *Blocker* | **Update archival storage user documentation**
---

* [HDFS-7144](https://issues.apache.org/jira/browse/HDFS-7144) | *Minor* | **Fix findbugs warnings in RamDiskReplicaTracker**
---

* [HDFS-7143](https://issues.apache.org/jira/browse/HDFS-7143) | *Major* | **Fix findbugs warnings in HDFS-6581 branch**
---

* [HDFS-7140](https://issues.apache.org/jira/browse/HDFS-7140) | *Minor* | **Add a tool to list all the existing block storage policies**
---

* [HDFS-7139](https://issues.apache.org/jira/browse/HDFS-7139) | *Minor* | **Unit test for creating encryption zone on root path**
---

* [HDFS-7138](https://issues.apache.org/jira/browse/HDFS-7138) | *Major* | **Fix hftp to work with encryption**
---

* [HDFS-7132](https://issues.apache.org/jira/browse/HDFS-7132) | *Minor* | **hdfs namenode -metadataVersion command does not honor configured name dirs**
---

* [HDFS-7131](https://issues.apache.org/jira/browse/HDFS-7131) | *Major* | **During HA upgrade, JournalNode should create a new committedTxnId file in the current directory**
---

* [HDFS-7130](https://issues.apache.org/jira/browse/HDFS-7130) | *Major* | **TestDataTransferKeepalive fails intermittently on Windows.**
---

* [HDFS-7129](https://issues.apache.org/jira/browse/HDFS-7129) | *Major* | **Metrics to track usage of memory for writes**
---

* [HDFS-7128](https://issues.apache.org/jira/browse/HDFS-7128) | *Major* | **Decommission slows way down when it gets towards the end**
---

* [HDFS-7127](https://issues.apache.org/jira/browse/HDFS-7127) | *Major* | **TestLeaseRecovery leaks MiniDFSCluster instances.**
---

* [HDFS-7126](https://issues.apache.org/jira/browse/HDFS-7126) | *Minor* | **TestEncryptionZonesWithHA assumes Unix path separator for KMS key store path**
---

* [HDFS-7124](https://issues.apache.org/jira/browse/HDFS-7124) | *Minor* | **Remove EncryptionZoneManager.NULL\_EZ**
---

* [HDFS-7122](https://issues.apache.org/jira/browse/HDFS-7122) | *Blocker* | **Use of ThreadLocal<Random> results in poor block placement**
---

* [HDFS-7119](https://issues.apache.org/jira/browse/HDFS-7119) | *Minor* | **Split error checks in AtomicFileOutputStream#close into separate conditions to improve diagnostics.**
---

* [HDFS-7118](https://issues.apache.org/jira/browse/HDFS-7118) | *Major* | **Improve diagnostics on storage directory rename operations by using NativeIO#renameTo in Storage#rename.**
---

* [HDFS-7115](https://issues.apache.org/jira/browse/HDFS-7115) | *Major* | **TestEncryptionZones assumes Unix path separator for KMS key store path**
---

* [HDFS-7112](https://issues.apache.org/jira/browse/HDFS-7112) | *Major* | **LazyWriter should use either async IO or one thread per physical disk**
---

* [HDFS-7111](https://issues.apache.org/jira/browse/HDFS-7111) | *Trivial* | **TestSafeMode assumes Unix line endings in safe mode tip.**
---

* [HDFS-7110](https://issues.apache.org/jira/browse/HDFS-7110) | *Minor* | **Skip tests related to short-circuit read on platforms that do not currently implement short-circuit read.**
---

* [HDFS-7109](https://issues.apache.org/jira/browse/HDFS-7109) | *Minor* | **TestDataStorage does not release file locks between tests.**
---

* [HDFS-7108](https://issues.apache.org/jira/browse/HDFS-7108) | *Major* | **Fix unit test failures in SimulatedFsDataset**
---

* [HDFS-7107](https://issues.apache.org/jira/browse/HDFS-7107) | *Trivial* | **Avoid Findbugs warning for synchronization on AbstractNNFailoverProxyProvider#fallbackToSimpleAuth.**
---

* [HDFS-7106](https://issues.apache.org/jira/browse/HDFS-7106) | *Major* | **Reconfiguring DataNode volumes does not release the lock files in removed volumes.**
---

* [HDFS-7105](https://issues.apache.org/jira/browse/HDFS-7105) | *Minor* | **Fix TestJournalNode#testFailToStartWithBadConfig to match log output change**
---

* [HDFS-7104](https://issues.apache.org/jira/browse/HDFS-7104) | *Minor* | **Fix and clarify INodeInPath getter functions**
---

* [HDFS-7100](https://issues.apache.org/jira/browse/HDFS-7100) | *Major* | **Make eviction scheme pluggable**
---

* [HDFS-7096](https://issues.apache.org/jira/browse/HDFS-7096) | *Minor* | **Fix TestRpcProgramNfs3 to use DFS\_ENCRYPTION\_KEY\_PROVIDER\_URI**
---

* [HDFS-7095](https://issues.apache.org/jira/browse/HDFS-7095) | *Minor* | **TestStorageMover often fails in Jenkins**
---

* [HDFS-7093](https://issues.apache.org/jira/browse/HDFS-7093) | *Major* | **Add config key to restrict setStoragePolicy**
---

* [HDFS-7091](https://issues.apache.org/jira/browse/HDFS-7091) | *Minor* | **Add forwarding constructor for INodeFile for existing callers**

Thanks Nicholas! Revised title and committed to the feature branch.

---

* [HDFS-7090](https://issues.apache.org/jira/browse/HDFS-7090) | *Major* | **Use unbuffered writes when persisting in-memory replicas**
---

* [HDFS-7084](https://issues.apache.org/jira/browse/HDFS-7084) | *Minor* | **FsDatasetImpl#copyBlockFiles debug log can be improved**
---

* [HDFS-7081](https://issues.apache.org/jira/browse/HDFS-7081) | *Major* | **Add new DistributedFileSystem API for getting all the existing storage policies**
---

* [HDFS-7080](https://issues.apache.org/jira/browse/HDFS-7080) | *Major* | **Fix finalize and upgrade unit test failures**
---

* [HDFS-7079](https://issues.apache.org/jira/browse/HDFS-7079) | *Major* | **Few more unit test fixes for HDFS-6581**
---

* [HDFS-7078](https://issues.apache.org/jira/browse/HDFS-7078) | *Major* | **Fix listEZs to work correctly with snapshots**
---

* [HDFS-7077](https://issues.apache.org/jira/browse/HDFS-7077) | *Major* | **Separate CipherSuite from crypto protocol version**
---

* [HDFS-7075](https://issues.apache.org/jira/browse/HDFS-7075) | *Major* | **hadoop-fuse-dfs fails because it cannot find JavaKeyStoreProvider$Factory**
---

* [HDFS-7073](https://issues.apache.org/jira/browse/HDFS-7073) | *Major* | **Allow falling back to a non-SASL connection on DataTransferProtocol in several edge cases.**
---

* [HDFS-7066](https://issues.apache.org/jira/browse/HDFS-7066) | *Minor* | **LazyWriter#evictBlocks misses a null check for replicaState**
---

* [HDFS-7065](https://issues.apache.org/jira/browse/HDFS-7065) | *Critical* | **Pipeline close recovery race can cause block corruption**
---

* [HDFS-7064](https://issues.apache.org/jira/browse/HDFS-7064) | *Major* | **Fix unit test failures in HDFS-6581 branch**
---

* [HDFS-7061](https://issues.apache.org/jira/browse/HDFS-7061) | *Minor* | **Add test to verify encryption zone creation after NameNode restart without saving namespace**
---

* [HDFS-7059](https://issues.apache.org/jira/browse/HDFS-7059) | *Minor* | **HAadmin transtionToActive with forceActive option can show confusing message.**
---

* [HDFS-7051](https://issues.apache.org/jira/browse/HDFS-7051) | *Minor* | **TestDataNodeRollingUpgrade#isBlockFileInPrevious assumes Unix file path separator.**
---

* [HDFS-7049](https://issues.apache.org/jira/browse/HDFS-7049) | *Minor* | **TestByteRangeInputStream.testPropagatedClose fails and throw NPE on branch-2**
---

* [HDFS-7047](https://issues.apache.org/jira/browse/HDFS-7047) | *Major* | **Expose FileStatus#isEncrypted in libhdfs**
---

* [HDFS-7046](https://issues.apache.org/jira/browse/HDFS-7046) | *Critical* | **HA NN can NPE upon transition to active**

Thanks for the reviews, gentlemen. It's been committed to trunk and branch-2.

---

* [HDFS-7045](https://issues.apache.org/jira/browse/HDFS-7045) | *Critical* | **Fix NameNode deadlock when opening file under /.reserved path**
---

* [HDFS-7042](https://issues.apache.org/jira/browse/HDFS-7042) | *Blocker* | **Upgrade fails for Windows HA cluster due to file locks held during rename in JournalNode.**
---

* [HDFS-7032](https://issues.apache.org/jira/browse/HDFS-7032) | *Major* | **Add WebHDFS support for reading and writing to encryption zones**
---

* [HDFS-7025](https://issues.apache.org/jira/browse/HDFS-7025) | *Major* | **HDFS Credential Provider related  Unit Test Failure**
---

* [HDFS-7006](https://issues.apache.org/jira/browse/HDFS-7006) | *Major* | **Test encryption zones with KMS**
---

* [HDFS-7005](https://issues.apache.org/jira/browse/HDFS-7005) | *Critical* | **DFS input streams do not timeout**
---

* [HDFS-7004](https://issues.apache.org/jira/browse/HDFS-7004) | *Major* | **Update KeyProvider instantiation to create by URI**
---

* [HDFS-7003](https://issues.apache.org/jira/browse/HDFS-7003) | *Major* | **Add NFS Gateway support for reading and writing to encryption zones**
---

* [HDFS-7001](https://issues.apache.org/jira/browse/HDFS-7001) | *Minor* | **Tests in TestTracing should not depend on the order of execution**
---

* [HDFS-6996](https://issues.apache.org/jira/browse/HDFS-6996) | *Major* | **SnapshotDiff report can hit IndexOutOfBoundsException when there are nested renamed directory/file**
---

* [HDFS-6995](https://issues.apache.org/jira/browse/HDFS-6995) | *Major* | **Block should be placed in the client's 'rack-local' node if 'client-local' node is not available**
---

* [HDFS-6991](https://issues.apache.org/jira/browse/HDFS-6991) | *Major* | **Notify NN of evicted block before deleting it from RAM disk**
---

* [HDFS-6990](https://issues.apache.org/jira/browse/HDFS-6990) | *Major* | **Add unit test for evict/delete RAM\_DISK block with open handle**
---

* [HDFS-6988](https://issues.apache.org/jira/browse/HDFS-6988) | *Major* | **Improve HDFS-6581 eviction configuration**
---

* [HDFS-6987](https://issues.apache.org/jira/browse/HDFS-6987) | *Major* | **Move CipherSuite xattr information up to the encryption zone root**
---

* [HDFS-6986](https://issues.apache.org/jira/browse/HDFS-6986) | *Major* | **DistributedFileSystem must get delegation tokens from configured KeyProvider**
---

* [HDFS-6981](https://issues.apache.org/jira/browse/HDFS-6981) | *Major* | **Fix DN upgrade with layout version change**
---

* [HDFS-6979](https://issues.apache.org/jira/browse/HDFS-6979) | *Minor* | **hdfs.dll does not produce .pdb files**
---

* [HDFS-6978](https://issues.apache.org/jira/browse/HDFS-6978) | *Major* | **Directory scanner should correctly reconcile blocks on RAM disk**
---

* [HDFS-6977](https://issues.apache.org/jira/browse/HDFS-6977) | *Major* | **Delete all copies when a block is deleted from the block space**
---

* [HDFS-6972](https://issues.apache.org/jira/browse/HDFS-6972) | *Major* | **TestRefreshUserMappings.testRefreshSuperUserGroupsConfiguration doesn't decode url correctly**
---

* [HDFS-6970](https://issues.apache.org/jira/browse/HDFS-6970) | *Major* | **Move startFile EDEK retries to the DFSClient**
---

* [HDFS-6966](https://issues.apache.org/jira/browse/HDFS-6966) | *Major* | **Add additional unit tests for encryption zones**
---

* [HDFS-6965](https://issues.apache.org/jira/browse/HDFS-6965) | *Major* | **NN continues to issue block locations for DNs with full disks**
---

* [HDFS-6960](https://issues.apache.org/jira/browse/HDFS-6960) | *Major* | **Bugfix in LazyWriter, fix test case and some refactoring**
---

* [HDFS-6959](https://issues.apache.org/jira/browse/HDFS-6959) | *Minor* | **Make the HDFS home directory location customizable.**
---

* [HDFS-6956](https://issues.apache.org/jira/browse/HDFS-6956) | *Major* | **Allow dynamically changing the tracing level in Hadoop servers**
---

* [HDFS-6954](https://issues.apache.org/jira/browse/HDFS-6954) | *Major* | **With crypto, no native lib systems are too verbose**
---

* [HDFS-6951](https://issues.apache.org/jira/browse/HDFS-6951) | *Major* | **Correctly persist raw namespace xattrs to edit log and fsimage**
---

* [HDFS-6950](https://issues.apache.org/jira/browse/HDFS-6950) | *Major* | **Add Additional unit tests for HDFS-6581**
---

* [HDFS-6948](https://issues.apache.org/jira/browse/HDFS-6948) | *Major* | **DN rejects blocks if it has older UC block**
---

* [HDFS-6943](https://issues.apache.org/jira/browse/HDFS-6943) | *Minor* | **Improve NN allocateBlock log to include replicas' datanode IPs**
---

* [HDFS-6942](https://issues.apache.org/jira/browse/HDFS-6942) | *Trivial* | **Fix typos in log messages**
---

* [HDFS-6934](https://issues.apache.org/jira/browse/HDFS-6934) | *Major* | **Move checksum computation off the hot path when writing to RAM disk**
---

* [HDFS-6932](https://issues.apache.org/jira/browse/HDFS-6932) | *Major* | **Balancer and Mover tools should ignore replicas on RAM\_DISK**
---

* [HDFS-6931](https://issues.apache.org/jira/browse/HDFS-6931) | *Major* | **Move lazily persisted replicas to finalized directory on DN startup**
---

* [HDFS-6930](https://issues.apache.org/jira/browse/HDFS-6930) | *Major* | **Improve replica eviction from RAM disk**
---

* [HDFS-6929](https://issues.apache.org/jira/browse/HDFS-6929) | *Major* | **NN periodically unlinks lazy persist files with missing replicas from namespace**
---

* [HDFS-6928](https://issues.apache.org/jira/browse/HDFS-6928) | *Major* | **'hdfs put' command should accept lazyPersist flag for testing**
---

* [HDFS-6927](https://issues.apache.org/jira/browse/HDFS-6927) | *Major* | **Add unit tests**
---

* [HDFS-6926](https://issues.apache.org/jira/browse/HDFS-6926) | *Major* | **DN support for saving replicas to persistent storage and evicting in-memory replicas**
---

* [HDFS-6925](https://issues.apache.org/jira/browse/HDFS-6925) | *Major* | **DataNode should attempt to place replicas on transient storage first if lazyPersist flag is received**
---

* [HDFS-6924](https://issues.apache.org/jira/browse/HDFS-6924) | *Major* | **Add new RAM\_DISK storage type**
---

* [HDFS-6923](https://issues.apache.org/jira/browse/HDFS-6923) | *Major* | **Propagate LazyPersist flag to DNs via DataTransferProtocol**
---

* [HDFS-6921](https://issues.apache.org/jira/browse/HDFS-6921) | *Major* | **Add LazyPersist flag to FileStatus**
---

* [HDFS-6912](https://issues.apache.org/jira/browse/HDFS-6912) | *Minor* | **SharedFileDescriptorFactory should not allocate sparse files**
---

* [HDFS-6908](https://issues.apache.org/jira/browse/HDFS-6908) | *Critical* | **incorrect snapshot directory diff generated by snapshot deletion**
---

* [HDFS-6905](https://issues.apache.org/jira/browse/HDFS-6905) | *Blocker* | **fs-encryption merge triggered release audit failures**
---

* [HDFS-6904](https://issues.apache.org/jira/browse/HDFS-6904) | *Critical* | **YARN unable to renew delegation token fetched via webhdfs due to incorrect service port**
---

* [HDFS-6902](https://issues.apache.org/jira/browse/HDFS-6902) | *Minor* | **FileWriter should be closed in finally block in BlockReceiver#receiveBlock()**
---

* [HDFS-6899](https://issues.apache.org/jira/browse/HDFS-6899) | *Major* | **Allow changing MiniDFSCluster volumes per DN and capacity per volume**
---

* [HDFS-6894](https://issues.apache.org/jira/browse/HDFS-6894) | *Major* | **Add XDR parser method for each NFS response**
---

* [HDFS-6892](https://issues.apache.org/jira/browse/HDFS-6892) | *Major* | **Add XDR packaging method for each NFS request**
---

* [HDFS-6890](https://issues.apache.org/jira/browse/HDFS-6890) | *Major* | **NFS readdirplus doesn't return dotdot attributes**
---

* [HDFS-6886](https://issues.apache.org/jira/browse/HDFS-6886) | *Critical* | **Use single editlog record for creating file + overwrite.**
---

* [HDFS-6880](https://issues.apache.org/jira/browse/HDFS-6880) | *Major* | **Adding tracing to DataNode data transfer protocol**
---

* [HDFS-6879](https://issues.apache.org/jira/browse/HDFS-6879) | *Major* | **Adding tracing to Hadoop RPC**
---

* [HDFS-6878](https://issues.apache.org/jira/browse/HDFS-6878) | *Minor* | **Change MiniDFSCluster to support StorageType configuration for individual directories**
---

* [HDFS-6870](https://issues.apache.org/jira/browse/HDFS-6870) | *Major* | **Blocks and INodes could leak for Rename with overwrite flag**
---

* [HDFS-6868](https://issues.apache.org/jira/browse/HDFS-6868) | *Major* | **portmap and nfs3 are documented as hadoop commands instead of hdfs**
---

* [HDFS-6865](https://issues.apache.org/jira/browse/HDFS-6865) | *Major* | **Byte array native checksumming on client side (HDFS changes)**
---

* [HDFS-6862](https://issues.apache.org/jira/browse/HDFS-6862) | *Major* | **Add missing timeout annotations to tests**
---

* [HDFS-6858](https://issues.apache.org/jira/browse/HDFS-6858) | *Minor* | **Allow dfs.data.transfer.saslproperties.resolver.class default to hadoop.security.saslproperties.resolver.class**
---

* [HDFS-6851](https://issues.apache.org/jira/browse/HDFS-6851) | *Major* | **Refactor EncryptionZoneWithId and EncryptionZone**
---

* [HDFS-6850](https://issues.apache.org/jira/browse/HDFS-6850) | *Minor* | **Move NFS out of order write unit tests into TestWrites class**
---

* [HDFS-6849](https://issues.apache.org/jira/browse/HDFS-6849) | *Major* | **Replace HttpFS custom proxyuser handling with common implementation**
---

* [HDFS-6848](https://issues.apache.org/jira/browse/HDFS-6848) | *Minor* | **Lack of synchronization on access to datanodeUuid in DataStorage#format()**
---

* [HDFS-6843](https://issues.apache.org/jira/browse/HDFS-6843) | *Major* | **Create FileStatus isEncrypted() method**
---

* [HDFS-6840](https://issues.apache.org/jira/browse/HDFS-6840) | *Critical* | **Clients are always sent to the same datanode when read is off rack**
---

* [HDFS-6838](https://issues.apache.org/jira/browse/HDFS-6838) | *Minor* | **Code cleanup for unnecessary INode replacement**
---

* [HDFS-6837](https://issues.apache.org/jira/browse/HDFS-6837) | *Minor* | **Code cleanup for Balancer and Dispatcher**
---

* [HDFS-6836](https://issues.apache.org/jira/browse/HDFS-6836) | *Major* | **HDFS INFO logging is verbose & uses file appenders**
---

* [HDFS-6831](https://issues.apache.org/jira/browse/HDFS-6831) | *Minor* | **Inconsistency between 'hdfs dfsadmin' and 'hdfs dfsadmin -help'**
---

* [HDFS-6830](https://issues.apache.org/jira/browse/HDFS-6830) | *Major* | **BlockInfo.addStorage fails when DN changes the storage for a block replica**
---

* [HDFS-6829](https://issues.apache.org/jira/browse/HDFS-6829) | *Minor* | **DFSAdmin refreshSuperUserGroupsConfiguration failed in security cluster**
---

* [HDFS-6828](https://issues.apache.org/jira/browse/HDFS-6828) | *Major* | **Separate block replica dispatching from Balancer**
---

* [HDFS-6825](https://issues.apache.org/jira/browse/HDFS-6825) | *Major* | **Edit log corruption due to delayed block removal**
---

* [HDFS-6823](https://issues.apache.org/jira/browse/HDFS-6823) | *Minor* | **dfs.web.authentication.kerberos.principal shows up in logs for insecure HDFS**
---

* [HDFS-6812](https://issues.apache.org/jira/browse/HDFS-6812) | *Minor* | **Remove addBlock and replaceBlock from DatanodeDescriptor**
---

* [HDFS-6810](https://issues.apache.org/jira/browse/HDFS-6810) | *Minor* | **StorageReport array is initialized with wrong size in DatanodeDescriptor#getStorageReports**
---

* [HDFS-6809](https://issues.apache.org/jira/browse/HDFS-6809) | *Minor* | **Move some Balancer's inner classes to standalone classes**
---

* [HDFS-6808](https://issues.apache.org/jira/browse/HDFS-6808) | *Major* | **Add command line option to ask DataNode reload configuration.**
---

* [HDFS-6802](https://issues.apache.org/jira/browse/HDFS-6802) | *Major* | **Some tests in TestDFSClientFailover are missing @Test annotation**
---

* [HDFS-6800](https://issues.apache.org/jira/browse/HDFS-6800) | *Major* | **Support Datanode layout changes with rolling upgrade**
---

* [HDFS-6799](https://issues.apache.org/jira/browse/HDFS-6799) | *Minor* | **The invalidate method in SimulatedFSDataset.java failed to remove (invalidate) blocks from the file system.**
---

* [HDFS-6798](https://issues.apache.org/jira/browse/HDFS-6798) | *Major* | **Add test case for incorrect data node condition during balancing**
---

* [HDFS-6797](https://issues.apache.org/jira/browse/HDFS-6797) | *Major* | **DataNode logs wrong layoutversion during upgrade**
---

* [HDFS-6796](https://issues.apache.org/jira/browse/HDFS-6796) | *Minor* | **Improving the argument check during balancer command line parsing**
---

* [HDFS-6794](https://issues.apache.org/jira/browse/HDFS-6794) | *Minor* | **Update BlockManager methods to use DatanodeStorageInfo where possible**
---

* [HDFS-6791](https://issues.apache.org/jira/browse/HDFS-6791) | *Major* | **A block could remain under replicated if all of its replicas are on decommissioned nodes**
---

* [HDFS-6790](https://issues.apache.org/jira/browse/HDFS-6790) | *Major* | **DFSUtil Should Use configuration.getPassword for SSL passwords**
---

* [HDFS-6789](https://issues.apache.org/jira/browse/HDFS-6789) | *Major* | **TestDFSClientFailover.testFileContextDoesntDnsResolveLogicalURI and TestDFSClientFailover.testDoesntDnsResolveLogicalURI failing on jdk7**
---

* [HDFS-6788](https://issues.apache.org/jira/browse/HDFS-6788) | *Major* | **Improve synchronization in BPOfferService with read write lock**
---

* [HDFS-6787](https://issues.apache.org/jira/browse/HDFS-6787) | *Major* | **Remove duplicate code in FSDirectory#unprotectedConcat**
---

* [HDFS-6783](https://issues.apache.org/jira/browse/HDFS-6783) | *Major* | **Fix HDFS CacheReplicationMonitor rescan logic**
---

* [HDFS-6781](https://issues.apache.org/jira/browse/HDFS-6781) | *Major* | **Separate HDFS commands from CommandsManual.apt.vm**
---

* [HDFS-6779](https://issues.apache.org/jira/browse/HDFS-6779) | *Minor* | **Add missing version subcommand for hdfs**
---

* [HDFS-6778](https://issues.apache.org/jira/browse/HDFS-6778) | *Major* | **The extended attributes javadoc should simply refer to the user docs**
---

* [HDFS-6777](https://issues.apache.org/jira/browse/HDFS-6777) | *Major* | **Supporting consistent edit log reads when in-progress edit log segments are included**
---

* [HDFS-6776](https://issues.apache.org/jira/browse/HDFS-6776) | *Major* | **Using distcp to copy data between insecure and secure cluster via webdhfs doesn't work**
---

* [HDFS-6774](https://issues.apache.org/jira/browse/HDFS-6774) | *Major* | **Make FsDataset and DataStore support removing volumes.**
---

* [HDFS-6773](https://issues.apache.org/jira/browse/HDFS-6773) | *Major* | **MiniDFSCluster should skip edit log fsync by default**
---

* [HDFS-6772](https://issues.apache.org/jira/browse/HDFS-6772) | *Major* | **Get DN storages out of blockContentsStale state faster after NN restarts**
---

* [HDFS-6768](https://issues.apache.org/jira/browse/HDFS-6768) | *Major* | **Fix a few unit tests that use hard-coded port numbers**
---

* [HDFS-6758](https://issues.apache.org/jira/browse/HDFS-6758) | *Major* | **block writer should pass the expected block size to DataXceiverServer**
---

* [HDFS-6755](https://issues.apache.org/jira/browse/HDFS-6755) | *Major* | **There is an unnecessary sleep in the code path where DFSOutputStream#close gives up its attempt to contact the namenode**
---

* [HDFS-6754](https://issues.apache.org/jira/browse/HDFS-6754) | *Major* | **TestNamenodeCapacityReport.testXceiverCount may sometimes fail due to lack of retry**
---

* [HDFS-6750](https://issues.apache.org/jira/browse/HDFS-6750) | *Major* | **The DataNode should use its shared memory segment to mark short-circuit replicas that have been unlinked as stale**
---

* [HDFS-6749](https://issues.apache.org/jira/browse/HDFS-6749) | *Major* | **FSNamesystem methods should call resolvePath**
---

* [HDFS-6740](https://issues.apache.org/jira/browse/HDFS-6740) | *Major* | **Make FSDataset support adding data volumes dynamically**
---

* [HDFS-6739](https://issues.apache.org/jira/browse/HDFS-6739) | *Major* | **Add getDatanodeStorageReport to ClientProtocol**
---

* [HDFS-6731](https://issues.apache.org/jira/browse/HDFS-6731) | *Major* | **Run "hdfs zkfc-formatZK" on a server in a non-namenode  will cause a null pointer exception.**
---

* [HDFS-6728](https://issues.apache.org/jira/browse/HDFS-6728) | *Major* | **Dynamically add new volumes to DataStorage, formatted if necessary.**
---

* [HDFS-6727](https://issues.apache.org/jira/browse/HDFS-6727) | *Major* | **Refresh data volumes on DataNode based on configuration changes**
---

* [HDFS-6722](https://issues.apache.org/jira/browse/HDFS-6722) | *Major* | **Display readable last contact time for dead nodes on NN webUI**
---

* [HDFS-6717](https://issues.apache.org/jira/browse/HDFS-6717) | *Minor* | **Jira HDFS-5804 breaks default nfs-gateway behavior for unsecured config**
---

* [HDFS-6715](https://issues.apache.org/jira/browse/HDFS-6715) | *Major* | **webhdfs wont fail over when it gets java.io.IOException: Namenode is in startup mode**
---

* [HDFS-6714](https://issues.apache.org/jira/browse/HDFS-6714) | *Minor* | **TestBlocksScheduledCounter#testBlocksScheduledCounter should shutdown cluster**
---

* [HDFS-6705](https://issues.apache.org/jira/browse/HDFS-6705) | *Major* | **Create an XAttr that disallows the HDFS admin from accessing a file**
---

* [HDFS-6704](https://issues.apache.org/jira/browse/HDFS-6704) | *Minor* | **Fix the command to launch JournalNode in HDFS-HA document**
---

* [HDFS-6702](https://issues.apache.org/jira/browse/HDFS-6702) | *Major* | **DFSClient should create blocks using StorageType**
---

* [HDFS-6701](https://issues.apache.org/jira/browse/HDFS-6701) | *Major* | **Make seed optional in NetworkTopology#sortByDistance**
---

* [HDFS-6700](https://issues.apache.org/jira/browse/HDFS-6700) | *Minor* | **BlockPlacementPolicy shoud choose storage but not datanode for deletion**
---

* [HDFS-6693](https://issues.apache.org/jira/browse/HDFS-6693) | *Major* | **TestDFSAdminWithHA fails on windows**
---

* [HDFS-6690](https://issues.apache.org/jira/browse/HDFS-6690) | *Major* | **Deduplicate xattr names in memory**
---

* [HDFS-6689](https://issues.apache.org/jira/browse/HDFS-6689) | *Major* | **NFS doesn't return correct lookup access for directories**
---

* [HDFS-6685](https://issues.apache.org/jira/browse/HDFS-6685) | *Major* | **Balancer should preserve storage type of replicas**
---

* [HDFS-6678](https://issues.apache.org/jira/browse/HDFS-6678) | *Minor* | **MiniDFSCluster may still be partially running after initialization fails.**
---

* [HDFS-6667](https://issues.apache.org/jira/browse/HDFS-6667) | *Major* | **In HDFS HA mode, Distcp/SLive with webhdfs on secure cluster fails with Client cannot authenticate via:[TOKEN, KERBEROS] error**
---

* [HDFS-6665](https://issues.apache.org/jira/browse/HDFS-6665) | *Major* | **Add tests for XAttrs in combination with viewfs**
---

* [HDFS-6664](https://issues.apache.org/jira/browse/HDFS-6664) | *Trivial* | **HDFS permissions guide documentation states incorrect default group mapping class.**
---

* [HDFS-6655](https://issues.apache.org/jira/browse/HDFS-6655) | *Major* | **Add 'header banner' to 'explorer.html' also in Namenode UI**
---

* [HDFS-6646](https://issues.apache.org/jira/browse/HDFS-6646) | *Major* | **[ HDFS Rolling Upgrade - Shell  ] shutdownDatanode and getDatanodeInfo usage is missed**
---

* [HDFS-6645](https://issues.apache.org/jira/browse/HDFS-6645) | *Minor* | **Add test for successive Snapshots between XAttr modifications**
---

* [HDFS-6643](https://issues.apache.org/jira/browse/HDFS-6643) | *Minor* | **Refactor INodeFile.HeaderFormat and INodeWithAdditionalFields.PermissionStatusFormat**
---

* [HDFS-6640](https://issues.apache.org/jira/browse/HDFS-6640) | *Major* | **[ Web HDFS ] Syntax for MKDIRS, CREATESYMLINK, and SETXATTR are given wrongly(missed webhdfs/v1).).**
---

* [HDFS-6638](https://issues.apache.org/jira/browse/HDFS-6638) | *Major* | **shorten test run time with a smaller retry timeout setting**
---

* [HDFS-6634](https://issues.apache.org/jira/browse/HDFS-6634) | *Major* | **inotify in HDFS**
---

* [HDFS-6630](https://issues.apache.org/jira/browse/HDFS-6630) | *Major* | **Unable to fetch the block information  by Browsing the file system on Namenode UI through IE9**
---

* [HDFS-6627](https://issues.apache.org/jira/browse/HDFS-6627) | *Major* | **Rename DataNode#checkWriteAccess to checkReadAccess.**
---

* [HDFS-6621](https://issues.apache.org/jira/browse/HDFS-6621) | *Major* | **Hadoop Balancer prematurely exits iterations**
---

* [HDFS-6617](https://issues.apache.org/jira/browse/HDFS-6617) | *Minor* | **Flake TestDFSZKFailoverController.testManualFailoverWithDFSHAAdmin due to a long edit log sync op**
---

* [HDFS-6616](https://issues.apache.org/jira/browse/HDFS-6616) | *Minor* | **bestNode shouldn't always return the first DataNode**
---

* [HDFS-6613](https://issues.apache.org/jira/browse/HDFS-6613) | *Minor* | **Improve logging in caching classes**
---

* [HDFS-6609](https://issues.apache.org/jira/browse/HDFS-6609) | *Major* | **Use DirectorySnapshottableFeature to represent a snapshottable directory**
---

* [HDFS-6606](https://issues.apache.org/jira/browse/HDFS-6606) | *Major* | **Optimize HDFS Encrypted Transport performance**

HDFS now supports the option to configure AES encryption for block data transfer.  AES offers improved cryptographic strength and performance over the prior options of 3DES and RC4.

---

* [HDFS-6597](https://issues.apache.org/jira/browse/HDFS-6597) | *Major* | **Add a new option to NN upgrade to terminate the process after upgrade on NN is completed**
---

* [HDFS-6584](https://issues.apache.org/jira/browse/HDFS-6584) | *Major* | **Support Archival Storage**
---

* [HDFS-6582](https://issues.apache.org/jira/browse/HDFS-6582) | *Minor* | **Missing null check in RpcProgramNfs3#read(XDR, SecurityHandler)**
---

* [HDFS-6581](https://issues.apache.org/jira/browse/HDFS-6581) | *Major* | **Write to single replica in memory**
---

* [HDFS-6570](https://issues.apache.org/jira/browse/HDFS-6570) | *Major* | **add api that enables checking if a user has certain permissions on a file**
---

* [HDFS-6569](https://issues.apache.org/jira/browse/HDFS-6569) | *Major* | **OOB message can't be sent to the client when DataNode shuts down for upgrade**
---

* [HDFS-6567](https://issues.apache.org/jira/browse/HDFS-6567) | *Major* | **Normalize the order of public final in HdfsFileStatus**
---

* [HDFS-6544](https://issues.apache.org/jira/browse/HDFS-6544) | *Minor* | **Broken Link for GFS in package.html**
---

* [HDFS-6534](https://issues.apache.org/jira/browse/HDFS-6534) | *Minor* | **Fix build on macosx: HDFS parts**
---

* [HDFS-6519](https://issues.apache.org/jira/browse/HDFS-6519) | *Major* | **Document oiv\_legacy command**
---

* [HDFS-6517](https://issues.apache.org/jira/browse/HDFS-6517) | *Major* | **Remove hadoop-metrics2.properties from hdfs project**
---

* [HDFS-6511](https://issues.apache.org/jira/browse/HDFS-6511) | *Minor* | **BlockManager#computeInvalidateWork() could do nothing**
---

* [HDFS-6506](https://issues.apache.org/jira/browse/HDFS-6506) | *Major* | **Newly moved block replica been invalidated and deleted in TestBalancer**
---

* [HDFS-6482](https://issues.apache.org/jira/browse/HDFS-6482) | *Major* | **Use block ID-based block layout on datanodes**

The directory structure for finalized replicas on DNs has been changed. Now, the directory that a finalized replica goes in is determined uniquely by its ID. Specifically, we use a two-level directory structure, with the 24th through 17th bits identifying the correct directory at the first level and the 16th through 8th bits identifying the correct directory at the second level.

---

* [HDFS-6478](https://issues.apache.org/jira/browse/HDFS-6478) | *Major* | **RemoteException can't be retried properly for non-HA scenario**
---

* [HDFS-6456](https://issues.apache.org/jira/browse/HDFS-6456) | *Major* | **NFS should throw error for invalid entry in dfs.nfs.exports.allowed.hosts**
---

* [HDFS-6455](https://issues.apache.org/jira/browse/HDFS-6455) | *Major* | **NFS: Exception should be added in NFS log for invalid separator in nfs.exports.allowed.hosts**
---

* [HDFS-6451](https://issues.apache.org/jira/browse/HDFS-6451) | *Major* | **NFS should not return NFS3ERR\_IO for AccessControlException**
---

* [HDFS-6441](https://issues.apache.org/jira/browse/HDFS-6441) | *Major* | **Add ability to exclude/include specific datanodes while balancing**
---

* [HDFS-6385](https://issues.apache.org/jira/browse/HDFS-6385) | *Major* | **Show when block deletion will start after NameNode startup in WebUI**
---

* [HDFS-6376](https://issues.apache.org/jira/browse/HDFS-6376) | *Major* | **Distcp data between two HA clusters requires another configuration**

Allow distcp to copy data between HA clusters. Users can use a new configuration property "dfs.internal.nameservices" to explicitly specify the name services belonging to the local cluster, while continue using the configuration property "dfs.nameservices" to specify all the name services in the local and remote clusters.

---

* [HDFS-6247](https://issues.apache.org/jira/browse/HDFS-6247) | *Major* | **Avoid timeouts for replaceBlock() call by sending intermediate responses to Balancer**
---

* [HDFS-6188](https://issues.apache.org/jira/browse/HDFS-6188) | *Major* | **An ip whitelist based implementation of TrustedChannelResolver**
---

* [HDFS-6134](https://issues.apache.org/jira/browse/HDFS-6134) | *Major* | **Transparent data at rest encryption**
---

* [HDFS-6114](https://issues.apache.org/jira/browse/HDFS-6114) | *Critical* | **Block Scan log rolling will never happen if blocks written continuously leading to huge size of dncp\_block\_verification.log.curr**
---

* [HDFS-6036](https://issues.apache.org/jira/browse/HDFS-6036) | *Major* | **Forcibly timeout misbehaving DFSClients that try to do no-checksum reads that extend too long**
---

* [HDFS-5919](https://issues.apache.org/jira/browse/HDFS-5919) | *Major* | **FileJournalManager doesn't purge empty and corrupt inprogress edits files**
---

* [HDFS-5809](https://issues.apache.org/jira/browse/HDFS-5809) | *Critical* | **BlockPoolSliceScanner and high speed hdfs appending make datanode to drop into infinite loop**
---

* [HDFS-5723](https://issues.apache.org/jira/browse/HDFS-5723) | *Major* | **Append failed FINALIZED replica should not be accepted as valid when that block is underconstruction**
---

* [HDFS-5624](https://issues.apache.org/jira/browse/HDFS-5624) | *Major* | **Add HDFS tests for ACLs in combination with viewfs.**
---

* [HDFS-5202](https://issues.apache.org/jira/browse/HDFS-5202) | *Major* | **Support Centralized Cache Management on Windows.**
---

* [HDFS-5185](https://issues.apache.org/jira/browse/HDFS-5185) | *Critical* | **DN fails to startup if one of the data dir is full**
---

* [HDFS-5182](https://issues.apache.org/jira/browse/HDFS-5182) | *Major* | **BlockReaderLocal must allow zero-copy  reads only when the DN believes it's valid**
---

* [HDFS-5089](https://issues.apache.org/jira/browse/HDFS-5089) | *Major* | **When a LayoutVersion support SNAPSHOT, it must support FSIMAGE\_NAME\_OPTIMIZATION.**
---

* [HDFS-4852](https://issues.apache.org/jira/browse/HDFS-4852) | *Minor* | **libhdfs documentation is out of date**
---

* [HDFS-4629](https://issues.apache.org/jira/browse/HDFS-4629) | *Major* | **Using com.sun.org.apache.xml.internal.serialize.* in XmlEditsVisitor.java is JVM vendor specific. Breaks IBM JAVA**
---

* [HDFS-4486](https://issues.apache.org/jira/browse/HDFS-4486) | *Minor* | **Add log category for long-running DFSClient notices**
---

* [HDFS-4257](https://issues.apache.org/jira/browse/HDFS-4257) | *Minor* | **The ReplaceDatanodeOnFailure policies could have a forgiving option**
---

* [HDFS-4227](https://issues.apache.org/jira/browse/HDFS-4227) | *Major* | **Document dfs.namenode.resource.***
---

* [HDFS-4165](https://issues.apache.org/jira/browse/HDFS-4165) | *Trivial* | **Faulty sanity check in FsDirectory.unprotectedSetQuota**
---

* [HDFS-4120](https://issues.apache.org/jira/browse/HDFS-4120) | *Minor* | **Add a new "-skipSharedEditsCheck" option for BootstrapStandby**
---

* [HDFS-3851](https://issues.apache.org/jira/browse/HDFS-3851) | *Trivial* | **Make DFSOuputSteram$Packet default constructor reuse the other constructor**
---

* [HDFS-3528](https://issues.apache.org/jira/browse/HDFS-3528) | *Major* | **Use native CRC32 in DFS write path**
---

* [HDFS-3482](https://issues.apache.org/jira/browse/HDFS-3482) | *Minor* | **hdfs balancer throws ArrayIndexOutOfBoundsException if option is specified without arguments**
---

* [HDFS-2976](https://issues.apache.org/jira/browse/HDFS-2976) | *Trivial* | **Remove unnecessary method (tokenRefetchNeeded) in DFSClient**
---

* [HDFS-2975](https://issues.apache.org/jira/browse/HDFS-2975) | *Major* | **Rename with overwrite flag true can make NameNode to stuck in safemode on NN (crash + restart).**
---

* [HDFS-2856](https://issues.apache.org/jira/browse/HDFS-2856) | *Major* | **Fix block protocol so that Datanodes don't require root or jsvc**

SASL now can be used to secure the DataTransferProtocol, which transfers file block content between HDFS clients and DataNodes.  In this configuration, it is no longer required for secured clusters to start the DataNode as root and bind to privileged ports.

---

* [HDFS-573](https://issues.apache.org/jira/browse/HDFS-573) | *Major* | **Porting libhdfs to Windows**

The libhdfs C API is now supported on Windows.

---

* [MAPREDUCE-6156](https://issues.apache.org/jira/browse/MAPREDUCE-6156) | *Blocker* | **Fetcher - connect() doesn't handle connection refused correctly**
---

* [MAPREDUCE-6142](https://issues.apache.org/jira/browse/MAPREDUCE-6142) | *Critical* | **Test failure in TestJobHistoryEventHandler and TestMRTimelineEventHandling**
---

* [MAPREDUCE-6126](https://issues.apache.org/jira/browse/MAPREDUCE-6126) | *Major* | **(Rumen) Rumen tool returns error "ava.lang.IllegalArgumentException: JobBuilder.process(HistoryEvent): unknown event type"**
---

* [MAPREDUCE-6125](https://issues.apache.org/jira/browse/MAPREDUCE-6125) | *Major* | **TestContainerLauncherImpl sometimes fails**
---

* [MAPREDUCE-6123](https://issues.apache.org/jira/browse/MAPREDUCE-6123) | *Trivial* | **TestCombineFileInputFormat incorrectly starts 2 MiniDFSCluster instances.**
---

* [MAPREDUCE-6122](https://issues.apache.org/jira/browse/MAPREDUCE-6122) | *Trivial* | **TestLineRecordReader may fail due to test data files checked out of git with incorrect line endings.**
---

* [MAPREDUCE-6115](https://issues.apache.org/jira/browse/MAPREDUCE-6115) | *Minor* | **TestPipeApplication#testSubmitter fails in trunk**
---

* [MAPREDUCE-6109](https://issues.apache.org/jira/browse/MAPREDUCE-6109) | *Trivial* | **Fix minor typo in distcp -p usage text**
---

* [MAPREDUCE-6104](https://issues.apache.org/jira/browse/MAPREDUCE-6104) | *Major* | **TestJobHistoryParsing.testPartialJob fails in branch-2**
---

* [MAPREDUCE-6095](https://issues.apache.org/jira/browse/MAPREDUCE-6095) | *Major* | **Enable DistributedCache for uber-mode Jobs**
---

* [MAPREDUCE-6094](https://issues.apache.org/jira/browse/MAPREDUCE-6094) | *Minor* | **TestMRCJCFileInputFormat.testAddInputPath() fails on trunk**
---

* [MAPREDUCE-6093](https://issues.apache.org/jira/browse/MAPREDUCE-6093) | *Trivial* | **minor distcp doc edits**
---

* [MAPREDUCE-6091](https://issues.apache.org/jira/browse/MAPREDUCE-6091) | *Major* | **YARNRunner.getJobStatus() fails with ApplicationNotFoundException if the job rolled off the RM view**
---

* [MAPREDUCE-6090](https://issues.apache.org/jira/browse/MAPREDUCE-6090) | *Major* | **mapred hsadmin getGroups fails to connect in some cases**
---

* [MAPREDUCE-6086](https://issues.apache.org/jira/browse/MAPREDUCE-6086) | *Major* | **mapreduce.job.credentials.binary should allow all URIs**
---

* [MAPREDUCE-6075](https://issues.apache.org/jira/browse/MAPREDUCE-6075) | *Major* | **HistoryServerFileSystemStateStore can create zero-length files**
---

* [MAPREDUCE-6073](https://issues.apache.org/jira/browse/MAPREDUCE-6073) | *Trivial* | **Description of mapreduce.job.speculative.slowtaskthreshold in mapred-default should be moved into description tags**
---

* [MAPREDUCE-6072](https://issues.apache.org/jira/browse/MAPREDUCE-6072) | *Minor* | **Remove INSTALL document**
---

* [MAPREDUCE-6071](https://issues.apache.org/jira/browse/MAPREDUCE-6071) | *Trivial* | **JobImpl#makeUberDecision doesn't log that Uber mode is disabled because of too much CPUs**
---

* [MAPREDUCE-6070](https://issues.apache.org/jira/browse/MAPREDUCE-6070) | *Trivial* | **yarn.app.am.resource.mb/cpu-vcores affects uber mode but is not documented**
---

* [MAPREDUCE-6063](https://issues.apache.org/jira/browse/MAPREDUCE-6063) | *Major* | **In sortAndSpill of MapTask.java, size is calculated wrongly when bufend < bufstart.**
---

* [MAPREDUCE-6052](https://issues.apache.org/jira/browse/MAPREDUCE-6052) | *Major* | **Support overriding log4j.properties per job**
---

* [MAPREDUCE-6051](https://issues.apache.org/jira/browse/MAPREDUCE-6051) | *Trivial* | **Fix typos in log messages**
---

* [MAPREDUCE-6048](https://issues.apache.org/jira/browse/MAPREDUCE-6048) | *Minor* | **TestJavaSerialization fails in trunk build**
---

* [MAPREDUCE-6044](https://issues.apache.org/jira/browse/MAPREDUCE-6044) | *Major* | **Fully qualified intermediate done directory will break per-user dir creation on Windows**
---

* [MAPREDUCE-6036](https://issues.apache.org/jira/browse/MAPREDUCE-6036) | *Major* | **TestJobEndNotifier fails intermittently in branch-2**
---

* [MAPREDUCE-6032](https://issues.apache.org/jira/browse/MAPREDUCE-6032) | *Major* | **Unable to check mapreduce job status if submitted using a non-default namenode**
---

* [MAPREDUCE-6029](https://issues.apache.org/jira/browse/MAPREDUCE-6029) | *Major* | **TestCommitterEventHandler fails in trunk**
---

* [MAPREDUCE-6024](https://issues.apache.org/jira/browse/MAPREDUCE-6024) | *Critical* | **java.net.SocketTimeoutException in Fetcher caused jobs stuck for more than 1 hour**
---

* [MAPREDUCE-6022](https://issues.apache.org/jira/browse/MAPREDUCE-6022) | *Major* | **map\_input\_file is missing from streaming job environment**
---

* [MAPREDUCE-6021](https://issues.apache.org/jira/browse/MAPREDUCE-6021) | *Major* | **MR AM should have working directory in LD\_LIBRARY\_PATH**
---

* [MAPREDUCE-6019](https://issues.apache.org/jira/browse/MAPREDUCE-6019) | *Major* | **MapReduce changes for exposing YARN/MR endpoints on multiple interfaces.**
---

* [MAPREDUCE-6018](https://issues.apache.org/jira/browse/MAPREDUCE-6018) | *Major* | **Create a framework specific config to enable timeline server**
---

* [MAPREDUCE-6014](https://issues.apache.org/jira/browse/MAPREDUCE-6014) | *Major* | **New task status field in task attempts table can lead to an empty web page**
---

* [MAPREDUCE-6012](https://issues.apache.org/jira/browse/MAPREDUCE-6012) | *Major* | **DBInputSplit creates invalid ranges on Oracle**
---

* [MAPREDUCE-6010](https://issues.apache.org/jira/browse/MAPREDUCE-6010) | *Major* | **HistoryServerFileSystemStateStore fails to update tokens**
---

* [MAPREDUCE-5999](https://issues.apache.org/jira/browse/MAPREDUCE-5999) | *Minor* | **Fix dead link in InputFormat javadoc**
---

* [MAPREDUCE-5998](https://issues.apache.org/jira/browse/MAPREDUCE-5998) | *Minor* | **CompositeInputFormat javadoc is broken**
---

* [MAPREDUCE-5974](https://issues.apache.org/jira/browse/MAPREDUCE-5974) | *Major* | **Allow specifying multiple MapOutputCollectors with fallback**
---

* [MAPREDUCE-5971](https://issues.apache.org/jira/browse/MAPREDUCE-5971) | *Trivial* | **Move the default options for distcp -p to DistCpOptionSwitch**
---

* [MAPREDUCE-5970](https://issues.apache.org/jira/browse/MAPREDUCE-5970) | *Minor* | **Provide a boolean switch to enable MR-AM profiling**
---

* [MAPREDUCE-5963](https://issues.apache.org/jira/browse/MAPREDUCE-5963) | *Major* | **ShuffleHandler DB schema should be versioned with compatible/incompatible changes**
---

* [MAPREDUCE-5960](https://issues.apache.org/jira/browse/MAPREDUCE-5960) | *Major* | **JobSubmitter's check whether job.jar is local is incorrect with no authority in job jar path.**
---

* [MAPREDUCE-5958](https://issues.apache.org/jira/browse/MAPREDUCE-5958) | *Minor* | **Wrong reduce task progress if map output is compressed**
---

* [MAPREDUCE-5957](https://issues.apache.org/jira/browse/MAPREDUCE-5957) | *Major* | **AM throws ClassNotFoundException with job classloader enabled if custom output format/committer is used**
---

* [MAPREDUCE-5956](https://issues.apache.org/jira/browse/MAPREDUCE-5956) | *Blocker* | **MapReduce AM should not use maxAttempts to determine if this is the last retry**
---

* [MAPREDUCE-5950](https://issues.apache.org/jira/browse/MAPREDUCE-5950) | *Major* | **incorrect description in distcp2 document**
---

* [MAPREDUCE-5945](https://issues.apache.org/jira/browse/MAPREDUCE-5945) | *Minor* | **Update the description of GenericOptionsParser -jt option**
---

* [MAPREDUCE-5943](https://issues.apache.org/jira/browse/MAPREDUCE-5943) | *Minor* | **Separate mapred commands from CommandsManual.apt.vm**
---

* [MAPREDUCE-5942](https://issues.apache.org/jira/browse/MAPREDUCE-5942) | *Minor* | **Remove MRv1 commands from CommandsManual.apt.vm**
---

* [MAPREDUCE-5933](https://issues.apache.org/jira/browse/MAPREDUCE-5933) | *Major* | **Enable MR AM to post history events to the timeline server**
---

* [MAPREDUCE-5931](https://issues.apache.org/jira/browse/MAPREDUCE-5931) | *Minor* | **Validate SleepJob command line parameters**
---

* [MAPREDUCE-5910](https://issues.apache.org/jira/browse/MAPREDUCE-5910) | *Major* | **MRAppMaster should handle Resync from RM instead of shutting down.**
---

* [MAPREDUCE-5906](https://issues.apache.org/jira/browse/MAPREDUCE-5906) | *Minor* | **Inconsistent configuration in property "mapreduce.reduce.shuffle.input.buffer.percent"**
---

* [MAPREDUCE-5891](https://issues.apache.org/jira/browse/MAPREDUCE-5891) | *Major* | **Improved shuffle error handling across NM restarts**
---

* [MAPREDUCE-5885](https://issues.apache.org/jira/browse/MAPREDUCE-5885) | *Major* | **build/test/test.mapred.spill causes release audit warnings**
---

* [MAPREDUCE-5878](https://issues.apache.org/jira/browse/MAPREDUCE-5878) | *Major* | **some standard JDK APIs are not part of system classes defaults**
---

* [MAPREDUCE-5873](https://issues.apache.org/jira/browse/MAPREDUCE-5873) | *Major* | **Shuffle bandwidth computation includes time spent waiting for maps**
---

* [MAPREDUCE-5866](https://issues.apache.org/jira/browse/MAPREDUCE-5866) | *Major* | **TestFixedLengthInputFormat fails in windows**
---

* [MAPREDUCE-5831](https://issues.apache.org/jira/browse/MAPREDUCE-5831) | *Blocker* | **Old MR client is not compatible with new MR application**
---

* [MAPREDUCE-5796](https://issues.apache.org/jira/browse/MAPREDUCE-5796) | *Minor* | **Use current version of the archive name in DistributedCacheDeploy document**
---

* [MAPREDUCE-5756](https://issues.apache.org/jira/browse/MAPREDUCE-5756) | *Major* | **CombineFileInputFormat.getSplits() including directories in its results**
---

* [MAPREDUCE-5597](https://issues.apache.org/jira/browse/MAPREDUCE-5597) | *Minor* | **Missing alternatives in javadocs for deprecated constructors in mapreduce.Job**
---

* [MAPREDUCE-5595](https://issues.apache.org/jira/browse/MAPREDUCE-5595) | *Trivial* | **Typo in MergeManagerImpl.java**
---

* [MAPREDUCE-5542](https://issues.apache.org/jira/browse/MAPREDUCE-5542) | *Major* | **Killing a job just as it finishes can generate an NPE in client**
---

* [MAPREDUCE-5363](https://issues.apache.org/jira/browse/MAPREDUCE-5363) | *Minor* | **Fix doc and spelling for TaskCompletionEvent#getTaskStatus and getStatus**
---

* [MAPREDUCE-5279](https://issues.apache.org/jira/browse/MAPREDUCE-5279) | *Critical* | **Jobs can deadlock if headroom is limited by cpu instead of memory**
---

* [MAPREDUCE-5130](https://issues.apache.org/jira/browse/MAPREDUCE-5130) | *Major* | **Add missing job config options to mapred-default.xml**
---

* [MAPREDUCE-4791](https://issues.apache.org/jira/browse/MAPREDUCE-4791) | *Minor* | **Javadoc for KeyValueTextInputFormat should include default separator and how to change it**
---

* [MAPREDUCE-883](https://issues.apache.org/jira/browse/MAPREDUCE-883) | *Minor* | **harchive: Document how to unarchive**
---

* [YARN-2853](https://issues.apache.org/jira/browse/YARN-2853) | *Major* | **Killing app may hang while AM is unregistering**
---

* [YARN-2846](https://issues.apache.org/jira/browse/YARN-2846) | *Blocker* | **Incorrect persist exit code for running containers in reacquireContainer() that interrupted by NodeManager restart.**
---

* [YARN-2843](https://issues.apache.org/jira/browse/YARN-2843) | *Major* | **NodeLabels manager should trim all inputs for hosts and labels**
---

* [YARN-2841](https://issues.apache.org/jira/browse/YARN-2841) | *Critical* | **RMProxy should retry EOFException**
---

* [YARN-2834](https://issues.apache.org/jira/browse/YARN-2834) | *Blocker* | **Resource manager crashed with Null Pointer Exception**
---

* [YARN-2830](https://issues.apache.org/jira/browse/YARN-2830) | *Blocker* | **Add backwords compatible ContainerId.newInstance constructor for use within Tez Local Mode**

I just committed this. Thanks [~jeagles] for the patch and [~ozawa] for the reviews!

---

* [YARN-2827](https://issues.apache.org/jira/browse/YARN-2827) | *Critical* | **Fix bugs of yarn queue CLI**
---

* [YARN-2826](https://issues.apache.org/jira/browse/YARN-2826) | *Critical* | **User-Group mappings not updated by RM when a user is removed from a group.**
---

* [YARN-2825](https://issues.apache.org/jira/browse/YARN-2825) | *Critical* | **Container leak on NM**
---

* [YARN-2824](https://issues.apache.org/jira/browse/YARN-2824) | *Critical* | **Capacity of labels should be zero by default**
---

* [YARN-2823](https://issues.apache.org/jira/browse/YARN-2823) | *Critical* | **NullPointerException in RM HA enabled 3-node cluster**
---

* [YARN-2819](https://issues.apache.org/jira/browse/YARN-2819) | *Critical* | **NPE in ATS Timeline Domains when upgrading from 2.4 to 2.6**
---

* [YARN-2818](https://issues.apache.org/jira/browse/YARN-2818) | *Critical* | **Remove the logic to inject entity owner as the primary filter**
---

* [YARN-2813](https://issues.apache.org/jira/browse/YARN-2813) | *Major* | **NPE from MemoryTimelineStore.getDomains**
---

* [YARN-2812](https://issues.apache.org/jira/browse/YARN-2812) | *Major* | **TestApplicationHistoryServer is likely to fail on less powerful machine**
---

* [YARN-2810](https://issues.apache.org/jira/browse/YARN-2810) | *Major* | **TestRMProxyUsersConf fails on Windows VMs**
---

* [YARN-2805](https://issues.apache.org/jira/browse/YARN-2805) | *Blocker* | **RM2 in HA setup tries to login using the RM1's kerberos principal**
---

* [YARN-2804](https://issues.apache.org/jira/browse/YARN-2804) | *Critical* | **Timeline server .out log have JAXB binding exceptions and warnings.**
---

* [YARN-2803](https://issues.apache.org/jira/browse/YARN-2803) | *Critical* | **MR distributed cache not working correctly on Windows after NodeManager privileged account changes.**
---

* [YARN-2798](https://issues.apache.org/jira/browse/YARN-2798) | *Blocker* | **YarnClient doesn't need to translate Kerberos name of timeline DT renewer**
---

* [YARN-2795](https://issues.apache.org/jira/browse/YARN-2795) | *Major* | **Resource Manager fails startup with HDFS label storage and secure cluster**
---

* [YARN-2794](https://issues.apache.org/jira/browse/YARN-2794) | *Major* | **Fix log msgs about distributing system-credentials**
---

* [YARN-2790](https://issues.apache.org/jira/browse/YARN-2790) | *Critical* | **NM can't aggregate logs past HDFS delegation token expiry.**
---

* [YARN-2789](https://issues.apache.org/jira/browse/YARN-2789) | *Critical* | **Re-instate the NodeReport.newInstance API modified in YARN-2698**
---

* [YARN-2788](https://issues.apache.org/jira/browse/YARN-2788) | *Blocker* | **yarn logs -applicationId on 2.6.0 should support logs written by 2.4.0**
---

* [YARN-2785](https://issues.apache.org/jira/browse/YARN-2785) | *Major* | **TestContainerResourceUsage fails intermittently**
---

* [YARN-2779](https://issues.apache.org/jira/browse/YARN-2779) | *Critical* | **SystemMetricsPublisher can use Kerberos directly instead of timeline DT**
---

* [YARN-2778](https://issues.apache.org/jira/browse/YARN-2778) | *Major* | **YARN node CLI should display labels on returned node reports**
---

* [YARN-2770](https://issues.apache.org/jira/browse/YARN-2770) | *Critical* | **Timeline delegation tokens need to be automatically renewed by the RM**
---

* [YARN-2769](https://issues.apache.org/jira/browse/YARN-2769) | *Major* | **Timeline server domain not set correctly when using shell\_command on Windows**
---

* [YARN-2767](https://issues.apache.org/jira/browse/YARN-2767) | *Major* | **RM web services - add test case to ensure the http static user cannot kill or submit apps in secure mode**
---

* [YARN-2760](https://issues.apache.org/jira/browse/YARN-2760) | *Trivial* | **Completely remove word 'experimental' from FairScheduler docs**
---

* [YARN-2758](https://issues.apache.org/jira/browse/YARN-2758) | *Major* | **Update TestApplicationHistoryClientService to use the new generic history store**
---

* [YARN-2755](https://issues.apache.org/jira/browse/YARN-2755) | *Critical* | **NM fails to clean up usercache\_DEL\_<timestamp> dirs after YARN-661**
---

* [YARN-2753](https://issues.apache.org/jira/browse/YARN-2753) | *Major* | **Fix potential issues and code clean up for *NodeLabelsManager**
---

* [YARN-2752](https://issues.apache.org/jira/browse/YARN-2752) | *Critical* | **ContainerExecutor always append "nice -n" in command on branch-2**
---

* [YARN-2747](https://issues.apache.org/jira/browse/YARN-2747) | *Major* | **TestAggregatedLogFormat fails in trunk**
---

* [YARN-2744](https://issues.apache.org/jira/browse/YARN-2744) | *Critical* | **Under some scenario, it is possible to end up with capacity scheduler configuration that uses labels that no longer exist**
---

* [YARN-2743](https://issues.apache.org/jira/browse/YARN-2743) | *Blocker* | **Yarn jobs via oozie fail with failed to renew token (secure) or digest mismatch (unsecure) errors when RM is being killed**
---

* [YARN-2741](https://issues.apache.org/jira/browse/YARN-2741) | *Major* | **Windows: Node manager cannot serve up log files via the web user interface when yarn.nodemanager.log-dirs to any drive letter other than C: (or, the drive that nodemanager is running on)**
---

* [YARN-2734](https://issues.apache.org/jira/browse/YARN-2734) | *Major* | **If a sub-folder is encountered by log aggregator it results in invalid aggregated file**
---

* [YARN-2732](https://issues.apache.org/jira/browse/YARN-2732) | *Major* | **Fix syntax error in SecureContainer.apt.vm**
---

* [YARN-2730](https://issues.apache.org/jira/browse/YARN-2730) | *Critical* | **DefaultContainerExecutor runs only one localizer at a time**
---

* [YARN-2726](https://issues.apache.org/jira/browse/YARN-2726) | *Minor* | **CapacityScheduler should explicitly log when an accessible label has no capacity**
---

* [YARN-2724](https://issues.apache.org/jira/browse/YARN-2724) | *Major* | **If an unreadable file is encountered during log aggregation then aggregated file in HDFS badly formed**
---

* [YARN-2723](https://issues.apache.org/jira/browse/YARN-2723) | *Major* | **rmadmin -replaceLabelsOnNode does not correctly parse port**
---

* [YARN-2721](https://issues.apache.org/jira/browse/YARN-2721) | *Blocker* | **Race condition: ZKRMStateStore retry logic may throw NodeExist exception**
---

* [YARN-2720](https://issues.apache.org/jira/browse/YARN-2720) | *Major* | **Windows: Wildcard classpath variables not expanded against resources contained in archives**
---

* [YARN-2717](https://issues.apache.org/jira/browse/YARN-2717) | *Major* | **containerLogNotFound log shows multiple time for the same container**
---

* [YARN-2715](https://issues.apache.org/jira/browse/YARN-2715) | *Blocker* | **Proxy user is problem for RPC interface if yarn.resourcemanager.webapp.proxyuser is not set.**
---

* [YARN-2711](https://issues.apache.org/jira/browse/YARN-2711) | *Major* | **TestDefaultContainerExecutor#testContainerLaunchError fails on Windows**
---

* [YARN-2709](https://issues.apache.org/jira/browse/YARN-2709) | *Major* | **Add retry for timeline client getDelegationToken method**
---

* [YARN-2707](https://issues.apache.org/jira/browse/YARN-2707) | *Minor* | **Potential null dereference in FSDownload**
---

* [YARN-2705](https://issues.apache.org/jira/browse/YARN-2705) | *Critical* | **Changes of RM node label manager default configuration**
---

* [YARN-2704](https://issues.apache.org/jira/browse/YARN-2704) | *Critical* | ** Localization and log-aggregation will fail if hdfs delegation token expired after token-max-life-time**
---

* [YARN-2703](https://issues.apache.org/jira/browse/YARN-2703) | *Major* | **Add logUploadedTime into LogValue for better display**
---

* [YARN-2701](https://issues.apache.org/jira/browse/YARN-2701) | *Blocker* | **Potential race condition in startLocalizer when using LinuxContainerExecutor**
---

* [YARN-2700](https://issues.apache.org/jira/browse/YARN-2700) | *Major* | **TestSecureRMRegistryOperations failing on windows: auth problems**
---

* [YARN-2699](https://issues.apache.org/jira/browse/YARN-2699) | *Blocker* | **Fix test timeout in TestResourceTrackerOnHA#testResourceTrackerOnHA**
---

* [YARN-2698](https://issues.apache.org/jira/browse/YARN-2698) | *Critical* | **Move getClusterNodeLabels and getNodeToLabels to YarnClient instead of AdminService**
---

* [YARN-2692](https://issues.apache.org/jira/browse/YARN-2692) | *Major* | **ktutil test hanging on some machines/ktutil versions**
---

* [YARN-2689](https://issues.apache.org/jira/browse/YARN-2689) | *Major* | **TestSecureRMRegistryOperations failing on windows: secure ZK won't start**
---

* [YARN-2685](https://issues.apache.org/jira/browse/YARN-2685) | *Major* | **Resource on each label not correct when multiple NMs in a same host and some has label some not**
---

* [YARN-2682](https://issues.apache.org/jira/browse/YARN-2682) | *Minor* | **WindowsSecureContainerExecutor should not depend on DefaultContainerExecutor#getFirstApplicationDir.**
---

* [YARN-2678](https://issues.apache.org/jira/browse/YARN-2678) | *Major* | **Improved Yarn Registry service record structure**
---

* [YARN-2677](https://issues.apache.org/jira/browse/YARN-2677) | *Major* | **registry punycoding of usernames doesn't fix all usernames to be DNS-valid**
---

* [YARN-2676](https://issues.apache.org/jira/browse/YARN-2676) | *Major* | **Timeline authentication filter should add support for proxy user**
---

* [YARN-2673](https://issues.apache.org/jira/browse/YARN-2673) | *Major* | **Add retry for timeline client put APIs**
---

* [YARN-2671](https://issues.apache.org/jira/browse/YARN-2671) | *Blocker* | **ApplicationSubmissionContext change breaks the existing app submission**
---

* [YARN-2668](https://issues.apache.org/jira/browse/YARN-2668) | *Major* | **yarn-registry JAR won't link against ZK 3.4.5**
---

* [YARN-2667](https://issues.apache.org/jira/browse/YARN-2667) | *Minor* | **Fix the release audit warning caused by hadoop-yarn-registry**
---

* [YARN-2662](https://issues.apache.org/jira/browse/YARN-2662) | *Minor* | **TestCgroupsLCEResourcesHandler leaks file descriptors.**
---

* [YARN-2656](https://issues.apache.org/jira/browse/YARN-2656) | *Major* | **RM web services authentication filter should add support for proxy user**
---

* [YARN-2652](https://issues.apache.org/jira/browse/YARN-2652) | *Major* | **add hadoop-yarn-registry package under hadoop-yarn**
---

* [YARN-2651](https://issues.apache.org/jira/browse/YARN-2651) | *Major* | **Spin off the LogRollingInterval from LogAggregationContext**
---

* [YARN-2649](https://issues.apache.org/jira/browse/YARN-2649) | *Major* | **Flaky test TestAMRMRPCNodeUpdates**
---

* [YARN-2647](https://issues.apache.org/jira/browse/YARN-2647) | *Major* | **Add yarn queue CLI to get queue infos**
---

* [YARN-2644](https://issues.apache.org/jira/browse/YARN-2644) | *Major* | **Recalculate headroom more frequently to keep it accurate**
---

* [YARN-2635](https://issues.apache.org/jira/browse/YARN-2635) | *Major* | **TestRM, TestRMRestart, TestClientToAMTokens should run with both CS and FS**
---

* [YARN-2632](https://issues.apache.org/jira/browse/YARN-2632) | *Blocker* | **Document NM Restart feature**
---

* [YARN-2630](https://issues.apache.org/jira/browse/YARN-2630) | *Major* | **TestDistributedShell#testDSRestartWithPreviousRunningContainers fails**
---

* [YARN-2629](https://issues.apache.org/jira/browse/YARN-2629) | *Major* | **Make distributed shell use the domain-based timeline ACLs**
---

* [YARN-2628](https://issues.apache.org/jira/browse/YARN-2628) | *Major* | **Capacity scheduler with DominantResourceCalculator carries out reservation even though slots are free**
---

* [YARN-2627](https://issues.apache.org/jira/browse/YARN-2627) | *Major* | **Add logs when attemptFailuresValidityInterval is enabled**
---

* [YARN-2624](https://issues.apache.org/jira/browse/YARN-2624) | *Blocker* | **Resource Localization fails on a cluster due to existing cache directories**
---

* [YARN-2621](https://issues.apache.org/jira/browse/YARN-2621) | *Major* | **Simplify the output when the user doesn't have the access for getDomain(s)**
---

* [YARN-2617](https://issues.apache.org/jira/browse/YARN-2617) | *Major* | **NM does not need to send finished container whose APP is not running to RM**
---

* [YARN-2615](https://issues.apache.org/jira/browse/YARN-2615) | *Blocker* | **ClientToAMTokenIdentifier and DelegationTokenIdentifier should allow extended fields**
---

* [YARN-2611](https://issues.apache.org/jira/browse/YARN-2611) | *Major* | **Fix jenkins findbugs warning and test case failures for trunk merge patch**
---

* [YARN-2610](https://issues.apache.org/jira/browse/YARN-2610) | *Major* | **Hamlet should close table tags**
---

* [YARN-2608](https://issues.apache.org/jira/browse/YARN-2608) | *Major* | **FairScheduler: Potential deadlocks in loading alloc files and clock access**
---

* [YARN-2607](https://issues.apache.org/jira/browse/YARN-2607) | *Major* | **TestDistributedShell fails in trunk**
---

* [YARN-2606](https://issues.apache.org/jira/browse/YARN-2606) | *Major* | **Application History Server tries to access hdfs before doing secure login**
---

* [YARN-2602](https://issues.apache.org/jira/browse/YARN-2602) | *Major* | **Generic History Service of TimelineServer sometimes not able to handle NPE**
---

* [YARN-2596](https://issues.apache.org/jira/browse/YARN-2596) | *Major* | **TestWorkPreservingRMRestart fails with FairScheduler**
---

* [YARN-2594](https://issues.apache.org/jira/browse/YARN-2594) | *Blocker* | **Potential deadlock in RM when querying ApplicationResourceUsageReport**
---

* [YARN-2591](https://issues.apache.org/jira/browse/YARN-2591) | *Major* | **AHSWebServices should return FORBIDDEN(403) if the request user doesn't have access to the history data**
---

* [YARN-2588](https://issues.apache.org/jira/browse/YARN-2588) | *Major* | **Standby RM does not transitionToActive if previous transitionToActive is failed with ZK exception.**
---

* [YARN-2584](https://issues.apache.org/jira/browse/YARN-2584) | *Major* | **TestContainerManagerSecurity fails on trunk**
---

* [YARN-2583](https://issues.apache.org/jira/browse/YARN-2583) | *Major* | **Modify the LogDeletionService to support Log aggregation for LRS**
---

* [YARN-2582](https://issues.apache.org/jira/browse/YARN-2582) | *Major* | **Log related CLI and Web UI changes for Aggregated Logs in LRS**
---

* [YARN-2581](https://issues.apache.org/jira/browse/YARN-2581) | *Major* | **NMs need to find a way to get LogAggregationContext**
---

* [YARN-2579](https://issues.apache.org/jira/browse/YARN-2579) | *Blocker* | **Deadlock when EmbeddedElectorService and FatalEventDispatcher try to transition RM to StandBy at the same time**
---

* [YARN-2577](https://issues.apache.org/jira/browse/YARN-2577) | *Trivial* | **Clarify ACL delimiter and how to configure ACL groups only**
---

* [YARN-2576](https://issues.apache.org/jira/browse/YARN-2576) | *Major* | **Prepare yarn-1051 branch for merging with trunk**
---

* [YARN-2569](https://issues.apache.org/jira/browse/YARN-2569) | *Major* | **API changes for handling logs of long-running services**
---

* [YARN-2568](https://issues.apache.org/jira/browse/YARN-2568) | *Major* | **TestAMRMClientOnRMRestart test fails**
---

* [YARN-2566](https://issues.apache.org/jira/browse/YARN-2566) | *Critical* | **DefaultContainerExecutor should pick a working directory randomly**
---

* [YARN-2565](https://issues.apache.org/jira/browse/YARN-2565) | *Major* | **RM shouldn't use the old RMApplicationHistoryWriter unless explicitly setting FileSystemApplicationHistoryStore**
---

* [YARN-2563](https://issues.apache.org/jira/browse/YARN-2563) | *Blocker* | **On secure clusters call to timeline server fails with authentication errors when running a job via oozie**
---

* [YARN-2562](https://issues.apache.org/jira/browse/YARN-2562) | *Critical* | **ContainerId@toString() is unreadable for epoch >0 after YARN-2182**
---

* [YARN-2561](https://issues.apache.org/jira/browse/YARN-2561) | *Blocker* | **MR job client cannot reconnect to AM after NM restart.**
---

* [YARN-2559](https://issues.apache.org/jira/browse/YARN-2559) | *Major* | **ResourceManager sometime become un-responsive due to NPE in SystemMetricsPublisher**
---

* [YARN-2558](https://issues.apache.org/jira/browse/YARN-2558) | *Blocker* | **Updating ContainerTokenIdentifier#read/write to use ContainerId#getContainerId**
---

* [YARN-2557](https://issues.apache.org/jira/browse/YARN-2557) | *Major* | **Add a parameter "attempt\_Failures\_Validity\_Interval" in DistributedShell**
---

* [YARN-2549](https://issues.apache.org/jira/browse/YARN-2549) | *Minor* | **TestContainerLaunch fails due to classpath problem with hamcrest classes.**
---

* [YARN-2547](https://issues.apache.org/jira/browse/YARN-2547) | *Major* | **Cross Origin Filter throws UnsupportedOperationException upon destroy**
---

* [YARN-2546](https://issues.apache.org/jira/browse/YARN-2546) | *Major* | **REST API for application creation/submission is using strings for numeric & boolean values**
---

* [YARN-2544](https://issues.apache.org/jira/browse/YARN-2544) | *Major* | **Common server side PB changes (not include user API PB changes)**
---

* [YARN-2542](https://issues.apache.org/jira/browse/YARN-2542) | *Major* | **"yarn application -status <appId>" throws NPE when retrieving the app from the timelineserver**
---

* [YARN-2541](https://issues.apache.org/jira/browse/YARN-2541) | *Major* | **Fix ResourceManagerRest.apt.vm syntax error**
---

* [YARN-2540](https://issues.apache.org/jira/browse/YARN-2540) | *Major* | **FairScheduler: Queue filters not working on scheduler page in RM UI**
---

* [YARN-2539](https://issues.apache.org/jira/browse/YARN-2539) | *Minor* | **FairScheduler: Set the default value for maxAMShare to 0.5**
---

* [YARN-2538](https://issues.apache.org/jira/browse/YARN-2538) | *Major* | **Add logs when RM send new AMRMToken to ApplicationMaster**
---

* [YARN-2534](https://issues.apache.org/jira/browse/YARN-2534) | *Major* | **FairScheduler: Potential integer overflow calculating totalMaxShare**
---

* [YARN-2531](https://issues.apache.org/jira/browse/YARN-2531) | *Major* | **CGroups - Admins should be allowed to enforce strict cpu limits**
---

* [YARN-2529](https://issues.apache.org/jira/browse/YARN-2529) | *Major* | **Generic history service RPC interface doesn't work when service authorization is enabled**
---

* [YARN-2528](https://issues.apache.org/jira/browse/YARN-2528) | *Major* | **Cross Origin Filter Http response split vulnerability protection rejects valid origins**
---

* [YARN-2527](https://issues.apache.org/jira/browse/YARN-2527) | *Major* | **NPE in ApplicationACLsManager**
---

* [YARN-2526](https://issues.apache.org/jira/browse/YARN-2526) | *Critical* | **SLS can deadlock when all the threads are taken by AMSimulators**
---

* [YARN-2523](https://issues.apache.org/jira/browse/YARN-2523) | *Major* | **ResourceManager UI showing negative value for "Decommissioned Nodes" field**
---

* [YARN-2519](https://issues.apache.org/jira/browse/YARN-2519) | *Major* | **Credential Provider related unit tests failed on Windows**
---

* [YARN-2515](https://issues.apache.org/jira/browse/YARN-2515) | *Major* | **Update ConverterUtils#toContainerId to parse epoch**
---

* [YARN-2512](https://issues.apache.org/jira/browse/YARN-2512) | *Major* | **Allow for origin pattern matching in cross origin filter**
---

* [YARN-2511](https://issues.apache.org/jira/browse/YARN-2511) | *Major* | **Allow All Origins by default when Cross Origin Filter is enabled**
---

* [YARN-2509](https://issues.apache.org/jira/browse/YARN-2509) | *Major* | **Enable Cross Origin Filter for timeline server only and not all Yarn servers**
---

* [YARN-2508](https://issues.apache.org/jira/browse/YARN-2508) | *Major* | **Cross Origin configuration parameters prefix are not honored**
---

* [YARN-2507](https://issues.apache.org/jira/browse/YARN-2507) | *Major* | **Document Cross Origin Filter Configuration for ATS**
---

* [YARN-2505](https://issues.apache.org/jira/browse/YARN-2505) | *Major* | **Support get/add/remove/change labels in RM REST API**
---

* [YARN-2504](https://issues.apache.org/jira/browse/YARN-2504) | *Critical* | **Support get/add/remove/change labels in RM admin CLI**
---

* [YARN-2503](https://issues.apache.org/jira/browse/YARN-2503) | *Major* | **Changes in RM Web UI to better show labels to end users**
---

* [YARN-2502](https://issues.apache.org/jira/browse/YARN-2502) | *Major* | **Changes in distributed shell to support specify labels**
---

* [YARN-2501](https://issues.apache.org/jira/browse/YARN-2501) | *Major* | **Changes in AMRMClient to support labels**
---

* [YARN-2500](https://issues.apache.org/jira/browse/YARN-2500) | *Major* | **Miscellaneous changes in ResourceManager to support labels**
---

* [YARN-2496](https://issues.apache.org/jira/browse/YARN-2496) | *Major* | **Changes for capacity scheduler to support allocate resource respect labels**
---

* [YARN-2494](https://issues.apache.org/jira/browse/YARN-2494) | *Major* | **Node label manager API and storage implementations**
---

* [YARN-2493](https://issues.apache.org/jira/browse/YARN-2493) | *Major* | **API changes for users**
---

* [YARN-2484](https://issues.apache.org/jira/browse/YARN-2484) | *Trivial* | **FileSystemRMStateStore#readFile/writeFile should close FSData(In\|Out)putStream in final block**
---

* [YARN-2475](https://issues.apache.org/jira/browse/YARN-2475) | *Major* | **ReservationSystem: replan upon capacity reduction**
---

* [YARN-2468](https://issues.apache.org/jira/browse/YARN-2468) | *Major* | **Log handling for LRS**
---

* [YARN-2462](https://issues.apache.org/jira/browse/YARN-2462) | *Major* | **TestNodeManagerResync#testBlockNewContainerRequestsOnStartAndResync should have a test timeout**
---

* [YARN-2460](https://issues.apache.org/jira/browse/YARN-2460) | *Minor* | **Remove obsolete entries from yarn-default.xml**
---

* [YARN-2459](https://issues.apache.org/jira/browse/YARN-2459) | *Major* | **RM crashes if App gets rejected for any reason and HA is enabled**
---

* [YARN-2456](https://issues.apache.org/jira/browse/YARN-2456) | *Major* | **Possible livelock in CapacityScheduler when RM is recovering apps**
---

* [YARN-2453](https://issues.apache.org/jira/browse/YARN-2453) | *Major* | **TestProportionalCapacityPreemptionPolicy fails with FairScheduler**
---

* [YARN-2452](https://issues.apache.org/jira/browse/YARN-2452) | *Major* | **TestRMApplicationHistoryWriter fails with FairScheduler**
---

* [YARN-2450](https://issues.apache.org/jira/browse/YARN-2450) | *Trivial* | **Fix typos in log messages**
---

* [YARN-2449](https://issues.apache.org/jira/browse/YARN-2449) | *Critical* | **Timelineserver returns invalid Delegation token in secure kerberos enabled cluster when hadoop.http.filter.initializers are not set**
---

* [YARN-2448](https://issues.apache.org/jira/browse/YARN-2448) | *Major* | **RM should expose the resource types considered during scheduling when AMs register**
---

* [YARN-2447](https://issues.apache.org/jira/browse/YARN-2447) | *Major* | **RM web services app submission doesn't pass secrets correctly**
---

* [YARN-2446](https://issues.apache.org/jira/browse/YARN-2446) | *Major* | **Using TimelineNamespace to shield the entities of a user**
---

* [YARN-2440](https://issues.apache.org/jira/browse/YARN-2440) | *Major* | **Cgroups should allow YARN containers to be limited to allocated cores**
---

* [YARN-2434](https://issues.apache.org/jira/browse/YARN-2434) | *Major* | **RM should not recover containers from previously failed attempt when AM restart is not enabled**
---

* [YARN-2431](https://issues.apache.org/jira/browse/YARN-2431) | *Major* | **NM restart: cgroup is not removed for reacquired containers**
---

* [YARN-2426](https://issues.apache.org/jira/browse/YARN-2426) | *Major* | **ResourceManger is not able renew WebHDFS token when application submitted by Yarn WebService**
---

* [YARN-2424](https://issues.apache.org/jira/browse/YARN-2424) | *Blocker* | **LCE should support non-cgroups, non-secure mode**
---

* [YARN-2411](https://issues.apache.org/jira/browse/YARN-2411) | *Major* | **[Capacity Scheduler] support simple user and group mappings to queues**
---

* [YARN-2409](https://issues.apache.org/jira/browse/YARN-2409) | *Critical* | **Active to StandBy transition does not stop rmDispatcher that causes 1 AsyncDispatcher thread leak.**
---

* [YARN-2406](https://issues.apache.org/jira/browse/YARN-2406) | *Major* | **Move RM recovery related proto to yarn\_server\_resourcemanager\_recovery.proto**
---

* [YARN-2405](https://issues.apache.org/jira/browse/YARN-2405) | *Major* | **NPE in FairSchedulerAppsBlock**
---

* [YARN-2400](https://issues.apache.org/jira/browse/YARN-2400) | *Major* | **TestAMRestart fails intermittently**
---

* [YARN-2399](https://issues.apache.org/jira/browse/YARN-2399) | *Major* | **FairScheduler: Merge AppSchedulable and FSSchedulerApp into FSAppAttempt**
---

* [YARN-2397](https://issues.apache.org/jira/browse/YARN-2397) | *Critical* | **RM and TS web interfaces sometimes return request is a replay error in secure mode**
---

* [YARN-2395](https://issues.apache.org/jira/browse/YARN-2395) | *Major* | **FairScheduler: Preemption timeout should be configurable per queue**
---

* [YARN-2394](https://issues.apache.org/jira/browse/YARN-2394) | *Major* | **FairScheduler: Configure fairSharePreemptionThreshold per queue**
---

* [YARN-2393](https://issues.apache.org/jira/browse/YARN-2393) | *Major* | **FairScheduler: Add the notion of steady fair share**
---

* [YARN-2389](https://issues.apache.org/jira/browse/YARN-2389) | *Major* | **Adding support for drainig a queue, ie killing all apps in the queue**
---

* [YARN-2388](https://issues.apache.org/jira/browse/YARN-2388) | *Major* | **TestTimelineWebServices fails on trunk after HADOOP-10791**
---

* [YARN-2387](https://issues.apache.org/jira/browse/YARN-2387) | *Blocker* | **Resource Manager crashes with NPE due to lack of synchronization**
---

* [YARN-2378](https://issues.apache.org/jira/browse/YARN-2378) | *Major* | **Adding support for moving apps between queues in Capacity Scheduler**
---

* [YARN-2377](https://issues.apache.org/jira/browse/YARN-2377) | *Major* | **Localization exception stack traces are not passed as diagnostic info**
---

* [YARN-2374](https://issues.apache.org/jira/browse/YARN-2374) | *Major* | **YARN trunk build failing TestDistributedShell.testDSShell**
---

* [YARN-2373](https://issues.apache.org/jira/browse/YARN-2373) | *Major* | **WebAppUtils Should Use configuration.getPassword for Accessing SSL Passwords**
---

* [YARN-2372](https://issues.apache.org/jira/browse/YARN-2372) | *Minor* | **There are Chinese Characters in the FairScheduler's document**
---

* [YARN-2370](https://issues.apache.org/jira/browse/YARN-2370) | *Trivial* | **Fix comment in o.a.h.y.server.resourcemanager.schedulerAppSchedulingInfo**
---

* [YARN-2363](https://issues.apache.org/jira/browse/YARN-2363) | *Major* | **Submitted applications occasionally lack a tracking URL**
---

* [YARN-2361](https://issues.apache.org/jira/browse/YARN-2361) | *Trivial* | **RMAppAttempt state machine entries for KILLED state has duplicate event entries**
---

* [YARN-2359](https://issues.apache.org/jira/browse/YARN-2359) | *Critical* | **Application hangs when it fails to launch AM container**
---

* [YARN-2354](https://issues.apache.org/jira/browse/YARN-2354) | *Major* | **DistributedShell may allocate more containers than client specified after it restarts**
---

* [YARN-2352](https://issues.apache.org/jira/browse/YARN-2352) | *Major* | **FairScheduler: Collect metrics on duration of critical methods that affect performance**
---

* [YARN-2347](https://issues.apache.org/jira/browse/YARN-2347) | *Major* | **Consolidate RMStateVersion and NMDBSchemaVersion into StateVersion in yarn-server-common**
---

* [YARN-2343](https://issues.apache.org/jira/browse/YARN-2343) | *Trivial* | **Improve error message on token expire exception**
---

* [YARN-2337](https://issues.apache.org/jira/browse/YARN-2337) | *Trivial* | **ResourceManager sets ClientRMService in RMContext multiple times**
---

* [YARN-2323](https://issues.apache.org/jira/browse/YARN-2323) | *Minor* | **FairShareComparator creates too many Resource objects**
---

* [YARN-2321](https://issues.apache.org/jira/browse/YARN-2321) | *Major* | **NodeManager web UI can incorrectly report Pmem enforcement**
---

* [YARN-2317](https://issues.apache.org/jira/browse/YARN-2317) | *Major* | **Update documentation about how to write YARN applications**
---

* [YARN-2314](https://issues.apache.org/jira/browse/YARN-2314) | *Critical* | **ContainerManagementProtocolProxy can create thousands of threads for a large cluster**
---

* [YARN-2313](https://issues.apache.org/jira/browse/YARN-2313) | *Major* | **Livelock can occur in FairScheduler when there are lots of running apps**
---

* [YARN-2312](https://issues.apache.org/jira/browse/YARN-2312) | *Major* | **Marking ContainerId#getId as deprecated**
---

* [YARN-2308](https://issues.apache.org/jira/browse/YARN-2308) | *Critical* | **NPE happened when RM restart after CapacityScheduler queue configuration changed**
---

* [YARN-2302](https://issues.apache.org/jira/browse/YARN-2302) | *Major* | **Refactor TimelineWebServices**
---

* [YARN-2298](https://issues.apache.org/jira/browse/YARN-2298) | *Major* | **Move TimelineClient to yarn-common project**
---

* [YARN-2295](https://issues.apache.org/jira/browse/YARN-2295) | *Major* | **Refactor YARN distributed shell with existing public stable API**
---

* [YARN-2288](https://issues.apache.org/jira/browse/YARN-2288) | *Major* | **Data persistent in timelinestore should be versioned**
---

* [YARN-2279](https://issues.apache.org/jira/browse/YARN-2279) | *Major* | **Add UTs to cover timeline server authentication**
---

* [YARN-2277](https://issues.apache.org/jira/browse/YARN-2277) | *Major* | **Add Cross-Origin support to the ATS REST API**
---

* [YARN-2274](https://issues.apache.org/jira/browse/YARN-2274) | *Trivial* | **FairScheduler: Add debug information about cluster capacity, availability and reservations**
---

* [YARN-2273](https://issues.apache.org/jira/browse/YARN-2273) | *Major* | **NPE in ContinuousScheduling thread when we lose a node**
---

* [YARN-2269](https://issues.apache.org/jira/browse/YARN-2269) | *Major* | **External links need to be removed from YARN UI**
---

* [YARN-2264](https://issues.apache.org/jira/browse/YARN-2264) | *Major* | **Race in DrainDispatcher can cause random test failures**
---

* [YARN-2260](https://issues.apache.org/jira/browse/YARN-2260) | *Major* | **Add containers to launchedContainers list in RMNode on container recovery**
---

* [YARN-2252](https://issues.apache.org/jira/browse/YARN-2252) | *Major* | **Intermittent failure of TestFairScheduler.testContinuousScheduling**
---

* [YARN-2251](https://issues.apache.org/jira/browse/YARN-2251) | *Major* | **Avoid negative elapsed time in JHS/MRAM web UI and services**
---

* [YARN-2249](https://issues.apache.org/jira/browse/YARN-2249) | *Major* | **AM release request may be lost on RM restart**
---

* [YARN-2248](https://issues.apache.org/jira/browse/YARN-2248) | *Major* | **Capacity Scheduler changes for moving apps between queues**
---

* [YARN-2244](https://issues.apache.org/jira/browse/YARN-2244) | *Critical* | **FairScheduler missing handling of containers for unknown application attempts**
---

* [YARN-2242](https://issues.apache.org/jira/browse/YARN-2242) | *Major* | **Improve exception information on AM launch crashes**
---

* [YARN-2237](https://issues.apache.org/jira/browse/YARN-2237) | *Major* | **MRAppMaster changes for AMRMToken roll-up**
---

* [YARN-2229](https://issues.apache.org/jira/browse/YARN-2229) | *Major* | **ContainerId can overflow with RM restart**
---

* [YARN-2228](https://issues.apache.org/jira/browse/YARN-2228) | *Major* | **TimelineServer should load pseudo authentication filter when authentication = simple**
---

* [YARN-2219](https://issues.apache.org/jira/browse/YARN-2219) | *Major* | **AMs and NMs can get exceptions after recovery but before scheduler knowns apps and app-attempts**
---

* [YARN-2214](https://issues.apache.org/jira/browse/YARN-2214) | *Major* | **FairScheduler: preemptContainerPreCheck() in FSParentQueue delays convergence towards fairness**
---

* [YARN-2212](https://issues.apache.org/jira/browse/YARN-2212) | *Major* | **ApplicationMaster needs to find a way to update the AMRMToken periodically**
---

* [YARN-2211](https://issues.apache.org/jira/browse/YARN-2211) | *Major* | **RMStateStore needs to save AMRMToken master key for recovery when RM restart/failover happens**
---

* [YARN-2209](https://issues.apache.org/jira/browse/YARN-2209) | *Major* | **Replace AM resync/shutdown command with corresponding exceptions**
---

* [YARN-2208](https://issues.apache.org/jira/browse/YARN-2208) | *Major* | **AMRMTokenManager need to have a way to roll over AMRMToken**
---

* [YARN-2207](https://issues.apache.org/jira/browse/YARN-2207) | *Major* | **Add ability to roll over AMRMToken**
---

* [YARN-2198](https://issues.apache.org/jira/browse/YARN-2198) | *Major* | **Remove the need to run NodeManager as privileged account for Windows Secure Container Executor**
---

* [YARN-2197](https://issues.apache.org/jira/browse/YARN-2197) | *Minor* | **Add a link to YARN CHANGES.txt in the left side of doc**
---

* [YARN-2182](https://issues.apache.org/jira/browse/YARN-2182) | *Major* | **Update ContainerId#toString() to avoid conflicts before and after RM restart**
---

* [YARN-2181](https://issues.apache.org/jira/browse/YARN-2181) | *Major* | **Add preemption info to RM Web UI and add logs when preemption occurs**
---

* [YARN-2174](https://issues.apache.org/jira/browse/YARN-2174) | *Major* | **Enabling HTTPs for the writer REST API of TimelineServer**
---

* [YARN-2161](https://issues.apache.org/jira/browse/YARN-2161) | *Major* | **Fix build on macosx: YARN parts**
---

* [YARN-2158](https://issues.apache.org/jira/browse/YARN-2158) | *Minor* | **TestRMWebServicesAppsModification sometimes fails in trunk**
---

* [YARN-2153](https://issues.apache.org/jira/browse/YARN-2153) | *Major* | **Ensure distributed shell work with RM work-preserving recovery**
---

* [YARN-2147](https://issues.apache.org/jira/browse/YARN-2147) | *Minor* | **client lacks delegation token exception details when application submit fails**
---

* [YARN-2138](https://issues.apache.org/jira/browse/YARN-2138) | *Major* | **Cleanup notifyDone* methods in RMStateStore**
---

* [YARN-2131](https://issues.apache.org/jira/browse/YARN-2131) | *Major* | **Add a way to format the RMStateStore**
---

* [YARN-2102](https://issues.apache.org/jira/browse/YARN-2102) | *Major* | **More generalized timeline ACLs**
---

* [YARN-2088](https://issues.apache.org/jira/browse/YARN-2088) | *Major* | **Fix code bug in GetApplicationsRequestPBImpl#mergeLocalToBuilder**
---

* [YARN-2080](https://issues.apache.org/jira/browse/YARN-2080) | *Major* | **Admission Control: Integrate Reservation subsystem with ResourceManager**
---

* [YARN-2070](https://issues.apache.org/jira/browse/YARN-2070) | *Minor* | **DistributedShell publishes unfriendly user information to the timeline server**
---

* [YARN-2045](https://issues.apache.org/jira/browse/YARN-2045) | *Major* | **Data persisted in NM should be versioned**
---

* [YARN-2035](https://issues.apache.org/jira/browse/YARN-2035) | *Major* | **FileSystemApplicationHistoryStore blocks RM and AHS while NN is in safemode**
---

* [YARN-2034](https://issues.apache.org/jira/browse/YARN-2034) | *Minor* | **Description for yarn.nodemanager.localizer.cache.target-size-mb is incorrect**
---

* [YARN-2033](https://issues.apache.org/jira/browse/YARN-2033) | *Major* | **Merging generic-history into the Timeline Store**
---

* [YARN-2026](https://issues.apache.org/jira/browse/YARN-2026) | *Major* | **Fair scheduler: Consider only active queues for computing fairshare**
---

* [YARN-2013](https://issues.apache.org/jira/browse/YARN-2013) | *Major* | **The diagnostics is always the ExitCodeException stack when the container crashes**
---

* [YARN-2010](https://issues.apache.org/jira/browse/YARN-2010) | *Blocker* | **Handle app-recovery failures gracefully**
---

* [YARN-2008](https://issues.apache.org/jira/browse/YARN-2008) | *Major* | **CapacityScheduler may report incorrect queueMaxCap if there is hierarchy queue structure**
---

* [YARN-2001](https://issues.apache.org/jira/browse/YARN-2001) | *Major* | **Threshold for RM to accept requests from AM after failover**
---

* [YARN-1994](https://issues.apache.org/jira/browse/YARN-1994) | *Major* | **Expose YARN/MR endpoints on multiple interfaces**
---

* [YARN-1972](https://issues.apache.org/jira/browse/YARN-1972) | *Major* | **Implement secure Windows Container Executor**
---

* [YARN-1964](https://issues.apache.org/jira/browse/YARN-1964) | *Major* | **Create Docker analog of the LinuxContainerExecutor in YARN**
---

* [YARN-1959](https://issues.apache.org/jira/browse/YARN-1959) | *Major* | **Fix headroom calculation in FairScheduler**
---

* [YARN-1954](https://issues.apache.org/jira/browse/YARN-1954) | *Major* | **Add waitFor to AMRMClient(Async)**
---

* [YARN-1922](https://issues.apache.org/jira/browse/YARN-1922) | *Major* | **Process group remains alive after container process is killed externally**
---

* [YARN-1919](https://issues.apache.org/jira/browse/YARN-1919) | *Minor* | **Potential NPE in EmbeddedElectorService#stop**
---

* [YARN-1918](https://issues.apache.org/jira/browse/YARN-1918) | *Trivial* | **Typo in description and error message for 'yarn.resourcemanager.cluster-id'**
---

* [YARN-1915](https://issues.apache.org/jira/browse/YARN-1915) | *Blocker* | **ClientToAMTokenMasterKey should be provided to AM at launch time**
---

* [YARN-1879](https://issues.apache.org/jira/browse/YARN-1879) | *Critical* | **Mark Idempotent/AtMostOnce annotations to ApplicationMasterProtocol for RM fail over**
---

* [YARN-1857](https://issues.apache.org/jira/browse/YARN-1857) | *Critical* | **CapacityScheduler headroom doesn't account for other AM's running**
---

* [YARN-1796](https://issues.apache.org/jira/browse/YARN-1796) | *Minor* | **container-executor shouldn't require o-r permissions**
---

* [YARN-1779](https://issues.apache.org/jira/browse/YARN-1779) | *Blocker* | **Handle AMRMTokens across RM failover**
---

* [YARN-1769](https://issues.apache.org/jira/browse/YARN-1769) | *Major* | **CapacityScheduler:  Improve reservations**
---

* [YARN-1712](https://issues.apache.org/jira/browse/YARN-1712) | *Major* | **Admission Control: plan follower**
---

* [YARN-1711](https://issues.apache.org/jira/browse/YARN-1711) | *Major* | **CapacityOverTimePolicy: a policy to enforce quotas over time for YARN-1709**
---

* [YARN-1710](https://issues.apache.org/jira/browse/YARN-1710) | *Major* | **Admission Control: agents to allocate reservation**
---

* [YARN-1709](https://issues.apache.org/jira/browse/YARN-1709) | *Major* | **Admission Control: Reservation subsystem**
---

* [YARN-1708](https://issues.apache.org/jira/browse/YARN-1708) | *Major* | **Add a public API to reserve resources (part of YARN-1051)**
---

* [YARN-1707](https://issues.apache.org/jira/browse/YARN-1707) | *Major* | **Making the CapacityScheduler more dynamic**
---

* [YARN-1372](https://issues.apache.org/jira/browse/YARN-1372) | *Major* | **Ensure all completed containers are reported to the AMs across RM restart**
---

* [YARN-1370](https://issues.apache.org/jira/browse/YARN-1370) | *Major* | **Fair scheduler to re-populate container allocation state**
---

* [YARN-1367](https://issues.apache.org/jira/browse/YARN-1367) | *Major* | **After restart NM should resync with the RM without killing containers**
---

* [YARN-1354](https://issues.apache.org/jira/browse/YARN-1354) | *Major* | **Recover applications upon nodemanager restart**
---

* [YARN-1342](https://issues.apache.org/jira/browse/YARN-1342) | *Major* | **Recover container tokens upon nodemanager restart**
---

* [YARN-1341](https://issues.apache.org/jira/browse/YARN-1341) | *Major* | **Recover NMTokens upon nodemanager restart**
---

* [YARN-1337](https://issues.apache.org/jira/browse/YARN-1337) | *Major* | **Recover containers upon nodemanager restart**
---

* [YARN-1326](https://issues.apache.org/jira/browse/YARN-1326) | *Major* | **RM should log using RMStore at startup time**
---

* [YARN-1250](https://issues.apache.org/jira/browse/YARN-1250) | *Major* | **Generic history service should support application-acls**
---

* [YARN-1063](https://issues.apache.org/jira/browse/YARN-1063) | *Major* | **Winutils needs ability to create task as domain user**
---

* [YARN-1051](https://issues.apache.org/jira/browse/YARN-1051) | *Major* | **YARN Admission Control/Planner: enhancing the resource allocation model with time.**
---

* [YARN-668](https://issues.apache.org/jira/browse/YARN-668) | *Blocker* | **TokenIdentifier serialization should consider Unknown fields**
---

* [YARN-611](https://issues.apache.org/jira/browse/YARN-611) | *Major* | **Add an AM retry count reset window to YARN RM**
---

* [YARN-415](https://issues.apache.org/jira/browse/YARN-415) | *Major* | **Capture aggregate memory allocation at the app-level for chargeback**
---

* [YARN-90](https://issues.apache.org/jira/browse/YARN-90) | *Major* | **NodeManager should identify failed disks becoming good again**


