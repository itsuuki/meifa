class CreateCoordinations < ActiveRecord::Migration[5.0]
  def change
    create_table :coordinations do |t|
      t.string :season
      t.string :coordination
      t.string :outer
      t.references :outer, foreign_key: true
      t.references :inner, foreign_key: true
      t.references :bottom, foreign_key: true
      t.references :shoes, foreign_key: true
      t.references :hat, foreign_key: true
      t.references :accessory, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
