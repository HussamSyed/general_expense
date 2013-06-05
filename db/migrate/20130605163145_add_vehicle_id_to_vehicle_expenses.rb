class AddVehicleIdToVehicleExpenses < ActiveRecord::Migration
  def change
    add_column :vehicle_expenses, :vehicle_id, :integer
  end
end
