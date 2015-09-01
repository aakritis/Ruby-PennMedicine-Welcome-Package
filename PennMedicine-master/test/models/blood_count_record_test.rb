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

require 'test_helper'

class BloodCountRecordTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
