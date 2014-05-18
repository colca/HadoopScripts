#!/usr/bin/env ruby
require 'rubygems'
require 'json'
require 'pp'

#to print key,id value pair of hadoop outpair
myHash = Hash.new
ARGF.each do |line|
  line = line.chomp
  if !line.include? "kind" 
  next
  end
 
  (viewCount, jsonArray) = line.split(/\t/)
  myHash.store(viewCount.to_f, jsonArray)
  #objArray = JSON.parse(jsonArray)
  #objArray.each {|ele|
  #   video = JSON.parse(ele)
  #   puts viewCount+"\t"+video.fetch("id")
  #}
end
sortedHash = Hash[myHash.sort_by {|k,v| k.to_f}]
sortedHash.each { |k,v|
  videos = JSON.parse(v)
  videos.each {|ele|
    video = JSON.parse(ele)
  
    puts k.to_s + "\t" + video.fetch("id")
  }
}


