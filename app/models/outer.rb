class Outer < ApplicationRecord
  belongs_to :user, optional: true
  has_many :coordinations, dependent: :destroy
  mount_uploader :outer, ImageUploader
  accepts_nested_attributes_for :coordinations
  # validation unless: :present?, unless: :image?
  # validates :outer, presence: true
end
