class GenevaRecord < ApplicationRecord


  def schange
    self.GV_01_close_stock - self.GV_01_open_stock
  end

end

