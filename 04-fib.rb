# This one is pretty hackish, looking to fix it some time later...

str = ARGV[0] ? ARGV[0].split(' ') : ""

months = ARGV[0] ? ARGV[0].to_i : 1
litter = ARGV[1] ? (ARGV[1].to_i * 2) : 1

$rabbits = { old:0, new:0, born:2 }
$debug = false

def grow
	$rabbits[:old] += $rabbits[:new]
	$rabbits[:new] = 0
end

def multiply(litter)
	$rabbits[:born] = ($rabbits[:old] / 2) * litter
end

def toNew
	$rabbits[:new] = $rabbits[:born]
	$rabbits[:born] = 0
end

months.times do |i|
	puts i if $debug	
		puts "\t#{$rabbits[:old]} #{$rabbits[:new]} #{$rabbits[:born]}" if $debug
	
	multiply litter unless i == 0
		puts "\t#{$rabbits[:old]} #{$rabbits[:new]} #{$rabbits[:born]}" if $debug
	
	grow
		puts "\t#{$rabbits[:old]} #{$rabbits[:new]} #{$rabbits[:born]}" if $debug
	
	toNew
		puts "\t#{$rabbits[:old]} #{$rabbits[:new]} #{$rabbits[:born]}" if $debug
end

puts ($rabbits.each_value.inject(0){ |i,val| i += val } / 2)