class RemoveThatPeskyVehExpsTable < ActiveRecord::Migration
  def change
  	drop_table :veh_exps
  end
end
