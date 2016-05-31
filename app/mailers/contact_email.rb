class ContactEmail < ApplicationMailer
	default from: 'nalmontaser@nymvic.org'

    self.smtp_settings = {  
    	address: 'smtp.zoho.com',
    	port: 587,
        user_name: 'nalmontaser@nymvic.org',
    	domain: 'nymvic.org',
        password: ENV['INBOUNDEMAIL_PASSWORD'],
    	authentication: :login,
        enable_starttls_auto: true
  	}	

	def contact_email(contact)
    	@contact = contact
    	mail(to: 'nalmontaser@nymvic.org', from: @contact.email, subject: "NYMVIC User's Request")
  	end
end