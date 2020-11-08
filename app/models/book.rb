class Book < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  validates :title, presence:  true
  validates :chapter, presence:  true
  validates :note, presence:  true
  validates :image, presence: true

  has_many :comments, dependent: :destroy

end
