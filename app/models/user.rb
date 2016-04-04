class User < ActiveRecord::Base
	validates :first_name, :last_name, :birth_year, :gender, :marital_status, :children, :party_affliation, :email, :telephone, presence: true 
	validates :birth_year, :telephone, numericality: {only_integer: true, message: "Enter numbers only"}
	validates :email, format: { with:  /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i, message: "Enter a valid email" }
	validates_uniqueness_of :email, message: 'Email has already been taken'
end
