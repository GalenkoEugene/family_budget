class CreateExpenses < ActiveRecord::Migration[5.0]
  def change
    create_table :expenses do |t|
      t.float :amount
      t.integer :expense_categories_id
      t.integer :family_id
      t.integer :user_id
      t.string :description

      t.timestamps
    end
  end
end
