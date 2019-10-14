chapter3 = File.read('input_3.txt')
ch1 = chapter3.split("_")
ch2 = ch1.map do |string|
	string.to_i + 1
end

# ch3 = ch2.map do |number|
# 	number+1
# end

ch3 = ch2.join("\n")
print ch3

File.write('output_3.txt', ch3)


# Czy skorzystanie z join to właściwa droga? 
# Alternatywne rozwiązanie:
# Puts automatically adds a new line at the end of your message every time you use it.
# ch3.each  do |line|
# 	puts line
# end
# Źródło: https://www.rubyguides.com/2018/10/puts-vs-print/