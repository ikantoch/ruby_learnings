# https://www.codewars.com/kata/55f9b48403f6b87a7c0000bd/train/ruby
# Your classmates asked you to copy some paperwork for them. You know that there are 'n' classmates and the paperwork has 'm' pages.
# Your task is to calculate how many blank pages do you need.
# Example:
# paperwork(5, 5) == 25

def paperwork(n, m)
  if n < 0 || m < 0
    return 0
  else
    n*m
  end
end

describe "Simple Tests" do
  Test.assert_equals(paperwork(5,5), 25, "Failed at paperwork(5,5)")
  Test.assert_equals(paperwork(5,-5), 0, "Failed at paperwork(5,-5)")
  Test.assert_equals(paperwork(-5,-5), 0, "Failed at paperwork(-5,-5)")
  Test.assert_equals(paperwork(-5,5), 0, "Failed at paperwork(-5,5)")
  Test.assert_equals(paperwork(5,0), 0, "Failed at paperwork(5,0)")
end

# what did I learned
# when using || the condition needs to e added on the both sides of ||
# if n < 0 || m < 0  correct
# if n || m < 0  incorrect