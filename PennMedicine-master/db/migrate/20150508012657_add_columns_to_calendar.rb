class AddColumnsToCalendar < ActiveRecord::Migration
  def change
  	add_column :calendars, :user_id, :integer
  	add_foreign_key :calendars, :users
  end
end
