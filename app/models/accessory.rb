class Accessory < ApplicationRecord
  belongs_to :user, optional: true
  has_many :accessory_coordinations
  has_many :coordinations, through: :accessory_coordinations
  mount_uploader :image, ImageUploader
end
