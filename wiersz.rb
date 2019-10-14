require 'pry'

file = File.read('wiersz.txt')
# file + "MARO"
# file.delete!("\n")
array = file.split("\n")
next_array = array.map do |line|
	"#{line}!"
end
next_array = next_array.join("\n")
puts next_array




# Aktualny stan programu: Wyswietla wiersz (string)

# Cel zadania:
# Wyswietlic ten sam wiersz ale zeby kazda linjka konczyla sie znakiem "!"

# Jak?
# 1. Zamienic wiersz (string) na tablice elementow (element = linijka wierszu)
# 2. Przejsc po kazdym elemencie (stringu = linijce wiersza) tablicy i dopisac do niego "!" na koncu (concatination string)
# 3. Polaczyc tablice w jeden dlugi string (kazdy elemenet tablicy ma byc oddzielony znakiem "\n")
# 4. Wyswietlic nowy string


# issues: 
# metoda to_s nie powoduje, że string nie wraca do stanu któĻry był napoczątku
# trzeba zrobić join 
# 1. Nie wiem jak pozbyc się pustej linijki 
# 2. Nie wiem jak to zrobić żeby ! wuświetlał się zamiast ostatniego znaku a nie po ostatnim znaku (spacji, "," czy "." )