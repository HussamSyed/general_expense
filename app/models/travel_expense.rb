class TravelExpense < ActiveRecord::Base
  attr_accessible :amount, :date, :details, :method_of_payment, :purpose, :seller, :travel_id

  #Associations
  belongs_to :travel

  #Validations
  validates_presence_of :amount, :date, :details, :method_of_payment, :purpose, :seller

  #Methods
  def travelDescrWithDates
    self.purpose + " from " + self.start_date + " to " + self.end_date
  end
end
