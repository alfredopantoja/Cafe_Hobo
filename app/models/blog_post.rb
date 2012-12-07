# == Schema Information
#
# Table name: blog_posts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  body       :text
#  image_url  :string(255)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BlogPost < ActiveRecord::Base
  attr_accessible :body, :image_url, :title
  belongs_to :user
  
  validates :title,   presence: true
  validates :body,    presence: true
  validates :user_id, presence: true
  default_scope order: 'blog_posts.created_at DESC'
end
