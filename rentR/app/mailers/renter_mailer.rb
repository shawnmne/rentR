class RenterMailer < ApplicationMailer

	def lease_email(leasees)
		mail(to: leasees, subject: "Your Lease is About to Expire")
	end

end
