## Wyrażenie: zawraca wartość & wykonuje operację

Wyrażenie w Ruby:

* zwraca jakąś wartość,
* może wykonywać jakąś operację (obliczenie, wyświetlanie tekstu, modyfikacja zmiennej, wysyłanie maila, etc.).

---

#### Wyrażenie w Ruby zwraca jakąś wartość

Przykłady:

```
irb> 5
=> 5

irb> nil
=> nil

irb> 5 * 5
=> 25

irb> [1, 2, 3] + [4, 5]
=> [1, 2, 3, 4, 5]
```

---

#### Wyrażenie w Ruby może wykonywać jakąś operację

Wyrażenie DODATKOWO może wykonywać jakąś operację. Przykładowo, puts wyświetla tekst.
Nadal jednak puts zwraca jakąś wartość - w przypadku puts zawsze jest to nil:

```
irb> puts "Ten tekst zostanie wyświetlony."
Ten tekst zostanie wyświetlony.
=> nil
```


Sleep wykonuje operację (czeka zadaną ilość sekund), po czym zwraca wartość (ilość sekund którą czekał):

```
irb> sleep 3
=> 3
```

---


Aby dowiedzieć się co zwracają i jakie operacje wykonują dane metody (puts, sleep, etc.), należy przeczytać dokumentację
lub kod źródłowy tych metod.

---


## Przypisanie

Wynik wyrażenia można przypisać do zmiennej.

Poniższe wyrażenie wykonuje operację (przypisuję liczbę 5 do zmiennej age) oraz zwraca wartość (zwraca liczbę 5):

```
irb> age = 5
=> 5
```

Od teraz, wyrażenie `age` będzie zwracało wartość 5:

```
irb> age
5
```

Więcej przykładów:

```
irb> zmienna = nil
=> nil

irb> zmienna = 5 * 5
=> 25

irb> zmienna = [1, 2, 3] + [4, 5]
=> [1, 2, 3, 4, 5]

irb> zmienna = puts "Ten tekst zostanie wyświetlony."
Ten tekst zostanie wyświetlony.
=> nil
```



W ostatnim przypadku, do zmiennej przypisujemy wartość zwracaną przez wyrażenie puts. Jaka to wartość?

Przypomnienie: puts zawsze zwraca nil. A więc, do zmiennej została przypisana wartość nil:

```
irb> zmienna
=> nil
```

---


#### Kiedy wynik wyrażenia przypisujemy do zmiennej?

Wtedy gdy potrzebujemy go potem użyć (np. w jednym z kolejnych wyrażeń):

```
irb> joined_text = ["1", "2", "3"].join("+")
=> "1+2+3"

irb> joined_text + "=6"
=> "1+2+3=6"
```

---


## Niektóre metody mutują zmienną.

Przykładowo, metoda `delete` wywołana na tablicy, wykonuje operację (mutuje zmienną) oraz zawraca wartość (ostatni
usunięty element):

```
irb> literki = ["a", "b", "a", "b"]
=> ["a", "b", "a", "b"]

irb> result = literki.delete("b")
=> "b"

irb> result
=> "b"

irb> literki
=> ["a", "a"]
```



Metoda `join` wywołana na tablicy, zwraca wartość (string składający się z połączonych elementów tablicy), ale NIE
wykonuje operacji mutowania zmiennej:

```
irb> literki = ["a", "b", "a", "b"]
=> ["a", "b", "a", "b"]

irb> result = literki.join("+")
=> "a+b+a+b"

irb> result
=> "a+b+a+b"

irb> literki
=> ["a", "b", "a", "b"]
```

---
