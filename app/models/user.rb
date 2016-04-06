class User < ActiveRecord::Base
	validates :first_name, :last_name, :birth_year, :gender, :marital_status, :children, :party_affliation, :email, :telephone, presence: true, allow_blank: false  
	validates :birth_year, numericality: {only_integer: true, message: "Enter numbers only"}, length: {is: 4}
	validates :telephone, numericality: {only_integer: true, message: "Enter numbers only"}, length: {is: 10} 
	validates :email, format: { with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i, message: "Enter a valid email" }, uniqueness: {message: "Email has already been taken"} 
	after_create :subscribe
	
	def subscribe
    	MailingListSignupJob.perform_later(self)
  	end
end
