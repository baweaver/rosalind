str = ARGV[0] ? ARGV[0] : ""
letters = Hash.new(0)

str.each_char{ |ch| letters[ch] += 1 }

puts "#{letters["A"]} #{letters["C"]} #{letters["G"]} #{letters["T"]}"