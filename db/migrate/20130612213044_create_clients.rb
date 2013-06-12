class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.string :client_id
      t.text :taxpayer_type
      t.integer :phone_number
      t.date :date

      t.timestamps
    end
  end
end
