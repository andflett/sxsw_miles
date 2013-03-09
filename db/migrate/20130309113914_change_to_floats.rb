class ChangeToFloats < ActiveRecord::Migration
  def change
		change_column :attendees, :run, :decimal, :precision => 10, :scale => 2, :default => 0.00
		change_column :attendees, :biked, :decimal, :precision => 10, :scale => 2, :default => 0.00
		change_column :attendees, :walked, :decimal, :precision => 10, :scale => 2, :default => 0.00
  end
end
