# |-------------------------|
# | #  | Name    | City
# | 1. | Waler A | Kraków
# | 2. | Janek B | Maków
# | ...
# | 4. | Nadia D | Mińsk
# |-------------------------|


RSpec.describe "dziennik" do
  let(:dziennik) do
    {
      1 => {
        imie: "Nadia",
        nazwisko: "D",
        miasto: "Mińsk"
      },
      2 => {
        imie: "Nadia",
        nazwisko: "D",
        miasto: "Mińsk"
      },
      3 => {
        imie: "Nadia",
        nazwisko: "D",
        miasto: "Mińsk"
      },
      4 => {
        imie: "Nadia",
      nazwisko: "D",
      miasto: "Mińsk"
      }
    }
  end

  it "gets name and city for given number in dziennik" do
    osoba = dziennik[4]
    result = "4. #{osoba[:imie]} #{osoba[:nazwisko]}, #{osoba[:miasto]}"

    expect(result).to eq("4. Nadia D, Mińsk")
  end
end
