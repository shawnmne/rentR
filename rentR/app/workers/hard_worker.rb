class HardWorker
  include Sidekiq::Worker
  include Sidetiq::Schedulable
  
  #for demo use this
  recurrence { hourly.minute_of_hour(0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55) }

  #if going live use this
#  recurrence { daily }

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
    	RenterMailer.lease_email(leasee).deliver!
    end
  end
end