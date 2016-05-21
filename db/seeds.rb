require 'roo'
require 'resolv'

open_data= Roo::Excelx.new(Rails.root.join('public', 'nymvic-data.xlsx'))
parsed_data= open_data.parse(email: 'email', first_name: 'first_name', last_name: 'last_name')

def valid_email_domain(email)
    domain = email.match(/\@(.+)/)[1]
    Resolv::DNS.open do |dns|
      @mx = dns.getresources(domain, Resolv::DNS::Resource::IN::MX)
   	end
    @mx.size > 0 ? true : false
end

def valid_email(email)
	return true if email =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i && valid_email_domain(email)==true
	return false
end

users=parsed_data
users.map{|u| u[:email]='' if valid_email(u[:email]) != true} 
sorted_users=users.sort_by{|u| u[:email]}

sorted_users.each do |u|
	User.create(first_name: u[:first_name], 
				last_name: u[:last_name],
				birth_year: '', 
				gender: '',
				marital_status: '', 
				children: '',
				party_affliation: '', 
				email: u[:email],
				telephone: '')
end
