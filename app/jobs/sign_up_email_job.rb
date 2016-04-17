class SignUpEmailJob < ActiveJob::Base
  queue_as :signup_email

  def perform(user)
	Welcomeuser.welcome_email(user).deliver_now    
  end

end
