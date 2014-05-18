#!/usr/bin/env ruby 
require 'json'
curKey = nil

ARGF.each do |line|
  line = line.chomp
  (key,heuristic,category,value) = line.split(/\t/)

  #Aggregate video data if there are many under same id
  #output only the first one 
  if curKey != key 
   

    video = JSON.parse(value)
    #etag
    etag = video.fetch("etag")

    #snippet 
    title = video.fetch("snippet").fetch("title") 	#get title
    desc = video.fetch("snippet").fetch("description")	#get desc
    desc = desc.gsub(/\n/,'\w')				#remove \n\r to avoid error in sqooping
    desc = desc.gsub(/\r/,'\x')
    if desc == ""					#replace empty content with nil string for sqooping
      desc = "nil"
    end
    publishedAt = video.fetch("snippet").fetch("publishedAt")
    publishedAt = publishedAt.gsub(/T/, ' ')
    publishedAt = publishedAt.gsub(/Z/, '')
    publishedAt = publishedAt.gsub(/.000/, '')

    channelId = video.fetch("snippet").fetch("channelId")
    thumbnailDefault = video.fetch("snippet").fetch("thumbnails").fetch("default").fetch("url")
    thumbnails = video.fetch("snippet").fetch("thumbnails")
    if thumbnails.has_key?("medium")
      thumbnailMedium = video.fetch("snippet").fetch("thumbnails").fetch("medium").fetch("url")
    else
      thumbnailMedium = "nil"
    end
    if thumbnails.has_key?("high")
      thumbnailHigh = video.fetch("snippet").fetch("thumbnails").fetch("high").fetch("url")
    else 
      thumbnailHigh = "nil"
    end
    if thumbnails.has_key?("standard")
      thumbnailStandard = video.fetch("snippet").fetch("thumbnails").fetch("standard").fetch("url")
    else
      thumbnailStandard = "nil"
    end
    channelTitle = video.fetch("snippet").fetch("channelTitle")
    youtubeCategoryId = video.fetch("snippet").fetch("categoryId")
    
    #statistics 
    viewCount = video.fetch("statistics").fetch("viewCount")
    likeCount = video.fetch("statistics").fetch("likeCount")
    dislikeCount = video.fetch("statistics").fetch("dislikeCount")
    favoriteCount = video.fetch("statistics").fetch("favoriteCount")
    commentCount = video.fetch("statistics").fetch("commentCount")

    #player
    embedHtml = video.fetch("player").fetch("embedHtml")
    embedHtml = embedHtml.gsub(/\/>/,'>')

    #added columns
    # dancer 
    /\b[Bb][Yy]\s+(?<dancer>\w+(\s+\w+)?)[\s\w\r\n]*/ =~ desc
    if !dancer
       /\b[Bb][Yy]\s+(?<dancer>\w+(\s+\w+)?)[\s\w\r\n]*/ =~ title
       if !dancer
          dancer = "nil"
       end
    end
  
    # relavance
    relavance = 0 
    if /\b[Dd][Aa][Nn][Cc][Ee]/.match(desc)
       relavance += 1
    elsif /\b[Dd][Aa][Nn][Cc][Ee]/.match(title)
       relavance += 1
    end
    if /\b[Hh][Ii][Pp]\s*\W?[Hh][Oo][Pp]/.match(desc)
       relavance += 2
    elsif  /\b[Hh][Ii][Pp]\s*\W?[Hh][Oo][Pp]/.match(title)
       relavance += 2
    end

 
    # output
    puts key + "\t" +  etag + "\t "  + publishedAt + "\t" + publishedAt + "\t"  + channelId + "\t" + thumbnailDefault + "\t" + thumbnailMedium + "\t" + thumbnailHigh + "\t" + thumbnailStandard + "\t" + channelTitle + "\t" + youtubeCategoryId + "\t" + viewCount + "\t" + likeCount + "\t" + dislikeCount  + "\t" + favoriteCount + "\t" + commentCount + "\t" +  embedHtml + "\t"  + title + "\t"  + desc + "\t" + category + "\t" + dancer + "\t" + heuristic + "\t" + relavance.to_s
    #puts key  + "\t"  + title + "\t"  + desc
    curKey = key
  end
end

