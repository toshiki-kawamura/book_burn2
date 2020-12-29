class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  extend ActiveHash::Associations::ActiveRecordExtensions

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :genre
  belongs_to :occupation

  validates :name,          presence: true
  validates :profile,       presence: true
  validates :occupation_id, numericality: { other_than: 1 }
  validates :genre_id,      numericality: { other_than: 1 }
  has_many :comments, dependent: :destroy
  has_many :books
end
