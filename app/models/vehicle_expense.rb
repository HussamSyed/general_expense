class VehicleExpense < ActiveRecord::Base
  attr_accessible :amount, :date, :details, :method_of_payment, :purpose, :seller, 
  :vehicle_id, :reimbursable, :online
  
  #Associations
  belongs_to :vehicle

  #Validations
  validates_presence_of :amount, :date, :details, :method_of_payment, :purpose, 
  :seller, :vehicle_id
end
