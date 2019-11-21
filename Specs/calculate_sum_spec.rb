require_relative("calculate_sum.rb")

RSpec.describe "calculate sum" do

  it "calculate sum of integers in the array" do
    array = [2,2]
    result = calculate_sum(array)
    expect(result).to eq 4
  end
end