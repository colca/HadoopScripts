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

  key = video.fetch("id") 
  viewCount = video.fetch("statistics").fetch("viewCount")
  likeCount = video.fetch("statistics").fetch("likeCount")
  dislikeCount = video.fetch("statistics").fetch("dislikeCount")
  
  category = "hiphop"

  heuristic = 0.0
  if likeCount == 0
    heuristic = 0.0
  elsif 
    heuristic = (dislikeCount.to_f / likeCount.to_f).round(3)
  end

  #output to stdout 
  puts  key + "\t" + heuristic.to_s + "\t" + category + "\t" + line  
end


