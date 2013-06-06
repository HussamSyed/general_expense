class AddColumnReimbursibleToAllTables < ActiveRecord::Migration
  def change
  	add_column :travels, :reimbursable, :boolean
  	add_column :vehicles, :reimbursable, :boolean
  	add_column :vehicle_expenses, :reimbursable, :boolean
  	add_column :travel_expenses, :reimbursable, :boolean
  	add_column :me_exps, :reimbursable, :boolean
  	add_column :gen_exps, :reimbursable, :boolean
  end
end
