class AddTypesToAttendee < ActiveRecord::Migration
  def change
		add_column :attendees, :walked, :integer
		add_column :attendees, :biked, :integer
		add_column :attendees, :run, :integer
  end
end
