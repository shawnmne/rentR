class Renter < ActiveRecord::Base

	validates :name, presence:true, uniqueness: {case_sensitive: false}
	validates :rental_id, presence:true


	belongs_to :rental
end
