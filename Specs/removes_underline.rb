def puzzle_3
  chapter3 = File.read('removes_underline_text.txt')
  output = removes_underline(chapter3)
  print output
end

def removes_underline(text)
  text = text.split("_")
  text.join("\n")
end

puzzle_3
