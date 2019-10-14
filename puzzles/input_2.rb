chapter2 = File.read('input_2.txt')
ch = chapter2.split("\n")

index = 0
ch2 = ch.map do |wers|
	index = index + 1
	"#{index.to_s}. #{wers}."
end
ch3 = ch2.join("\n")
print ch3

