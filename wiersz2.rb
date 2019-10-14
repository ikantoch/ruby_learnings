poem = File.read('wiersz2.txt')

new_poem = poem.split("\n")

new_poem.delete("")

another_poem = new_poem.join("\n")

print another_poem

# new_poem.delete("")

# PART 1

# 1. Odczytujemy string z pliku i przypisujemy do zmiennej:

        # "Ba­gnet na broń!\n\nTrze­ba krwi!\n\nSą w oj­czyź­nie ra­chun­ki krzywd"

# 2. Dzielimy string na tablicę stringów (linijek)

# ["Ba­gnet na broń!", "Trze­ba krwi!", "", "Są w oj­czyź­nie ra­chun­ki krzywd"]

# 3. Usunąć wszystkie elementy "" (puste stringi) z tablicy

##### znalezc metode ktora to robi: array.xxxx("") albo cos w tym stylu

# 4. Polaczyc wszystkie element tablicy z powrotem w string oddzielony znakami nowej linii




# PART 2

# Na poczatku kazdej z linii dopisac numer linijki


# 1. .....
# 2. ......
# 3. ......