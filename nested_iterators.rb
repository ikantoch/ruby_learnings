teams = {
	"team1" => {
		"seat1": "Iza",
		"seat2": "Ola",
		"seat3": "Ada"
	},

	"team2" => {
		"seat1": "Ula",
		"seat2": "Ewa",
		"seat3": "Ida"
	}
}

teams.each do |team, employees|
	puts team
	employees.each do |seat, person|
		p "#{[:person]} is on the #{[:seat]}"
	end	
end