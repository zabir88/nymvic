class SendEmailJob < ActiveJob::Base
  queue_as :emailreminder

  def perform
  	User.find_each(batch_size: 5000) do |u|
    	EmailUsers.reminder_email(u).deliver_now
  	end
  end
end
