class RenameTypeInExpenseCategory < ActiveRecord::Migration[5.0]
  def change
  	rename_column :expense_categories, :type, :expense_type
  end
end
