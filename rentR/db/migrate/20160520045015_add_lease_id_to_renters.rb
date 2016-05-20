class AddLeaseIdToRenters < ActiveRecord::Migration
  def change
    add_column :renters, :lease_id, :integer
  end
end
