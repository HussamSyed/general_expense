class SetBusinessVehicleDefaultAsTrue < ActiveRecord::Migration
  def change
  	change_column :vehicles, :business_vehicle, :boolean, :default => true
  end
end
