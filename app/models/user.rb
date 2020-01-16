class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :coordinations
  has_many :outers
  has_many :inners
  has_many :bottoms
  has_many :shoes
  has_many :hats
  has_many :accessorys
  # mount_uploader :image, ImagesUploader
  # validates :name, presence: true, uniqueness: true
end
