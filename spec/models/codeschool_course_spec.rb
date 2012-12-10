# == Schema Information
#
# Table name: codeschool_courses
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  image_url   :string(255)
#  order       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe CodeschoolCourse do
  pending "add some examples to (or delete) #{__FILE__}"
end
