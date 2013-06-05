class CreateTravels < ActiveRecord::Migration
  def change
    create_table :travels do |t|
      t.date :start_date
      t.date :end_date
      t.string :destination

      t.timestamps
    end
  end
end
