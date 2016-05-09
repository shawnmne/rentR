class Renter < ActiveRecord::Base

	validates :name, presence:true
	validates :rental_id, presence:true


	belongs_to :rental
end
