class User < ActiveRecord::Base
	validates :first_name, :last_name, :birth_year, :gender, :marital_status, :children, :party_affliation, :email, :telephone, presence: true, allow_blank: false  
	validates :birth_year, numericality: {only_integer: true, message: "enter numbers only"}, length: {is: 4, message: 'should be 4 characters'}
	validates :telephone, numericality: {only_integer: true, message: "enter numbers only"}, length: {is: 10, message: 'should be 10 characters'} 
	validates :email, format: { with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i, message: "enter a valid email" }, uniqueness: {message: "email has already been taken"} 
	after_create :subscribe, :send_text_message
	
  def subscribe
    SignupMailingListJob.perform_later(self)
  end


  def send_text_message
      number_to_send_to = self.telephone
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
  
end
