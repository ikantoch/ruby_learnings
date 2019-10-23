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
	ch2.add_line_numbers(chapter4)
end

def reverse(chapter4)
	ch1 = chapter4.split("\n")
	ch1.reverse
end

puzzle_1
puzzle_2
puzzle_3
puzzle_4