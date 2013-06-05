class AddMethodOfPaymentToMealsAndEntertainment < ActiveRecord::Migration
  def change
  	add_column :me_exps, :method_of_payment, :string
  end
end
