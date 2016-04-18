class EmailUsers < ApplicationMailer
	default from: 'nymvic88@gmail.com'

	def welcome_email(user)
		@user=user
		@url='https://nymvic.org'
		mail(to: @user.email, subject: 'Thank You For Joining Us')
	end

	def reminder_email(user)
		@user=user
		mail(to: @user.email, subject: 'Important Voting Information from NYMVIC')
	end
end
