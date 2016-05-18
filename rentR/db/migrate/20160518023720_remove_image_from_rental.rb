class RemoveImageFromRental < ActiveRecord::Migration
  def change
    remove_column :rentals, :image, :string
  end
end
