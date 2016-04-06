class MailingListSignupJob < ActiveJob::Base
	def perform(user)
    logger.info "signing up #{user.email}"
    subscribe(user)
  end

  def subscribe(user)
    mailchimp = Gibbon::Request.new(api_key: ENV["mailchimp_api_key"])
    list_id =ENV["mailchimp_list_id"]
    result = mailchimp.lists(list_id).members.create(
      body: {
        email_address: user.email,
        status: 'subscribed',
        merge_fields: {
          FNAME: user.first_name,
          LNAME: user.last_name,
          BYEAR: user.birth_year,
          GEND: user.gender,
          MSTAT: user.marital_status,
          CHILDREN: user.children,
          PARTY: user.party_affliation,
          PHONE: user.telephone
        }
    })
    Rails.logger.info("Subscribed #{user.email} to MailChimp") if result
  end
end
