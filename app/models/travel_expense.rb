class TravelExpense < ActiveRecord::Base
  attr_accessible :amount, :date, :details, :method_of_payment, :purpose, :seller, 
  :travel_id, :reimbursable, :online

  #Associations
  belongs_to :travel

  #Validations
  validates_presence_of :amount, :date, :details, :method_of_payment, :purpose, 
  :seller, :travel_id

  #Methods

end
