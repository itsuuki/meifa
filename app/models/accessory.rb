class Accessory < ApplicationRecord
  belongs_to :user, optional: true
  has_many :accessory_coordinations
  has_many :coordinations, through: :accessory_coordinations
  mount_uploader :accessory, ImageUploader
  accepts_nested_attributes_for :coordinations
  # validates :accessory, presence: true
end
