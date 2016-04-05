class User < ActiveRecord::Base
	validates :first_name, :last_name, :birth_year, :email, :telephone, presence: true
	validates :gender, :marital_status, :children, :party_affliation, presence: true, allow_blank: false  
	validates :birth_year, :telephone, numericality: {only_integer: true, message: "Enter numbers only"}
	validates :email, format: { with:  /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i, message: "Enter a valid email" }
	validates_uniqueness_of :email, message: 'Email has already been taken'

	def subscribe
    mailchimp = Gibbon::Request.new(api_key: ENV['mailchimp_api_key'])
    list_id = ENV['mailchimp_list_id']
    result = mailchimp.lists(list_id).members.create(
      body: {
        email_address: self.email,
        status: 'subscribed',
        merge_fields: {
          FNAME: self.full_name,
          LNAME: self.last_name,
          BYEAR: self.birth_year,
          GEND: self.gender,
          MSTAT: self.marital_status,
          CHILDREN: self.children,
          PARTY: self.party_affliation,
          TELPHONE: self.telephone
      	}
    })
    Rails.logger.info("Subscribed #{self.email} to MailChimp") if result
  end

end
