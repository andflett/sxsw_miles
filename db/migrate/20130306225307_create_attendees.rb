class CreateAttendees < ActiveRecord::Migration
  def up
		create_table :attendees do |t|
			t.string :name
			t.string :uid
			t.integer :miles, :default => 0
			t.timestamps
		end
  end

  def down
		drop_table :attendees
  end
end
