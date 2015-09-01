# == Schema Information
#
# Table name: blood_count_records
#
#  id           :integer          not null, primary key
#  date         :date
#  day          :string
#  wbc          :string
#  anc          :string
#  hgb          :string
#  plt          :string
#  transfusions :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :integer
#

class BloodCountRecord < ActiveRecord::Base
	belongs_to :user
	#attr_accessible :user_id	
	validates :date, :presence => true
	validates :day, :presence => true
	validates :wbc, :presence => true
	validates :anc, :presence => true
	validates :hgb, :presence => true
	validates :plt, :presence => true
	validates :transfusions, :presence => true
end
