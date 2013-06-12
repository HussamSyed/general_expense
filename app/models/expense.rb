class Expense < ActiveRecord::Base
  attr_accessible :comments, :date, :description, :online, :receipt
  mount_uploader :receipt, ReceiptUploader

  #Associations
  belongs_to :client

end
