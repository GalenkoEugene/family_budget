class CreateExpenseCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :expense_categories do |t|
      t.string :type

      t.timestamps
    end
  end
end
