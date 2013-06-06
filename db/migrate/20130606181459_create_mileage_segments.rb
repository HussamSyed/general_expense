class CreateMileageSegments < ActiveRecord::Migration
  def change
    create_table :mileage_segments do |t|
      t.string :vehicle
      t.date :date
      t.decimal :miles_driven
      t.string :destination
      t.string :purpose

      t.timestamps
    end
  end
end
