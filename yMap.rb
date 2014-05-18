#!/usr/bin/env ruby
require 'rubygems'
require 'json'

ARGF.each do |line|
  line = line.chomp
  if line.size < 4
  next
  end
 
    video = JSON.parse(line)
    viewCount = video.fetch("statistics").fetch("viewCount")
    key = viewCount
    #output to stdout 
    puts key + "\t" + line
end


