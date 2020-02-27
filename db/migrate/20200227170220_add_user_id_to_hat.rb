class AddUserIdToHat < ActiveRecord::Migration[5.0]
  def change
    add_reference :hats, :user, foreign_key: true
  end
end
