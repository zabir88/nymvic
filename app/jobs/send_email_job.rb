class SendEmailJob < ActiveJob::Base
  queue_as :emailreminder

  def perform
  	User.all.each do |u|
    	EmailUsers.reminder_email(u)
  	end
  end
end
