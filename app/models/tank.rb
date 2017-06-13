class Tank < ApplicationRecord
  belongs_to :geneva_record

  def stock_change
    self.close_stock - self.open_stock
  end

end
