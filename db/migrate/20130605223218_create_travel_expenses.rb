class CreateTravelExpenses < ActiveRecord::Migration
  def change
    create_table :travel_expenses do |t|
      t.decimal :amount
      t.date :date
      t.string :method_of_payment
      t.text :details
      t.string :purpose
      t.string :seller

      t.timestamps
    end
  end
end
