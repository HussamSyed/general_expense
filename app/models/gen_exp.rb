class GenExp < ActiveRecord::Base
  attr_accessible :amount, :date, :method_of_payment, :purpose, :seller, :details
end
