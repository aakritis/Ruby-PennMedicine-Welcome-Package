# == Schema Information
#
# Table name: ideas
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  picture     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Idea < ActiveRecord::Base
mount_uploader :picture, PictureUploader
end
