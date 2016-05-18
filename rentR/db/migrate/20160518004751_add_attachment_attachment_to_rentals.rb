class AddAttachmentAttachmentToRentals < ActiveRecord::Migration
  def self.up
    change_table :rentals do |t|
      t.attachment :attachment
    end
  end

  def self.down
    remove_attachment :rentals, :attachment
  end
end
