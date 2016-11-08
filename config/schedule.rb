# Example:
#set :environment, "development"
set :environment, "production"
set :output, {:error=> "log/cron_error_log.log", :standard=> 'log/cron_log.log'}

=begin
every :sunday, :at=> '7:16 pm' do
	runner "SendSmsJob.perform_later"
end
=end

every :monday, :at=> '10:40 pm' do
	runner "SendEmailJob.perform_later"
end


#run this to update the crontab whenever --update-crontab