class Rental < ActiveRecord::Base

	validates :address, presence:true

	has_many :renters, dependent: :destroy
	has_many :leases, dependent: :destroy
end
