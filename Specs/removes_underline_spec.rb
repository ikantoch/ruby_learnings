require_relative("removes_underline.rb")

RSpec.describe "removes_underline" do
  it "does nothing when there is no underline" do
    result = removes_underline("Text without underline")
    expect(result).to eq("Text without underline")
  end

  it "removed underline from the text" do
    text = "4_6_2_8_9"
    result = removes_underline(text)
    expect(result).to eq("4\n6\n2\n8\n9")
  end
end
