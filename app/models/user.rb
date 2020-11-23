class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :occupation

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name,          presence: true
  validates :profile,       presence: true
  validates :occupation_id, numericality: { other_than: 1 }
  validates :genre_id,      numericality: { other_than: 1 }
  has_many :comments, dependent: :destroy
  has_many :books
end
