require_relative("remove_empty_lines.rb")

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
end
