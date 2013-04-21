input  = File.open('rosalind_subs.txt', 'r')

data = []
input.each{ |s| data << s.chomp }
str = data[0]
substr = data[1]

i = 0
while i < (str.length - substr.length)
	begin
		match = str.index(substr,i) + 1
		print "#{match} " 
		i = match
	rescue
		i = str.length
	end
end