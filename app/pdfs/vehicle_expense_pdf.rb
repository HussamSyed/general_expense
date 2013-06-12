class VehicleExpensePdf < Prawn::Document
=begin
	def initialize(vehicle_expense, view)
		super()
		text "This is a vehicle expense"
		@vehicle_expense = vehicle_expense
		@view = view
		text "Vehicle Expense #{@vehicle_expense.id}"
		image "#{Rails.root}/public/#{@vehicle_expense.receipt_url.to_s}"  
	end
=end

	def initialize(vehicle_expenses, view)
		super()
		@vehicle_expenses = vehicle_expenses
		@view = view
		image "#{Rails.root}/public/#{@vehicle_expense.receipt_url.to_s}"
	end
end