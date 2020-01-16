class CreateCoordinations < ActiveRecord::Migration[5.0]
  def change
    create_table :coordinations do |t|
      t.string :season
      t.string :coordination
      t.timestamps
    end
  end
end
