module ApplicationHelper

# find_leasee_id goes through all the lease objects and determines if the
#    end date of the lease is 45 days from today.  If so it saves the lease id
#    in the leasee_id array.
#
# leasee_id array is returned containing any lease ids for expiring leases.
	def find_leasee_id()
		lease = Lease.all
		leasee_id = []
		lease.each do |l|
			days = (l.end_date - Date.today).to_i
			if days == 45
				leasee_id << l.id
			end
		end
		leasee_id
	end




# build_email_list takes an array of lease_ids and runs through all the renters  
#   for each lease_id in the array.  If the renter object contains the lease id
#   it stores that renters email in a leasee array.  This function should only 
#   called after checking if lease_ids.count > 0
#
# lease_ids array: array of lease_id that are attached to leases that are expiring.
#
# leasee array returned containing email addresses of renters on expiring leases
	def build_email_list(lease_ids)
		renter = Renter.all
		leasee = []
		lease_ids.each do |l|
			renter.each do |r|
				if r.lease_id == l
					leasee << renter.email 
				end
			end
		end
		leasee
	end


end
