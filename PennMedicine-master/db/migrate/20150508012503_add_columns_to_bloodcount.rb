class AddColumnsToBloodcount < ActiveRecord::Migration
  def change
  	add_column :blood_count_records, :user_id, :integer
  	add_foreign_key :blood_count_records, :users
  end
end
