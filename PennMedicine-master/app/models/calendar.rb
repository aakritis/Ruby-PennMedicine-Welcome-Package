# == Schema Information
#
# Table name: calendars
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  start_time  :datetime
#  end_time    :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

class Calendar < ActiveRecord::Base
	belongs_to :user
	#attr_accessible :user_id
	validates :title, :presence => true
end
