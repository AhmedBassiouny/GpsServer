class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :name
      t.integer :level
      t.integer :active

      t.timestamps
    end
  end
end
