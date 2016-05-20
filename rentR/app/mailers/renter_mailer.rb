class RenterMailer < ApplicationMailer

	def lease_email(renter)
		mail(to: "shawnmne@hotmail.com", subject: "Your Lease is About to Expire")
	end

end
