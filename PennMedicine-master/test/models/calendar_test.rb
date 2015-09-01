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

require 'test_helper'

class CalendarTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
