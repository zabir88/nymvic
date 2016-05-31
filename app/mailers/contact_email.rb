class ContactEmail < ApplicationMailer
    self.smtp_settings = {  
    	address: 'smtp.zoho.com',
    	port: 587,
        domain: 'nymvic.org',
        user_name: ENV['INBOUNDEMAIL_USER_NAME'],
    	password: ENV['INBOUNDEMAIL_PASSWORD'],
    	authentication: :login,
        tls: true,
        ssl: false,
        enable_starttls_auto: true
  	}	
    def contact_email(contact)
    	@contact = contact
    	mail(to: ENV['NYMVIC_EMAIL'], from: @contact.email, subject: "NYMVIC User's Request")
  	end
end