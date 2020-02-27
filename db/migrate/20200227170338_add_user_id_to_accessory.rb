class AddUserIdToAccessory < ActiveRecord::Migration[5.0]
  def change
    add_reference :accessories, :user, foreign_key: true
  end
end
