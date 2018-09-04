class Entry < ApplicationRecord
  belongs_to :bin
  belongs_to :user
  validates_uniqueness_of :bin_id, scope: :user_id, conditions: -> { where("DATE(created_at) = ?", Date.today) } 
end
