class User < ApplicationRecord
  acts_as_token_authenticatable
  has_one_attached :image
  has_many :plans

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

end
