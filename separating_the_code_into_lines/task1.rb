##############################################################################################################
#
# 1. Run the test (it should pass):
# ```
# $ rspec task1.rb
# ```
#
# 2. The code inside of the reverse_and_format_text method does not look nice.
#    Edit the body of reverse_and_format_text method (your task is to format the code, so it is readable...).
#    Don't change the behaviour of the code (the RSpec test should pass before and after you edit the method).
#    Don't change the other parts of the code (other methods, test).
#
# 3. Run the test again (it should pass)
#
##############################################################################################################

# Format the code:

def reverse_and_format_text(filename)
  add_line_numbers(reverse_lines(File.read(filename)).split("\n\n").join("\n")).split("\n").join("\n\n")
end

# Do not change:

def reverse_lines(text)
  lines = text.split("\n")

  lines = lines.reverse

  lines.join("\n")
end

def add_line_numbers(text)
  lines = text.split("\n")

  index = 0
  lines = lines.map do |line|
    index = index + 1
    "#{index}. #{line}"
  end

  lines.join("\n")
end

# You can run the test:
# $ rspec task1.rb

RSpec.describe do
  it 'reverses and formats the text (adds line numbers, etc.)' do
    name_of_the_file_with_the_text = 'text.txt'
    formatted_text = reverse_and_format_text(name_of_the_file_with_the_text)

    expect(formatted_text).to eq("1. Vestibulum felis dolor.\n\n2. Sed efficitur justo.\n\n3. Vestibulum a facilisis metus.\n\n4. Interdum et malesuada fames.\n\n5. Lorem ipsum dolor sit amet.")
  end
end
