class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :latlng
      t.integer :victim_id

      t.timestamps
    end
  end
end
