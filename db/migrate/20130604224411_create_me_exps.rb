class CreateMeExps < ActiveRecord::Migration
  def change
    create_table :me_exps do |t|
      t.decimal :amount
      t.date :date
      t.string :venue
      t.integer :no_of_people
      t.text :details

      t.timestamps
    end
  end
end
