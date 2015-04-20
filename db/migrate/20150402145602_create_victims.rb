class CreateVictims < ActiveRecord::Migration
  def change
    create_table :victims do |t|
      t.string :name
      t.integer :active
      t.string :lastloc

      t.timestamps
    end
  end
end
