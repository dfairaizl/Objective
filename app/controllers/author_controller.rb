class AuthorController < ApplicationController

  layout 'author'
  
  before_filter :setup_blog
  
  private
  
  def setup_blog
  
  	:authenticate_author!
  	
  	@blog = Blog.first
  	
  	if @blog.nil?
  		redirect_to author_install_index_path
  	else 
  		#authenticate user
  	end
  	
  end
  
end