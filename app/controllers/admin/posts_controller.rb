class Admin::PostsController < AdminController
  
  def index
  
  end
  
  def new
  	render :new
  end
  
  def show
  	puts "Editing %s" % params[:post_name]
  	render :new
  end
  
end
