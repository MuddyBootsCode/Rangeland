class GenevaRecord < ApplicationRecord

  has_many :meters
  has_many :tanks
  accepts_nested_attributes_for :meters, :tanks
end

