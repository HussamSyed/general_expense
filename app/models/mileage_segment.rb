class MileageSegment < ActiveRecord::Base
  attr_accessible :date, :destination, :miles_driven, :purpose, :vehicle_id

  #Associations
  belongs_to :vehicle
  
  #Validations
  validates_presence_of :date, :destination, :miles_driven, :purpose, :vehicle_id
end
