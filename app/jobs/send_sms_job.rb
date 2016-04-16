class SendSmsJob < ActiveJob::Base
  queue_as :sms

    def send_text_message(user)
      number_to_send_to = user.telephone
      twilio_sid = ENV["TWILIO_ACCOUNT_SID"]
      twilio_token = ENV["TWILIO_AUTH_TOKEN"]
      twilio_phone_number = ENV["TWILIO_PHONE_NUMBER"]
      @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
      @twilio_client.account.sms.messages.create(
        :from => "#{twilio_phone_number}",
        :to => "+1#{number_to_send_to}",
        :body => 'Its about time. Cast your vote and make a difference. Support us at https://nymvic.org/'
      )
  	end
  	
  	def perform(user)
  		send_text_message(user)
   	end
end
