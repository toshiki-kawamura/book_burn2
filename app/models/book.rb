class Book < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_one :genre
  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy
  serialize :chapter
  
  with_options presence: true do
    validates :title
    validates :select_genre_id
  end
end
