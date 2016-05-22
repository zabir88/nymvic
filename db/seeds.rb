sorted_user=[
	{first_name: "zabir",
	 last_name: "hossain",
	 birth_year: "1988",
	 gender: "male",
	 marital_status: "single",
	 children: "no",
	 party_affliation: "democrat",
	 email: "zabir8809@gmail.com",
	 telephone: "6463014129"
	}
]

sorted_user.each do |u|
	User.create(u)
end