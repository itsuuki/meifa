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
  # mount_uploader :outer, ImageUploader
  # validates :coordination, presence: true
  # def self.search(search) #ここでのself.はUser.を意味する
  #   if search
  #     where(['coordination LIKE ?', "%#{search}%"]) #検索とnameの部分一致を表示。User.は省略
  #   else
  #     all #全て表示。User.は省略
  #   end
  # end
end



# :outer_id, :inner_id, :bottom_id, :shoes_id, :hat_id, :accessory_id, :user_id,