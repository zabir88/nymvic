class EmailUsers < ApplicationMailer
	default from: 'donot-reply@nymvic.org'

	self.smtp_settings = {  
    	address: 'email-smtp.us-west-2.amazonaws.com',
    	authentication: :login,
    	user_name: ENV['OUTBOUNDEMAIL_USER_NAME'],
    	password: ENV['OUTBOUNDEMAIL_PASSWORD'],
    	enable_starttls_auto: true,
    	tls: true,
    	port: 465
  	}	
	def welcome_email(user)
		@user=user
		@url='https://nymvic.org'
		mail(to: @user.email, subject: 'Thank You For Joining Us')
	end

	def reminder_email(user)
		@user=user
		mail(to: @user.email, subject: 'Finally its Election Day!')
	end
end
