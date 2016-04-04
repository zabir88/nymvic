class ChangeTelephoneTypeInUsers < ActiveRecord::Migration
  def self.up
  	 change_column :users, :telephone, :integer, limit: 8
  end

  def self.down
	change_column :users, :telephone, :integer 
  end
end