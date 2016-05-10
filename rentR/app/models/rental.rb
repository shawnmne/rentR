class Rental < ActiveRecord::Base

	validates :address, presence:true

	has_many :renters
	has_many :leases
end
