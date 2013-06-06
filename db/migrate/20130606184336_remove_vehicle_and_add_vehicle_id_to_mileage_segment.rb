class RemoveVehicleAndAddVehicleIdToMileageSegment < ActiveRecord::Migration
	def change
		remove_column :mileage_segments, :vehicle 
		add_column :mileage_segments, :vehicle_id, :integer
	end
end
