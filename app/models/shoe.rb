class Shoe < ApplicationRecord
  belongs_to :user, optional: true
  has_many :coordinations
  mount_uploader :image, ImageUploader
end
