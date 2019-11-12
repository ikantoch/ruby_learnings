require_relative("calculator.rb")

RSpec.describe "calculate" do
  it "performs addition" do
    result = calculate('1+2')
    expect(result).to eq(3)
  end

  it "performs subtraction" do
    result = calculate('1-2')
    expect(result).to eq(-1.0)
  end

  it "performs multiplication" do
    result = calculate('1*2')
    expect(result).to eq(2.0)
  end

  it "performs division" do
    result = calculate('1/2')
    expect(result).to eq(0.5)
  end

  it "performs multiple mathematical operations" do
    result = calculate('1+1-1')
    expect(result).to eq(1.0)
  end
end