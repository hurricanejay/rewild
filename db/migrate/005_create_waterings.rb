class CreateWaterings < ActiveRecord::Migration[6.0]
  def change
    create_table :waterings do |t|
      t.integer :plant_id
      t.datetime :date
      t.integer :amount

      t.timestamps
    end
  end
end
