class GenExp < ActiveRecord::Base
  attr_accessible :amount, :date, :method_of_payment, :purpose, :seller, :details, 
  :reimbursable, :online, :receipt

  mount_uploader :receipt, ReceiptUploader

  #Validations
  validates_presence_of :amount, :date, :method_of_payment, :purpose, :seller, 
  :details
end
