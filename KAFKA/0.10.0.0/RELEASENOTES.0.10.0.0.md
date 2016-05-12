
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
# Apache Kafka  0.10.0.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [KAFKA-3044](https://issues.apache.org/jira/browse/KAFKA-3044) | *Major* | **Consumer.poll doesnot return messages when poll interval is less**

When seeking to particular position in consumer and starting poll with timeout param 0 the consumer does not come back with data though there is data published via a producer already. If the timeout is increased slowly in chunks of 100ms then at 700ms value the consumer returns back the record on first call to poll.

Docs [http://kafka.apache.org/090/javadoc/org/apache/kafka/clients/consumer/KafkaConsumer.html#poll(long)] for poll reads if timeout is 0 then data will be returned immediately but the behaviour seen is that data is not returned.

The test code I am using can be found here https://gist.github.com/praveend/013dcab01ebb8c7e2f2d

I have created a topic with data published as below and then running the test program [ConsumerPollTest.java]

$ bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic mytopic
$ bin/kafka-console-producer.sh --broker-list localhost:9092 --topic mytopic
Hello
Hai
bye
$ java ConsumerPollTest

I have published this 3 lines of data to kafka only once....later on I just use the above program with different poll interval

Let me know if I am missing anything and interpreting it wrongly.


---

* [KAFKA-3029](https://issues.apache.org/jira/browse/KAFKA-3029) | *Major* | **Make class org.apache.kafka.common.TopicPartition Serializable**

The client class TopicPartition is exposed and used by consumer applications directly. In case where the application needs to checkpoint the state it is difficult to serialize different app classes that use TopicPartition as TopicParitition is not serializable.

For instance consider the Spark use case where RDDs have to be checkpointed....the KafakaInputDstream (which we are currently modifying to use the new Kafka API rather than the Highlevel apis in previous version) cannot be serialized due to above limitation.

I have created a patch to serialize TopicPartition class by making it implement serializable interface and have issued a pull request.

Can this be merged for the next release (0.9.0.1)

Thanks

Praveen


---

* [KAFKA-3372](https://issues.apache.org/jira/browse/KAFKA-3372) | *Major* | **Trailing space in Kafka ConsumerConfig**

When I by luck I had left value in properties file with trailing space it thrown such error.
example : 
group.id=MyGroupID\<Blank Space\>

when I read this group.id from properties file and put it to ConsumerConfig, the error appeared as below stacktrace.



Exception in thread "Thread-1003" kafka.common.InvalidConfigException: client.id MyUserDataReaderGroup  is illegal, contains a character other than ASCII alphanumerics, '.', '\_' and '-'
        at kafka.common.Config$class.validateChars(Config.scala:32)
        at kafka.consumer.ConsumerConfig$.validateChars(ConsumerConfig.scala:25)
        at kafka.consumer.ConsumerConfig$.validateClientId(ConsumerConfig.scala:64)
        at kafka.consumer.ConsumerConfig$.validate(ConsumerConfig.scala:57)
        at kafka.consumer.ConsumerConfig.\<init\>(ConsumerConfig.scala:184)
        at kafka.consumer.ConsumerConfig.\<init\>(ConsumerConfig.scala:94)
        at my.package.group.services.kafka.MyUserDataConsumer.setKafkaConfig(MyUserDataConsumer.java:96)
        at my.package.group.services.kafka.MyUserDataConsumer.run(MyUserDataConsumer.java:112)
2016-03-10 13:34:41.280:INFO:oejsh.ContextHandler:main: Started o.e.j.w.WebAppContext@69a90966{/km,file:/tmp/jetty-0.0.0.0-8080-km.war-\_km-any-7539601194543292160.dir/webapp/,AVAILABLE}{/km.war}
2016-03-10 13:34:47.128:INFO:ProProject:main: Spring WebApplicationInitializers detected on classpath: [my.package.group.ProProject.services.web.ApplicationInitializer@3474c3b6]
2016-03-10 13:34:47.259:INFO:ProProject:main: Initializing Spring root WebApplicationContext
2016-03-10 13:34:55.972:INFO:ProProject:main: Initializing Spring FrameworkServlet 'dispatcher'
2016-03-10 13:34:56.782:INFO:oejsh.ContextHandler:main: Started o.e.j.w.WebAppContext@554b8728{/ProProject,file:/tmp/jetty-0.0.0.0-8080-ProProject.war-\_ProProject-any-2165600182871766069.dir/webapp/,AVAILABLE}{/ProProject.war}
2016-03-10 13:34:56.792:INFO:oejs.ServerConnector:main: Started ServerConnector@65269268{HTTP/1.1}{0.0.0.0:8080}


---

* [KAFKA-3448](https://issues.apache.org/jira/browse/KAFKA-3448) | *Major* | **Support zone index in IPv6 regex**

When an address is written textually, the zone index is appended to the address, separated by a percent sign (%). The actual syntax of zone indices depends on the operating system.



