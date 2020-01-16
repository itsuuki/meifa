class CreateChageCoordinations < ActiveRecord::Migration[5.0]
  def change
    create_table :chage_coordinations do |t|
      add_reference :coordinations, :outer, foreign_key: true
      add_reference :coordinations, :inner, foreign_key: true
      add_reference :coordinations, :bottom, foreign_key: true
      add_reference :coordinations, :shoes, foreign_key: true
      add_reference :coordinations, :hat, foreign_key: true
      add_reference :coordinations, :accessory, foreign_key: true
      t.timestamps
      t.timestamps
    end
  end
end
