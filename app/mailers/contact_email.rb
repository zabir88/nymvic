class ContactEmail < ApplicationMailer
    self.smtp_settings = {  
    	address: 'smtp.zoho.com',
    	port: 587,
        domain: 'nymvic.org',
        authentication: :plain,
        user_name: ENV['INBOUNDEMAIL_USER_NAME'],
    	password: ENV['INBOUNDEMAIL_PASSWORD']
  	}	
    def contact_email(contact)
    	@contact = contact
    	mail(to: ENV['INBOUNDEMAIL_USER_NAME'], from: ENV['INBOUNDEMAIL_USER_NAME'], subject: "Message from #{contact.name}")
  	end
end