class AuthorController < ApplicationController

  layout 'author'
  
  before_filter :bootstrap_blog
  
  private
  
  def bootstrap_blog
  	
  	@blog = Blog.first
  	
  	redirect_to author_install_index_path if @blog.nil?
  	
  	authenticate_author!
  	
  end
  
end