class Plan < ApplicationRecord
  belongs_to :user
  belongs_to :mountian
  #validates_uniqueness_of :mountian_id
end
