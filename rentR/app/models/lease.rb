class Lease < ActiveRecord::Base

	validates :start_date, presence:true
	validates :end_date, presence:true
	validates :rent_amount, presence:true
	validates :rental_id, presence:true

	belongs_to :rental
	has_many :renters
	
# find_expiring_leasee_id checks to see if a lease object is expiring  
#    45 days from today.  If so it returns id of the lease.  Set if day == 0
#    and have a lease expiring today assigned to a renter with an actual email 
#    address for demo.
#
# leasee_id array is returned containing any lease ids for expiring leases.


	def find_expiring_leasee_id()
		days = (self.end_date - Date.today).to_i
		if days == -1
			self.id
		end
	end


end
