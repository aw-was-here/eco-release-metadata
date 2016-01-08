
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
# Apache Spark  1.6.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [SPARK-12016](https://issues.apache.org/jira/browse/SPARK-12016) | *Major* | **word2vec load model can't use findSynonyms to get words**

I use word2vec.fit to train a word2vecModel and then save the model to file system. when I load the model from file system, I found I can use transform('a') to get a vector, but I can't use findSynonyms('a', 2) to get some words.

I use the fellow code to test word2vec

from pyspark import SparkContext
from pyspark.mllib.feature import Word2Vec, Word2VecModel

import os, tempfile
from shutil import rmtree

if \_\_name\_\_ == '\_\_main\_\_':
    sc = SparkContext('local', 'test')
    sentence = "a b " \* 100 + "a c " \* 10
    localDoc = [sentence, sentence]
    doc = sc.parallelize(localDoc).map(lambda line: line.split(" "))
    model = Word2Vec().setVectorSize(10).setSeed(42).fit(doc)

    syms = model.findSynonyms("a", 2)
    print [s[0] for s in syms]
    path = tempfile.mkdtemp()
    model.save(sc, path)
    sameModel = Word2VecModel.load(sc, path)
    print model.transform("a") == sameModel.transform("a")
    syms = sameModel.findSynonyms("a", 2)
    print [s[0] for s in syms]
    try:
        rmtree(path)
    except OSError:
        pass

I got "[u'b', u'c']" when the first printf
then the “True” and " [u'\_\_class\_\_'] "
I don't know how to get 'b' or 'c' with sameModel.findSynonyms("a", 2)



