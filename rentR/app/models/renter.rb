class Renter < ActiveRecord::Base

	validates :name, presence:true, uniqueness: {case_sensitive: false}
	validates :rental_id, presence:true


	belongs_to :rental
	belongs_to :lease

# build_email_list checks to see if a renter has a lease id that matches 
#    a passed in id.  If so that renter's email list is added to an array 
#    called leasee.
#
# leasee is a returned array of email addresses
	def build_email_list(id, leasee)
		if self.lease_id == id
			leasee << self.email
		end
		leasee
	end

end
