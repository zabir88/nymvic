require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :birth_year => 1,
        :gender => "Gender",
        :marital_status => "Marital Status",
        :children => "Children",
        :party_affliation => "Party Affliation",
        :email => "Email",
        :telephone => 2
      ),
      User.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :birth_year => 1,
        :gender => "Gender",
        :marital_status => "Marital Status",
        :children => "Children",
        :party_affliation => "Party Affliation",
        :email => "Email",
        :telephone => 2
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "Marital Status".to_s, :count => 2
    assert_select "tr>td", :text => "Children".to_s, :count => 2
    assert_select "tr>td", :text => "Party Affliation".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
