# def first_and_last_name (first_name, last_name)
#   p "#{first_name} #{last_name}"
# end
#
#
# RSpec.describe "first_and_last_name" do
#   it "adds name to last name" do
#     result = first_and_last_name("Iza", "Kantoch")
#     expect(result).to eq("Iza Kantoch")
#   end
# end

array =%w[Iza Kantoch is learning how to code]

def create_sentence_from_array(argument)
  argument.join
end

RSpec.describe "create_sentence_from_array" do
  it "creates a sentence from the array" do
    result = create_sentence_from_array(array)
    expect(result).to eq("Iza Kantoch is learning how to code")
  end
end