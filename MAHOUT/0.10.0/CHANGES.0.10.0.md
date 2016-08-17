
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
# Apache Mahout Changelog

## Release 0.10.0 - 2015-04-12



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAHOUT-1438](https://issues.apache.org/jira/browse/MAHOUT-1438) | "quickstart" tutorial for building a simple recommender |  Major | Examples | Maciej Mazur |  |
| [MAHOUT-1420](https://issues.apache.org/jira/browse/MAHOUT-1420) | Add solr-recommender to examples |  Minor | Examples | Andrew Musselman | Andrew Musselman |
| [MAHOUT-1445](https://issues.apache.org/jira/browse/MAHOUT-1445) | Create an intro for item based recommender |  Major | Documentation | Maciej Mazur |  |
| [MAHOUT-1518](https://issues.apache.org/jira/browse/MAHOUT-1518) | Preprocessing for collaborative filtering with the Scala DSL |  Major | Collaborative Filtering | Sebastian Schelter | Sebastian Schelter |
| [MAHOUT-1489](https://issues.apache.org/jira/browse/MAHOUT-1489) | Interactive Scala & Spark Bindings Shell & Script processor |  Major | . | Saikat Kanjilal | Dmitriy Lyubimov |
| [MAHOUT-1446](https://issues.apache.org/jira/browse/MAHOUT-1446) | Create an intro for matrix factorization |  Major | Documentation | Maciej Mazur | Sebastian Schelter |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAHOUT-1416](https://issues.apache.org/jira/browse/MAHOUT-1416) | Make access of DecisionForest read() less restricted |  Major | . | Manoj Awasthi | Suneel Marthi |
| [MAHOUT-1429](https://issues.apache.org/jira/browse/MAHOUT-1429) | Parallelize YtransposeY in ImplicitFeedbackAlternatingLeastSquaresSolver |  Minor | Collaborative Filtering | Adam Ilardi | Sebastian Schelter |
| [MAHOUT-1433](https://issues.apache.org/jira/browse/MAHOUT-1433) | Make SVDRecommender look at all unknown items of a user per default |  Major | Collaborative Filtering | Sebastian Schelter | Sebastian Schelter |
| [MAHOUT-1413](https://issues.apache.org/jira/browse/MAHOUT-1413) | Rework algorithms page |  Critical | . | Sebastian Schelter | Suneel Marthi |
| [MAHOUT-1447](https://issues.apache.org/jira/browse/MAHOUT-1447) | ImplicitFeedbackAlternatingLeastSquaresSolver tests and features |  Minor | Collaborative Filtering | Adam Ilardi | Sebastian Schelter |
| [MAHOUT-1448](https://issues.apache.org/jira/browse/MAHOUT-1448) | In Random Forest, the training does not support multiple input files. The input dataset must be one single file. |  Major | . | Manoj Awasthi | Sebastian Schelter |
| [MAHOUT-1459](https://issues.apache.org/jira/browse/MAHOUT-1459) | Move Hadoop related code out of CanopyClusterer |  Minor | Clustering | Frank Scholten | Frank Scholten |
| [MAHOUT-1460](https://issues.apache.org/jira/browse/MAHOUT-1460) | Remove reference to Dirichlet in ClusterIterator |  Major | Clustering | Frank Scholten | Frank Scholten |
| [MAHOUT-1437](https://issues.apache.org/jira/browse/MAHOUT-1437) | Remove all links to wiki pages from the website |  Major | . | Sebastian Schelter | Sebastian Schelter |
| [MAHOUT-1463](https://issues.apache.org/jira/browse/MAHOUT-1463) | Modify OnlineSummarizers to use the TDigest dependency from Maven Central. |  Major | Math | Suneel Marthi | Suneel Marthi |
| [MAHOUT-1356](https://issues.apache.org/jira/browse/MAHOUT-1356) | Ensure unit tests fail fast when writing outside mvn target directory |  Major | . | Isabel Drost-Fromm | Suneel Marthi |
| [MAHOUT-1472](https://issues.apache.org/jira/browse/MAHOUT-1472) | Cleanup website on Fuzzy k-Means |  Major | Documentation | Sebastian Schelter | Suneel Marthi |
| [MAHOUT-1475](https://issues.apache.org/jira/browse/MAHOUT-1475) | Clean up website on Naive Bayes |  Major | Documentation | Sebastian Schelter | Suneel Marthi |
| [MAHOUT-1471](https://issues.apache.org/jira/browse/MAHOUT-1471) | Cleanup website on Canopy Clustering |  Major | Documentation | Sebastian Schelter | Suneel Marthi |
| [MAHOUT-1476](https://issues.apache.org/jira/browse/MAHOUT-1476) | Cleanup website on Hidden Markov Models |  Major | Documentation | Sebastian Schelter | Andrew Musselman |
| [MAHOUT-1374](https://issues.apache.org/jira/browse/MAHOUT-1374) | Ability to provide input file with userid, itemid pair |  Major | Collaborative Filtering | Romit Singhai | Sebastian Schelter |
| [MAHOUT-1483](https://issues.apache.org/jira/browse/MAHOUT-1483) | Organize links in web site navigation bar |  Minor | Documentation | Andrew Musselman | Andrew Musselman |
| [MAHOUT-1387](https://issues.apache.org/jira/browse/MAHOUT-1387) | Create page for release notes |  Minor | Documentation | Isabel Drost-Fromm | Sebastian Schelter |
| [MAHOUT-1440](https://issues.apache.org/jira/browse/MAHOUT-1440) | Add option to set the RNG seed for inital cluster generation in Kmeans/fKmeans |  Minor | CLI, Clustering | Andrew Palumbo | Sebastian Schelter |
| [MAHOUT-950](https://issues.apache.org/jira/browse/MAHOUT-950) | Change BtJob to use new MultipleOutputs API |  Major | Math | Tom White | Suneel Marthi |
| [MAHOUT-1519](https://issues.apache.org/jira/browse/MAHOUT-1519) | Remove StandardThetaTrainer |  Major | Classification | Sebastian Schelter |  |
| [MAHOUT-1520](https://issues.apache.org/jira/browse/MAHOUT-1520) | Fix links in Mahout website documentation |  Major | Documentation | Saleem Ansari | Suneel Marthi |
| [MAHOUT-1530](https://issues.apache.org/jira/browse/MAHOUT-1530) | Custom prompt and welcome message for the Spark Shell |  Minor | Math | Sebastian Schelter | Sebastian Schelter |
| [MAHOUT-1346](https://issues.apache.org/jira/browse/MAHOUT-1346) | Spark Bindings (DRM) |  Major | . | Dmitriy Lyubimov | Dmitriy Lyubimov |
| [MAHOUT-1542](https://issues.apache.org/jira/browse/MAHOUT-1542) | Tutorial for playing with Mahout's Spark shell |  Major | Documentation, Math | Sebastian Schelter | Sebastian Schelter |
| [MAHOUT-1388](https://issues.apache.org/jira/browse/MAHOUT-1388) | Add command line support and logging for MLP |  Major | Classification | Yexi Jiang | Suneel Marthi |
| [MAHOUT-1554](https://issues.apache.org/jira/browse/MAHOUT-1554) | Provide more comprehensive classification statistics |  Minor | Classification | Karol Grzegorczyk |  |
| [MAHOUT-1558](https://issues.apache.org/jira/browse/MAHOUT-1558) | Clean up classify-wiki.sh and add in a binary classification problem |  Minor | Classification, Examples | Andrew Palumbo | Sebastian Schelter |
| [MAHOUT-1480](https://issues.apache.org/jira/browse/MAHOUT-1480) | Clean up website on 20 newsgroups |  Major | Documentation | Sebastian Schelter |  |
| [MAHOUT-1529](https://issues.apache.org/jira/browse/MAHOUT-1529) | Finalize abstraction of distributed logical plans from backend operations |  Major | . | Dmitriy Lyubimov | Dmitriy Lyubimov |
| [MAHOUT-1580](https://issues.apache.org/jira/browse/MAHOUT-1580) | Optimize getNumNonZeroElements |  Major | Math | Sebastian Schelter | Sebastian Schelter |
| [MAHOUT-1565](https://issues.apache.org/jira/browse/MAHOUT-1565) | add MR2 options to MAHOUT\_OPTS in bin/mahout |  Major | . | Nishkam Ravi | Gokhan Capan |
| [MAHOUT-1606](https://issues.apache.org/jira/browse/MAHOUT-1606) | Add rowSums, rowMeans and diagonal extraction operations to distributed matrices |  Major | . | Dmitriy Lyubimov | Dmitriy Lyubimov |
| [MAHOUT-1608](https://issues.apache.org/jira/browse/MAHOUT-1608) | Add Option WikipediaToSequenceFile to remove Category Labels from Documents |  Minor | . | Andrew Palumbo | Andrew Palumbo |
| [MAHOUT-1500](https://issues.apache.org/jira/browse/MAHOUT-1500) | H2O integration |  Major | . | Anand Avati | Andrew Palumbo |
| [MAHOUT-1616](https://issues.apache.org/jira/browse/MAHOUT-1616) | Better support for hadoop dependencies of multiple versions |  Major | build | Gokhan Capan | Gokhan Capan |
| [MAHOUT-1425](https://issues.apache.org/jira/browse/MAHOUT-1425) | SGD classifier example with bank marketing dataset |  Major | Examples | Frank Scholten | Frank Scholten |
| [MAHOUT-1485](https://issues.apache.org/jira/browse/MAHOUT-1485) | Clean up Recommender Overview page |  Major | Documentation | Sebastian Schelter | Sebastian Schelter |
| [MAHOUT-1578](https://issues.apache.org/jira/browse/MAHOUT-1578) | Optimizations in matrix serialization |  Major | Math | Sebastian Schelter | Sebastian Schelter |
| [MAHOUT-1598](https://issues.apache.org/jira/browse/MAHOUT-1598) | extend seq2sparse to handle multiple text blocks of same document |  Major | . | Wolfgang Buchner | Andrew Musselman |
| [MAHOUT-1278](https://issues.apache.org/jira/browse/MAHOUT-1278) | Upgrade to Apache parent pom v16 |  Minor | build | Stevo Slavic | Stevo Slavic |
| [MAHOUT-1661](https://issues.apache.org/jira/browse/MAHOUT-1661) | Deprecate Lanczos in the code base |  Critical | Clustering | Suneel Marthi | Shannon Quinn |
| [MAHOUT-1655](https://issues.apache.org/jira/browse/MAHOUT-1655) | Refactor module dependencies |  Critical | mrlegacy | Pat Ferrel | Andrew Musselman |
| [MAHOUT-1559](https://issues.apache.org/jira/browse/MAHOUT-1559) | Add documentation for and clean up the wikipedia classifier example |  Minor | Documentation, Examples | Andrew Palumbo | Andrew Palumbo |
| [MAHOUT-1672](https://issues.apache.org/jira/browse/MAHOUT-1672) | Update OnlineSummarizer to use the new T-Digest 3.1 |  Trivial | Math | Suneel Marthi | Ted Dunning |
| [MAHOUT-1649](https://issues.apache.org/jira/browse/MAHOUT-1649) | Upgrade to Lucene 4.10.x |  Major | Integration | Suneel Marthi | Suneel Marthi |
| [MAHOUT-1585](https://issues.apache.org/jira/browse/MAHOUT-1585) | Javadocs are not hosted By Mahout Quality |  Major | Documentation | Andrew Palumbo | Stevo Slavic |
| [MAHOUT-1562](https://issues.apache.org/jira/browse/MAHOUT-1562) | Publish Scaladocs |  Minor | Documentation | Pat Ferrel | Stevo Slavic |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAHOUT-1415](https://issues.apache.org/jira/browse/MAHOUT-1415) | Clone method on sparse matrices fails if there is an empty row which has not been set explicitly |  Minor | Math | Till Rohrmann | Sebastian Schelter |
| [MAHOUT-1417](https://issues.apache.org/jira/browse/MAHOUT-1417) | Random decision forest implementation fails in Hadoop 2 |  Major | Classification | Sean Owen |  |
| [MAHOUT-1419](https://issues.apache.org/jira/browse/MAHOUT-1419) | Random decision forest is excessively slow on numeric features |  Major | Classification | Sean Owen | Sean Owen |
| [MAHOUT-1455](https://issues.apache.org/jira/browse/MAHOUT-1455) | Forkcount config causes JVM crashes during build |  Major | build | Frank Scholten | Frank Scholten |
| [MAHOUT-1458](https://issues.apache.org/jira/browse/MAHOUT-1458) | Remove KMeansConfigKeys and FuzzyKMeansConfigKeys |  Major | Clustering | Frank Scholten | Frank Scholten |
| [MAHOUT-1457](https://issues.apache.org/jira/browse/MAHOUT-1457) | Move EigenSeedGenerator into spectral kmeans package |  Major | Clustering | Frank Scholten | Frank Scholten |
| [MAHOUT-1465](https://issues.apache.org/jira/browse/MAHOUT-1465) | Clean up README |  Trivial | Documentation | Andrew Musselman | Andrew Musselman |
| [MAHOUT-1466](https://issues.apache.org/jira/browse/MAHOUT-1466) | Cluster visualization fails to execute |  Major | . | Sebastian Schelter |  |
| [MAHOUT-1467](https://issues.apache.org/jira/browse/MAHOUT-1467) | ClusterClassifier readPolicy leaks file handles |  Major | Clustering | Avi Shinnar | Suneel Marthi |
| [MAHOUT-1488](https://issues.apache.org/jira/browse/MAHOUT-1488) | DisplaySpectralKMeans fails: examples/output/clusteredPoints/part-m-00000 does not exist. |  Major | Examples | Saleem Ansari | Suneel Marthi |
| [MAHOUT-1491](https://issues.apache.org/jira/browse/MAHOUT-1491) | Spectral KMeans Clustering doesn't clean its /tmp dir and fails when seeing it again |  Minor | Clustering | Suneel Marthi | Suneel Marthi |
| [MAHOUT-1492](https://issues.apache.org/jira/browse/MAHOUT-1492) | Doap file has references to cwiki still |  Major | . | Ted Dunning |  |
| [MAHOUT-1501](https://issues.apache.org/jira/browse/MAHOUT-1501) | ClusterOutputPostProcessorDriver has private default constructor |  Trivial | Clustering | Reinis Vicups | Sebastian Schelter |
| [MAHOUT-1494](https://issues.apache.org/jira/browse/MAHOUT-1494) | README.txt is examples/clustering needs to be updated |  Minor | Clustering | Suneel Marthi | Andrew Musselman |
| [MAHOUT-1508](https://issues.apache.org/jira/browse/MAHOUT-1508) | Performance problems with sparse matrices |  Blocker | Math | Sebastian Schelter | Sebastian Schelter |
| [MAHOUT-1435](https://issues.apache.org/jira/browse/MAHOUT-1435) | Website Redesign |  Major | . | Sebastian Schelter | Sebastian Schelter |
| [MAHOUT-1503](https://issues.apache.org/jira/browse/MAHOUT-1503) | TestNaiveBayesDriver fails in sequential mode |  Minor | Classification, Examples | Andrew Palumbo | Suneel Marthi |
| [MAHOUT-1497](https://issues.apache.org/jira/browse/MAHOUT-1497) | mahout resplit not producing splited files |  Major | CLI | Reinis Vicups | Sebastian Schelter |
| [MAHOUT-1517](https://issues.apache.org/jira/browse/MAHOUT-1517) | Remove casts to int in ALSWRFactorizer |  Major | Collaborative Filtering | Sebastian Schelter | Sebastian Schelter |
| [MAHOUT-1496](https://issues.apache.org/jira/browse/MAHOUT-1496) | Create a website describing the distributed ALS recommender |  Major | Collaborative Filtering, Documentation | Sebastian Schelter | Sebastian Schelter |
| [MAHOUT-1523](https://issues.apache.org/jira/browse/MAHOUT-1523) | Remove @author tags in sparkbindings |  Major | . | Sebastian Schelter |  |
| [MAHOUT-1502](https://issues.apache.org/jira/browse/MAHOUT-1502) | Update Naive Bayes Webpage to Current Implementation |  Minor | Documentation | Andrew Palumbo |  |
| [MAHOUT-1537](https://issues.apache.org/jira/browse/MAHOUT-1537) | minor fixes to spark-shell |  Minor | . | Anand Avati | Dmitriy Lyubimov |
| [MAHOUT-1428](https://issues.apache.org/jira/browse/MAHOUT-1428) | Recommending already consumed items |  Major | Collaborative Filtering | Mario Levitin |  |
| [MAHOUT-1548](https://issues.apache.org/jira/browse/MAHOUT-1548) | Fix broken links in quickstart webpage |  Major | Documentation | Andrew Palumbo |  |
| [MAHOUT-1441](https://issues.apache.org/jira/browse/MAHOUT-1441) | Add documentation for Spectral KMeans to Mahout Website |  Major | Documentation | Suneel Marthi | Shannon Quinn |
| [MAHOUT-1532](https://issues.apache.org/jira/browse/MAHOUT-1532) | Add solve() function to the Scala DSL |  Major | Math | Sebastian Schelter |  |
| [MAHOUT-1385](https://issues.apache.org/jira/browse/MAHOUT-1385) | Caching Encoders don't cache |  Minor | . | Johannes Schulte |  |
| [MAHOUT-1498](https://issues.apache.org/jira/browse/MAHOUT-1498) | DistributedCache.setCacheFiles in DictionaryVectorizer overwrites jars pushed using oozie |  Major | . | Sergey | Sebastian Schelter |
| [MAHOUT-1560](https://issues.apache.org/jira/browse/MAHOUT-1560) | Last batch is not filled correctly in MultithreadedBatchItemSimilarities |  Minor | Collaborative Filtering | Jarosław Bojar | Sebastian Schelter |
| [MAHOUT-1561](https://issues.apache.org/jira/browse/MAHOUT-1561) | cluster-syntheticcontrol.sh not running locally with MAHOUT\_LOCAL=true |  Minor | Clustering, Examples | Andrew Palumbo | Sebastian Schelter |
| [MAHOUT-1555](https://issues.apache.org/jira/browse/MAHOUT-1555) | Exception thrown when a test example has the label not present in training examples |  Minor | Classification | Karol Grzegorczyk | Suneel Marthi |
| [MAHOUT-1505](https://issues.apache.org/jira/browse/MAHOUT-1505) | structure of clusterdump's JSON output |  Major | Clustering | Terry Blankers | Andrew Musselman |
| [MAHOUT-1574](https://issues.apache.org/jira/browse/MAHOUT-1574) | SparseRowMatrix needs performance improvement for times() |  Major | . | Ted Dunning | Ted Dunning |
| [MAHOUT-1575](https://issues.apache.org/jira/browse/MAHOUT-1575) | Conjugate gradient assumes best case scenario for convergence |  Major | . | Ted Dunning |  |
| [MAHOUT-1576](https://issues.apache.org/jira/browse/MAHOUT-1576) | Do a quick style pass to knock down some accumulated warnings |  Major | . | Ted Dunning |  |
| [MAHOUT-1577](https://issues.apache.org/jira/browse/MAHOUT-1577) | FindBugs and PMD settings unrealistic |  Major | . | Ted Dunning |  |
| [MAHOUT-1571](https://issues.apache.org/jira/browse/MAHOUT-1571) | Functional Views are not serialized as dense/sparse correctly |  Major | . | Dmitriy Lyubimov | Dmitriy Lyubimov |
| [MAHOUT-1572](https://issues.apache.org/jira/browse/MAHOUT-1572) | blockify() to detect (naively) the data sparsity in the loaded data |  Major | . | Dmitriy Lyubimov |  |
| [MAHOUT-1439](https://issues.apache.org/jira/browse/MAHOUT-1439) | Update talks on Mahout |  Major | Documentation | Sebastian Schelter |  |
| [MAHOUT-1581](https://issues.apache.org/jira/browse/MAHOUT-1581) | Timeout-based SRM test can hit limits on Apache test infra |  Major | . | Ted Dunning |  |
| [MAHOUT-1521](https://issues.apache.org/jira/browse/MAHOUT-1521) | lucene2seq - Error trying to  load data from stored field (when non-indexed) |  Major | . | Terry Blankers | Frank Scholten |
| [MAHOUT-1427](https://issues.apache.org/jira/browse/MAHOUT-1427) | Convert old .mapred API to new .mapreduce |  Minor | Collaborative Filtering, Integration | Suneel Marthi | Suneel Marthi |
| [MAHOUT-1597](https://issues.apache.org/jira/browse/MAHOUT-1597) | A + 1.0 (element-wise scala operation) gives wrong result if rdd is missing rows, Spark side |  Major | . | Dmitriy Lyubimov | Dmitriy Lyubimov |
| [MAHOUT-1596](https://issues.apache.org/jira/browse/MAHOUT-1596) | support for rbind() operator on DRMs |  Major | . | Anand Avati |  |
| [MAHOUT-1587](https://issues.apache.org/jira/browse/MAHOUT-1587) | Update website to reflect move to GitHub |  Major | Documentation | Andrew Palumbo |  |
| [MAHOUT-1595](https://issues.apache.org/jira/browse/MAHOUT-1595) | iterateNonZero() is broken in MatrixVectorView |  Major | Math | Anand Avati |  |
| [MAHOUT-1610](https://issues.apache.org/jira/browse/MAHOUT-1610) | Tests can be made more robust to pass in Java 8 |  Minor | Integration | Sean Owen | Sean Owen |
| [MAHOUT-1615](https://issues.apache.org/jira/browse/MAHOUT-1615) | SparkEngine drmFromHDFS returning the same Key for all Key,Vec Pairs for Text-Keyed SequenceFiles |  Major | . | Andrew Palumbo | Andrew Palumbo |
| [MAHOUT-1611](https://issues.apache.org/jira/browse/MAHOUT-1611) | Preconditions.checkArgument in org.apache.mahout.utils.ConcatenateVectorsJob |  Minor | Integration | Haishou Ma | Suneel Marthi |
| [MAHOUT-1639](https://issues.apache.org/jira/browse/MAHOUT-1639) | streamingkmeans doesn't properly validate estimatedNumMapClusters -km |  Minor | CLI | Peter Sergeant | Suneel Marthi |
| [MAHOUT-1590](https://issues.apache.org/jira/browse/MAHOUT-1590) | mahout unit test failures due to guava version conflict on hadoop 2 |  Major | . | Venkat Ranganathan | Stevo Slavic |
| [MAHOUT-1636](https://issues.apache.org/jira/browse/MAHOUT-1636) | Class dependencies for the spark module are put in a job.jar, which is very inefficient |  Major | spark | Pat Ferrel | Pat Ferrel |
| [MAHOUT-1624](https://issues.apache.org/jira/browse/MAHOUT-1624) | Compilation errors when changing Lucene version to 4.10.1 |  Minor | Integration | Tom Lampert |  |
| [MAHOUT-1612](https://issues.apache.org/jira/browse/MAHOUT-1612) | NullPointerException happens during JSON output format for clusterdumper |  Major | Clustering | Guo Ruijing | Suneel Marthi |
| [MAHOUT-1563](https://issues.apache.org/jira/browse/MAHOUT-1563) | Clean up WARNINGs during build |  Minor | build | Andrew Musselman | Stevo Slavic |
| [MAHOUT-1516](https://issues.apache.org/jira/browse/MAHOUT-1516) | run classify-20newsgroups.sh failed cause by /tmp/mahout-work-jpan/20news-all does not exists in hdfs. |  Minor | Examples | Jian Pan | Andrew Palumbo |
| [MAHOUT-1619](https://issues.apache.org/jira/browse/MAHOUT-1619) | HighDFWordsPruner overwrites cache files |  Minor | . | Burke Webster | Suneel Marthi |
| [MAHOUT-1602](https://issues.apache.org/jira/browse/MAHOUT-1602) | Euclidean Distance Similarity Math |  Minor | Collaborative Filtering, Math | Leonardo Fernandez Sanchez | Stevo Slavic |
| [MAHOUT-1522](https://issues.apache.org/jira/browse/MAHOUT-1522) | Handle logging levels via log4j.xml |  Critical | . | Andrew Musselman | Andrew Musselman |
| [MAHOUT-1589](https://issues.apache.org/jira/browse/MAHOUT-1589) | mahout.cmd has duplicated content |  Major | CLI | Venkat Ranganathan | Pat Ferrel |
| [MAHOUT-1586](https://issues.apache.org/jira/browse/MAHOUT-1586) | Downloads must have hashes |  Blocker | collections | Sebb | Suneel Marthi |
| [MAHOUT-1617](https://issues.apache.org/jira/browse/MAHOUT-1617) | 404 error on link in cluster-dumper tutorial page |  Trivial | . | Anthony Daniell | Andrew Palumbo |
| [MAHOUT-1638](https://issues.apache.org/jira/browse/MAHOUT-1638) | H2O bindings fail at drmParallelizeWithRowLabels(...) |  Blocker | . | Andrew Palumbo | Andrew Palumbo |
| [MAHOUT-1593](https://issues.apache.org/jira/browse/MAHOUT-1593) | cluster-reuters.sh does not work complaining java.lang.IllegalStateException |  Minor | Examples | jaehoon ko | Suneel Marthi |
| [MAHOUT-1662](https://issues.apache.org/jira/browse/MAHOUT-1662) | Potential Path bug in SequenceFileVaultIterator breaks DisplaySpectralKMeans |  Major | Examples, mrlegacy | Shannon Quinn | Suneel Marthi |
| [MAHOUT-1667](https://issues.apache.org/jira/browse/MAHOUT-1667) | Support Hadoop 1.2.1 in poms |  Critical | build | Pat Ferrel | Stevo Slavic |
| [MAHOUT-1635](https://issues.apache.org/jira/browse/MAHOUT-1635) | Getting an exception when I provide classification labels manually for Naive Bayes |  Major | Classification | Suman Somasundar | Andrew Palumbo |
| [MAHOUT-1622](https://issues.apache.org/jira/browse/MAHOUT-1622) | MultithreadedBatchItemSimilarities outputs incorrect number of similarities. |  Minor | Collaborative Filtering | Jesse Daniels | Anand Avati |
| [MAHOUT-1674](https://issues.apache.org/jira/browse/MAHOUT-1674) | A'A fails getting with an index out of range for a row vector |  Critical | s | Pat Ferrel | Pat Ferrel |
| [MAHOUT-1665](https://issues.apache.org/jira/browse/MAHOUT-1665) | Update hadoop commands in example scripts |  Critical | Examples | Andrew Musselman | Andrew Musselman |
| [MAHOUT-1630](https://issues.apache.org/jira/browse/MAHOUT-1630) | Incorrect SparseColumnMatrix.numSlices() causes IndexException in toString() |  Major | Math | Oleg Nitz | Suneel Marthi |
| [MAHOUT-1678](https://issues.apache.org/jira/browse/MAHOUT-1678) | Hadoop 1 build broken |  Blocker | Integration | Pat Ferrel | Suneel Marthi |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAHOUT-1605](https://issues.apache.org/jira/browse/MAHOUT-1605) | Make VisualizerTest locale independent |  Trivial | . | Frank Rosner | Anand Avati |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAHOUT-1434](https://issues.apache.org/jira/browse/MAHOUT-1434) | Dead links on the website |  Minor | Documentation | Kévin Moulart | Suneel Marthi |
| [MAHOUT-1451](https://issues.apache.org/jira/browse/MAHOUT-1451) | Cleaning up the examples for clustering on the website |  Major | . | Gaurav Misra | Sebastian Schelter |
| [MAHOUT-1449](https://issues.apache.org/jira/browse/MAHOUT-1449) | Update the Known Issues in Random Forests Page |  Major | Documentation | Manoj Awasthi |  |
| [MAHOUT-1509](https://issues.apache.org/jira/browse/MAHOUT-1509) | Invalid URL in link from "quick start/basics" page |  Minor | Examples | Nick Martin | Suneel Marthi |
| [MAHOUT-1369](https://issues.apache.org/jira/browse/MAHOUT-1369) | Why does theta normalization for naive bayes classification commented out? |  Minor | Classification | utku yaman | Suneel Marthi |
| [MAHOUT-1468](https://issues.apache.org/jira/browse/MAHOUT-1468) | Creating a new page for StreamingKMeans documentation on mahout website |  Major | Documentation | Pavan Kumar N | Andrew Musselman |
| [MAHOUT-1525](https://issues.apache.org/jira/browse/MAHOUT-1525) | train/validateAdaptiveLogistic |  Major | Classification | Richard Scharrer |  |
| [MAHOUT-1644](https://issues.apache.org/jira/browse/MAHOUT-1644) | [JDK8] errors when compile the module math-scala with JDK8 and maven dependency org.scala-lang:scala-library |  Major | build | zhubin |  |
| [MAHOUT-1666](https://issues.apache.org/jira/browse/MAHOUT-1666) | Broken Links on Website |  Minor | Documentation | Tyler Palsulich | Andrew Palumbo |
| [MAHOUT-1652](https://issues.apache.org/jira/browse/MAHOUT-1652) | Java 7 update |  Critical | . | Andrew Musselman | Suneel Marthi |
| [MAHOUT-1418](https://issues.apache.org/jira/browse/MAHOUT-1418) | Removal of write access to anything but CMS for username isabel |  Trivial | . | Isabel Drost-Fromm | Isabel Drost-Fromm |
| [MAHOUT-1329](https://issues.apache.org/jira/browse/MAHOUT-1329) | Mahout for hadoop 2 |  Major | build | Sergey Svinarchuk | Gokhan Capan |
| [MAHOUT-1504](https://issues.apache.org/jira/browse/MAHOUT-1504) | Enable/fix thetaSummer job in TrainNaiveBayesJob |  Minor | Classification, Examples | Andrew Palumbo | Suneel Marthi |
| [MAHOUT-1513](https://issues.apache.org/jira/browse/MAHOUT-1513) | Deprecate Canopy Clustering |  Major | . | Sebastian Schelter | Sebastian Schelter |
| [MAHOUT-1511](https://issues.apache.org/jira/browse/MAHOUT-1511) | Renaming core to mrlegacy |  Major | . | Sebastian Schelter | Frank Scholten |
| [MAHOUT-1510](https://issues.apache.org/jira/browse/MAHOUT-1510) | Goodbye MapReduce |  Major | Documentation | Sebastian Schelter |  |
| [MAHOUT-1310](https://issues.apache.org/jira/browse/MAHOUT-1310) | Mahout support windows |  Major | . | Sergey Svinarchuk | Sergey Svinarchuk |
| [MAHOUT-1515](https://issues.apache.org/jira/browse/MAHOUT-1515) | Contact the original Frequent Pattern Mining author |  Critical | . | Sebastian Schelter |  |
| [MAHOUT-1526](https://issues.apache.org/jira/browse/MAHOUT-1526) | Ant file in examples |  Major | Examples | Sebastian Schelter | Sebastian Schelter |
| [MAHOUT-1535](https://issues.apache.org/jira/browse/MAHOUT-1535) | Fix mathjax on website |  Major | Documentation | Sebastian Schelter |  |
| [MAHOUT-1533](https://issues.apache.org/jira/browse/MAHOUT-1533) | Remove Frequent Pattern Mining |  Major | . | Sebastian Schelter | Sebastian Schelter |
| [MAHOUT-1527](https://issues.apache.org/jira/browse/MAHOUT-1527) | Fix wikipedia classifier example |  Major | Classification, Documentation, Examples | Sebastian Schelter |  |
| [MAHOUT-1534](https://issues.apache.org/jira/browse/MAHOUT-1534) | Add documentation for using Mahout with Hadoop2 to the website |  Major | Documentation | Sebastian Schelter | Gokhan Capan |
| [MAHOUT-1566](https://issues.apache.org/jira/browse/MAHOUT-1566) | Regular ALS factorizer with convergence test. |  Trivial | . | Dmitriy Lyubimov | Dmitriy Lyubimov |
| [MAHOUT-1573](https://issues.apache.org/jira/browse/MAHOUT-1573) | More explicit parallelism adjustments in math-scala DRM apis; elements of automatic parallelism management |  Major | . | Dmitriy Lyubimov | Dmitriy Lyubimov |
| [MAHOUT-1583](https://issues.apache.org/jira/browse/MAHOUT-1583) | cbind() operator for Scala DRMs |  Major | . | Dmitriy Lyubimov | Dmitriy Lyubimov |
| [MAHOUT-1603](https://issues.apache.org/jira/browse/MAHOUT-1603) | Tweaks for Spark 1.0.x |  Major | . | Dmitriy Lyubimov | Dmitriy Lyubimov |
| [MAHOUT-1659](https://issues.apache.org/jira/browse/MAHOUT-1659) | Remove deprecated Lanczos solver from spectral clustering in mr-legacy |  Minor | Clustering, mrlegacy | Shannon Quinn | Shannon Quinn |
| [MAHOUT-1656](https://issues.apache.org/jira/browse/MAHOUT-1656) | Change SNAPSHOT version from 1.0 to 0.10.0 |  Critical | build | Andrew Musselman | Suneel Marthi |
| [MAHOUT-1512](https://issues.apache.org/jira/browse/MAHOUT-1512) | Hadoop 2 compatibility |  Critical | . | Sebastian Schelter | Suneel Marthi |


