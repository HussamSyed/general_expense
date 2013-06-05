class Vehicle < ActiveRecord::Base
  attr_accessible :make, :vehicle_model, :reg_no, :vin, :year
  has_many :vehicle_expenses
end
