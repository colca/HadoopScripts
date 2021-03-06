prevKey = nil
valueArr = Array.new

ARGF.each do |line|
  line = line.chomp
  (key,value) = line.split(/\t/)
  #key has changed to new key
  if prevKey && key != prevKey && valueArr.size > 0
    puts prevKey + "\t" + valueArr.to_s
    prevKey = key 
    valueArr.clear
  #key hasn't been assigned and there's more than one line
  elsif !prevKey 
    prevKey = key
    if ARGF.eof?
    valueArr.push(value)
    puts prevKey + "\t" + valueArr.to_s
    end
  end
  #add value to value array of this key
  if !ARGF.eof?
  valueArr.push(value)
  end
end
