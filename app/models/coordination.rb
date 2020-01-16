class Coordination < ApplicationRecord
  belongs_to :outer
  belongs_to :inner
  belongs_to :bottom
  belongs_to :shoe
  belongs_to :hat
  belongs_to :accessory
  belongs_to :user
  has_many :accessory_coordinations
  mount_uploader :image, ImageUploader
end
