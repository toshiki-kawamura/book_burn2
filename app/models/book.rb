class Book < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_one :genre
  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy
  

end
