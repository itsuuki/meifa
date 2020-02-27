class AddUserIdToOuter < ActiveRecord::Migration[5.0]
  def change
    add_reference :outers, :user, foreign_key: true
  end
end
