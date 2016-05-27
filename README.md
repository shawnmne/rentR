This project allows a landlord to keep track of rental properties and the renters and leases associated with them.  If a picture of 
the property is attached it is stored using AWS. When a renters lease is expiring, the renter will be sent an email notifiying them
and asking them if they intend on signing a new lease.  For demonstration purposes this is currently set to 0 days but if I was using 
it to track my 2 properties I would set it to 45 days.  For anything to show up on Heorku 2 workers must be allocated.  The workers 
for demonstration purposes are doing there job every 5 minutes which sends out a whole lot of emails to the renters.  If I were using
this I would have the workers check once a day and then only 1 email would go to the renter.
