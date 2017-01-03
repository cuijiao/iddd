class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :product_id
      t.integer :senior_count
      t.integer :junior_count
      t.integer :senior_price_per_hour
      t.integer :junior_price_per_hour
      t.timestamps :null => false
    end
  end
end
