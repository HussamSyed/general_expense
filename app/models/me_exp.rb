class MeExp < ActiveRecord::Base
  attr_accessible :amount, :date, :details, :venue, :method_of_payment, 
  :reimbursable, :attendees

  #Validations
  validates_presence_of :amount, :date, :details, :venue, :method_of_payment, 
  :attendees
end
