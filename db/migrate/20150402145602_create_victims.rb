class CreateVictims < ActiveRecord::Migration
  def change
    create_table :victims do |t|
      t.string :name
      t.integer :active
<<<<<<< HEAD
      t.string :lastloc
=======
>>>>>>> 01402f2d3e4f265070aca2542dddb1670042bd2e

      t.timestamps
    end
  end
end
