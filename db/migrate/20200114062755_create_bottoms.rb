class CreateBottoms < ActiveRecord::Migration[5.0]
  def change
    create_table :bottoms do |t|
      t.string :bottom
      t.string :image
      t.timestamps
    end
  end
end
