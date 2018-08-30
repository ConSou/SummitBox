class Bin < ApplicationRecord
  belongs_to :mountian

  has_many :entries
  has_many :users, :through => :entries
end
