class AddBusinessVehicleFieldToVehicleClass < ActiveRecord::Migration
  def change
  	add_column :vehicles, :business_vehicle, :boolean
  end
end
