class AddReceiptToAllOtherExpenses < ActiveRecord::Migration
  def change
  	add_column :vehicle_expenses, :receipt, :string
  	add_column :me_exps, :receipt, :string
  	add_column :travel_expenses, :receipt, :string
  end
end
