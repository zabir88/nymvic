require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :birth_year => 1,
      :gender => "MyString",
      :marital_status => "MyString",
      :children => "MyString",
      :party_affliation => "MyString",
      :email => "MyString",
      :telephone => 1
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_first_name[name=?]", "user[first_name]"

      assert_select "input#user_last_name[name=?]", "user[last_name]"

      assert_select "input#user_birth_year[name=?]", "user[birth_year]"

      assert_select "input#user_gender[name=?]", "user[gender]"

      assert_select "input#user_marital_status[name=?]", "user[marital_status]"

      assert_select "input#user_children[name=?]", "user[children]"

      assert_select "input#user_party_affliation[name=?]", "user[party_affliation]"

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_telephone[name=?]", "user[telephone]"
    end
  end
end
