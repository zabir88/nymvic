class SendEmailJob < ActiveJob::Base
  queue_as :emailreminder

  def perform
  	User.find_each(start: 1, batch_size: 1) do |u|
		EmailUsers.reminder_email(u).deliver_now
  	end
  end
end
