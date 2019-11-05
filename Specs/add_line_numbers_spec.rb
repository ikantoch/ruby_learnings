require_relative("add_line_numbers.rb")

RSpec.describe "add_line_numbers" do

  it "adds line numbers and dot" do
    text = "It's null\nTill you\nShip it"
    result = add_line_numbers(text)

    expect(result).to eq("1. It's null.\n2. Till you.\n3. Ship it.")
  end
end