class GenevaRecord < ApplicationRecord

  has_many :meters
  has_many :tanks
end

