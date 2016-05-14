data= [{first_name: 'Jesmina',
		last_name: 'Hossain',
		birth_year: '1960',
		gender: 'female',
		marital_status: 'married',
		children: 'yes',
		party_affliation: 'Democrat',
		email: 'jesmina_hossain@yahoo.com',
		telephone: '6463014129'
	}
]

data.each do |u|
	User.create(first_name: u[:first_name] , last_name: u[:last_name],
				birth_year: u[:birth_year], gender:u[:gender],
				marital_status: u[:marital_status], children: u[:children],
				party_affliation: u[:party_affliation], email: u[:email],
				telephone: u[:telephone])
end