class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.date :date
      t.text :description
      t.boolean :online
      t.text :comments

      t.timestamps
    end
  end
end
