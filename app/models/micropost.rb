class Micropost < ApplicationRecord
  validates :content, presence: true, length: { maximum: 255 }
  
  belongs_to :user
  
  has_many :favorites, dependent: :destroy
  has_many :likes, through: :favorites, source: :micropost

  
end
