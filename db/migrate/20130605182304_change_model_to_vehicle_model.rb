class ChangeModelToVehicleModel < ActiveRecord::Migration
  def change
  	rename_column :vehicles, :model, :vehicle_model 
  end
end
