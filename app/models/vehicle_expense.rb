class VehicleExpense < ActiveRecord::Base
  attr_accessible :amount, :date, :details, :method_of_payment, :purpose, :seller, :vehicle_id, :vehicle_model
  
  #Associations
  belongs_to :vehicle

  #Validations
  validates_presence_of :amount, :date, :details, :method_of_payment, :purpose, :seller, :vehicle_model
end
