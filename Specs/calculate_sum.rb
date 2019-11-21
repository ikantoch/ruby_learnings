def calculate_sum(a)
  sum = 0
  a.map do | n |
    sum = sum + n
  end
  puts sum
  sum
end
