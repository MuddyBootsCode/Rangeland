class CreateGenevaRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :geneva_records do |t|


      t.text :GV_01_open_gauge
      t.text :GV_01_close_gauge
      t.float :GV_01_open_stock
      t.float :GV_01_close_stock
      t.float :GV_01_stock_change
      t.timestamps
    end
  end
end
