class Mountian < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :plans
  has_many :bins 
end
