class Inner < ApplicationRecord
  belongs_to :user, optional: true
  has_many :coordinations
  mount_uploader :inner, ImageUploader
  accepts_nested_attributes_for :coordinations
  # validates :inner, presence: true
end
