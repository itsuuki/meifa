class Outer < ApplicationRecord
  belongs_to :user, optional: true
  has_many :coordinations
  mount_uploader :image, ImageUploader
  accepts_nested_attributes_for :coordinations
end
