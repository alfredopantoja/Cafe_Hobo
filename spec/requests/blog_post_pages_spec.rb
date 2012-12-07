require 'spec_helper'

describe "Blog Post pages" do

  subject { page }

  let(:user) { FactoryGirl.create(:user) }
  before { sign_in user }

  describe "blog post creation" do
    before { visit root_path }

    describe "with invalid information" do

      it "should not create a blog post" do
        expect { click_button "Post" }.not_to change(BlogPost, :count)
      end

      describe "error messages" do
        before { click_button "Post" }
        it { should have_content('error') } 
      end
    end

    describe "with valid information" do

      before { fill_in 'blog_post_title', with: "Random Blog Title" }
      before { fill_in 'blog_post_body',  with: "Lorem ipsum" }
      it "should create a blog post" do
        expect { click_button "Post" }.to change(BlogPost, :count).by(1)
      end
    end
  end

  describe "blog post destruction" do
    before { FactoryGirl.create(:blog_post, user: user) }

    describe "as correct user" do
      before { visit root_path }

      it "should delete a blog post" do
        expect { click_link "delete" }.to change(BlogPost, :count).by(-1)
      end
    end
  end
end