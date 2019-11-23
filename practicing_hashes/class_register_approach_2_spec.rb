def class_register
  {
    1 => {
      name: "Ada",
      surname: "A",
      city: "Krakow"
    },
    2 => {
      name: "Bartek",
      surname: "B",
      city: "Warszawa"
    },
    3 => {
      name: "Celina",
      surname: "C",
      city: "Gdynia"
    }
  }
end

def get_student_record_by_id(id)
  # Can you make the test pass by modifying this method only?
end

RSpec.describe "class register - approach 2" do
  it "displays the record of a student with id 1" do
    student_record = get_student_record_by_id(1)
    expect(student_record).to eq("1. Ada A, Krakow")
  end

  it "displays the record of a student with id 3" do
    student_record = get_student_record_by_id(3)
    expect(student_record).to eq("3. Celina C, Gdynia")
  end
end
