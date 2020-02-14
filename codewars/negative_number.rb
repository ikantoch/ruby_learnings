# In this simple assignment you are given a number and have to make it negative. But maybe the number is already negative?
#
# Example:
#
# makeNegative(1); # return -1
# makeNegative(-5); # return -5
# makeNegative(0); # return 0
# Notes:
#
# The number can be negative already, in which case no change is required.
# Zero (0) is not checked for any specific sign. Negative zeros make no mathematical sense.

def makeNegative(num)
  if num > 0
    return num - 2*num

  elsif num <= 0
    return num
  end
end

# or

# def makeNegative(num)
#   -num.abs
# end
#
# https://www.geeksforgeeks.org/ruby-integer-abs-function-with-example/

Test.assert_equals(makeNegative(42), -42)
Test.assert_equals(makeNegative(0), 0)
Test.assert_equals(makeNegative(-10), -10)

# What did I learned
# It's not necessary to put every condition into elsif block it the logic is the same
# correct:
#  if num > 0
#     return num - 2*num
#
#   elsif num <= 0
#     return num
#   end
#
# incorrect
#   if num > 0
#     return num - 2*num
#   elsif num < 0
#     return num
#   elsif num == 0
#     return 0
#   end