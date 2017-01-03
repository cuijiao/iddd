class CreateTimeCards < ActiveRecord::Migration
  def change
    create_table :time_cards do |t|
      t.integer :tw_id
      t.integer :work4ing_hours_per_day
      t.timestamps :null => false
    end
  end
end
