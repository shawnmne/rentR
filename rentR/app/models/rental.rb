class Rental < ActiveRecord::Base

	validates :address, presence:true

	has_many :renters
end
