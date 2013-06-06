class AddTravelIdToTravelExpenses < ActiveRecord::Migration
  def change
  	add_column :travel_expenses, :travel_id, :integer
  end
end
