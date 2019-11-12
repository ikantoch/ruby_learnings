require_relative("reverse.rb")

RSpec.describe "reverses text" do
  it "it does not reverses text without new lines" do
    text = "CBA"
    result = reverse(text)
    expect(result).to eq("CBA")
  end

  it "reverses multiple lines" do
    text = "C\nB\nA"
    result = reverse(text)
    expect(result).to eq("A\nB\nC")
  end
end