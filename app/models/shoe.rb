class Shoe < ApplicationRecord
  belongs_to :user, optional: true
  has_many :coordinations
  mount_uploader :shoe, ImageUploader
  validates :shoe, presence: true
end
