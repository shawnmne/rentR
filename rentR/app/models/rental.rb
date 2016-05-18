class Rental < ActiveRecord::Base

	validates :address, presence:true

	has_many :renters, dependent: :destroy
	has_many :leases, dependent: :destroy

	has_attached_file :attachment, styles: { medium: "340x340>" }
	validates_attachment :attachment, content_type: {content_type: "image/jpeg"}

end
