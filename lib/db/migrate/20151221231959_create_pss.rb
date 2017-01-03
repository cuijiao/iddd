class CreatePss < ActiveRecord::Migration
  def change
    create_table :pss do |t|
      t.integer :tw_id
      t.string :grade
      t.integer :client_id
      t.timestamps :null => false
    end
  end
end
