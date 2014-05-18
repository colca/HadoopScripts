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
filename = "groupRatio.tsv"
file = File.open(filename,'w')
file.write("ratio\ttotal\n")
total = 0
i = 0.0
sortedHash = Hash[myHash.sort_by {|k,v| k.to_f}]
sortedHash.each { |k,v|
  videos = JSON.parse(v)
  if k <= i
    total += videos.size 
  else  
    if total > 0
      file.write(i.to_s + "\t" + total.to_s+ "\n")
      puts i.to_s + "\t" + total.to_s
    end
    while k > i do
      #i += 0.01
      i += 0.1
      i = i.round(2)
      puts "k: " + k.to_s + " i: " + i.to_s
    end
    total = videos.size 
  end
}
if total > 0
  file.write(i.to_s + "\t" + total.to_s + "\n")
end
file.close


