#!/bin/bash

hadoop fs -rmr ./hiphopH2014
#for dislike/like ratio of hiphop dance
HADOOP_HOME=/usr/local/hadoop
JAR=share/hadoop/tools/lib/hadoop-streaming-2.2.0.jar

HSTREAMING="$HADOOP_HOME/bin/hadoop jar $HADOOP_HOME/$JAR"
echo $HSTREAMING

$HSTREAMING -mapper yMapR.rb -file yMapR.rb -reducer yRed.rb -file yRed.rb -input './input/hiphopdance/2014*/*' -output ./hiphopH2014 -jobconf "PATH=$PATH:/home/hduser/.rvm"

#$HSTREAMING -mapper yMapR.rb -file yMapR.rb -reducer yRed.rb -file yRed.rb -input './input/hiphopdance/2013*/*' -output ./hiphopR2013 -jobconf "PATH=$PATH:/home/hduser/.rvm"

#$HSTREAMING -mapper yMapR.rb -file yMapR.rb -reducer yRed.rb -file yRed.rb -input './input/hiphopdance/2012*/*' -output ./hiphopR2012 -jobconf "PATH=$PATH:/home/hduser/.rvm"

#$HSTREAMING -mapper yMapR.rb -file yMapR.rb -reducer yRed.rb -file yRed.rb -input './input/hiphopdance/2011*/*' -output ./hiphopR2011 -jobconf "PATH=$PATH:/home/hduser/.rvm"

#$HSTREAMING -mapper yMapR.rb -file yMapR.rb -reducer yRed.rb -file yRed.rb -input './input/hiphopdance/2010*/*' -output ./hiphopR2010 -jobconf "PATH=$PATH:/home/hduser/.rvm"

#$HSTREAMING -mapper yMapR.rb -file yMapR.rb -reducer yRed.rb -file yRed.rb -input './input/hiphopdance/2009*/*' -output ./hiphopR2009 -jobconf "PATH=$PATH:/home/hduser/.rvm"

#$HSTREAMING -mapper yMapR.rb -file yMapR.rb -reducer yRed.rb -file yRed.rb -input './input/hiphopdance/2008*/*' -output ./hiphopR2008 -jobconf "PATH=$PATH:/home/hduser/.rvm"

#$HSTREAMING -mapper yMapR.rb -file yMapR.rb -reducer yRed.rb -file yRed.rb -input './input/hiphopdance/2007*/*' -output ./hiphopR2007 -jobconf "PATH=$PATH:/home/hduser/.rvm"

#$HSTREAMING -mapper yMapR.rb -file yMapR.rb -reducer yRed.rb -file yRed.rb -input './input/hiphopdance/2006*/*' -output ./hiphopR2006 -jobconf "PATH=$PATH:/home/hduser/.rvm"

#$HSTREAMING -mapper yMapR.rb -file yMapR.rb -reducer yRed.rb -file yRed.rb -input './input/hiphopdance/2005*/*' -output ./hiphopR2005 -jobconf "PATH=$PATH:/home/hduser/.rvm"

