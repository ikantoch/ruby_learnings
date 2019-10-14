poem = File.read('wiersz2.txt')

new_poem = poem.split("\n")

new_poem.delete("")

index = 0

next_array = new_poem.map { |line|
	index = index + 1 
	"#{index.to_s}. #{line}"
}

another_poem = next_array.join("\n")
print another_poem

# while index < new_poem.length
# 	puts new_poem [index]
# 	index += 1
# end
# next_array = new_poem.map do |line|
# 	"#{line}!"
# end

#Take each element starting from [0] and add 1


