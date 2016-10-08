# Example:
#set :environment, "development"
set :environment, "production"
set :output, {:error=> "log/cron_error_log.log", :standard=> 'log/cron_log.log'}

=begin
every :sunday, :at=> '7:16 pm' do
	runner "SendSmsJob.perform_later"
end
=end
every :saturday, :at=> '6:15 pm' do
	runner "SendEmailJob.perform_later"
end
