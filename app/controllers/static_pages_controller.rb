class StaticPagesController < ApplicationController
  def home
  	if signed_in?
  	  @blog_post  = current_user.blog_posts.build 
  	  @feed_items = current_user.feed.paginate(page: params[:page])
  	end
  end

  def contact
  end

  def about
  end
end
