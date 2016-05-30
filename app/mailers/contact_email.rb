class ContactEmail < ApplicationMailer
	
	self.smtp_settings = {  
    	:address => 'smtp.zoho.com',
    	:authentication => :login,
    	:user_name => ENV['INBOUNDEMAIL_USER_NAME'],
    	:password => ENV['INBOUNDEMAIL_PASSWORD'],
    	tsl: true,
    	:port => 587
  	}	

	def contact_email(contact)
    	@contact = contact
    	mail(to: ENV['NYMVIC_EMAIL'], from: @contact.email, subject: "NYMVIC User's Request")
  	end
end