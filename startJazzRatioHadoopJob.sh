#!/bin/bash

#for dislike/like ratio of hiphop dance
HADOOP_HOME=/usr/local/hadoop
JAR=share/hadoop/tools/lib/hadoop-streaming-2.2.0.jar

HSTREAMING="$HADOOP_HOME/bin/hadoop jar $HADOOP_HOME/$JAR"
echo $HSTREAMING

$HSTREAMING -mapper yMapR.rb -file yMapR.rb -reducer yRed.rb -file yRed.rb -input './input/jazzdance/2014*/*' -output ./jazzR2014 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper yMapR.rb -file yMapR.rb -reducer yRed.rb -file yRed.rb -input './input/jazzdance/2013*/*' -output ./jazzR2013 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper yMapR.rb -file yMapR.rb -reducer yRed.rb -file yRed.rb -input './input/jazzdance/2012*/*' -output ./jazzR2012 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper yMapR.rb -file yMapR.rb -reducer yRed.rb -file yRed.rb -input './input/jazzdance/2011*/*' -output ./jazzR2011 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper yMapR.rb -file yMapR.rb -reducer yRed.rb -file yRed.rb -input './input/jazzdance/2010*/*' -output ./jazzR2010 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper yMapR.rb -file yMapR.rb -reducer yRed.rb -file yRed.rb -input './input/jazzdance/2009*/*' -output ./jazzR2009 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper yMapR.rb -file yMapR.rb -reducer yRed.rb -file yRed.rb -input './input/jazzdance/2008*/*' -output ./jazzR2008 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper yMapR.rb -file yMapR.rb -reducer yRed.rb -file yRed.rb -input './input/jazzdance/2007*/*' -output ./jazzR2007 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper yMapR.rb -file yMapR.rb -reducer yRed.rb -file yRed.rb -input './input/jazzdance/2006*/*' -output ./jazzR2006 -jobconf "PATH=$PATH:/home/hduser/.rvm"

$HSTREAMING -mapper yMapR.rb -file yMapR.rb -reducer yRed.rb -file yRed.rb -input './input/jazzdance/2005*/*' -output ./jazzR2005 -jobconf "PATH=$PATH:/home/hduser/.rvm"

