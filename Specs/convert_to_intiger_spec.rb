require_relative("convert_to_intiger.rb")

RSpec.describe "convert_to_intiger" do
  it "removes + and converts string to intiger" do
    text = "2+2"
    result = convert_to_intiger(text)
    expect(result).to eq [2, 2]
  end
end
