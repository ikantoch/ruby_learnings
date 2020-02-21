def puzzle_2
  chapter2 = File.read('add_line_numbers.txt')
  output = add_line_numbers(chapter2)
  print output
end

def add_line_numbers(chapter2)
  text = chapter2.split("\n")
  index = 0
  text_with_index = text.map do |wers|
    index = index + 1
    "#{index.to_s}. #{wers}."
  end
  text_with_index.join("\n")
end

puzzle_2
