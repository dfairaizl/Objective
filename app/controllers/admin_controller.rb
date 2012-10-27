class AdminController < ApplicationController

  layout 'admin'
  
  before_filter :setup_blog
  
  private
  
  def setup_blog
  	
  	@blog = Blog.first
  	puts "Auhtor " + @blog.author.author_username
  	
  	if @blog.nil?
  		redirect_to admin_install_index_path
  	else 
  		#authenticate user
  	end
  	
  end
  
end