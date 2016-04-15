class User < ActiveRecord::Base
	validates :first_name, :last_name, :birth_year, :gender, :marital_status, :children, :party_affliation, :email, :telephone, presence: true, allow_blank: false  
	validates :birth_year, numericality: {only_integer: true, message: "enter numbers only"}, length: {is: 4, message: 'should be 4 characters'}
	validates :telephone, numericality: {only_integer: true, message: "enter numbers only"}, length: {is: 10, message: 'should be 10 characters'} 
	validates :email, format: { with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i, message: "enter a valid email" }, uniqueness: {message: "email has already been taken"} 
	after_create :subscribe, :sms
	
	def subscribe
    	MailingListSignupJob.perform_later(self)
  	end

	def sms
		SendSmsJob.perform_later(self.telephone)
	end	
end
