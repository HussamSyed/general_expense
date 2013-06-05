class CreateVehicleExpenses < ActiveRecord::Migration
  def change
    create_table :vehicle_expenses do |t|
      t.decimal :amount
      t.date :date
      t.string :method_of_payment
      t.string :purpose
      t.string :seller
      t.text :details

      t.timestamps
    end
  end
end
