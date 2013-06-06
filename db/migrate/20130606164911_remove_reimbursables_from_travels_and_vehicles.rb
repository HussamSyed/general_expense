class RemoveReimbursablesFromTravelsAndVehicles < ActiveRecord::Migration
	remove_column :travels, :reimbursable
	remove_column :vehicles, :reimbursable
end
