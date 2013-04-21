data = File.open('rosalind_hamm.txt', 'r')
lines = []

data.each{ |l| lines << l.chomp }

s = lines[0]
t = lines[1]

def hamming(s,t)
	c,total = 0,0
	s.each_char do |ch|
		total += 1 if ch != t[c]
		c += 1
	end
	
	return total
end

puts hamming(s,t)