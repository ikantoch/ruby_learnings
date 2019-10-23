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

puzzle_1
puzzle_2
