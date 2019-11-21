def convert_to_intiger(chapter6)
  ch1 = chapter6.split("+")
  ch1.map do |number|
    number.to_i
  end
end
