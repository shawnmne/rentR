class RenterMailer < ApplicationMailer

	def lease_email(leasees)
		byebug
		mail(to: leasees, subject: "Your Lease is About to Expire")
	end

end
