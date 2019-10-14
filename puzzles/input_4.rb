chapter4 = File.read('input_4.txt')
ch1 = chapter4.split("\n")
ch2 = ch1.reverse

index = 0

ch3 = ch2.map do |line| 
	index = index + 1 
	"#{index.to_s}. #{line}"
end

ch4 = ch3.join("\n")
print ch4

File.write('output_4.txt', ch4)

# nie rozumiem formy zapisu tego co jest po map. 
# czy można to przekształcić w funkcję tak żeby było do?
# odp:
# ch3 = ch2.map do |line|
# 	line.to_s
# end

# to samo:

# ch3 = ch2.map { |line| line.to_s }
