class CreateGenevaRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :geneva_records do |t|


      t.text :GV_01_open_gauge
      t.text :GV_02_open_gauge
      t.text :GV_03_open_gauge
      t.text :GV_01_close_gauge
      t.text :GV_02_close_gauge
      t.text :GV_03_close_gauge
      t.float :GV_01_open_stock
      t.float :GV_02_open_stock
      t.float :GV_03_open_stock
      t.float :GV_01_close_stock
      t.float :GV_02_close_stock
      t.float :GV_03_close_stock
      t.float :GV_01_stock_change
      t.float :GV_02_stock_change
      t.float :GV_03_stock_change
      t.timestamps
    end
  end
end
