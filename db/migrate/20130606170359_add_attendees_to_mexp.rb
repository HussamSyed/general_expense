class AddAttendeesToMexp < ActiveRecord::Migration
  def change
  	add_column :me_exps, :attendees, :string
  end
end
