class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :description
      t.integer :amount
      t.integer :frequency
      t.string :light
      t.integer :price
      t.string :image

      t.timestamps
    end
  end
end
