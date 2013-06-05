class TravelExpense < ActiveRecord::Base
  attr_accessible :amount, :date, :details, :method_of_payment, :purpose, :seller

  #Associations
  belongs_to :travel
end
