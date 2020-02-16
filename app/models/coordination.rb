class Coordination < ApplicationRecord
  belongs_to :outer, optional: true
  belongs_to :inner, optional: true
  belongs_to :bottom, optional: true
  belongs_to :shoe, optional: true
  belongs_to :hat, optional: true
  belongs_to :accessory, optional: true
  has_many :users
  has_many :accessory_coordinations
  has_many :favorites
  has_many :users, through: :favorites
  mount_uploader :outer, ImageUploader
  def self.search(search)
    if search
      where(['coordination LIKE ?', "%#{search}%"])
    else
      Coordination.all
    end
  end
end