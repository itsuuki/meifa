class Favorite < ApplicationRecord
  belongs_to :coordination, optional: true
  belongs_to :user, optional: true
end
