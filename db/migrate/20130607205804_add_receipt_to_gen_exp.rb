class AddReceiptToGenExp < ActiveRecord::Migration
  def change
  	add_column :gen_exps, :receipt, :string
  end
end
