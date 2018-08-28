class Bin < ApplicationRecord
  belongs_to :mountian

  has_many :entrys
end
