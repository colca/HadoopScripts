#!/usr/bin/env ruby 
require 'json'
curKey = nil
total = 0
ARGF.each do |line|
  line = line.chomp
  (key,count) = line.split(/\t/)

  #Aggregate video data if there are many under same id
  #output only the first one 
  if curKey != key
    if curKey && curKey != "nil" && total >= 1
      puts curKey + "\t" + 1.to_s
    end
    curKey = key
    total = 1
  elsif curKey == key 
    total += 1    
  end
end 
