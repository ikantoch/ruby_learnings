chapter1 = File.read("input_1.txt")
ch = chapter1.split("\n")
ch.delete ("")
ch1 = ch.join("\n")
print ch1


# => 

def puzzle_1
	chapter1 = File.read("input_1.txt")
	ch1 = remove_empty_lines(chapter1)
	print ch1
end

def remove_empty_lines(text)
	text = text.split("\n")
	text.delete("")
	text.join("\n")
end

puzzle_1