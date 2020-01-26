class Bottom < ApplicationRecord
  belongs_to :user, optional: true
  has_many :coordinations
  mount_uploader :bottom, ImageUploader
  accepts_nested_attributes_for :coordinations
  # validates :bottom, presence: true
end
