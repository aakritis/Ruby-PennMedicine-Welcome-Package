# == Schema Information
#
# Table name: questionnaires
#
#  id         :integer          not null, primary key
#  question   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

FactoryGirl.define do
  factory :questionnaire do
    question "MyText"
  end

end
