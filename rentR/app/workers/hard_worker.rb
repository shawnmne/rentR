class HardWorker
  include Sidekiq::Worker
  include Sidetiq::Schedulable
  
  #for demo use this
#  recurrence { hourly.minute_of_hour(0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32. 34, 36, 38, 40, 42, 44, 46, 48, 50, 52, 54, 56 ,58) }

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
    	RenterMailer.lease_email(leasee).deliver_now
    end
  end
end