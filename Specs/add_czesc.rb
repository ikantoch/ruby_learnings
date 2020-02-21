def add_czesc(chapter5)
  ch1 =  chapter5.split("\n")
  ch2 = ch1.map do |name|
    "Cześć, #{name}!"
  end
  ch2.join("\n")
end
