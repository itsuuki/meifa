class CreateAccessoryCoordinations < ActiveRecord::Migration[5.0]
  def change
    create_table :accessory_coordinations do |t|
      t.references :accessory, foreign_key: true
      t.references :coordination, foreign_key: true
      t.timestamps
    end
  end
end
