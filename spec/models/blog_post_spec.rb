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

require 'spec_helper'

describe BlogPost do
  let(:user) { FactoryGirl.create(:user) }
  before do
  	@blog_post = user.blog_posts.build(title: "100 Ways to Skin a Cat", body: "Loren ipsum",
  		                      image_url: "loren.jpg")
  end

  subject { @blog_post }

  it { should respond_to(:title) }
  it { should respond_to(:body) }
  it { should respond_to(:image_url) }
  it { should respond_to(:user_id) }
  its(:user) { should == user }

  it { should be_valid }

  describe "accessible attributes" do
  	it "should not allow access to user_id" do
  	  expect do
  	  	BlogPost.new(user_id: user.id)
  	  end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
  	end
  end

  describe "when user_id is not present" do
  	before { @blog_post.user_id = nil }
  	it { should_not be_valid }
  end
  
  describe "with blank title" do
    before { @blog_post.title = " " }
    it { should_not be_valid }
  end

  describe "with blank content" do
    before { @blog_post.body = " " }
    it { should_not be_valid }
  end
end
