class MeExp < ActiveRecord::Base
  attr_accessible :amount, :date, :details, :no_of_people, :venue, :method_of_payment

  #Validations
  validates_presence_of :amount, :date, :details, :no_of_people, :venue, :method_of_payment
end
