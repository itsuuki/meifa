class AddUserIdToBottom < ActiveRecord::Migration[5.0]
  def change
    add_reference :bottoms, :user, foreign_key: true
  end
end
