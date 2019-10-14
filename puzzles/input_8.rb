chapter6 = File.read('input_8.txt')

chapter6 = chapter6.delete "#"
ch1 = chapter6.split("+")
ch2 = ch1.map do |string|
	string.to_i
end
print ch2