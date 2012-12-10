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

class CodeschoolCourse < ActiveRecord::Base
  attr_accessible :description, :image_url, :name, :order

  default_scope order: 'codeschool_courses.order DESC'
  # default_scope order: 'codeschool_courses.order'
end
