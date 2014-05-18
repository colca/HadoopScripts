#!/bin/bash

HADOOP_HOME=/usr/local/hadoop
HCAT="$HADOOP_HOME/bin/hadoop fs -cat"
JAR=share/hadoop/tools/lib/hadoop-streaming-2.2.0.jar

mkdir hiphopRatioGroup

for year in {2005..2014}
do 
  echo "$year"
  $HCAT ./hiphopR$year/part-00000 | ./groupRatio.rb
  mv groupRatio.tsv ./hiphopRatioGroup/groupRatio$year.tsv
done

