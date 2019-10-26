require 'pry'

def puzzle_1
	chapter1 = File.read("input_1.txt")
	ch1 = remove_empty_lines(chapter1)
	print ch1
end

def remove_empty_lines(chapter1)
	ch = chapter1.split("\n")
	ch.delete ("")
  ch.join("\n")
end


def puzzle_2
	chapter2 = File.read('input_2.txt')
	ch2 = add_line_numbers(chapter2)
	print ch2
end

def add_line_numbers(chapter2)
	ch = chapter2.split("\n")
	index = 0
	ch2 = ch.map do |wers|
		index = index + 1
		"#{index.to_s}. #{wers}."
	end
	ch2.join("\n")
end

def puzzle_3
	chapter3 = File.read('input_3.txt')
	ch3 = remove_underline(chapter3)
	print ch3
	File.write('output_3.txt', ch3)
end

def remove_underline(chapter3)
	ch1 = chapter3.split("_")
	ch2 = ch1.map do |string|
		string.to_i + 1
	end
	ch2.join("\n")
end

def puzzle_4
	chapter4 = File.read('input_4.txt')
	ch2 = reverse(chapter4)
	ch3 = add_line_numbers(ch2)
	print ch3
	File.write('output_4.txt', ch3)
end

def reverse(chapter4)
	ch1 = chapter4.split("\n")
	ch1.reverse
	ch1.join("\n")
end

def puzzle_5
	chapter5 = File.read('input_5.txt')
	ch2 = add_czesc(chapter5)
	ch3  = ch2.join("\n")
	print ch3
	File.write('output_5.txt', ch2)
end

def add_czesc(chapter5)
	ch1 =  chapter5.split("\n")
	ch1.map do |name|
		"Cześć, #{name}!"
	end
end

def puzzle_6
	chapter6 = File.read('input_6.txt')
	ch1 = convert_to_number(chapter6)
	calculate(ch1)
	File.write('output_6.txt', sum)
end

def convert_to_number(chapter6)
	ch1 = chapter6.split("+")
	ch1.map do |number|
		number.to_i
	end
end

def calculate(ch1)
	sum = 0
	ch1.map do | n |
		sum = sum + n
	end
	puts sum
end

puzzle_1
puzzle_2
puzzle_3
puzzle_4
puzzle_5
puzzle_6