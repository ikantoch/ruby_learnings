# The cockroach is one of the fastest insects.
# Write a function which takes its speed in km per hour and returns it in cm per second, rounded down to the integer (= floored).
#
# For example:
#       cockroach_speed(1.08) == 30
# Note! The input is a Real number (actual type is language dependent) and is >= 0. The result should be an Integer.
#
def cockroach_speed(s)
  speed = (s * 10000)/360
  speed.floor
end

describe "Basic Tests" do
  Test.assert_equals(cockroach_speed(1.08),30)
  Test.assert_equals(cockroach_speed(1.09),30)
  Test.assert_equals(cockroach_speed(0),0)
end

#what did I learned
# it is possible to cut number using floor method
# number = -16.7834
# n = number.floor
# n = 16
#
# number = -16.7834
# n = number.floor(1)
# n = 16.7
#
# number = -16.7834
# n = number.floor(2)
# n = 16.78