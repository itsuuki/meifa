class CreateChagesCoordinations < ActiveRecord::Migration[5.0]
  def change
    create_table :chages_coordinations do |t|
      t.timestamps
    end
  end
end
