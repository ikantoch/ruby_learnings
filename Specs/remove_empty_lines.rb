def puzzle_1
  chapter1 = File.read('remove_empty_lines.txt')
  output = remove_empty_lines(chapter1)
  print output
end

def remove_empty_lines(text)
  text = chapter1.split("\n")
  text.delete ("")
  text.join("\n")
end

puzzle_1
