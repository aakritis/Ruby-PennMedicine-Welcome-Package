class AddColumnsToQuestionnaires < ActiveRecord::Migration
  def change
  	add_column :questionnaires, :user_id, :integer
  	add_foreign_key :questionnaires, :users
  end
end
