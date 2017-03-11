class RenameProfitCategoryIdInProfitCategory < ActiveRecord::Migration[5.0]
  def change
  	rename_column :profits, :profit_category_id, :profit_categories_id
  end
end
