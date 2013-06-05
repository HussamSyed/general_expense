class Travel < ActiveRecord::Base
  attr_accessible :destination, :end_date, :start_date
end
