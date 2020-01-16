class CreateInners < ActiveRecord::Migration[5.0]
  def change
    create_table :inners do |t|
      t.string :inner
      t.string :image
      t.timestamps
    end
  end
end
