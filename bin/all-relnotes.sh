#!/bin/bash

this="${BASH_SOURCE-$0}"
bin=$(cd -P -- "$(dirname -- "${this}")" >/dev/null && pwd -P)

OPATH=${PATH}
PATH=${bin}:${OPATH}
cd ${HOME}/Src/aw-github/eco-release-metadata/YETUS
releasedocmaker.py --project HADOOP \
        --projecttitle "Apache Hadoop Yetus" \
        --version HADOOP-12111

cd ${HOME}/Src/aw-github/eco-release-metadata/HADOOP
releasedocmaker.py --project HADOOP --project HDFS --project YARN --project MAPREDUCE \
        --projecttitle "Apache Hadoop" \
        --range --version 2.6.0 --version 3.0.0

cd ${HOME}/Src/aw-github/eco-release-metadata/HBASE
releasedocmaker.py --project HBASE --projecttitle "Apache HBase" \
        --range --version 1.0.3 --version 2.0.0

cd ${HOME}/Src/aw-github/eco-release-metadata/HIVE
releasedocmaker.py --project HIVE --projecttitle "Apache Hive" \
        --range --version 1.1.0 --version 2.0.0

cd ${HOME}/Src/aw-github/eco-release-metadata/KAFKA
releasedocmaker.py --project KAFKA --projecttitle "Apache Kafka" \
        --range --version 0.8.1 --version 1.0.0

cd ${HOME}/Src/aw-github/eco-release-metadata/OOZIE
releasedocmaker.py --project OOZIE --projecttitle "Apache Oozie" \
        --range --version 4.2.0 --version 5.0.0

cd ${HOME}/Src/aw-github/eco-release-metadata/ORC
releasedocmaker.py --project ORC --projecttitle "Apache Orc" \
        --range --version 1.0.0 --version 2.0.0

cd ${HOME}/Src/aw-github/eco-release-metadata/PIG
releasedocmaker.py --project PIG --projecttitle "Apache Pig" \
        --range --version 0.15.0 --version 0.17.0

cd ${HOME}/Src/aw-github/eco-release-metadata/SPARK
releasedocmaker.py --project SPARK --projecttitle "Apache Spark" \
        --range --version 1.2.0 --version 2+

cd ${HOME}/Src/aw-github/eco-release-metadata/TEZ
releasedocmaker.py --project TEZ --projecttitle "Apache Tez" \
        --range --version 0.5.0 --version 1.0.0

cd ${HOME}/Src/aw-github/eco-release-metadata/ZOOKEEPER
releasedocmaker.py --project ZOOKEEPER --projecttitle "Apache Zookeeper" \
        --range --version 3.5.0 --version 4.0.0


d=$(date -u "+%Y-%m-%d %H:%m")
git commit -a -m "${d} UTC auto-commit"

PATH=${OPATH}
