chapter6 = File.read('input_7.txt')
ch1 = chapter6.split("+")

ch2 = ch1.map do |number|
	number.to_i
end

sum = 0

ch2.map do | n |
	sum = sum + n    # sum += n	
end

puts sum

File.write('output_6.txt', sum)

# Rozwiazanie wzięłam z neta ale nie jestem pewna czy rozumiem po co mi tutaj jest zmienna pomocnicza sum
# def total (number)
# 	total = 0
# 	index = 0
# 	while index < number.lenght
# 		total += number[index]
# 		index += 1
# 	end
# 	amount
# end
