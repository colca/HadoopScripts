#!/usr/bin/env ruby
require 'rubygems'
require 'json'

#use like/dislike ratio as key, video json as value
ARGF.each do |line|
  line = line.chomp
  if line.size < 4
  next
  end

   
  video = JSON.parse(line)
  likeCount = video.fetch("statistics").fetch("likeCount")
  dislikeCount = video.fetch("statistics").fetch("dislikeCount")
  
  if likeCount == "0"
     ratio = 0
  else
     ratio = (dislikeCount.to_f / likeCount.to_f).round(3)
  end
   
  key = ratio 
  #output to stdout 
  puts key.to_s + "\t" + line
end


