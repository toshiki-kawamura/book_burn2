class Book < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_one :genre
  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy
  has_many :chapters, dependent: :destroy
  accepts_nested_attributes_for :chapters, reject_if: :all_blank, allow_destroy: true

  with_options presence: true do
    validates :title
    validates :select_genre_id, numericality: { other_than: 1, message: 'を選択して下さい' }
  end
end
