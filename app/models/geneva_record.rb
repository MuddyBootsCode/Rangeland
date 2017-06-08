class GenevaRecord < ApplicationRecord


  def schange
    self.GV_01_close_stock - self.GV_01_open_stock
  end

  def schange2
    self.GV_02_close_stock - self.GV_02_open_stock
    end

  def schange3
    self.GV_03_close_stock - self.GV_03_open_stock
  end



end

