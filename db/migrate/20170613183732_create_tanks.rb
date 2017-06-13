class CreateTanks < ActiveRecord::Migration[5.0]
  def change
    create_table :tanks do |t|

      t.text :open_gauge
      t.float :open_stock
      t.text :close_guage
      t.float :close_stock
      t.integer :tank_id

      t.timestamps
    end
    
  end
end
