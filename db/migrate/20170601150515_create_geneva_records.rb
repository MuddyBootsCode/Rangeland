class CreateGenevaRecords < ActiveRecord::Migration[5.0]

  default_value_for :GV_01_open_stock, 0
  def change
    create_table :geneva_records do |t|


      t.text :GV_01_open_gauge
      t.text :GV_01_close_gauge  
      t.float :GV_01_open_stock
      t.float :GV_01_close_stock
      t.text :GV_02_open_gauge 
      t.text :GV_02_close_gauge
      t.float :GV_02_open_stock
      t.float :GV_02_close_stock
      t.text :GV_03_open_gauge 
      t.text :GV_03_close_gauge 
      t.float :GV_03_open_stock
      t.float :GV_03_close_stock
      t.float :tact1_open
      t.float :tact1_close
      t.float :tact2_open
      t.float :tact2_close
      t.float :tact3_open
      t.float :tact3_close
      t.float :tact4_open
      t.float :tact4_close
      t.float :tact5_open
      t.float :tact5_close
      t.float :stateline1_open
      t.float :stateline1_close
      t.float :stateline2_open
      t.float :stateline2_close
      t.float :plains1_open
      t.float :plains1_close
      t.float :plains2_open
      t.float :plains2_close
      t.float :waffleiron_open
      t.float :waffleiron_close
      t.text :comments
      t.timestamps
    end
  end
end
