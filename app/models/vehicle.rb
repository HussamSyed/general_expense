class Vehicle < ActiveRecord::Base
  attr_accessible :make, :vehicle_model, :reg_no, :vin, :year, :business_vehicle

  #Associations 
  has_many :vehicle_expenses

  #Validations
  validates_uniqueness_of :vin
  validates_presence_of :make, :vehicle_model, :reg_no, :vin, :year
end
