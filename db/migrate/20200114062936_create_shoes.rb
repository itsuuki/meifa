class CreateShoes < ActiveRecord::Migration[5.0]
  def change
    create_table :shoes do |t|
      t.string :shoe
      t.string :image
      t.timestamps
    end
  end
end
