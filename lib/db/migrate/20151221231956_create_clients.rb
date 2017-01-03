class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.integer :client_id
      t.integer :contract_id
      t.timestamps :null => false
    end
  end
end
