namespace :attendees do
  desc "Grab latest attendees from Charity Miles API"
  task :fetch => :environment do
    
		#stats_req = Curl.post("http://api.charitymiles.org/charities/miles/sxsw", {:api_key => "S1L7iIjqvftS4oBLQZzXeTkHVmMx0GgI" })
		#@stats_data = JSON.parse(stats_req.body_str)
		#@stats = @stats_data
		
		team_req = Curl.post("http://api.charitymiles.org/teams/sxsw", { :api_key => "S1L7iIjqvftS4oBLQZzXeTkHVmMx0GgI" })
    
		@team_data = JSON.parse(team_req.body_str)
		@team_data["users"].each do |user|
			if Attendee.find_by_uid(user["userid"]).nil?
				puts "Creating attendee: #{user['name']}"
				Attendee.create!({
					name: user["name"],
					uid: user["userid"],
					miles: user["miles"].to_f,
					run: user["run"].to_f,
					biked: user["bike"].to_f,
					walked: user["walk"].to_f
				})
			end
		end
    
  end
end