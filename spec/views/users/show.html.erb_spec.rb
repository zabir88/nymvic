require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :birth_year => 1,
      :gender => "Gender",
      :marital_status => "Marital Status",
      :children => "Children",
      :party_affliation => "Party Affliation",
      :email => "Email",
      :telephone => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/Marital Status/)
    expect(rendered).to match(/Children/)
    expect(rendered).to match(/Party Affliation/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/2/)
  end
end
