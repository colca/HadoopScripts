#!/bin/bash

#hadoop fs -rmr ./hiphopoutput

HADOOP_HOME=/usr/local/hadoop
JAR=share/hadoop/tools/lib/hadoop-streaming-2.2.0.jar

HSTREAMING="$HADOOP_HOME/bin/hadoop jar $HADOOP_HOME/$JAR"
echo $HSTREAMING

$HSTREAMING -mapper yMap.rb -file yMap.rb -reducer yRed.rb -file yRed.rb -input './input/jazzdance/2014*/*' -output ./jazzVC2014 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper yMap.rb -file yMap.rb -reducer yRed.rb -file yRed.rb -input './input/jazzdance/2013*/*' -output ./jazzVC2013 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper yMap.rb -file yMap.rb -reducer yRed.rb -file yRed.rb -input './input/jazzdance/2012*/*' -output ./jazzVC2012 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper yMap.rb -file yMap.rb -reducer yRed.rb -file yRed.rb -input './input/jazzdance/2011*/*' -output ./jazzVC2011 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper yMap.rb -file yMap.rb -reducer yRed.rb -file yRed.rb -input './input/jazzdance/2010*/*' -output ./jazzVC2010 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper yMap.rb -file yMap.rb -reducer yRed.rb -file yRed.rb -input './input/jazzdance/2009*/*' -output ./jazzVC2009 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper yMap.rb -file yMap.rb -reducer yRed.rb -file yRed.rb -input './input/jazzdance/2008*/*' -output ./jazzVC2008 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper yMap.rb -file yMap.rb -reducer yRed.rb -file yRed.rb -input './input/jazzdance/2007*/*' -output ./jazzVC2007 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper yMap.rb -file yMap.rb -reducer yRed.rb -file yRed.rb -input './input/jazzdance/2006*/*' -output ./jazzVC2006 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper yMap.rb -file yMap.rb -reducer yRed.rb -file yRed.rb -input './input/jazzdance/2005*/*' -output ./jazzVC2005 -jobconf "PATH=$PATH:/home/hduser/.rvm"

