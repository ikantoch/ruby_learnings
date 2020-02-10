teams = {
	"team1" => {
		"seat1" => "Iza", # kluczem jest string
		:seat2 => "Ola", # kluczem jest symbol
		seat3: "Ada" # to samo co wyzej (kluczem jest symbol) - skrocona skladania
	},

	"team2" => {
		"seat1" => "Ula",
		"seat2" => "Ewa",
		"seat3" => "Ida"
	}
}

teams.each do |team, employees|
	puts team
	employees.each do |seat, person|
		p "#{person} is on the #{seat}"
	end	
end

