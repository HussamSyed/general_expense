class Travel < ActiveRecord::Base
  attr_accessible :destination, :end_date, :start_date, :purpose

  #Associations
  has_many :travel_expenses

  #Validations
  validates_presence_of :destination, :end_date, :start_date, :purpose
end
