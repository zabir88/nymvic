class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :birth_year
      t.string :gender
      t.string :marital_status
      t.string :children
      t.string :party_affliation
      t.string :email
      t.integer :telephone

      t.timestamps null: false
    end
  end
end
