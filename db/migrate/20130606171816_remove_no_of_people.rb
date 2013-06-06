class RemoveNoOfPeople < ActiveRecord::Migration
  def change
  	remove_column :me_exps, :no_of_people
  end
end
