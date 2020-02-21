def puzzle_4
  chapter4 = File.read('reverse.txt')
  output = reverse(chapter4)
  print output
end

def reverse(chapter4)
  text = chapter4.split("\n")
  reversed_text = text.reverse
  reversed_text.join("\n")
end
