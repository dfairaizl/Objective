class Author::InstallController < ApplicationController

  layout 'install'

  def index
  	@blog = Blog.new
  	@blog.metablog = Metablog.new
  end
  
  def new
  	
  end
  
  def create
  
    @blog = Blog.new()
    @blog.metablog = Metablog.new(params[:metablog])

    respond_to do | format |
      if @blog.save
        format.html { redirect_to new_author_registration_path }
      else
        format.html { render action: "index" }
      end
    end
  end
  
end
