class AddBasicColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :name, :string
  	add_column :users, :surname, :string
  	add_column :users, :birthday, :date
  	add_column :users, :sex, :boolean
  	add_column :users, :family_id, :integer
  	add_index  :users, :family_id, 			unique: true
  end
end
