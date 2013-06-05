class CreateGenExps < ActiveRecord::Migration
  def change
    create_table :gen_exps do |t|
      t.decimal :amount
      t.date :date
      t.string :method_of_payment
      t.string :seller
      t.string :purpose

      t.timestamps
    end
  end
end
