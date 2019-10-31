def puzzle_1(filename)
  chapter1 = File.read(filename)
  remove_empty_lines(chapter1)
end

def remove_empty_lines(chapter1)
  ch = chapter1.split("\n")
  ch.delete ("")
  ch.join("\n")
end
