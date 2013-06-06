class GenExp < ActiveRecord::Base
  attr_accessible :amount, :date, :method_of_payment, :purpose, :seller, :details, 
  :reimbursable

  #Validations
  validates_presence_of :amount, :date, :method_of_payment, :purpose, :seller, 
  :details
end
