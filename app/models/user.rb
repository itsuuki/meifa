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
  has_many :favorites, dependent: :destroy
  has_many :fav_coordinations, through: :favorites, source: :coordination
  def like(coordination)
    favorites.find_or_create_by(coordination_id: coordination.id)
    favorite.destroy if favorite
  end
  # mount_uploader :image, ImagesUploader
  # validates :name, presence: true, uniqueness: true
end
