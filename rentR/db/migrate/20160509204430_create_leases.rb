class CreateLeases < ActiveRecord::Migration
  def change
    create_table :leases do |t|
      t.string :rent_amount, null: false
      t.date :start_date, null: false
      t.date :end_date, null: false

      t.timestamps null: false
    end
  end
end
