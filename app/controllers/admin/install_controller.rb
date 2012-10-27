class Admin::InstallController < ApplicationController

  layout 'install'

  def index
  	@blog = Blog.new
  end
  
  def new
  	
  end
  
  def create
  
    @blog = Blog.new(params[:blog])
    @blog.author = Author.new(params[:author])

    respond_to do |format|
      if @blog.save
        format.html { redirect_to admin_posts_path }
      else
        format.html { render action: "index" }
      end
    end
  end
  
end
