# A far less contrived method than the first try around. That's what I get
# for doing it at 1 AM.

n = ARGV[0] ? ARGV[0].to_i : 1
f = ARGV[1] ? ARGV[1].to_i : 1

def fib(n, f)
	if n < 2
		n  
	else
		f * fib(n-2,f) + fib(n-1,f)
	end
end

puts fib(n,f)