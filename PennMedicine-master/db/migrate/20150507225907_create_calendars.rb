class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.string :title
      t.text :description
      t.datetime :start_time
      t.datetime :end_time
      #t.integer :user_id
      t.timestamps null: false
    end
  end
end
