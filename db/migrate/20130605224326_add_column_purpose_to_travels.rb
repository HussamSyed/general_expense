class AddColumnPurposeToTravels < ActiveRecord::Migration
  def change
  	add_column :travels, :purpose, :string
  end
end
