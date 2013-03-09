class Attendee < ActiveRecord::Base
	
  attr_accessible :name, :uid, :miles, :run, :biked, :walked

	def raised
		raised = (self.run * 0.25) + (self.biked * 0.10) + (self.walked * 0.25)
	end

end