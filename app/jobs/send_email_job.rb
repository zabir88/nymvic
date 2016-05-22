class SendEmailJob < ActiveJob::Base
  queue_as :emailreminder

  def perform
  	User.find_each(start: 459, batch_size: 2283) do |u|
		EmailUsers.reminder_email(u).deliver_now
  	end
  end
end
