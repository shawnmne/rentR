class AddRentalIdToLeases < ActiveRecord::Migration
  def change
    add_column :leases, :rental_id, :integer, null: false
  end
end
