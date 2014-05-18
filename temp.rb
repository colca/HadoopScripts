#! /usr/bin/env ruby
require 'pp'
require 'json'

ARGF.each do | line| 
  video = JSON.parse(line)
  pp video


end



