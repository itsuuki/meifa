class AddUserIdToInner < ActiveRecord::Migration[5.0]
  def change
    add_reference :inners, :user, foreign_key: true
  end
end
