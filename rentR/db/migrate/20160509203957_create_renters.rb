class CreateRenters < ActiveRecord::Migration
  def change
    create_table :renters do |t|
      t.string :name, null: false
      t.string :phone
      t.string :email
      t.integer :rental_id, null: false

      t.timestamps null: false
    end
  end
end
