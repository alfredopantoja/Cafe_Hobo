class BlogPostsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :correct_user,   only: :destroy

  def create
  	@blog_post = current_user.blog_posts.build(params[:blog_post])
  	if @blog_post.save
  	  flash[:success] = "Blog post created!"
  	  redirect_to root_url
  	else
      @feed_items = []
  	  render 'static_pages/home'
  	end
  end

  def destroy
    @blog_post.destroy
    redirect_to root_url
  end

  private

    def correct_user
      @blog_post = current_user.blog_posts.find_by_id(params[:id])
      redirect_to root_url if @blog_post.nil?
    end 
end