# Given an array of integers as strings and numbers, return the sum of the array values as if all were numbers.
# Return your answer as a number.

def sum_mix(x)
  intigers = x.map { |element| element.to_i }
  intigers.inject(0) { |sum, number| sum + number}
end

Test.describe "Basic tests" do
  Test.assert_equals(sum_mix([9, 3, '7', '3']), 22)
  Test.assert_equals(sum_mix(['5', '0', 9, 3, 2, 1, '9', 6, 7]), 42)
  Test.assert_equals(sum_mix(['3', 6, 6, 0, '5', 8, 5, '6', 2,'0']), 41)
  Test.assert_equals(sum_mix(['1', '5', '8', 8, 9, 9, 2, '3']), 45)
  Test.assert_equals(sum_mix([8, 0, 0, 8, 5, 7, 2, 3, 7, 8, 6, 7]), 61)
end