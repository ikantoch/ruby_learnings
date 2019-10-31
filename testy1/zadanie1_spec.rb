require_relative("zadanie1.rb")

RSpec.describe "remove_empty_lines" do
  it "does not do anything with text witthout empty lines" do
    result = remove_empty_lines("Maro")
    expect(result).to eq("Maro")
  end

  it "removes double new lines" do
    text = "Hej\n\nCo tam?\n\nWszystko ok!"
    result = remove_empty_lines(text)

    expect(result).to eq("Hej\nCo tam?\nWszystko ok!")
  end

  it "sdfdsf" do
    result = puzzle1("sample.txt")
  end
end
