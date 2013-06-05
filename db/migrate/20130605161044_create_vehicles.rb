class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.string :vin
      t.string :reg_no

      t.timestamps
    end
  end
end
