class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.integer :contract_id
      t.integer :product_id
      t.integer :client_id
      t.integer :sale_person_id
      t.timestamps :null => false
    end
  end
end
