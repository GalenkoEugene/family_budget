class RenameTypeInProfitCategory < ActiveRecord::Migration[5.0]
  def change
  	rename_column :profit_categories, :type, :profit_type
  end
end
