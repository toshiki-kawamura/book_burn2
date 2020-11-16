class Book < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_one :genre
  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy
  
  
  with_options presence: true do
    validates :title
    validates :chapter
    validates :image
    validates :select_genre_id
  end
  

  
end
