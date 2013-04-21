# Now this one is really bad... Time to read on combinetrics and trees again

base = []
dominant = 0

(ARGV[0] ? ARGV[0].to_i : 1).times{ |i| base << "AA"}
(ARGV[1] ? ARGV[1].to_i : 1).times{ |i| base << "AB"}
(ARGV[2] ? ARGV[2].to_i : 1).times{ |i| base << "BB"}

permutations = base.permutation(2).to_a

permutations.each do |p| 
	if p[0] =~ /AA/ || p[1] =~ /AA/
		dominant += 1
	elsif p[0] =~ /AB/ && p[1] =~ /AB/
		dominant += 0.75
	elsif p[0] =~ /AB/ || p[1] =~ /AB/
		dominant += 0.5
	else
	end
end

puts (dominant / permutations.count).round(5)
