class MyJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
  	leasee = []
    lease = Lease.all 
    lease.each do |l|
    	check_id = l.find_expiring_leasee_id
    	renter = Renter.all 
    	renter.each do |r|	
    		r.build_email_list(check_id,leasee)
    	end
    end
    if leasee.count > 0
    	RenterMailer.lease_email(leasee).deliver_now
    end
  end
end
