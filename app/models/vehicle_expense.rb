class VehicleExpense < ActiveRecord::Base
  attr_accessible :amount, :date, :details, :method_of_payment, :purpose, :seller, :vehicle_id, :vehicle_model
  belongs_to :vehicle
end
