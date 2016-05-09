class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.string :address, null: false
      t.string :apartment

      t.timestamps null: false
    end
  end
end
