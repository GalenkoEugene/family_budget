class CreateProfits < ActiveRecord::Migration[5.0]
  def change
    create_table :profits do |t|
      t.float :amount
      t.integer :profit_category_id
      t.integer :family_id
      t.integer :user_id
      t.string :description

      t.timestamps
    end
  end
end
