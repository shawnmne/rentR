class AddRentalIdToLeases < ActiveRecord::Migration
  def change
    add_column :leases, :rental_id, :integer
  end
end
