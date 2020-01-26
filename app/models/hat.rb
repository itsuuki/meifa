class Hat < ApplicationRecord
  belongs_to :user, optional: true
  has_many :coordinations
  mount_uploader :hat, ImageUploader
  accepts_nested_attributes_for :coordinations
  # validates :hat, presence: true
end
