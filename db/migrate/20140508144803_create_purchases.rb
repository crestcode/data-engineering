class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :purchaser_id
      t.integer :item_id
      t.integer :count

      t.timestamps
    end
  end
end
