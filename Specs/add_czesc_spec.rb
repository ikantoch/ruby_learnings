require_relative("add_czesc.rb")

RSpec.describe "add_czesc" do
  it "adds czesc at the beggining of the sencence" do
    text = "Iza"
    result = add_czesc(text)
    expect(result).to eq("Cześć, Iza!")
  end
end
