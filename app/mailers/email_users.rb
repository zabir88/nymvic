class EmailUsers < ApplicationMailer
	default from: 'nymvic01@gmail.com'

	def welcome_email(user)
		@user=user
		@url='https://nymvic.org'
		mail(to: @user.email, subject: 'Thank You For Joining Us')
	end

	def reminder_email(user)
		@user=user
		mail(to: @user.email, subject: 'Important Voters Information from NYMVIC')
	end

	def contact_email(contact)
    	@contact = contact
    	mail(to: ENV['NYMVIC_CONTACT_EMAIL'], from: @contact.email, subject: "NYMVIC User's Request")
  	end
end
