class ContactEmail < ApplicationMailer

	def contact_email(contact)
    	@contact = contact
    	mail(to: ENV['NYMVIC_CONTACT_EMAIL'], from: @contact.email, subject: "NYMVIC User's Request")
  	end
end