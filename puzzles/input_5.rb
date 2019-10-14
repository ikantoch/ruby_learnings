chapter5 = File.read('input_5.txt')
ch1 =  chapter5.split("\n")

ch2 = ch1.map do |name|
	"Cześć, #{name}!"
end

ch3 = ch2.join("\n")

print ch3

File.write('output_5.txt', ch3)

# Czy tu chodziło o string interpolation czy o loop? 