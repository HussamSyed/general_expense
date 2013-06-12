class Client < ActiveRecord::Base
  attr_accessible :client_id, :date, :email, :name, :phone_number, :taxpayer_type

  #Associations
  has_many :expenses

  #Validations
  validates_uniqueness_of :client_id, :email
  validates_presence_of :client_id, :date, :email, :name, :phone_number, :taxpayer_type

end
