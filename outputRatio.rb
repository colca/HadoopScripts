#!/usr/bin/env ruby
require 'rubygems'
require 'json'
require 'pp'

# For dislike/like ratio : total video count output
myHash = Hash.new
ARGF.each do |line|
  line = line.chomp
  if !line.include? "kind" 
  next
  end
 
  (viewCount, jsonArray) = line.split(/\t/)
  myHash.store(viewCount.to_f, jsonArray)
end
filename = "ratio.tsv"
file = File.open(filename,'w')
file.write("ratio\ttotal\n")
total = 0
sortedHash = Hash[myHash.sort_by {|k,v| k.to_f}]
sortedHash.each { |k,v|
  videos = JSON.parse(v)
  total = videos.size
  file.write(k.to_s + "\t" + total.to_s + "\n")
}
file.close


