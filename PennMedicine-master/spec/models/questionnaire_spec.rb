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

require 'spec_helper'

describe Questionnaire do
  pending "add some examples to (or delete) #{__FILE__}"
end
