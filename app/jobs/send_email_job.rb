class SendEmailJob < ActiveJob::Base
  queue_as :emailreminder

  def perform
  	User.find_each(batch_size: 5000) do |u|
  		if u.select{|i| i.email.match(/\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/)}
  			
  		end
  		#EmailUsers.reminder_email(u).deliver_now
  	end
  end
end
