class AddBooleanOnlineToAllForms < ActiveRecord::Migration
  def change
  	add_column :vehicle_expenses, :online, :boolean, :default => false
  	add_column :travel_expenses, :online, :boolean, :default => false
  	add_column :me_exps, :online, :boolean, :default => false
  	add_column :gen_exps, :online, :boolean, :default => false
  end
end
