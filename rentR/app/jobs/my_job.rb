class MyJob < ActiveJob::Base
  queue_as :default

  def perform(obj)
    # Do something later
    puts obj
  end
end
