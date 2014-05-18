#!/bin/bash

HADOOP_HOME=/usr/local/hadoop
HCAT="$HADOOP_HOME/bin/hadoop fs -cat"
JAR=share/hadoop/tools/lib/hadoop-streaming-2.2.0.jar

mkdir jazzVCGroup

for year in {2005..2014}
do 
  echo "$year"
  $HCAT ./jazzVC$year/part-00000 | ./groupViewCount.rb
  mv viewCount.tsv ./jazzVCGroup/jazzGroupVC$year.tsv
done

