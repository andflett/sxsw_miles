class AttendeesController < ApplicationController

	def index
		
		@attendees = Attendee.order(:miles).reverse
		
		@total_miles = Attendee.sum('miles')
		
		@total_miles_walked = Attendee.sum('walked')
		@total_miles_run = Attendee.sum('run')
		@total_miles_biked = Attendee.sum('biked')
		
		@total_cash =  (@total_miles_run * 0.25) + (@total_miles_biked * 0.10) + (@total_miles_walked * 0.25)
		
  end

end
