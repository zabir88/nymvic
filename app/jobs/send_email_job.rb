class SendEmailJob < ActiveJob::Base
  queue_as :emailreminder

  def perform
  	User.find_each(start: 460, batch_size: 2292) do |u|
		EmailUsers.reminder_email(u).deliver_now
  	end
  end
end
