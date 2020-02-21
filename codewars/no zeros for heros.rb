# Numbers ending with zeros are boring.
# They might be fun in your world, but not here.
# Get rid of them. Only the ending ones.
# 1450 -> 145
# 960000 -> 96
# 1050 -> 105
# -1050 -> -105
# Zero alone is fine, don't worry about it. Poor guy anyway

def no_boring_zeros(num)
  if num == 0
    return 0
  end
  number = num.to_s.split('')
      until number[-1] != "0"
        number.pop
      end
    number.join.to_i
end