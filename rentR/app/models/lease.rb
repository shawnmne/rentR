class Lease < ActiveRecord::Base

	validates :start_date, presence:true
	validates :end_date, presence:true
	validates :rent_amount, presence:true
	validates :rental_id, presence:true

	belongs_to :rental
	has_many :renters
	
end
