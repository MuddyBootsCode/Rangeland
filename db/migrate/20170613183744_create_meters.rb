class CreateMeters < ActiveRecord::Migration[5.0]
  def change
    create_table :meters do |t|

      t.text :meter_name
      t.float :open_meter
      t.float :close_meter
      t.timestamps
      
    end
    
  end
end
