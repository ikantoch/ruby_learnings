# false xor false == false // since both are false
# true xor false == true // exactly one of the two expressions are true
# false xor true == true // exactly one of the two expressions are true
# true xor true == false // Both are true.  "xor" only returns true if EXACTLY one of the two expressions evaluate to true.
# Task
# Since we cannot define keywords in Javascript (well, at least I don't know how to do it),
# your task is to define a function xor(a, b) where a and b are the two expressions to be evaluated.
# Your xor function should have the behaviour described above,
# returning true if exactly one of the two expressions evaluate to true, false otherwise.

def xor(a,b)
  if (a == true && b == true) || (a == false && b == false)
    return false
  else
    return true
  end
end

Test.describe("Your 'xor' function/operator") do
  Test.it("should work for the four basic cases described above") do
    Test.assert_equals(xor(false, false), false, "false xor false === false")
    Test.assert_equals(xor(true, false), true, "true xor false === true")
    Test.assert_equals(xor(false, true), true, "false xor true === true")
    Test.assert_equals(xor(true, true), false, "true xor true === false")
  end
  Test.it("should work properly when nested") do
    Test.assert_equals(xor(false, xor(false, false)), false)
    Test.assert_equals(xor(xor(true, false), false), true)
    Test.assert_equals(xor(xor(true, true), false), false)
    Test.assert_equals(xor(true, xor(true, true)), true)
    Test.assert_equals(xor(xor(false, false), xor(false, false)), false)
    Test.assert_equals(xor(xor(false, false), xor(false, true)), true)
    Test.assert_equals(xor(xor(true, false), xor(false, false)), true)
    Test.assert_equals(xor(xor(true, false), xor(true, false)), false)
    Test.assert_equals(xor(xor(true, true), xor(true, false)), true)
    Test.assert_equals(xor(xor(true, xor(true, true)), xor(xor(true, true), false)), true)
  end
end