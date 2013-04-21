# Still a bit contrived. I'll have to fix this up a bit later

data    = File.open('rosalind_gc.txt', 'r')
results = Hash.new(0)
$id     = ""

comp = ""

def gcContent(str)
	letters = Hash.new(0)
	str.each_char{ |ch| letters[ch] += 1 }

	gc = letters["C"] + letters["G"]
	total = letters.each_value.inject(0){ |i,v| i += v }
	
	gc.to_f / total.to_f
end

number = 0
data.each do |line|
	if line =~ /^>/
		results[$id] = gcContent(comp) unless comp.empty?
		$id = line.chomp.delete('>')
		comp = ""
	else
		comp += line.chomp
	end
end

# Whenever the end case is computed
results[$id] = gcContent(comp) unless comp.empty?

max = results.each_value.max

puts "#{results.key(max)}\n#{(max * 100).round(6)}"