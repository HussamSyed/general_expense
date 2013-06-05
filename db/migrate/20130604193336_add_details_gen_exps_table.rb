class AddDetailsGenExpsTable < ActiveRecord::Migration
  def change
  	add_column :gen_exps, :details, :text
  end
end
