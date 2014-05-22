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
  viewCount = video.fetch("statistics").fetch("viewCount")
  
  if dislikeCount == "0"
     dislikeCount = 0.1
  end

  ratio = (likeCount.to_f / dislikeCount.to_f).round(3)
  heuristic = viewCount.to_f * ratio

   
  key = heuristic 
  #output to stdout 
  puts key.to_s + "\t" + line
end


