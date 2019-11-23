def class_register
  {
    ids: [1, 2, 3],
    names: ["Ada", "Bartek", "Celina"],
    surnames: ["A", "B", "C"],
    cities: ["Krakow", "Warszawa", "Gdynia"]
  }
end

def get_student_record_by_id(id)
  # Can you make the test pass by modifying this method only?
end

RSpec.describe "class register - approach 1" do
  it "displays the record of a student with id 1" do
    student_record = get_student_record_by_id(1)
    expect(student_record).to eq("1. Ada A, Krakow")
  end

  it "displays the record of a student with id 3" do
    student_record = get_student_record_by_id(3)
    expect(student_record).to eq("3. Celina C, Gdynia")
  end
end
