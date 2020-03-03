# There was a test in your class and you passed it. Congratulations!
# But you're an ambitious person. You want to know if you're better than the average student in your class.
# You receive an array with your peers' test scores. Now calculate the average and compare your score!
# Return True if you're better, else False!

def better_than_average(arr, points)

  a = arr.count
  b = arr.inject(:+)
  median = b/a

  if median < points
    return true
  else
    return false
  end
end

describe "Basic Tests" do
  it"better_than_average([2, 3], 5) should return True" do
    Test.assert_equals(better_than_average([2, 3], 5), true)
  end

  it("better_than_average([100, 40, 34, 57, 29, 72, 57, 88], 75) should return True") do
    Test.assert_equals(better_than_average([100, 40, 34, 57, 29, 72, 57, 88], 75), true)
  end

  it("better_than_average([12, 23, 34, 45, 56, 67, 78, 89, 90], 69) should return True") do
    Test.assert_equals(better_than_average([12, 23, 34, 45, 56, 67, 78, 89, 90], 69), true)
  end
end

# What I learned:
# to sum numbers in the array it's possible to use inject method on this array
# there are two ways to use inject
# 1. array.inject {|sum, number| sum + number}
# which works like that:
# =>|3, 6| 3 + 6 => 9
# =>|9, 10| 9 + 10 =>19
#
# 2. array.inject(:+)
# which works like that:
# (((3 + 6) + 10) + 13) => 32
#
# It is also possible to pass any number as argument to inject
# and it will be added to the sum in array
# a = [1,2,3,4]
# a.inject(:+) => 10
# a.inject(2, :+) => 12