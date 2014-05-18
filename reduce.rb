prevKey = nil
keyTotal = 0

ARGF.each do |line|
  #remove any new line
  line = line.chomp
  #split key and value on tab character
  (key,value) = line.split(/\t/)
  
  #check for new key
  if prevKey && key != prevKey && keyTotal > 0
    puts prevKey + "\t" + keyTotal.to_s
    prevKey = key
    keyTotal = 0
  elsif ! prevKey
    prevKey = key
  end

  keyTotal += value.to_i
end

