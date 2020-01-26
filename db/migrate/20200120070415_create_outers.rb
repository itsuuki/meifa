class CreateOuters < ActiveRecord::Migration[5.0]
  def change
    create_table :outers do |t|
      t.string :outer
      t.string :image
      t.timestamps
    end
  end
end
