class Lease < ActiveRecord::Base

	validates :start_date, presence:true
	validates :end_date, presence:true
	validates :rent_amount, presence:true

end
