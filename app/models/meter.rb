class Meter < ApplicationRecord
  belongs_to :geneva_record

  def meter_reading
    self.close_meter - self.open_meter
  end
end
