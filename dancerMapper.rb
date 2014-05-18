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
  desc = video.fetch("snippet").fetch("description")
  title = video.fetch("snippet").fetch("title") 	#get title
  # dancer 
  /\b[Bb][Yy]\s+(?<dancer>\w+(\s+\w+)?)[\s\w\r\n]*/ =~ desc
  if !dancer
     /\b[Bb][Yy]\s+(?<dancer>\w+(\s+\w+)?)[\s\w\r\n]*/ =~ title
     if !dancer
        dancer = "nil"
     end
  end


  #output to stdout 
  puts  dancer + "\t" + 1.to_s 
end


