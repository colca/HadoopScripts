ARGF.each do |line|
  # remove any new line
  line = line.chomp
  # do nothing will lines shorter than 2 characters
  next if ! line || line.length < 2
  # grab our key as two-character prefix
  key = line[0,2].downcase
  value = 1

  puts key + "\t" + value.to_s
end

