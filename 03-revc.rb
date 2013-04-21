str = ARGV[0] ? ARGV[0] : ""

# Define our compliments
subHash = {"A" => "T", "C" => "G"}

# Space it out a bit
puts

# Reverse the string, and if the compliment is a key, print it, otherwise look
# for a value (the "reverse" compliment)
str.reverse.each_char{ |ch| print subHash[ch]? subHash[ch] : subHash.key(ch) }
