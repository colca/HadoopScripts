#!/bin/bash

HADOOP_HOME=/usr/local/hadoop
HCAT="$HADOOP_HOME/bin/hadoop fs -cat"
JAR=share/hadoop/tools/lib/hadoop-streaming-2.2.0.jar
YEAR=2014

mkdir hiphopRatioStats

for year in {2005..2014}
do 
  echo "$year"
  $HCAT ./hiphopR$year/part-00000 | ./outputRatio.rb
  mv ratio.tsv ./hiphopRatioStats/ratio$year.tsv
done

