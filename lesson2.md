## Metody

### Wywoływanie metod

Przykłady:

```
irb> nazwa_metody
=> "wynik wywołania metody"

irb> nazwa_metody(argument_1)
=> "wynik wywołania metody"

irb> nazwa_metody(argument_1, argument_2)
=> "wynik wywołania metody"

irb> dodaj(1, 2)
=> 3
```

#### Metody zdefiniowane "globalnie" (na razie tak to nazwijmy :))

```
irb> puts "Hej ho!"
=> nil
```

```
irb> sleep 1
=> 1
```

#### Metody zdefiniowane "na danym typie obiektu"

```
irb> tekst = "to jest przykladowy string"
=> "to jest przykladowy string"
irb> tekst.reverse
=> "gnirts ywodalkyzrp tsej ot"
```

```
irb> liczba = 100
=> 100
irb> liczba.even?
=> true
```

Jak widac wyżej `Integer` ma zdefiniowaną metodę `even?`. Ale za to `String` już nie:

```
irb(main):008:0> tekst = "to jest przykladowy string"
=> "to jest przykladowy string"
irb(main):010:0> tekst.even?
NoMethodError (undefined method `even?' for "to jest przykladowy string":String)
```

### Definiowane własnych "globalnych" (patrz wyżej) metod

Definicja metody o nazwie `nazwa_metody`, bez argumentów, zwracająca liczbę `15`:

```
def nazwa_metody
  15
end
```

Więcej przykładów:

```
def dodaj(a, b)
  a + b
end
```

```
def reverse_lines(text)
  text.split("\n").reverse.join("\n")
end
```

---

Zadaniem metody może być wykonanie jakiejś operacji (np.: `send_email(text)`).

Zawsze metoda będzie zwracała jakąś wartość (może to być również `nil`). Czasem jest to ważne, a czasem nieistotne (bo metoda wysyła maila i nie interesuje nas co ona zwróci).

Ale zawsze jakaś wartość jest zwracana (domyślnie jest to wartość, którą zwraca ostatnie wyrażenie w metodzie):

```
def przykladowa metoda
  1
  2
  3
  4
  5
end
```

Co zwróci ta metoda?

Odpowiedź: liczbę 5.

```
irb> przykladowa_metoda
=> 5
```
