#!/usr/bin/env ruby
require 'rubygems'
require 'json'
require 'pp'

myHash = Hash.new
ARGF.each do |line|
  line = line.chomp
  if !line.include? "kind" 
  next
  end
 
  (viewCount, jsonArray) = line.split(/\t/)
  myHash.store(viewCount.to_i, jsonArray)
end

#sorted hash key :viewcount, value: video 
sortedHash = Hash[myHash.sort_by {|k,v| k.to_i}]
filename = "groupedH.tsv"
file = File.open(filename,'w')
file.write("viewCount\ttotal\n")
i = 10
count = 0
sortedHash.each { |k,v|
  
  videos = JSON.parse(v)
  if k <= i


    count += videos.size 
  else
    file.write(i.to_s+"\t"+count.to_s+"\n")
    i = i*10
    count = videos.size 
  end
}
file.write(i.to_s+"\t"+count.to_s+"\n")
file.close



