class AuthorController < ApplicationController

  layout 'author'
  
  before_filter :bootstrap_blog
  
  private
  
  def bootstrap_blog
  
  	@blog = Blog.first
  	
  	if @blog.nil?
	  redirect_to author_install_index_path
  	else 
  		if @blog.author.nil?
  			redirect_to new_author_registration_path
  		else
  			authenticate_author!
  		end
  	end
  	
  end
  
end